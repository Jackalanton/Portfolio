#!/usr/bin/perl
use Digest::SHA qw(sha256_hex);
use strict;
use warnings;
 
print "Type a password for us to crack using Letters (A-Z, a-z), and Numbers (0-9): ";
my $password = <STDIN>;
chomp $password;

while ($password !~ /^[A-Za-z0-9]+$/) {
    print "Sorry it must only contain: (A-Z, a-z, 0-9). Try again:";
    my $password = <STDIN>;
    chomp $password;

    if ($password =~ /^[A-Za-z0-9]+$/) {
        last;
    }
}

#hash the password
my $passwordHash = sha256_hex($password);

print "We will now attempt to crack '$passwordHash'\n";

my @chars = ('A'..'Z', 'a'..'z', 0..9);
my $match = 0;
my $attempts = 0;

sub guess_password {
  my ($prefix, $length) = @_;
  $attempts++;
  
  if ($length == 0) {
    if (sha256_hex($prefix) eq sha256_hex($password)) { 
      print "Password found: $prefix\n";
      $match = 1;
    }
    return;
  }
  
  foreach my $char (@chars) {
    last if $match;
    guess_password($prefix . $char, $length - 1);
  }
  
  # Overwrite the last printed line and print the current attempt
  print "\r", ' ' x (length("Attempt: $attempts") + 1), "\r";
  print "Attempt: $attempts";
}

my $length = 1;
while (!$match) {
  guess_password('', $length);
  $length++;
}