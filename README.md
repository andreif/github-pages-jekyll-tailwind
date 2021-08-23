# github-pages-jekyll-tailwind

```sh
# generate a new SSH key
ssh-keygen -t ed25519 -C "" -P "" -f x

# copy public to repo deploy keys https://github.com/andreif/testing/settings/keys/new
# and allow write access (name does not matter, use "GitHub Actions" for example)
cat x.pub | pbcopy

# copy private to repo secrets https://github.com/andreif/testing/settings/secrets/actions/new
# and (important!) call it DEPLOY_KEY
cat x | pbcopy

# remove
rm x x.pub
```
