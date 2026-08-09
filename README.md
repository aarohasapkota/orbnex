# orbnex

A nexus of orbs. tmux command center — every tab is a grid of six terminals. Run `orbnex` in a project folder like you'd run `code`.

Adapts to any screen: 3×2 on wide terminals, 2×3 on narrow, stacked on tiny — re-fits automatically on resize. Chrome-style tabs: clickable tab strip (movable top/bottom), middle-click closes a tab, ＋ opens one, and a tab-manager sidebar can dock left or right and follows the active tab.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/aarohasapkota/orbnex/main/install.sh | bash
```

## Use

```
orbnex                      launch/attach for current folder
orbnex <dir>                launch/attach for <dir>
orbnex ls                   list sessions
orbnex newtab               new tab (6-orb grid, same folder)
orbnex dock left|right|off  tab-manager sidebar
orbnex bar top|bottom       move the tab strip
orbnex kill [n]             kill a session
orbnex killall              kill everything
```

## Keys (prefix = Ctrl-b)

```
prefix c      new tab (6-orb grid)
prefix C      new tab (single pane)
prefix t      toggle tab-manager sidebar
prefix b      flip tab strip top/bottom
prefix w      tab overview
Opt+arrows    move between panes
Opt+1..9      jump to tab
prefix z      zoom pane
prefix g      re-fit grid to screen
prefix d      detach
```

Mouse: click a tab to switch, middle-click to close, click ＋ for a new tab.
In the sidebar: `1-9` go, `n` new, `x` close, `q` hide.
