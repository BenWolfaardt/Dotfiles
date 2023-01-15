# openssl
export CFLAGS="-I$(brew --prefix openssl@1.1)/include $CFLAGS"
export LDFLAGS="-L$(brew --prefix openssl@1.1)/lib $LDFLAGS"

# poetry
export POETRY_VIRTUALENVS_IN_PROJECT=1