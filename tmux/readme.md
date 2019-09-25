# TMUX Config and Plugins

These go into the user's home directory.

## Plugins

1. TPM - TMUX Plugin Manager

    `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

2. tmux-ressurect

3. tmux-cpu

4. tmux-sensible

## tmux.conf

Config file for tmux.

Inspired from a few around the web with some minor tweaks here and there.

## tmux cheatsheet

### Session

| -------- | -------- |
| start new | tmux |
| start new (with session name) | tmux new -s SessionName |
| attach | tmux a `or` tmux at `or` tmux attach |
| attach to named session | tmux a -t SessionName |
| list sessions | tmux ls |
| kill session | tmux kill-session -t SessionName |
| kill all tmux sessions | `tmux ls | grep : | cut -d. -f` | awk '{print substr($1, 0, length($1)-1)}' | xargs kill` | 

### Prefixed commands

In tmux hit the prefix[default `Ctrl+b` | _I use `Ctrl+a`_] followed by one of the following

| -------- | --------- |
| s | list sessions|
| $ | name session |
| __Windows and tabs__ | |
| c | create window |
| w | list windows |
| n | next window |
| p | previous window |
| f | find window |
| , | name window |
| & | kill window |
| __Panes and splits__ | |
| o | swap panes |
| q | show pane numbers |
| x | kill pane |