<h3 align="center">Chromium Extension Template</h3>
<p align="center">All the boilerplate you need to start creating a chromium extension!</p>

<br>
<br>

## How To Use
Follow the below steps to setup an environment for your new chrome extension

<br>

### Clone Template
To create your repo based on this template you can use either git, [GitHub CLI](https://cli.github.com/), or any desktop client you like below I listed the first two ways.

<br>

#### Github CLI (Fastest Method)
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

Then clone the created repo
<br>
<br>

#### Git
1. Clone repo
    ```bash
    git clone https://github.com/MightyCoderX/chromium-extension-template.git
    ```
1. Delete .git folder
    ```bash
    rm -rf .git
    ```
1. Initialize new repo if you need one
    ```bash
    git init
    ```

<br>
<br>

### Edit Manifest
#### Replace the value of:
1. `author` with the name you wanna use
1. `name` with the name of your extension
1. `short_name` with a short name for your extension
1. `description` with a description of your extension

#### Icons 
To generate the required base icons:
1. Go to [https://derivv.com/](https://derivv.com/)
1. Select a base, square, image which dimensions should be at least 256x256
1. Import [`icons-config.csv`](./icons-config.csv) by clicking on import config and selecting the file
1. Click on _"Create Derivative Images"_ to generate the icons
1. Download all of the icons
1. Move the icons in the `src/icons` folder
1. Delete [`icons-config.csv`](./icons-config.csv) file when you are done

To use the icons set the correct paths in the `icons` object
```json
"icons":
{
    "16": "icons/16x16.png",
    "48": "icons/48x48.png",
    "128": "icons/128x128.png",
    "256": "icons/256x256.png"
},
```

#### Next
See the [Chrome Dev Docs](https://developer.chrome.com/docs/extensions/mv3/) for more info about [manifest.json](https://developer.chrome.com/docs/extensions/mv3/manifest/)

<br>

### Add To Browser

1. Go to the extensions page of your browser `about://extensions`
1. Toggle _"Developer Mode"_ on
1. Click on _"Load unpacked"_
1. Navigate to the `src` folder (the one which has manifest.json as a direct child)
1. Select the folder
1. Every time you make a change reload your extensions using the button displayed in it's card

![image](https://user-images.githubusercontent.com/36588044/199308355-4f12c6c5-633e-4774-8df8-d1ce22b4af9a.png)


### Package Extension
Run `package.bat` that generates both the `.crx` which is the extension in a binary format and the `.pem` key file. Both of them are needed to upload the extension to the store.

<br>
<br>
<br>

And you are now finally ready to create your own extension and test it.
Have fun 🙂!
