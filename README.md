# NAME

File::Open::NoCache::ReadOnly - Open a file and clear the cache afterward

# VERSION

Version 0.01

# SUBROUTINES/METHODS

## new

Open a file and flush the cache afterwards.
One use case is building a large database from smaller files that are
only read in once.
Once the file has been used it's a waste of RAM to keep it in cache.

    use File::Open::NoCache::ReadOnly;
    my $fh = File::Open::NoCache::ReadOnly->new('/etc/passwd');

## fd

Returns the file descriptor of the file

    my $fd = $fh->fd();
    my $line = <$fd>;

# AUTHOR

Nigel Horne, `<njh at bandsman.co.uk>`

# BUGS

Please report any bugs or feature requests to
`bug-file-Open-NoCache-ReadOnly at rt.cpan.org`,
or through the web interface at
[http://rt.cpan.org/NoAuth/ReportBug.html?Queue=File-Open-NoCache-ReadOnly](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=File-Open-NoCache-ReadOnly).
I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc File::Open::NoCache::ReadOnly

You can also look for information at:

- RT: CPAN's request tracker

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=File-Open-NoCache-ReadOnly](http://rt.cpan.org/NoAuth/Bugs.html?Dist=File-Open-NoCache-ReadOnly)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/File-Open-NoCache-ReadOnly](http://annocpan.org/dist/File-Open-NoCache-ReadOnly)

- CPAN Ratings

    [http://cpanratings.perl.org/d/File-Open-NoCache-ReadOnly](http://cpanratings.perl.org/d/File-Open-NoCache-ReadOnly)

- Search CPAN

    [http://search.cpan.org/dist/File-Open-NoCache-ReadOnly/](http://search.cpan.org/dist/File-Open-NoCache-ReadOnly/)

# LICENSE AND COPYRIGHT

Copyright 2019 Nigel Horne.

Usage is subject to licence terms.

The licence terms of this software are as follows:

\* Personal single user, single computer use: GPL2
\* All other users (including Commercial, Charity, Educational, Government)
  must apply in writing for a licence for use from Nigel Horne at the
  above e-mail.
