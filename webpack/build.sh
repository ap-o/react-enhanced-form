#!/bin/sh

lib () {
  echo 'Start building lib 👷'
  webpack --config webpack/webpack.config.lib.js --bail
  cp index.js lib
  echo '👏'
}

docs () {
  echo 'Start building docs 👷'
  webpack --config webpack/webpack.config.docs.js --bail
  echo '👏'
}


if [ $1 == "lib" ]; then lib
elif [ $1 == "docs" ]; then docs
fi
