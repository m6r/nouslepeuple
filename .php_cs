<?php

$finder = Symfony\CS\Finder\DefaultFinder::create()
    ->exclude('cache')
    ->exclude('internal')
    ->exclude('languages')
    ->exclude('libs/utf8')
    ->exclude('logs')
    ->exclude('logs.default')
    ->exclude('plugins')
    ->exclude('libs/backup/mysql_backup')
    ->notPath('libs/backup/file_backup/PEAR.php')
    ->notPath('libs/class.pThumb.php')
    ->notPath('libs/class.phpmailer4.php')
    ->notPath('libs/class.phpmailer5.php')
    ->notPath('libs/csrf.php')
    ->notPath('libs/db.php')
    ->notPath('libs/ez_sql_core.php')
    ->notPath('class.config.php')
    ->notPath('class.compiler.php')
    ->notPath('class.template.php')
    ->in(__DIR__)
;

return Symfony\CS\Config\Config::create()
    ->level(Symfony\CS\FixerInterface::NONE_LEVEL)
    ->fixers(array(
        'encoding',
        'trailing_spaces',
        'eof_ending',
        'indentation',
        'whitespacy_lines',
        'braces',
        'short_tag'
    ))
    ->finder($finder)
;
