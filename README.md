```
# Not piping directly into sh since the `read` call will fail
curl https://raw.githubusercontent.com/emilyhorsman/dotfiles/master/bootstrap.sh -o bootstrap.sh
chmod +x bootstrap.sh
./bootstrap.sh
```
