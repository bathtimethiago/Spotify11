<h1 align="center">
  <br>
  Spotify11 BETA
  <br>
</h1>

<p align="center">
  <strong>A fluent theme based on Fluent UI of the new Windows 11.</strong>
</p>

![preview](https://github.com/bathtimethiago/Spotify11/blob/main/preview.png)

\
/ IMPORTANT /

 The new version of spotify changed several parameters of the user.css, so it is necessary, while I work to update the theme, to download version 1.1.78.765 as it is the most recent and unchanged

\
/ FEATURES /

- Premium ads block
- Visual bugs fix
- New most legit theme for W11
- More customizable

\
/ INSTALLATION /

1. Download the files
2. Cut and paste into the .spicetify folder
3. Open Terminal and exec the commands below:

```
spicetify config experimental_features 0
spicetify config home_config 0
spicetify config sidebar_config 0
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

| [![bathtimethiago]([https://github.com/birobirobiro.png?size=100](https://scontent-gig2-1.cdninstagram.com/v/t51.2885-19/279013854_1315947925590886_223564210228458333_n.jpg?size=120))](https://github.com/bathtimethiago) |
| ----------------------------------------------------------------------------------------------- |
| [bathtimethiago](https://github.com/bathtimethiago)                                                  |

/ WILLIAMCKHA /

The base file used was created by him, you can see more ![Here](https://github.com/williamckha/spicetify-fluent)
