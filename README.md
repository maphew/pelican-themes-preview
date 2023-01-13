# pelican-themes-preview

___A static site to preview the Pelican static site generator's themes___

A repo to test and share the the proof of concept laid out at Pelican Themes
[issue #740](https://github.com/getpelican/pelican-themes/issues/740)

**Latest results: https://maphew.github.io/pelican-themes-preview/**

**Image gallery:** https://imgur.com/gallery/cL2HI2e
(snapshot in time, no promise of keeping up to date)


Prep:
```
pip install pelican[markdown] invoke mako
git clone --depth=1 --recurse-submodules https://github.com/getpelican/pelican-themes.git
```

(Attempt to) generate all theme previews:

    sh ./make-theme-outputs.sh

Only make previews for themes that start with "boot":

    sh ./make-theme-outputs.sh boot

Build a master index.html for all the output folders:

    python make-index.py output/

Preview using local server (http://localhost:8000/):

    python -m http.server 8000 -d output


Open results (`output/$theme_name/index.html`) in live preview browser (4
open in this screenshot):
![image](https://user-images.githubusercontent.com/486200/209745390-dc8bf82e-ea1b-4625-8fc7-af3755328a41.png)


I'm happy to transfer ownership of this repo to @getpelican if it suits their aims.

[0]: make-theme-outputs.sh 
