bash-passphrase-generator
=========================

Moderately secure password generator written in bash. At least it's better than generating your own passphrases :)

I say 'moderately secure' because it uses the bash built-in $RANDOM variable instead of /dev/random (no need to use
urandom since it requires relatively little entropy).

Usage
=====

./passphrase

And ctrl+c (interrupt) to stop picking random words. Yeah it's pretty unpolished. It was meant for just my own usage anyway.
