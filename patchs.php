<?php 

    
    define('xml_patch_file', 'patchs.xml');

    if (file_exists(mnmpatchs.xml_patch_file)) {
        $patches = simplexml_load_file(mnmpatchs.xml_patch_file);
    } else {
        $xmlstr = "<?xml version='1.0' standalone='yes'?><patchs></patchs>";
        $patches = new SimpleXMLElement($xmlstr);
    }
    

    function add_to_xml_patchs($patch_file)
    {
        global $patches;

        $patch = $patches->addChild('patch');
        $patch->addAttribute('file', $patch_file);
        $patch->addAttribute('date', date('Y-m-d H:i:s'));

        file_put_contents(mnmpatchs.xml_patch_file, $patches->asXML());
    }


    $t_files = glob(mnmpatchs.'ticket_*.php');
    
    foreach ($t_files as $file) {


        $found = false;
        foreach ($patches->patch as $patch) {
            if ($patch['file']==basename($file)) {
                $found = true;
                break;
            }
        }

        // Vérifie si un fichier log existe, pour savoir si le patch a déjà été passé
        if (!$found) {

            // Applique le patch
            require $file;

            // Génère le fichier log
            add_to_xml_patchs(basename($file));

        }

    }

?>