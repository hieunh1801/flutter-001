# flutter_001

## Deploy to website

https://hieunh1801.github.io/flutter-001/

```bash
# step 1: build
flutter build web --base-href "/flutter-001/"

# step 2: push to gh-pages
git add -f build/web
git commit -m "new version"
git subtree push --prefix build/web origin gh-pages
```
