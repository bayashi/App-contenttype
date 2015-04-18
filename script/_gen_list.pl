use strict;
use MIME::Types;
use Plack::MIME;
use Hash::Merge qw/merge/;

my $CT_MIME;
{
    my $db_file = shift @ARGV;
    local *DB;
    open DB, '<:encoding(utf8)', $db_file;
    while(my $line = <DB>) {
        next if $line !~ /;/;
        chomp $line;
        my ($ext, $ct) = split /;/, $line;
        if ($ext && $ct && $ct =~ m!/!) {
            $CT_MIME->{$ext} = $ct;
        }
    }
    close DB;
}

my $PLACK_MIME;
{
    for my $r (keys %{$Plack::MIME::MIME_TYPES}) {
        my $v = $Plack::MIME::MIME_TYPES->{$r};
        $r = tr/^\.//;
        $PLACK_MIME->{$r} = $v;
    }
}

my $MIME = merge $CT_MIME, $PLACK_MIME;

for my $k (keys %{$MIME}) {
    print "$MIME->{$k}\t$k\n"
}
