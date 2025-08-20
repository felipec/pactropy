Over time the amount of disorder in any system increases, unless some effort is
spent reducing it.

Packages often clutter linux systems because there's no easy way to list
unwanted packages, that's what `pactropy` does.

Given a list of wanted "essential" packages, `pactropy` finds explicitly
installed packages that are not in that list.

For example:

```yaml
packages:
  - base
  - linux
  - zsh
  - neovim
  - less
  - sudo
```

If you run `pacman -Qe`, that will list "neovim", but `pactropy` will not,
because it's marked as "essential" (you actually do want it on your system).

There are other ways of displaying potentially unwanted packages, for example
using `diff` with an ordered list of packages, like
[declaro](https://github.com/mantinhas/declaro) does. But this is not very
convenient.

## Installation

Copy the script anywhere in your `$PATH` and make it executable (e.g. `~/bin`).

Create a list of your essential packages in `~/.config/pactropy/`, for example
the following `essential.yml`:

```yaml
packages:
  - base
  - linux
```

Execute the `pactropy` command.

## Features

Compared to other methods, `pactropy` has several advantages:

1. Standard YAML format (including comments)
2. Automatically sorted by size
3. Support for groups
4. Deep dependency checks
5. Multiple lists of packages
6. Single script
7. Check install reason changes
