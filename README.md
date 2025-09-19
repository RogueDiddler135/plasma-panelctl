<div align="center">

# plasma-panelctl

An expandable control panel to change the visibility of your panels using keybinds.

</div>

> [!IMPORTANT]
> Please make sure to restart Plasma and check if it works before making a report.

> [!WARNING]
> **Project is under active development. Look for BREAKING CHANGES in the Release notes.**

> - Make sure you're using the latest version of the plugin and as close as possible to the [latest Plasma](https://kde.org/search/?s=KDE+Plasma6) to avoid compatibility issues.

## Current Features

**Panel Configurations**

- Create new panel keybinds  
  - Choose by number or location (top, bottom, left, right)  
  - Select up to 4 visibility options in any order:  
    1. Always visible  
    2. Auto hide  
    3. Dodge windows  
    4. Windows go below  
  - Assign a keybind toggle  
  - Enable or disable on completion  

- Edit existing panels  
  - Change visibility  
  - Change keybind  
  - Enable/disable

**Panel State Control**

- List all configured panels  
  - Shows enabled, disabled, and unbound  
  - Displays location, visibility mode, and assigned keybind  

- Toggle visibility using assigned keybinds  
- Force panels into “Windows go below” mode to see them

**Management & Utility**

- Check installed version  
- Built-in help command listing all panelctl options  
- Supports multiple panels, keybinds, and quick switching  

---
# Available commands:
- list | lists all panels
- create | create a new panel configuration
- uninstall | remove panelctl from your desktop
- version | displays panelctl version
- visible | makes panels selected onto option “Windows go below” to make them visually appear
- help | lists all commands regarding panelctl
- edit | edit a certain aspect of a panel
- enable | enable a panel’s configuration
- disable | disable a panel’s configuration
