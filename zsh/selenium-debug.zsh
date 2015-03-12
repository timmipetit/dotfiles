selenium-chrome-debug() {
    vinagre $(docker port $(docker ps | grep node-chrome-debug | grep -o '^[0-9a-f]*') 5900) &!
}

selenium-firefox-debug() {
    vinagre $(docker port $(docker ps | grep node-firefox-debug | grep -o '^[0-9a-f]*') 5900) &!
}
