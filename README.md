# Spotify11 BETA
A fluent theme based on theme by williamckha

![preview](https://github.com/bathtimethiago/Spotify11/blob/main/preview.png)

/ FEATURES /

- Premium ads block
- Visual bugs fix
- New most legit theme for W11
- More customizable

/ INSTALLATION /

1. Download the files
2. Cut and paste into the .spicetify folder
3. Open Terminal and exec the commands below:

\spicetify config extensions spotify11.js\
\spicetify config current_theme Spotify11\
\spicetify config color_scheme dark\
\spicetify apply\


/ PATCHES /

1. Open the .spicetify folder
2. Open config-xpui.ini with notepad
3. After any [] add the parameter:

 [Patch]
 xpui.js_find_8008 = ,(\w+=)32,
 xpui.js_repl_8008 = ,${1}56,
