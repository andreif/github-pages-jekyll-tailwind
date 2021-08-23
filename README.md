# github-pages-jekyll-tailwind

1. Use this repo as template.

2. Set deploy keys in the new repo.

    ```sh
    # generate a new SSH key
    ssh-keygen -t ed25519 -C "" -P "" -f x
    
    # copy public to repo deploy keys https://github.com/andreif/example/settings/keys/new
    # and (important!) allow write access (name does not matter, use "GitHub Actions" for example)
    cat x.pub | pbcopy
    
    # copy private to repo secrets https://github.com/andreif/example/settings/secrets/actions/new
    # and (important!) call it DEPLOY_KEY
    cat x | pbcopy
    
    # remove the key from local machine
    rm x x.pub
    ```

3. Enable GitHub Pages https://github.com/andreif/example/settings/pages

4. Restart the failed workflow run to deploy https://github.com/andreif/example/actions/workflows/deploy.yml
