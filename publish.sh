# Example script to generate HTML and push to local gh-pages directory.

#build site from markdown
jekyll build

# remove old files
rm -R ../tgrimes.github.io/public/cv/*


# re-add new
cp _site/index.html ../tgrimes.github.io/public/cv/
cp -R _site/media ../tgrimes.github.io/public/cv/
