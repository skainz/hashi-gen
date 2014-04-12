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
#	print "$x,$y\n";
    }
}



my $i=0;



#erste insel setzen

my $rx=int(rand($size_x));
my $ry=int(rand($size_y));

while (!($field->{$rx}->{$ry} eq " "))
{
     $rx=int(rand($size_x));
     $ry=int(rand($size_y));
    print "$rx,$ry\n";
}
    $field->{$rx}->{$ry}="O";

$i++;

my $sx;
my $sy;

# loop solange, bis anzahl der inseln erreicht

while ($i<$number_islands)
{
#von aktueller position zufällige richtung wählen
    $sx=(int(rand(2))*2)-1;
    $sy=(int(rand(2))*2)-1;


#wenn das feld in diese richtung frei ist, einen schritt machen

    if ($field->{$rx+$sx}->{$ry+$sy} eq " ")
    {
	$rx=$rx+$sx;
	$ry=$ry+$sy;
	$field->{$rx}->{$ry}=".";
	
    } else
    {
	#feld besetzt, richting ändern.
    }
    print "$sx,$sy\n";
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


die("aus");

while ($i<$number_islands)
{
# step 1: freies feld aussuchen

 
}



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



