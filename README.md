# tmux-vim-env
Configurations for tmux &amp; vim for go, python, ts &amp; js development

# Process to setup
- Run setup.sh script using below command:

```sh
source setup.sh
```
This will create symlinks for tmux and vim configurations and setup all the plugins.

- To run vim for goland development, run below command:

```sh
tx start go
```

- To run vim js or ts development, run below command:

```sh
tx start js
```

- To run vim for python development, run below command:

```sh
tx start py
```

Where tx is alias for tmuxinator, a gem for easy tmux configurations.
