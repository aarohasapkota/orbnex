# orbnex

A nexus of orbs. tmux command center — every window is a 3×2 grid of six terminals. Run `orbnex` in a project folder like you'd run `code`.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/aarohasapkota/orbnex/main/install.sh | bash
```

## Use

```
orbnex            launch/attach for current folder
orbnex <dir>      launch/attach for <dir>
orbnex ls         list sessions
orbnex kill [n]   kill a session
orbnex killall    kill everything
```

## Keys (prefix = Ctrl-b)

```
prefix c      new window (6-orb grid)
prefix C      new window (single pane)
Opt+arrows    move between panes
Opt+1..9      jump to window
prefix z      zoom pane
prefix g      restore grid layout
prefix d      detach
```
