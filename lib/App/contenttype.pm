package App::contenttype;
use strict;
use warnings;
use Carp qw/croak/;

our $VERSION = '0.01';

sub new {
    my $class = shift;
    my $args  = shift || +{};

    bless $args, $class;
}

1;

__END__

=head1 NAME

App::contenttype - one line description


=head1 SYNOPSIS

    use App::contenttype;


=head1 DESCRIPTION

App::contenttype is


=head1 REPOSITORY

=begin html

<a href="http://travis-ci.org/bayashi/App-contenttype"><img src="https://secure.travis-ci.org/bayashi/App-contenttype.png"/></a> <a href="https://coveralls.io/r/bayashi/App-contenttype"><img src="https://coveralls.io/repos/bayashi/App-contenttype/badge.png?branch=master"/></a>

=end html

App::contenttype is hosted on github: L<http://github.com/bayashi/App-contenttype>

I appreciate any feedback :D


=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>


=head1 SEE ALSO

L<Other::Module>


=head1 LICENSE

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut
