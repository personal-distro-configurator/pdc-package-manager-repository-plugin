# Package Manager Repository Plugin for PDC

Package Manager Repository (pmr) plugin for [Personal Distro Configurator](https://github.com/personal-distro-configurator/personal-distro-configurator/).

## Getting Started

Add on your `pdc.yml` file:

```
plugins:
  get:
    - personal-distro-configurator/pdc-package-manager-repository-plugin
```

Then configure on your `pdc.yml` file:

```
package_manager_repository:
  repository: # Repository type, such as yum, dnf, apt, pacman, etc
  update: # true or false, if you want update distro
  run_before:
    - # everything you want to execute before
  packages:
    path: # path to get packages to install, default is resources/package
    install:
      - # list of packages name to install, such as mypackage.rpm
  install:
    - # list of dependencies to install via repository
```

To execute it, add on your execute list:

```
execute:
  - plugin package-manager-repository
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
