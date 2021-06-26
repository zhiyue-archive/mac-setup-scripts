#!/bin/bash

# ref:https://gist.github.com/jazzqi/a3af8045ef39b050347a200d12c07d02

echo -e '#!/bin/bash\n' > list.sh

echo -e '########### Brew Install List ###########' >> list.sh
brew leaves | sed 's/^/brew install /' >> list1.sh &&

echo -e '\n########### Brew Cask Install List ###########' >> list.sh &&
brew list --cask | sed 's/^/brew install --cask /' >> list1.sh &&

echo -e '\n########### Mac App Store Install List ###########' >> list.sh &&
mas list | sed 's/\ /\ \ #\ /' | sed 's/^/mas install /' >> list.sh

echo -e '\necho "And done..."' >> list.sh

echo "And done..."