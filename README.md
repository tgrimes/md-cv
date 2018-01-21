# md-cv

Credit goes to Ben Moore (see his [original blog post](http://blm.io/blog/markdown-academic-cv/) for details).

This is a jekyll-based markdown CV, which currently looks something like [this](http://tgrimes.github.io/cv), Forked from the (great) markdown CV of [elipapa](https://github.com/elipapa/markdown-cv).

### Connecting to blogdown

Edit `publish.sh` so that `_site/index.html` and `_site/media` files are copied into the public directory `[blogdown dir]/public/cv/`. For example:

```
 # Example script to generate HTML and push to local gh-pages directory.

#build site from markdown
jekyll build

# remove old files
rm -R ../tgrimes.github.io/public/cv/*


# re-add new
cp _site/index.html ../tgrimes.github.io/public/cv/
cp -R _site/media ../tgrimes.github.io/public/cv/
```

### Updating the CV

Edit index.md to update the CV. Run the command:

```
cd GitHub/md-cv
./publish.sh
```

(You may need to [install jekyll](https://jekyllrb.com/docs/installation/).)


### Editing css file

Make changes to the `media/cv-screen.css` file. The format for the PDF is set by `media/cv-print.css`. Run `./publish.sh` to update.


### PDF version