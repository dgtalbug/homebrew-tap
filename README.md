# homebrew-tap

Homebrew tap for [iris](https://github.com/dgtalbug/iris) — visual, versioned HTML docs for AI coding work.

## Install

```bash
brew install dgtalbug/tap/iris
```

Use the fully qualified name. `brew install iris` resolves to an unrelated cask of the
same name in homebrew-cask, so the tap prefix is required rather than optional.

## Verify

```bash
iris --version
```

## Upgrade

```bash
brew update && brew upgrade dgtalbug/tap/iris
```

## What this installs

The formula builds from the published npm tarball on the npm registry, which is the
artifact iris releases. Homebrew is a convenience wrapper over that same package; `npx
@dgtalbug/iris` and `pnpm add -g @dgtalbug/iris` install the identical build.

Requires Node.js, which Homebrew installs as a dependency.
