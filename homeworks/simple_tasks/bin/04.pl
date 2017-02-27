#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Поиск номера первого не нулевого бита.

=head1 run ($x)

Функция поиска первого ненулевого бита в 32-битном числе (кроме 0).
Пачатает номер первого ненулевого бита в виде "$num\n"

Примеры: 

run(1) - печатает "0\n".

run(4) - печатает "2\n"

run(6) - печатает "1\n"

=cut

sub run {
    my ($x) = @_;
    my $num = 0;
    my $i = 0;
    # ...
    # Вычисление номера первого ненулевого бита 
    # ...
    while ($x!=0){
      $i++;
      #$num += $x & 1;
      $x = $x >> 1; 
      if($x & 1) # check bit & 1.
      {
        $num = $i;
        last;
      }
      
    }
    print "$num\n";
}

1;