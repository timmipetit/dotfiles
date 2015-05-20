selenium-chrome-debug() {
    vinagre $(docker port $(docker ps | grep node-chrome-debug | grep -o '^[0-9a-f]*') 5900) &!
}

selenium-firefox-debug() {
    vinagre $(docker port $(docker ps | grep node-firefox-debug | grep -o '^[0-9a-f]*') 5900) &!
}

docker-selenium() {
    docker rm $(docker ps -a -q);
    docker run -d --name selenium-hub -p 4444:4444 selenium/hub:2.45.0;
    docker run -d -P --link selenium-hub:hub selenium/node-chrome-debug:2.45.0;
    docker run -d -P --link selenium-hub:hub selenium/node-firefox-debug:2.45.0;
}
