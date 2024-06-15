# Notebookinator Quick Start Template

In order to use this template you'll need to make a new repository based off of this one.

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/18e038d1-fa42-47f2-afb1-05b70bb391d8)

Once you do that, you have two options:

- edit locally
- edit in a codespace

### Edit in Codespace

This is by far the easier option, but it is limited by the fact that you're editing your code in the cloud, leading to slower performance overall.

To get started, click the create codespace button:

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/0b8a2c2b-e6b2-4099-aac2-49022fee93e9)

Once you've done that, you're good to go!

### Edit Locally

If you want to edit your notebook locally, you can use the [Devcontainers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) VSCode extension.

Once you have it installed, press the button in the bottom left of VSCode to open the remote menu.

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/93efc90f-e498-4870-a47e-e76989881bf9)

Then, select the `reopen in container` option.

Once you do that, you're good to go!

You can compile your notebook by typing the following command into the terminal:

```sh
typst watch main.typ
```

## Usage

You can compile your notebook by typing the following command into the terminal:

```sh
typst watch main.typ
```

![image](https://github.com/The-Notebookinator/quick-start-template/assets/75806385/dfb1ded7-ffe3-4dcc-aec4-a15a27fbf3b2)

The resulting PDF can be then viewed with the already installed PDF viewer.

Alternatively you can view the live output in a separate tab with `typst-live`:

```sh
typst-live main.typ
```
