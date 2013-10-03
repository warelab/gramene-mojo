package GrmMojo::Search;

use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub search {
    my $self = shift;

    # Render template "example/welcome.html.ep" with message
    $self->render( 
        msg => 'Welcome to foo',
#        template => 'search.html.tt',
    );
}

1;
