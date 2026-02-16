# homebrew-aipm

Homebrew tap for [aipm](https://github.com/ComputelessComputer/aipm) — AI-powered project manager for the terminal.

## Install

```sh
brew tap ComputelessComputer/aipm
brew install aipm
```

## Setup

Set your OpenAI API key:

```sh
export OPENAI_API_KEY="sk-..."
```

Then run `aipm` to open the TUI, or pass an instruction directly:

```sh
aipm                          # open TUI
aipm "create a task for X"    # headless AI mode
```

## Upgrade

```sh
brew upgrade aipm
```

## Uninstall

```sh
brew uninstall aipm
brew untap ComputelessComputer/aipm
```

## More

See the main repo for full docs: [ComputelessComputer/aipm](https://github.com/ComputelessComputer/aipm)
