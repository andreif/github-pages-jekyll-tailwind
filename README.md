# github-pages-jekyll-tailwind

1. Use this repo as template.

2. Set deploy keys in the new repo.

  - generate a new SSH key
    ```sh
    ssh-keygen -t ed25519 -C "" -P "" -f x
    ```

  - copy public to repo deploy keys https://github.com/andreif/example/settings/keys/new
    and (**important!**) allow write access (name does not matter, use "GitHub Actions" for example)
    ```sh
    cat x.pub | pbcopy
    ```

  - copy private to repo secrets https://github.com/andreif/example/settings/secrets/actions/new
    and (**important!**) call it `DEPLOY_KEY`
    ```sh
    cat x | pbcopy
    ```
    
  - remove the key from local machine
    ```sh
    rm x x.pub
    ```

3. Restart the failed workflow run to deploy `gh-pages` branch 
   https://github.com/andreif/example/actions/workflows/deploy.yml

4. Enable GitHub Pages for `gh-pages` branch https://github.com/andreif/example/settings/pages
