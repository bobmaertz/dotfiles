# Command & Alias Reference

A comprehensive reference of all custom commands, aliases, functions, keybindings, and scripts in this dotfiles setup.

---

## Shell Aliases

### Editor & Tool Replacements

| Alias | Command | Source |
|-------|---------|--------|
| `vi` | `nvim` | `.zsh_profile` |
| `vim` | `nvim` | `.zsh_profile` |
| `tf` | `terraform` | `.zsh_profile` |
| `k` | `kubectl` | `.zsh_profile` |
| `docs` | `less ~/dotfiles/COMMAND_REFERENCE.md` | `.zsh_profile` |

### Git Shortcuts

| Alias | Command | Description |
|-------|---------|-------------|
| `s` | `git status` | Quick status |
| `c` | `git commit -m` | Quick commit with message |
| `lg` | `git log --graph --pretty=...` | Pretty graph log with colors |
| `gcg` | `git rev-list --all --remotes --pretty=oneline \| grep` | Search all git history |
| `gap` | `git add -p` | Interactive patch/hunk staging |

### Go Development

| Alias | Command | Description |
|-------|---------|-------------|
| `gup` | `go get -u -v ./... && go mod tidy && go mod vendor` | Update & vendor all Go deps |
| `gdoc` | `godoc -http=:6060` | Start local Go documentation server |
| `gcli` | `gonew github.com/bobmaertz/tcli` | Scaffold a new CLI project |

### Navigation

| Alias | Command | Description |
|-------|---------|-------------|
| `cdw` | `cd ~/work` | Jump to work directory |
| `cdp` | `cd ~/personal` | Jump to personal directory |
| `cdd` | `cd ~/Documents` | Jump to Documents |
| `cdh` | `cd ~/.config` | Jump to config directory |
| `notes` | `cd .../iCloud~md~obsidian/Documents/Notes` | Jump to Obsidian notes |
| `cfd` | `. fzf_cd` | FZF-powered directory picker |
| `z <query>` | zoxide jump | Jump to a frecent directory (zoxide) |
| `wtc [branch]` | `cd $(wt path ...)` | cd into a git worktree (fzf picker when no branch) |

### Tmux

| Alias | Command | Description |
|-------|---------|-------------|
| `new` | `tmux new -d -s` | Create a new detached tmux session |
| `ts` | `tmux-sessionizer` | FZF picker over project dirs → session |
| `tn` | `tmux-session-new` | FZF picker over recent dirs (zoxide) → session |

### 1Password

| Alias | Command | Description |
|-------|---------|-------------|
| `opl` | `op account list` | List signed-in accounts |
| `ops` | `op signin` | Sign in to 1Password |
| `opw` | `op item list --categories login` | List all login items |
| `opg` | `op item get` | Get an item by name or ID |
| `opc` | `op item create` | Create a new item |
| `ope` | `op item edit` | Edit an existing item |
| `opd` | `op item delete` | Delete an item |
| `opp` | `op item get --fields password` | Get just the password for an item |
| `opv` | `op vault list` | List all vaults |

### SOPS / Age

| Alias | Command | Description |
|-------|---------|-------------|
| `age_key` | `cat $SOPS_AGE_KEY_FILE \| grep ...` | Print SOPS age public key |
| `age_keygen` | `age-keygen -o $SOPS_AGE_KEY_FILE` | Generate a new age key to the configured path |
| `se` | `sops --encrypt` | Encrypt a file with SOPS (stdout) |
| `sd` | `sops --decrypt` | Decrypt a file with SOPS (stdout) |
| `see` | `sops --encrypt --in-place` | Encrypt a file with SOPS in-place |
| `sde` | `sops --decrypt --in-place` | Decrypt a file with SOPS in-place |
| `sops_edit` | `sops --input-type yaml --output-type yaml` | Open a YAML file in SOPS editor |

---

## Docker Aliases & Functions

### Quick Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `dcu` | `docker compose up -d` | Start compose services (detached) |
| `dcd` | `docker compose down` | Stop compose services |
| `dim` | `docker images` | List images |
| `dps` | `docker ps` | List running containers |
| `dpsa` | `docker ps -a` | List all containers |
| `dsp` | `docker system prune --all` | Prune entire docker system |
| `npg` | `docker run ... postgres` | Start a local Postgres container |

### Docker Functions

| Function | Alias | Description |
|----------|-------|-------------|
| `dnames-fn` | `dnames` | List names of running containers |
| `dip-fn` | `dip` | Show IP addresses of running containers |
| `dex-fn` | `dex` | Exec into a running container (`bash`) |
| `di-fn` | `di` | Inspect a container |
| `dl-fn` | `dl` | Follow container logs |
| `drun-fn` | `drun` | Run a new container with `bash` |
| `dcr-fn` | `dcr` | Docker compose run |
| `dsr-fn` | `dsr` | Stop and remove a container |
| `drmc-fn` | `drmc` | Remove all exited containers |
| `drmid-fn` | `drmid` | Remove all dangling images |
| `dlab` | — | Filter containers by label |
| `dc-fn` | `dc` | Docker compose shortcut |
| `d-aws-cli-fn` | `daws` | Run AWS CLI inside a docker container |

---

## Git Config Aliases

Defined in `.gitconfig` — invoked as `git <alias>`.

| Alias | Description |
|-------|-------------|
| `git lg` / `git lg1` | Graph log — short hash, relative date, author |
| `git lg2` | Graph log — full date, two-line format |
| `git tags` | List all tags |
| `git branches` | List all branches (local + remote) |
| `git remotes` | List all remotes with URLs |

---

## Custom Scripts

Located in `bin/.local/scripts/` (added to `$PATH`).

| Script | Description |
|--------|-------------|
| `tmux-sessionizer` | FZF picker over `~/work`, `~/personal`, and `$SESSIONIZER_DIRS`. Creates or attaches to a tmux session named after the selected directory. |
| `tmux-switch-session` | FZF picker over existing tmux sessions, most recently used first, current session excluded — keybind + Enter jumps to the previous session. Runs in a tmux popup. |
| `tmux-session-new` | FZF picker over recent directories (zoxide). Creates a session for the selection or switches to it if one exists. Runs in a tmux popup. |
| `wt` | Git worktree helper. `wt add <branch> [base]`, `wt ls`, `wt rm [branch]`, `wt path [branch]`, `wt open [branch]` (opens the worktree in a tmux session via the sessionizer). |
| `fzf_cd` | FZF picker over `~/personal`, `~/work`, `~/.config`, and `$SESSIONIZER_DIRS`. Changes directory to the selection. |

### Git Worktree Convention

`wt` keeps worktrees **next to** the main checkout, in a sibling `<repo>__worktrees` directory (same layout as [workmux](https://github.com/raine/workmux)):

```
~/work/myrepo                       <- main checkout
~/work/myrepo__worktrees/user-auth  <- worktree for branch user-auth
~/work/myrepo__worktrees/bug-fix    <- worktree for branch bug-fix
```

`wt` works from anywhere inside the repo (including from within a worktree), creates the branch on `wt add` if it doesn't exist yet, and `wt open` drops the worktree straight into a tmux session.

---

## Keybindings

### Shell (Zsh)

| Binding | Action |
|---------|--------|
| `Ctrl+F` | Launch `tmux-sessionizer` |
| `Ctrl+Z` | Launch `fzf_cd` |

### Tmux

Prefix key is **`Ctrl+A`** (remapped from default `Ctrl+B`).

| Binding | Action |
|---------|--------|
| `Prefix + \|` | Split pane horizontally |
| `Prefix + -` | Split pane vertically |
| `Prefix + c` | New window (preserves path) |
| `Prefix + x` | Kill pane |
| `Prefix + X` | Kill session |
| `Prefix + h/j/k/l` | Navigate panes (vim-style) |
| `Prefix + Ctrl+L` | Send literal Ctrl+L (clear screen; root Ctrl+L belongs to vim-tmux-navigator) |
| `Prefix + Ctrl+R` | Reload tmux config |
| `Prefix + F` | Run `tmux-sessionizer` in a new window |
| `Prefix + S` | Session switcher popup (recency-sorted; `Prefix+S` + Enter = previous session) |
| `Prefix + N` | New-session popup from recent directories (zoxide) |

---

## Environment Variables

Set in `.zshrc`.

| Variable | Value |
|----------|-------|
| `XDG_CONFIG_HOME` | `$HOME/.config` |
| `SOPS_AGE_KEY_FILE` | `$HOME/.sops/key.txt` |
| `GOPATH` | `$HOME/go` |
| `LOCAL_SCRIPTS` | `$HOME/.local/scripts` |
| `LOCAL_BIN` | `$HOME/.local/bin` |

---

## Installed Toolchain (Brewfile)

### Languages & Runtimes

go, node, python@3.11, lua

### CLI / Shell Utilities

fzf, ripgrep, tmux, stow, jq, yq, gnu-sed, coreutils, tree, watch, wget, zoxide, atuin, fd, bat, eza, direnv, git-delta

### Infrastructure & DevOps

terraform, kubectl, helm, k3d, minikube, istioctl, ansible, vagrant, qemu

### Security / Encryption

sops, age, gnupg, pinentry-mac

### Editors

neovim

### Other

gh (GitHub CLI), golangci-lint, staticcheck, goreleaser, gotestsum

---

## Management

| Command | Description |
|---------|-------------|
| `./manage.sh` | Symlinks all dotfiles into `$HOME` via GNU Stow |
