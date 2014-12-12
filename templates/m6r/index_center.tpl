{************************************
***** Published Pages Template ******
*************************************}
<!-- index_center.tpl -->

{if !$link_summary_output && $pagename == 'index' && count($templatelite.get) == 0}
    {* Welcome message for new installations *}
    <div class="well blank_index">
        <h2>Bienvenu sur nous le peuple !</h2>
        <p style="font-size:1.0em;">Il n'y a pas encore eu de message posté aujourd'hui. C'est le moment de publier un article !</p>
        <p><a href="submit.php" class="btn btn-primary">Envoyer un article</a></p>
    </div>
{/if}

{$link_summary_output}

{checkActionsTpl location="tpl_pligg_pagination_start"}
{$link_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}
<!--/index_center.tpl -->
