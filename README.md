# Bash Games

## Number Guess

> *Guess the number between 1 and 100!!!*

### Build

``` sh
docker build -t rjchicago/number-guess:${VERSION:-latest} ./number-guess
```

### Run

``` sh
docker run --rm -it rjchicago/number-guess
```
