alias heroku-cli="docker run --rm -it -v $HOME/.netrc:/root/.netrc heroku-cli"

function heroku_facil_fn(){
    heroku-cli "$@" --app facilerp
}

alias heroku-facil=heroku_facil_fn;

