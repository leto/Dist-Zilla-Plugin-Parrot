package Dist::Zilla::Plugin::Parrot::Minter;

# ABSTRACT: Default "minter" for Dist::Zilla::Plugin::Parrot
use Moose;
extends 'Dist::Zilla::Plugin::GatherDir::Template';
with 'Dist::Zilla::Role::FilePruner';

sub prune_files{
    my $self = shift;
    my $files = $self->zilla->files;
    @$files = grep { $_->name !~ m/profile.ini|.*\.pm$/} @$files;
    return;
}


1;

__END__

=pod

=head1 NAME

Dist::Zilla::Plugin::Parrot::Minter - Parrot VM Minter

=head1 SYNOPSIS

    #profile.ini
    Parrot::Minter

=head1 DESCRIPTION

This is the minter for Dist::Zilla::Plugin::Parrot

=head1 AUTHOR

Jonathan "Duke" Leto <jonathan@leto.net>

=head1 COYPRIGHT

This software is copyright (c) 2012 by Leto Labs LLC.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


