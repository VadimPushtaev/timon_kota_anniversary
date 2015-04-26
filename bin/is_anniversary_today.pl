#!/usr/bin/env perl

use strict;
use warnings;

use DateTime;
use Readonly;

Readonly my $ANNIVERSARY_MONTH => 4;
Readonly my $ANNIVERSARY_DAY => 25;

my $now = DateTime->now(time_zone => 'local');

my $is_anniversary_today = 0;

if ($now->month() == $ANNIVERSARY_MONTH && $now->day() == $ANNIVERSARY_DAY) {
    $is_anniversary_today = 1;
}

exit($is_anniversary_today ? 0 : 1);

=head1 NAME

is_anniversary_today.pl - check whether anniversary is today

=head1 SYNOPSIS

    if ./is_anniversary_today.pl
    then
        echo "Yup, it's today"
    else
        echo "Nah, it's not"
    fi

=head1 AUTHOR

Catherine Pushtaeva, Vadim Pushtaev

=cut
