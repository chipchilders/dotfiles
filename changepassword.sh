echo 'set imap_pass = "'$1'"' > /tmp/chgpass
gpg -e -r 'chip.childers@sungard.com' /tmp/chgpass
mv /tmp/chgpass.gpg ~/.mutt/passwords.gpg
rm /tmp/chgpass
echo $1$'\n' | sudo -S -p 'sudo:' -s "chmod a+w /etc/postfix/sasl/passwd"
echo '[smtp.gmail.com]:587    chip.childers@sungard.com:'$1 > /etc/postfix/sasl/passwd
echo $1$'\n' | sudo -S -p 'sudo:' -s "chmod a-w /etc/postfix/sasl/passwd"
echo $1$'\n' | sudo -S -p 'sudo:' -s "postmap /etc/postfix/sasl/passwd"
