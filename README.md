# Chromium extension template

A template to create chromium extensions

## How To Use
#### Git
1. Clone repo
    ```bash
    $ git clone https://github.com/MightyCoderX/chromium-extension-template.git
    ```
1. Delete .git folder
    ```bash
    $ rm -rf .git
    ```
1. Initialize new repo if you need one
    ```bash
    $ git init
    ```
#### Github CLI
If you have github cli and would like to directly create a repo based on this template use:
```bash
# Private repo
$ gh repo create <new-repo-name> --private --template="https://github.com/MightyCoderX/chromium-extension-template"
```
or
```bash
# Public repo
$ gh repo create <new-repo-name> --public --template="https://github.com/MightyCoderX/chromium-extension-template"
```

## Manifest
See the [docs](https://developer.chrome.com/docs/extensions/mv3/manifest/) for more info

## Icons 
To generate the required base icons:
1. go to [https://derivv.com/](https://derivv.com/)
1. select a base, square, image which dimensions should be at least 256x256
1. import [`icons-config.csv`](./icons-config.csv) by clicking on import config and selecting the file
1. click on _"Create Derivative Images"_ to generate the icons
1. move the images to your icons folder
1. delete [`icons-config.csv`](./icons-config.csv) file when you are done
