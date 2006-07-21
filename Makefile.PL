use inc::Module::Install;

name         ( 'Task-Smoke'                   );
all_from     ( 'lib/Task/Smoke.pm'            );

# All the things we need for Foo
requires     ( 'URI'                   => 0 ) ;
requires     ( 'MKDoc::XML'            => 0 ) ;
requires     ( 'Petal'                 => 0 ) ;
requires     ( 'Test::TAP::Model'      => 0 ) ;
requires     ( 'Test::TAP::HTMLMatrix' => 0 ) ;
requires     ( 'Best'                  => 0.06 ) ;

if ( can_cc() ) {
    requires('YAML::Syck' => '0.27') unless can_use('YAML' => 0.35);
}
else {
    requires('YAML'       => '0.35') unless can_use('YAML::Syck' => 0.27);
}

sign();
auto_install();

&WriteAll;
