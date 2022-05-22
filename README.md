<h1 align="center">
  <br>
  Spotify11 BETA
  <br>
</h1>

<p align="center">
  <strong>A fluent theme based on Fluent UI of the new Windows 11.</strong>
</p>

<p align="center">
  <img src="https://github.com/bathtimethiago/Spotify11/blob/main/preview.png"/>
</p>

## Infos

/ IMPORTANT /

 The new version of spotify changed several parameters of the user.css, so it is necessary, while I work to update the theme, to download version 1.1.78.765 as it is the most recent and unchanged
 
 href="https://spotify.br.uptodown.com/windows/download/4431137">Windows</a>
 href="https://spotify.br.uptodown.com/mac/download/4431129">macOS</a>

\
/ FEATURES /

- Premium ads block
- Visual bugs fixes
- New most legit theme for W11
- More customizable

## Steps

/ INSTALLATION /

1. Download the files
2. Cut and paste into the .spicetify folder
3. Open Terminal and exec the commands below:

```
spicetify config overwrite_assets 1
spicetify config extensions spotify11.js
spicetify config current_theme Spotify11
spicetify config color_scheme dark
spicetify apply
```

\
/ PATCHES /

1. Open the .spicetify folder
2. Open config-xpui.ini with notepad
3. Add the parameter below:

```
[Patch]
xpui.js_find_8008 = ,(\w+=)32,
xpui.js_repl_8008 = ,${1}56,
```

4. Save and apply with "spicetify apply"


## Credits

/ WILLIAMCKHA /

<p align="left">
  The base file used was created by him, you can see more <a href="https://github.com/williamckha/spicetify-fluent">Here</a>
</p>
