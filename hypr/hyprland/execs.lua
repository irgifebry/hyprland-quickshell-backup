-- put former exec-once commands inside the func and former exec commands outside
hl.on("hyprland.start", function ()

    -- Bar, wallpaper
    hl.exec_cmd("$HOME/.config/hypr/hyprland/scripts/start_geoclue_agent.sh")
    hl.exec_cmd("qs -c $qsConfig")
    -- Lock is handled by Config.options.lock.launchOnStartup (lock screen Quickshell).
    -- Do NOT call `qs ipc call lock activate` here: Quickshell may still be loading
    -- its lock surface, and a second lock request in that window makes Hyprland
    -- briefly show its "crashed lockscreen" fallback.
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/__restore_video_wallpaper.sh")

    -- Core components (authentication, lock screen, notification daemon)
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("dbus-update-activation-environment --all")
    hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- Some fix idk

    -- XDG autostart (localsend, limusic, easyeffects, warp tray, ...)
    -- Must run AFTER the compositor AND after Quickshell owns the tray host:
    --   - the user manager starts before the Wayland socket exists, so running
    --     these from default.target kills them with "cannot open display";
    --   - tray apps that probe once and never retry (9router, limusic) end up
    --     iconless or window-open if they race Quickshell's tray host.
    -- Quickshell claims org.kde.StatusNotifierWatcher shortly after start; poll
    -- for it instead of guessing a fixed delay.
    hl.exec_cmd("for i in $(seq 1 30); do sleep 1; gdbus call --session --dest org.freedesktop.DBus --object-path /org/freedesktop/DBus --method org.freedesktop.DBus.NameHasOwner org.kde.StatusNotifierWatcher 2>/dev/null | grep -q true && break; done; systemctl --user start hyprland-graphical-session.service")

    -- Tray apps that die or miss their icon if they start too early:
    --   - warp-taskbar: dies with "Error reading events from display: Broken pipe"
    --     when the Wayland socket is not ready yet.
    --   - 9router (Electron): probes StatusNotifierWatcher once, never retries,
    --     so it ends up iconless if Quickshell's watcher is not up yet.
    hl.exec_cmd("sleep 12 && systemctl --user try-restart app-9router@autostart.service warp-taskbar.service")

    -- Audio
    hl.exec_cmd("easyeffects --hide-window --service-mode")

    -- Clipboard: history
    --hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("wl-paste --type text --watch bash -c 'cliphist store && qs -c $qsConfig ipc call cliphistService update'")
    hl.exec_cmd("wl-paste --type image --watch bash -c 'cliphist store && qs -c $qsConfig ipc call cliphistService update'")

    -- Cursor
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")
end)
