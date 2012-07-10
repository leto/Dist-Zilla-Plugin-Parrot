package Dist::Zilla::MintingProfile::Parrot;

use Moose;
use namespace::autoclean;

with 'Dist::Zilla::Role::MintingProfile::ShareDir';

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=head1 NAME 

Dist::Zilla::MintingProfile::Parrot - minting profile provider for Parrot VM projects

=head1 DESCRIPTION

This provider is shipped when you use 'dzil new -P Parrot -p parrot'

=head1 AUTHOR

Jonathan "Duke" Leto

=head1 COYPRIGHT

This software is copyright (c) 2012 by Leto Labs LLC.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
