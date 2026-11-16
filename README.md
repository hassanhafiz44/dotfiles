# dotfiles

[chezmoi](https://www.chezmoi.io) source repo for my machines: git config, shell aliases,
[Starship](https://starship.rs) prompt (Nerd Font), PowerShell profile and Windows Terminal font.
No secrets live here. Name and email are asked once on first init and kept in
`~/.config/chezmoi/chezmoi.toml`, not in git.

| OS | Manages |
|---|---|
| Linux (Pi) | `~/.gitconfig`, `~/.config/starship.toml`, `~/.bash_aliases` (`~/.bashrc` untouched) |
| macOS | `~/.gitconfig`, `~/.config/starship.toml`, `~/.zshrc` |
| Windows | `~/.gitconfig`, `~/.config/starship.toml`, `~/.config/powershell/profile.ps1` (+ loader line in the PowerShell 7 and 5.1 profiles), Windows Terminal font |

## Apply on a machine

Install chezmoi first, then:

- Pi (SSH key added to GitHub):
  `chezmoi init --apply git@github.com:hassanhafiz44/dotfiles.git`
- Windows / Mac (HTTPS; the repo is private, so Git Credential Manager opens a GitHub
  browser login the first time; done by the Phase 8 setup script):
  `chezmoi init --apply https://github.com/hassanhafiz44/dotfiles.git`

Tip: run `chezmoi init <url>` then `chezmoi diff` first to preview, then `chezmoi apply`.

## Daily use

- `chezmoi edit ~/.bash_aliases` edit a managed file in the source (then `chezmoi apply`)
- `chezmoi diff` preview what apply would change
- `chezmoi apply` write the source state to your home dir
- `chezmoi update` pull the repo and apply
- `chezmoi cd` open a shell in the source dir; commit and `git push` from there

## App lists (not applied by chezmoi)

Windows:

    winget import -i apps/winget.json --accept-package-agreements --accept-source-agreements --ignore-unavailable

macOS:

    brew bundle --file=apps/Brewfile

Run both from the repo root (`chezmoi cd`).
