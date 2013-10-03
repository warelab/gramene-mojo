use inc::Module::Install;

# Define metadata
name         'Grm-Mojo';
author       'Ken Youens-Clark <kclark@cshl.edu>';
abstract     'Gramene Mojolicious backend';
version      '0.01';
license      'MIT';
perl_version '5.10.0';

# Specific dependencies
requires       'Mojolicious' => '0.80';
test_requires  'Test::More'  => '0.42';
#recommends     'Text::CSV_XS'=> '0.50';
#no_index       'directory'   => 'demos';
#install_script 'myscript';


WriteAll;
