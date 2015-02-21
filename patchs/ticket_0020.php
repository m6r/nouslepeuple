<?php 

    // Ajout des champs en base de données:
    // - champs du nombre de votes pour    
    // - champs du nombre de votes contre    
    // - champs du score de controverse  
    $query = "ALTER TABLE `pligg_links` ADD `link_likes` INT(20) NULL AFTER `link_votes`, ADD `link_debate_score` INT(20) NULL AFTER `link_comments`";
    $db->get_results($query);
    
    $query = "SELECT * FROM ".table_links;
    $links = $db->get_results($query);

    if ($links) {
        foreach ($links as $link) {

            // Votes pour
            $sql = "SELECT count(*) FROM ".table_votes." WHERE vote_type='links' AND vote_link_id=".$link->link_id." AND vote_value > 0";
            $nb_votes_positive = $db->get_var($sql);
            $nb_votes_negative = $link->link_reports;

            // Calcul de la moyenne et de l'écart
            $moyenne = ($nb_votes_positive + $nb_votes_negative) / 2;
            $ecart = abs($nb_votes_positive - $nb_votes_negative);
            $score_debate = $moyenne - $ecart;

            // Enregistrement des valeurs
            $sql = "UPDATE ".table_links." set `link_likes`=$nb_votes_positive, `link_debate_score`=$score_debate WHERE link_id=".$link->link_id;
            $db->get_results($sql);
        }
    }

?>