#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use Fcntl;
use List::Util qw{sum};
	
	my @seqs;
	my @adn;
	my @tim;
	my @cit;
	my @gua;
	my @ura;
	my $a = $ARGV[0];
	sysopen(DATA,$a,O_CREAT|O_RDWR) or die "$!\n";
		my $r = 0;
		while(my $line = <DATA>){
			chomp($line);
			push(@seqs,$line);
		}
		close($a);
		my $t = -1;
		until( ($t >= $#seqs)){
			$t++;
			my $lopp = length($seqs[$t]);
			print "$lopp	$seqs[$t]\n";
		}
		my $gre = 0;
		my $ubb = 0;
		my @lenss;
		#my $flen = $len 
		until($gre >= $#seqs){
			$gre++;
			$ubb += length($seqs[$gre]);
			push(@lenss,$ubb);
		}
		my $gary = 0;
		for(my $t = 0; $t <= $#lenss;$t++){
			$gary += $lenss[$t];
		}
		print "Value:	$gary\n";
		my $re = 0;
		until($r >= $#seqs){
			$r++;
			my $count = $seqs[$r] =~ tr/A//;
			push(@adn,$count);
		}
		my $z = -1;
		my $sum = 0;
		until($z >= $#adn){
			$z++;
			$sum += $adn[$z];
		}
		for(my $t = 0;$t<= $#seqs;$t++){
			my $count = $seqs[$t] =~ tr/T//;
			push(@tim,$count);
		}
		my $zz = -1;
		my $sim = 0;
		until($zz >= $#tim){
			$zz++;
			$sim += $tim[$zz];
		}
		for( my $t = 0;$t <= $#seqs;$t++ ){
			my $count = $seqs[$t] =~ tr /C//;
			push(@cit,$count);
		}
		my $zzz = -1;
		my $som = 0;
		until($zzz >= $#cit){
			$zzz++;
			$som += $cit[$zzz];
		}
		for(my $t = 0;$t <= $#seqs;$t++){
			my $count  = $seqs[$t] =~ tr /G//;
			push(@gua,$count);
		}
		my $zzzz = -1;
		my $szm = 0;
		until($zzzz >= $#gua){
			$zzzz++;
			$szm += $gua[$zzzz];
		}
		my @perc;
		my $eer = ($szm/$gary) *100;
		push(@perc,$eer);
		my $eee = ($som/$gary) *100;
		push(@perc,$eee);
		my $ee = ($sim/$gary) *100;
		push(@perc,$ee);
		my $e = ($sum/$gary)*100;
		push(@perc,$e);
		my $klaba = -1;
		my $terry = 0;
		until($klaba >= $#perc){
			$klaba++;
			$terry += $perc[$klaba];
		}
		print "Statistics:\n----------------------------------\n";
		print "Adenine: $e%\n";
		print "Timine: $ee%\n";
		print "Citosine: $eee%\n";
		print "Guanine: $eer%\n";
		print "Total percentage: $terry\n";


