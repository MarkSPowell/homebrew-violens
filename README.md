# Homebrew tap for VioLens

[VioLens](https://violens.dev) is a free, MIT-licensed tool for inspecting
HTTP and HTTPS traffic, a successor to Fiddler Classic. This tap installs
its macOS app (Apple silicon, macOS 11 or later).

```
brew install markspowell/violens/violens
```

That installs `VioLens.app` in Applications, and `violens-exec`, the
command-line tool scripts use to drive the app, on your path. The app is
the same signed and notarized `.dmg` as on the
[releases page](https://github.com/MarkSPowell/VioLens/releases).

The first time you click Start, VioLens asks to trust a root certificate of
its own, so it can read HTTPS traffic. Before uninstalling, remove it with
**Tools > Remove Root Certificate**. Then:

```
brew uninstall violens
```

`brew uninstall --zap violens` also deletes VioLens's settings
(`~/Library/Application Support/VioLens`).

Problems with VioLens itself go in the
[VioLens issues](https://github.com/MarkSPowell/VioLens/issues).
