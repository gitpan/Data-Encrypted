#!/usr/bin/perl -w

use lib "blib/lib";
use strict;

use Data::Encrypted;
use Inline::Files;

open(ENCRYPT, "+<") or die $!;

my $enc = new Data::Encrypted FH => \*ENCRYPT;
my $password = $enc->encrypted("password");

print "Password entered: $password\n";

__ENCRYPT__
-----BEGIN COMPRESSED RSA ENCRYPTED MESSAGE-----
Scheme: Crypt::RSA::ES::OAEP
Version: 1.24

eJwBkQBu/zEwADEyOABDeXBoZXJ0ZXh0xbzDGHdmcuRXpgfNzktb5kMcBpRLgChqbb6VvcLLHd/B
g5hA0GdI6Nd862dfHE2w/l3lldNK61lVmbtFdE2RHrdky8+4NeQ1F9IN5W9dq1hFaeokyqOogHWx
9v7hJqYcH8599UWRfYli+RVCqp0LDMt7OnMwAiuTE9uUdCnorpqIhEaN
=oDt1BlJ4BcF9nPcbgqHSGQ==
-----END COMPRESSED RSA ENCRYPTED MESSAGE-----

