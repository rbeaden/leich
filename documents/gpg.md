* GPG

 gpg-Leich
 ===============

 > Leich | 8th April, 2019

 --------------------------
* gpg

 ([https://www.gnupg.org/](https://www.gnupg.org/)).

 'sudo apt install pgpgpg'

  'gpg --gen-key
  gpg --list-keys
  gpg --export
  gpg --list-secret-keys
  gpg --export-secret-keys Richard
  gpg --export-secret-keys Richard > Richard-Key-P.asc
  gpg --delete-keys
  gpg --delete-secret-keys Richard
  gpg --help
  gpg --full-generate-key
  gpg --export Richard > Richard-Key.pub
  gpg -e -r Richard test.txt
  gpg -o test.txt -d test.txt.gpg
  gpg -d test.txt.gpg
  gpg -d test.txt.gpg > test.txt
  gpg -d test.txt.gpg --output test.txt
  gpg --output test.txt -d test.txt.gpg
  gpg --armor --output public-key.gpg --export Richard'


 ---------------
