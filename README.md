# pelican-themes-preview

A repo to test and share the the proof of concept laid out at 
https://github.com/getpelican/pelican-themes/issues/731#issuecomment-1365656511

___Hey let's create a static site to preview the Pelican static site generator's themes___

Prep:
```
pip install pelican[markdown]
git clone --depth=1 https://github.com/getpelican/pelican-blog`.git
git clone --depth=1 --recurse-submodules https://github.com/getpelican/pelican-themes.git
```

Create `make-theme-outputs.sh` and fill with:

```
#!/bin/bash
# silence warnings about missing images folder, which isn't in code repo 
mkdir -p "pelican-blog/content/images"
for i in pelican-themes/* ; do
  if [ -d "$i" ]; then
    theme=$(basename "$i")
    echo "### $theme ###"
    pelican \
      pelican-blog/content \
      --settings pelican-blog/pelicanconf.py \
      --relative-urls \
      --theme-path pelican-themes/$theme \
      --output output/$theme \
      --ignore-cache \
      --delete-output-directory
  fi
done
```

Then make the script executable:  `chmod +x make-theme-outputs.sh` and (attempt to) generate all theme previews:

```
./make-theme-outputs.sh
```

Open results (`output/$theme_name/index.html`) in live preview browser (4 open here):
![image](https://user-images.githubusercontent.com/486200/209745390-dc8bf82e-ea1b-4625-8fc7-af3755328a41.png)


I'm happy to transfer ownership of this repo to @getpelican if it suits their aims.
