# App lists

- `Brewfile` (Mac): basics + 6 picked apps. Installed by the setup script (`mac.sh`).
- `Brewfile.full` (Mac): the full dump from the old Mac. Installed only with `mac.sh --all-apps`.
- `winget.json` (Windows): not captured yet. Run help.hassanpi.com -> "Capture your apps" on the PC,
  then curate it into `apps/winget.json`.

## Mac apps NOT installed automatically (install by hand if needed)
Captured 2026-11-17 from /Applications, left out of the Brewfile on purpose.

- Have a Homebrew cask (`brew install --cask <name>`): 1password, 4k-video-downloader+, aldente,
  android-studio, anydesk, balenaetcher, cursor, docker-desktop, free-download-manager, github,
  handy, iterm2, libreoffice, macs-fan-control, microsoft-teams, mysqlworkbench, notion, obsidian,
  openvpn-connect, pcsx2, postman, ppsspp-emulator, raspberry-pi-imager, slack, steam,
  tailscale-app, the-unarchiver, thonny, tor-browser, typora, vlc, whatsapp, wireshark-app
  (kitty and macpacker are already in the Brewfile)
- Mac App Store: Xcode, 1Password for Safari, PasteNow, Picsart, Holy Quran, Speedtest, QuickMD
  (check in the App Store; `mas` can script these later)
- Vendor download / work-managed: Company Portal, FortiClient, Exam Environment, Upwork,
  DaVinci Resolve + Blackmagic Proxy Generator, Fairlight Studio Utility, RPCS3, Indeed Jobs,
  CP210x VCP driver, Enroad, iloader, vibe, Vorssaint, Min (cask deprecated)
