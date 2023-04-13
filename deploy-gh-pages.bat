vite build
git add dist -f
git commit -m "publish dist"
git subtree push --prefix dist origin gh-pages