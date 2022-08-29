sub base35 {
        my $number = shift;
        if($number == 0) {
                return "";
        }

        my $value = $number % 35;
        $number = int($number / 35);

        $value = uc(chr($value + 87)) if $value >= 10;

        my $r = base35($number);

        return $r .= $value;

}

sub unbase35 {
        my $digits = shift;
        printf($digits);
        #my $length = @{$digits};
        my $length = $#digits;
        my $current_digit = shift(@{digits});
        my $value;

        if($current_digit =~ m/\d/) {
                $value = $current_digit;
        } else {
                $value = ord(lc($current_digit)) - 87;
        }
        printf(" . $length . ");
        if($length == 1 || $length == 0) {
                return $value;
        } else {
                return $value * (35 ** ($length-1)) + unbase35($digits);
        }
}

printf(base35(93));
printf(unbase35(base35(93)));