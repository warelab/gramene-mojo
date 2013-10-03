package GrmMojo;

use strict;
use feature 'say';
use Data::Dumper;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
    my $self = shift;

    # Documentation browser under "/perldoc"
    $self->plugin('PODRenderer');
    $self->plugin('tt_renderer');

    my $config = $self->plugin('yaml_config', {
        file => $self->home->rel_file('conf/grm_mojo.yaml'),
    });

#    $self->defaults(layout => 'default');

    $self->secret('Living is easy with eyes closed');

    # Router
    my $r = $self->routes;

    # Normal route to controller
    $r->get('/')->to('example#welcome');

    $r->get('/search')->name('search')->to('search#search');
#        controller => 'search',
#        action     => 'search',
#        format     => 'html',
#    );
}

1;
