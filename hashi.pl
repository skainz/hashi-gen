#!/usr/bin/perl -w

use strict;

my $size_x=10;
my $size_y=10;

my $number_islands=12;


my $field;

#init field

for (my $x=0;$x<$size_x;$x++)
{
    for (my $y=0;$y<$size_y;$y++)
    {
	$field->{$x}->{$y}=" ";
	print "$x,$y\n";
    }
}



my $i=0;

while ($i<$number_islands)
{


    my $rx=int(rand($size_x));
    my $ry=int(rand($size_y));

    my $dir=int(rand(4));

    print "$rx,$ry,$dir\n";
    if ($field->{$rx}->{$ry} eq " ")
    {
	$field->{$rx}->{$ry}="O";
    }

    $i++;
}


for (my $y=0;$y<$size_y;$y++)
{
    for (my $x=0;$x<$size_x;$x++)
    {
	print $field->{$x}->{$y};

    }
    print "\n";
}



