{************************************
****** Registration Template ********
*************************************}
<!-- register_center.tpl -->
<div class="row register-wrapper">
    <div class="col-md-4 register-left">
        {checkActionsTpl location="tpl_pligg_register_start"}
        <i class="fa fa-asterisk text-danger"></i> Champs obligatoire
        <form action="{$URL_register}" class="form-horizontal" method="post" id="thisform">
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Nom#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_nom_error)}
                        { foreach value=error from=$form_nom_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_nom" id="reg_nom" name="reg_nom" value="{if isset($reg_nom)}{$reg_nom}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <br/><span class="reg_nomcheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Prenom#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_prenom_error)}
                        { foreach value=error from=$form_prenom_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_prenom" id="reg_prenom" name="reg_prenom" value="{if isset($reg_prenom)}{$reg_prenom}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <br/><span class="reg_prenomcheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Date_Naissance#}</label>
                <div class="controls">
                    {if isset($form_datenaissance_error)}
                        { foreach value=error from=$form_datenaissance_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_datenaissance" id="reg_datenaissance" name="reg_datenaissance" value="{if isset($reg_datenaissance)}{$reg_datenaissance}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <p class="help-inline">{#PLIGG_Visual_Register_Format_Date#}</p>
                    <br/><span class="reg_datenaissancecheckitvalue"></span>
                    <script>
                        {literal}
                            $(function () {
                                $("#reg_datenaissance").datepicker();
                            });
                        {/literal}
                    </script>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Genre_Label#}</label>
                <div class="controls">
                    {if isset($form_genre_error)}
                        { foreach value=error from=$form_genre_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                </div>
                <div class="radio">
                    <label class="control-label">
                        <input type="radio" name="reg_genre" id="reg_genre" value="H">
                        {#PLIGG_Visual_Register_Genre_Homme#}
                    </label>
                </div>
                <div class="radio">
                    <label class="control-label">
                        <input type="radio" name="reg_genre" id="reg_genre2" value="F">
                        {#PLIGG_Visual_Register_Genre_Femme#}
                    </label>
                </div>
                <br/>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Numero_Secu#}
                <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_numerosecu_error)}
                        { foreach value=error from=$form_numerosecu_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_numerosecu" id="reg_numerosecu" name="reg_numerosecu" value="{if isset($reg_numerosecu)}{$reg_numerosecu}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <p class="help-inline">{#PLIGG_Visual_Register_Quinze_Caracteres#}</p>
                    <br/><span class="reg_numerosecucheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Code_Postal#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_codepostal_error)}
                        { foreach value=error from=$form_codepostal_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_codepostal" id="reg_codepostal" name="reg_codepostal" value="{if isset($reg_codepostal)}{$reg_codepostal}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <br/><span class="reg_codepostalcheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Ville#}</label>
                <div class="controls">
                    {if isset($form_ville_error)}
                        { foreach value=error from=$form_ville_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_ville" id="reg_ville" name="reg_ville" value="{if isset($reg_ville)}{$reg_ville}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <br/><span class="reg_villecheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Pays#}</label>
                <div class="controls">
                    {if isset($form_pays_error)}
                        { foreach value=error from=$form_pays_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <select autofocus="autofocus" type="text" class="form-control reg_pays" id="reg_pays" name="reg_pays" value="{if isset($reg_pays)}{$reg_pays}{/if}">
                        <option value="France" {if isset($reg_pays)}{if $reg_pays=="France"} selected="selected"{/if}{/if}>France </option>
                        <option value="Afghanistan" {if isset($reg_pays)}{if $reg_pays=="Afghanistan"}selected="selected"{/if}{/if}>Afghanistan </option>
                        <option value="Afrique_Centrale" {if isset($reg_pays)}{if $reg_pays=="Afrique_Centrale"}selected="selected"{/if}{/if}>Afrique Centrale </option>
                        <option value="Afrique_du_sud" {if isset($reg_pays)}{if $reg_pays=="Afrique_du_sud"}selected="selected"{/if}{/if}>Afrique du Sud </option>
                        <option value="Albanie" {if isset($reg_pays)}{if $reg_pays=="Albanie"}selected="selected"{/if}{/if}>Albanie </option>
                        <option value="Algerie" {if isset($reg_pays)}{if $reg_pays=="Algerie"}selected="selected"{/if}{/if}>Algerie </option>
                        <option value="Allemagne" {if isset($reg_pays)}{if $reg_pays=="Allemagne"}selected="selected"{/if}{/if}>Allemagne </option>
                        <option value="Andorre" {if isset($reg_pays)}{if $reg_pays=="Andorre"}selected="selected"{/if}{/if}>Andorre </option>
                        <option value="Angola" {if isset($reg_pays)}{if $reg_pays=="Angola"}selected="selected"{/if}{/if}>Angola </option>
                        <option value="Anguilla" {if isset($reg_pays)}{if $reg_pays=="Anguilla"}selected="selected"{/if}{/if}>Anguilla </option>
                        <option value="Arabie_Saoudite" {if isset($reg_pays)}{if $reg_pays=="Arabie_Saoudite"}selected="selected"{/if}{/if}>Arabie Saoudite </option>
                        <option value="Argentine" {if isset($reg_pays)}{if $reg_pays=="Argentine"}selected="selected"{/if}{/if}>Argentine </option>
                        <option value="Armenie" {if isset($reg_pays)}{if $reg_pays=="Armenie"}selected="selected"{/if}{/if}>Armenie </option>
                        <option value="Australie" {if isset($reg_pays)}{if $reg_pays=="Australie"}selected="selected"{/if}{/if}>Australie </option>
                        <option value="Autriche" {if isset($reg_pays)}{if $reg_pays=="Autriche"}selected="selected"{/if}{/if}>Autriche </option>
                        <option value="Azerbaidjan" {if isset($reg_pays)}{if $reg_pays=="Azerbaidjan"}selected="selected"{/if}{/if}>Azerbaidjan </option>
                        <option value="Bahamas" {if isset($reg_pays)}{if $reg_pays=="Bahamas"}selected="selected"{/if}{/if}>Bahamas </option>
                        <option value="Bangladesh" {if isset($reg_pays)}{if $reg_pays=="Bangladesh"}selected="selected"{/if}{/if}>Bangladesh </option>
                        <option value="Barbade" {if isset($reg_pays)}{if $reg_pays=="Barbade"}selected="selected"{/if}{/if}>Barbade </option>
                        <option value="Bahrein" {if isset($reg_pays)}{if $reg_pays=="Bahrein"}selected="selected"{/if}{/if}>Bahrein </option>
                        <option value="Belgique" {if isset($reg_pays)}{if $reg_pays=="Belgique"}selected="selected"{/if}{/if}>Belgique </option>
                        <option value="Belize" {if isset($reg_pays)}{if $reg_pays=="Belize"}selected="selected"{/if}{/if}>Belize </option>
                        <option value="Benin" {if isset($reg_pays)}{if $reg_pays=="Benin"}selected="selected"{/if}{/if}>Benin </option>
                        <option value="Bermudes" {if isset($reg_pays)}{if $reg_pays=="Bermudes"}selected="selected"{/if}{/if}>Bermudes </option>
                        <option value="Bielorussie" {if isset($reg_pays)}{if $reg_pays=="Bielorussie"}selected="selected"{/if}{/if}>Bielorussie </option>
                        <option value="Bolivie" {if isset($reg_pays)}{if $reg_pays=="Bolivie"}selected="selected"{/if}{/if}>Bolivie </option>
                        <option value="Botswana" {if isset($reg_pays)}{if $reg_pays=="Botswana"}selected="selected"{/if}{/if}>Botswana </option>
                        <option value="Bhoutan" {if isset($reg_pays)}{if $reg_pays=="Bhoutan"}selected="selected"{/if}{/if}>Bhoutan </option>
                        <option value="Boznie_Herzegovine" {if isset($reg_pays)}{if $reg_pays=="Boznie_Herzegovine"}selected="selected"{/if}{/if}>Boznie Herzegovine </option>
                        <option value="Bresil" {if isset($reg_pays)}{if $reg_pays=="Bresil"}selected="selected"{/if}{/if}>Bresil </option>
                        <option value="Brunei" {if isset($reg_pays)}{if $reg_pays=="Brunei"}selected="selected"{/if}{/if}>Brunei </option>
                        <option value="Bulgarie" {if isset($reg_pays)}{if $reg_pays=="Bulgarie"}selected="selected"{/if}{/if}>Bulgarie </option>
                        <option value="Burkina_Faso" {if isset($reg_pays)}{if $reg_pays=="Burkina_Faso"}selected="selected"{/if}{/if}>Burkina Faso </option>
                        <option value="Burundi" {if isset($reg_pays)}{if $reg_pays=="Burundi"}selected="selected"{/if}{/if}>Burundi </option>
                        <option value="Caiman" {if isset($reg_pays)}{if $reg_pays=="Caiman"}selected="selected"{/if}{/if}>Caiman </option>
                        <option value="Cambodge" {if isset($reg_pays)}{if $reg_pays=="Cambodge"}selected="selected"{/if}{/if}>Cambodge </option>
                        <option value="Cameroun" {if isset($reg_pays)}{if $reg_pays=="Cameroun"}selected="selected"{/if}{/if}>Cameroun </option>
                        <option value="Canada" {if isset($reg_pays)}{if $reg_pays=="Canada"}selected="selected"{/if}{/if}>Canada </option>
                        <option value="Canaries" {if isset($reg_pays)}{if $reg_pays=="Canaries"}selected="selected"{/if}{/if}>Canaries </option>
                        <option value="Cap_vert" {if isset($reg_pays)}{if $reg_pays=="Cap_vert"}selected="selected"{/if}{/if}>Cap_Vert </option>
                        <option value="Chili" {if isset($reg_pays)}{if $reg_pays=="Chili"}selected="selected"{/if}{/if}>Chili </option>
                        <option value="Chine" {if isset($reg_pays)}{if $reg_pays=="Chine"}selected="selected"{/if}{/if}>Chine </option>
                        <option value="Chypre" {if isset($reg_pays)}{if $reg_pays=="Chypre"}selected="selected"{/if}{/if}>Chypre </option>
                        <option value="Colombie" {if isset($reg_pays)}{if $reg_pays=="Colombie"}selected="selected"{/if}{/if}>Colombie </option>
                        <option value="Comores" {if isset($reg_pays)}{if $reg_pays=="Comores"}selected="selected"{/if}{/if}>Colombie </option>
                        <option value="Congo" {if isset($reg_pays)}{if $reg_pays=="Congo"}selected="selected"{/if}{/if}>Congo </option>
                        <option value="Congo_democratique" {if isset($reg_pays)}{if $reg_pays=="Congo_democratique"}selected="selected"{/if}{/if}>Congo democratique </option>
                        <option value="Cook" {if isset($reg_pays)}{if $reg_pays=="Cook"}selected="selected"{/if}{/if}>Cook </option>
                        <option value="Coree_du_Nord" {if isset($reg_pays)}{if $reg_pays=="Coree_du_Nord"}selected="selected"{/if}{/if}>Coree du Nord </option>
                        <option value="Coree_du_Sud" {if isset($reg_pays)}{if $reg_pays=="Coree_du_Sud"}selected="selected"{/if}{/if}>Coree du Sud </option>
                        <option value="Costa_Rica" {if isset($reg_pays)}{if $reg_pays=="Costa_Rica"}selected="selected"{/if}{/if}>Costa Rica </option>
                        <option value="Cote_d_Ivoire" {if isset($reg_pays)}{if $reg_pays=="Cote_d_Ivoire"}selected="selected"{/if}{/if}>Côte d'Ivoire </option>
                        <option value="Croatie" {if isset($reg_pays)}{if $reg_pays=="Croatie"}selected="selected"{/if}{/if}>Croatie </option>
                        <option value="Cuba" {if isset($reg_pays)}{if $reg_pays=="Cuba"}selected="selected"{/if}{/if}>Cuba </option>
                        <option value="Danemark" {if isset($reg_pays)}{if $reg_pays=="Danemark"}selected="selected"{/if}{/if}>Danemark </option>
                        <option value="Djibouti" {if isset($reg_pays)}{if $reg_pays=="Djibouti"}selected="selected"{/if}{/if}>Djibouti </option>
                        <option value="Dominique" {if isset($reg_pays)}{if $reg_pays=="Dominique"}selected="selected"{/if}{/if}>Dominique </option>
                        <option value="Egypte" {if isset($reg_pays)}{if $reg_pays=="Egypte"}selected="selected"{/if}{/if}>Egypte </option>
                        <option value="Emirats_Arabes_Unis" {if isset($reg_pays)}{if $reg_pays=="Emirats_Arabes_Unis"}selected="selected"{/if}{/if}>Emirats Arabes Unis </option>
                        <option value="Equateur" {if isset($reg_pays)}{if $reg_pays=="Equateur"}selected="selected"{/if}{/if}>Equateur </option>
                        <option value="Erythree" {if isset($reg_pays)}{if $reg_pays=="Erythree"}selected="selected"{/if}{/if}>Erythree </option>
                        <option value="Espagne" {if isset($reg_pays)}{if $reg_pays=="Espagne"}selected="selected"{/if}{/if}>Espagne </option>
                        <option value="Estonie" {if isset($reg_pays)}{if $reg_pays=="Estonie"}selected="selected"{/if}{/if}>Estonie </option>
                        <option value="Etats_Unis" {if isset($reg_pays)}{if $reg_pays=="Etats_Unis"}selected="selected"{/if}{/if}>Etats Unis </option>
                        <option value="Ethiopie" {if isset($reg_pays)}{if $reg_pays=="Ethiopie"}selected="selected"{/if}{/if}>Ethiopie </option>
                        <option value="Falkland" {if isset($reg_pays)}{if $reg_pays=="Falkland"}selected="selected"{/if}{/if}>Falkland </option>
                        <option value="Feroe" {if isset($reg_pays)}{if $reg_pays=="Feroe"}selected="selected"{/if}{/if}>Feroe </option>
                        <option value="Fidji" {if isset($reg_pays)}{if $reg_pays=="Fidji"}selected="selected"{/if}{/if}>Fidji </option>
                        <option value="Finlande" {if isset($reg_pays)}{if $reg_pays=="Finlande"}selected="selected"{/if}{/if}>Finlande </option>
                        <option value="Gabon" {if isset($reg_pays)}{if $reg_pays=="Gabon"}selected="selected"{/if}{/if}>Gabon </option>
                        <option value="Gambie" {if isset($reg_pays)}{if $reg_pays=="Gambie"}selected="selected"{/if}{/if}>Gambie </option>
                        <option value="Georgie" {if isset($reg_pays)}{if $reg_pays=="Georgie"}selected="selected"{/if}{/if}>Georgie </option>
                        <option value="Ghana" {if isset($reg_pays)}{if $reg_pays=="Ghana"}selected="selected"{/if}{/if}>Ghana </option>
                        <option value="Gibraltar" {if isset($reg_pays)}{if $reg_pays=="Gibraltar"}selected="selected"{/if}{/if}>Gibraltar </option>
                        <option value="Grece" {if isset($reg_pays)}{if $reg_pays=="Grece"}selected="selected"{/if}{/if}>Grece </option>
                        <option value="Grenade" {if isset($reg_pays)}{if $reg_pays=="Grenade"}selected="selected"{/if}{/if}>Grenade </option>
                        <option value="Groenland" {if isset($reg_pays)}{if $reg_pays=="Groenland"}selected="selected"{/if}{/if}>Groenland </option>
                        <option value="Guadeloupe" {if isset($reg_pays)}{if $reg_pays=="Guadeloupe"}selected="selected"{/if}{/if}>Guadeloupe </option>
                        <option value="Guam" {if isset($reg_pays)}{if $reg_pays=="Guam"}selected="selected"{/if}{/if}>Guam </option>
                        <option value="Guatemala" {if isset($reg_pays)}{if $reg_pays=="Guatemala"}selected="selected"{/if}{/if}>Guatemala</option>
                        <option value="Guernesey" {if isset($reg_pays)}{if $reg_pays=="Guernesey"}selected="selected"{/if}{/if}>Guernesey </option>
                        <option value="Guinee" {if isset($reg_pays)}{if $reg_pays=="Guinee"}selected="selected"{/if}{/if}>Guinee </option>
                        <option value="Guinee_Bissau" {if isset($reg_pays)}{if $reg_pays=="Guinee_Bissau"}selected="selected"{/if}{/if}>Guinee_Bissau </option>
                        <option value="Guinee equatoriale" {if isset($reg_pays)}{if $reg_pays=="Guinee equatoriale"}selected="selected"{/if}{/if}>Guinee Equatoriale </option>
                        <option value="Guyana" {if isset($reg_pays)}{if $reg_pays=="Guyana"}selected="selected"{/if}{/if}>Guyana </option>
                        <option value="Guyane_Francaise" {if isset($reg_pays)}{if $reg_pays=="Guyane_Francaise"}selected="selected"{/if}{/if}>Guyane Francaise </option>
                        <option value="Haiti" {if isset($reg_pays)}{if $reg_pays=="Haiti"}selected="selected"{/if}{/if}>Haiti </option>
                        <option value="Hawaii" {if isset($reg_pays)}{if $reg_pays=="Hawaii"}selected="selected"{/if}{/if}>Hawaii </option>
                        <option value="Honduras" {if isset($reg_pays)}{if $reg_pays=="Honduras"}selected="selected"{/if}{/if}>Honduras </option>
                        <option value="Hong_Kong" {if isset($reg_pays)}{if $reg_pays=="Hong_Kong"}selected="selected"{/if}{/if}>Hong Kong </option>
                        <option value="Hongrie" {if isset($reg_pays)}{if $reg_pays=="Hongrie"}selected="selected"{/if}{/if}>Hongrie </option>
                        <option value="Inde" {if isset($reg_pays)}{if $reg_pays=="Inde"}selected="selected"{/if}{/if}>Inde </option>
                        <option value="Indonesie" {if isset($reg_pays)}{if $reg_pays=="Indonesie"}selected="selected"{/if}{/if}>Indonesie </option>
                        <option value="Iran" {if isset($reg_pays)}{if $reg_pays=="Iran"}selected="selected"{/if}{/if}>Iran </option>
                        <option value="Iraq" {if isset($reg_pays)}{if $reg_pays=="Iraq"}selected="selected"{/if}{/if}>Iraq </option>
                        <option value="Irlande" {if isset($reg_pays)}{if $reg_pays=="Irlande"}selected="selected"{/if}{/if}>Irlande </option>
                        <option value="Islande" {if isset($reg_pays)}{if $reg_pays=="Islande"}selected="selected"{/if}{/if}>Islande </option>
                        <option value="Israel" {if isset($reg_pays)}{if $reg_pays=="Israel"}selected="selected"{/if}{/if}>Israel </option>
                        <option value="Italie" {if isset($reg_pays)}{if $reg_pays=="Italie"}selected="selected"{/if}{/if}>italie </option>
                        <option value="Jamaique" {if isset($reg_pays)}{if $reg_pays=="Jamaique"}selected="selected"{/if}{/if}>Jamaique </option>
                        <option value="Jan Mayen" {if isset($reg_pays)}{if $reg_pays=="Jan Mayen"}selected="selected"{/if}{/if}>Jan Mayen </option>
                        <option value="Japon" {if isset($reg_pays)}{if $reg_pays=="Japon"}selected="selected"{/if}{/if}>Japon </option>
                        <option value="Jersey" {if isset($reg_pays)}{if $reg_pays=="Jersey"}selected="selected"{/if}{/if}>Jersey </option>
                        <option value="Jordanie" {if isset($reg_pays)}{if $reg_pays=="Jordanie"}selected="selected"{/if}{/if}>Jordanie </option>
                        <option value="Kazakhstan" {if isset($reg_pays)}{if $reg_pays=="Kazakhstan"}selected="selected"{/if}{/if}>Kazakhstan </option>
                        <option value="Kenya" {if isset($reg_pays)}{if $reg_pays=="Kenya"}selected="selected"{/if}{/if}>Kenya </option>
                        <option value="Kirghizstan" {if isset($reg_pays)}{if $reg_pays=="Kirghizstan"}selected="selected"{/if}{/if}>Kirghizistan </option>
                        <option value="Kiribati" {if isset($reg_pays)}{if $reg_pays=="Kiribati"}selected="selected"{/if}{/if}>Kiribati </option>
                        <option value="Koweit" {if isset($reg_pays)}{if $reg_pays=="Koweit"}selected="selected"{/if}{/if}>Koweit </option>
                        <option value="Laos" {if isset($reg_pays)}{if $reg_pays=="Laos"}selected="selected"{/if}{/if}>Laos </option>
                        <option value="Lesotho" {if isset($reg_pays)}{if $reg_pays=="Lesotho"}selected="selected"{/if}{/if}>Lesotho </option>
                        <option value="Lettonie" {if isset($reg_pays)}{if $reg_pays=="Lettonie"}selected="selected"{/if}{/if}>Lettonie </option>
                        <option value="Liban" {if isset($reg_pays)}{if $reg_pays=="Liban"}selected="selected"{/if}{/if}>Liban </option>
                        <option value="Liberia" {if isset($reg_pays)}{if $reg_pays=="Liberia"}selected="selected"{/if}{/if}>Liberia </option>
                        <option value="Liechtenstein" {if isset($reg_pays)}{if $reg_pays=="Liechtenstein"}selected="selected"{/if}{/if}>Liechtenstein </option>
                        <option value="Lituanie" {if isset($reg_pays)}{if $reg_pays=="Lituanie"}selected="selected"{/if}{/if}>Lituanie </option>
                        <option value="Luxembourg" {if isset($reg_pays)}{if $reg_pays=="Luxembourg"}selected="selected"{/if}{/if}>Luxembourg </option>
                        <option value="Lybie" {if isset($reg_pays)}{if $reg_pays=="Lybie"}selected="selected"{/if}{/if}>Lybie </option>
                        <option value="Macao" {if isset($reg_pays)}{if $reg_pays=="Macao"}selected="selected"{/if}{/if}>Macao </option>
                        <option value="Macedoine" {if isset($reg_pays)}{if $reg_pays=="Macedoine"}selected="selected"{/if}{/if}>Macedoine </option>
                        <option value="Madagascar" {if isset($reg_pays)}{if $reg_pays=="Madagascar"}selected="selected"{/if}{/if}>Madagascar </option>
                        <option value="MadÃ¨re" {if isset($reg_pays)}{if $reg_pays=="MadÃ¨re"}selected="selected"{/if}{/if}>MadÃ¨re </option>
                        <option value="Malaisie" {if isset($reg_pays)}{if $reg_pays=="Malaisie"}selected="selected"{/if}{/if}>Malaisie </option>
                        <option value="Malawi" {if isset($reg_pays)}{if $reg_pays=="Malawi"}selected="selected"{/if}{/if}>Malawi </option>
                        <option value="Maldives" {if isset($reg_pays)}{if $reg_pays=="Maldives"}selected="selected"{/if}{/if}>Maldives </option>
                        <option value="Mali" {if isset($reg_pays)}{if $reg_pays=="Mali"}selected="selected"{/if}{/if}>Mali </option>
                        <option value="Malte" {if isset($reg_pays)}{if $reg_pays=="Malte"}selected="selected"{/if}{/if}>Malte </option>
                        <option value="Man" {if isset($reg_pays)}{if $reg_pays=="Man"}selected="selected"{/if}{/if}>Man </option>
                        <option value="Mariannes du Nord" {if isset($reg_pays)}{if $reg_pays=="Mariannes du Nord"}selected="selected"{/if}{/if}>Mariannes du Nord </option>
                        <option value="Maroc" {if isset($reg_pays)}{if $reg_pays=="Maroc"}selected="selected"{/if}{/if}>Maroc </option>
                        <option value="Marshall" {if isset($reg_pays)}{if $reg_pays=="Marshall"}selected="selected"{/if}{/if}>Marshall </option>
                        <option value="Martinique" {if isset($reg_pays)}{if $reg_pays=="Martinique"}selected="selected"{/if}{/if}>Martinique </option>
                        <option value="Maurice" {if isset($reg_pays)}{if $reg_pays=="Maurice"}selected="selected"{/if}{/if}>Maurice </option>
                        <option value="Mauritanie" {if isset($reg_pays)}{if $reg_pays=="Mauritanie"}selected="selected"{/if}{/if}>Mauritanie </option>
                        <option value="Mayotte" {if isset($reg_pays)}{if $reg_pays=="Mayotte"}selected="selected"{/if}{/if}>Mayotte </option>
                        <option value="Mexique" {if isset($reg_pays)}{if $reg_pays=="Mexique"}selected="selected"{/if}{/if}>Mexique </option>
                        <option value="Micronesie" {if isset($reg_pays)}{if $reg_pays=="Micronesie"}selected="selected"{/if}{/if}>Micronesie </option>
                        <option value="Midway" {if isset($reg_pays)}{if $reg_pays=="Midway"}selected="selected"{/if}{/if}>Midway </option>
                        <option value="Moldavie" {if isset($reg_pays)}{if $reg_pays=="Moldavie"}selected="selected"{/if}{/if}>Moldavie </option>
                        <option value="Monaco" {if isset($reg_pays)}{if $reg_pays=="Monaco"}selected="selected"{/if}{/if}>Monaco </option>
                        <option value="Mongolie" {if isset($reg_pays)}{if $reg_pays=="Mongolie"}selected="selected"{/if}{/if}>Mongolie </option>
                        <option value="Montserrat" {if isset($reg_pays)}{if $reg_pays=="Montserrat"}selected="selected"{/if}{/if}>Montserrat </option>
                        <option value="Mozambique" {if isset($reg_pays)}{if $reg_pays=="Mozambique"}selected="selected"{/if}{/if}>Mozambique </option>
                        <option value="Namibie" {if isset($reg_pays)}{if $reg_pays=="Namibie"}selected="selected"{/if}{/if}>Namibie </option>
                        <option value="Nauru" {if isset($reg_pays)}{if $reg_pays=="Nauru"}selected="selected"{/if}{/if}>Nauru </option>
                        <option value="Nepal" {if isset($reg_pays)}{if $reg_pays=="Nepal"}selected="selected"{/if}{/if}>Nepal </option>
                        <option value="Nicaragua" {if isset($reg_pays)}{if $reg_pays=="Nicaragua"}selected="selected"{/if}{/if}>Nicaragua </option>
                        <option value="Niger" {if isset($reg_pays)}{if $reg_pays=="Niger"}selected="selected"{/if}{/if}>Niger </option>
                        <option value="Nigeria" {if isset($reg_pays)}{if $reg_pays=="Nigeria"}selected="selected"{/if}{/if}>Nigeria </option>
                        <option value="Niue" {if isset($reg_pays)}{if $reg_pays=="Niue"}selected="selected"{/if}{/if}>Niue </option>
                        <option value="Norfolk" {if isset($reg_pays)}{if $reg_pays=="Norfolk"}selected="selected"{/if}{/if}>Norfolk </option>
                        <option value="Norvege" {if isset($reg_pays)}{if $reg_pays=="Norvege"}selected="selected"{/if}{/if}>Norvege </option>
                        <option value="Nouvelle_Caledonie" {if isset($reg_pays)}{if $reg_pays=="Nouvelle_Caledonie"}selected="selected"{/if}{/if}>Nouvelle Caledonie </option>
                        <option value="Nouvelle_Zelande" {if isset($reg_pays)}{if $reg_pays=="Nouvelle_Zelande"}selected="selected"{/if}{/if}>Nouvelle Zelande </option>
                        <option value="Oman" {if isset($reg_pays)}{if $reg_pays=="Oman"}selected="selected"{/if}{/if}>Oman </option>
                        <option value="Ouganda" {if isset($reg_pays)}{if $reg_pays=="Ouganda"}selected="selected"{/if}{/if}>Ouganda </option>
                        <option value="Ouzbekistan" {if isset($reg_pays)}{if $reg_pays=="Ouzbekistan"}selected="selected"{/if}{/if}>Ouzbekistan </option>
                        <option value="Pakistan" {if isset($reg_pays)}{if $reg_pays=="Pakistan"}selected="selected"{/if}{/if}>Pakistan </option>
                        <option value="Palau" {if isset($reg_pays)}{if $reg_pays=="Palau"}selected="selected"{/if}{/if}>Palau </option>
                        <option value="Palestine" {if isset($reg_pays)}{if $reg_pays=="Palestine"}selected="selected"{/if}{/if}>Palestine </option>
                        <option value="Panama" {if isset($reg_pays)}{if $reg_pays=="Panama"}selected="selected"{/if}{/if}>Panama </option>
                        <option value="Papouasie_Nouvelle_Guinee" {if isset($reg_pays)}{if $reg_pays=="Papouasie_Nouvelle_Guinee"}selected="selected"{/if}{/if}>Papouasie Nouvelle Guinee </option>
                        <option value="Paraguay" {if isset($reg_pays)}{if $reg_pays=="Paraguay"}selected="selected"{/if}{/if}>Paraguay </option>
                        <option value="Pays_Bas" {if isset($reg_pays)}{if $reg_pays=="Pays_Bas"}selected="selected"{/if}{/if}>Pays Bas </option>
                        <option value="Perou" {if isset($reg_pays)}{if $reg_pays=="Perou"}selected="selected"{/if}{/if}>Perou </option>
                        <option value="Philippines" {if isset($reg_pays)}{if $reg_pays=="Philippines"}selected="selected"{/if}{/if}>Philippines </option>
                        <option value="Pologne" {if isset($reg_pays)}{if $reg_pays=="Pologne"}selected="selected"{/if}{/if}>Pologne </option>
                        <option value="Polynesie" {if isset($reg_pays)}{if $reg_pays=="Polynesie"}selected="selected"{/if}{/if}>Polynesie </option>
                        <option value="Porto_Rico" {if isset($reg_pays)}{if $reg_pays=="Porto_Rico"}selected="selected"{/if}{/if}>Porto_Rico </option>
                        <option value="Portugal" {if isset($reg_pays)}{if $reg_pays=="Portugal"}xselected="selected"{/if}{/if}>Portugal </option>
                        <option value="Qatar" {if isset($reg_pays)}{if $reg_pays=="Qatar"}selected="selected"{/if}{/if}>Qatar </option>
                        <option value="Republique_Dominicaine" {if isset($reg_pays)}{if $reg_pays=="Republique_Dominicaine"}selected="selected"{/if}{/if}>Republique Dominicaine </option>
                        <option value="Republique_Tcheque" {if isset($reg_pays)}{if $reg_pays=="Republique_Tcheque"}selected="selected"{/if}{/if}>Republique Tcheque </option>
                        <option value="Reunion" {if isset($reg_pays)}{if $reg_pays=="Reunion"}selected="selected"{/if}{/if}>Reunion </option>
                        <option value="Roumanie" {if isset($reg_pays)}{if $reg_pays=="Roumanie"}selected="selected"{/if}{/if}>Roumanie </option>
                        <option value="Royaume_Uni" {if isset($reg_pays)}{if $reg_pays=="Royaume_Uni"}selected="selected"{/if}{/if}>Royaume Uni </option>
                        <option value="Russie" {if isset($reg_pays)}{if $reg_pays=="Russie"}selected="selected"{/if}{/if}>Russie </option>
                        <option value="Rwanda" {if isset($reg_pays)}{if $reg_pays=="Rwanda"}selected="selected"{/if}{/if}>Rwanda </option>
                        <option value="Sahara Occidental" {if isset($reg_pays)}{if $reg_pays=="Sahara Occidental"}selected="selected"{/if}{/if}>Sahara Occidental </option>
                        <option value="Sainte_Lucie" {if isset($reg_pays)}{if $reg_pays=="Sainte_Lucie"}selected="selected"{/if}{/if}>Sainte Lucie </option>
                        <option value="Saint_Marin" {if isset($reg_pays)}{if $reg_pays=="Saint_Marin"}selected="selected"{/if}{/if}>Saint Marin </option>
                        <option value="Salomon" {if isset($reg_pays)}{if $reg_pays=="Salomon"}selected="selected"{/if}{/if}>Salomon </option>
                        <option value="Salvador" {if isset($reg_pays)}{if $reg_pays=="Salvador"}selected="selected"{/if}{/if}>Salvador </option>
                        <option value="Samoa_Occidentales" {if isset($reg_pays)}{if $reg_pays=="Samoa_Occidentales"}selected="selected"{/if}{/if}>Samoa Occidentales</option>
                        <option value="Samoa_Americaine" {if isset($reg_pays)}{if $reg_pays=="Samoa_Americaine"}selected="selected"{/if}{/if}>Samoa Americaine </option>
                        <option value="Sao_Tome_et_Principe" {if isset($reg_pays)}{if $reg_pays=="Sao_Tome_et_Principe"}selected="selected"{/if}{/if}>Sao Tome et Principe </option>
                        <option value="Senegal" {if isset($reg_pays)}{if $reg_pays=="Senegal"}selected="selected"{/if}{/if}>Senegal </option>
                        <option value="Seychelles" {if isset($reg_pays)}{if $reg_pays=="Seychelles"}selected="selected"{/if}{/if}>Seychelles </option>
                        <option value="Sierra Leone" {if isset($reg_pays)}{if $reg_pays=="Sierra Leone"}selected="selected"{/if}{/if}>Sierra Leone </option>
                        <option value="Singapour" {if isset($reg_pays)}{if $reg_pays=="Singapour"}selected="selected"{/if}{/if}>Singapour </option>
                        <option value="Slovaquie" {if isset($reg_pays)}{if $reg_pays=="Slovaquie"}selected="selected"{/if}{/if}>Slovaquie </option>
                        <option value="Slovenie" {if isset($reg_pays)}{if $reg_pays=="Slovenie"}selected="selected"{/if}{/if}>Slovenie</option>
                        <option value="Somalie" {if isset($reg_pays)}{if $reg_pays=="Somalie"}selected="selected"{/if}{/if}>Somalie </option>
                        <option value="Soudan" {if isset($reg_pays)}{if $reg_pays=="Soudan"}selected="selected"{/if}{/if}>Soudan </option>
                        <option value="Sri_Lanka" {if isset($reg_pays)}{if $reg_pays=="Sri_Lanka"}selected="selected"{/if}{/if}>Sri_Lanka </option>
                        <option value="Suede" {if isset($reg_pays)}{if $reg_pays=="Suede"}selected="selected"{/if}{/if}>Suede </option>
                        <option value="Suisse" {if isset($reg_pays)}{if $reg_pays=="Suisse"}selected="selected"{/if}{/if}>Suisse </option>
                        <option value="Surinam" {if isset($reg_pays)}{if $reg_pays=="Surinam"}selected="selected"{/if}{/if}>Surinam </option>
                        <option value="Swaziland" {if isset($reg_pays)}{if $reg_pays=="Swaziland"}selected="selected"{/if}{/if}>Swaziland </option>
                        <option value="Syrie" {if isset($reg_pays)}{if $reg_pays=="Syrie"}selected="selected"{/if}{/if}>Syrie </option>
                        <option value="Tadjikistan" {if isset($reg_pays)}{if $reg_pays=="Tadjikistan"}selected="selected"{/if}{/if}>Tadjikistan </option>
                        <option value="Taiwan" {if isset($reg_pays)}{if $reg_pays=="Taiwan"}selected="selected"{/if}{/if}>Taiwan </option>
                        <option value="Tonga" {if isset($reg_pays)}{if $reg_pays=="Tonga"}selected="selected"{/if}{/if}>Tonga </option>
                        <option value="Tanzanie" {if isset($reg_pays)}{if $reg_pays=="Afghanistan"}selected="selected"{/if}{/if}>Tanzanie </option>
                        <option value="Tchad" {if isset($reg_pays)}{if $reg_pays=="Tanzanie"}selected="selected"{/if}{/if}>Tchad </option>
                        <option value="Thailande" {if isset($reg_pays)}{if $reg_pays=="Afghanistan"}selected="selected"{/if}{/if}>Thailande </option>
                        <option value="Tibet" {if isset($reg_pays)}{if $reg_pays=="Thailande"}selected="selected"{/if}{/if}>Tibet </option>
                        <option value="Timor_Oriental" {if isset($reg_pays)}{if $reg_pays=="Timor_Oriental"}selected="selected"{/if}{/if}>Timor Oriental </option>
                        <option value="Togo" {if isset($reg_pays)}{if $reg_pays=="Togo"}selected="selected"{/if}{/if}>Togo </option>
                        <option value="Trinite_et_Tobago" {if isset($reg_pays)}{if $reg_pays=="Trinite_et_Tobago"}selected="selected"{/if}{/if}>Trinite et Tobago </option>
                        <option value="Tristan da cunha" {if isset($reg_pays)}{if $reg_pays=="Tristan da cunha"}selected="selected"{/if}{/if}>Tristan de cuncha </option>
                        <option value="Tunisie" {if isset($reg_pays)}{if $reg_pays=="Tunisie"}selected="selected"{/if}{/if}>Tunisie </option>
                        <option value="Turkmenistan" {if isset($reg_pays)}{if $reg_pays=="Turkmenistan"}selected="selected"{/if}{/if}>Turmenistan </option>
                        <option value="Turquie" {if isset($reg_pays)}{if $reg_pays=="Turquie"}selected="selected"{/if}{/if}>Turquie </option>
                        <option value="Ukraine" {if isset($reg_pays)}{if $reg_pays=="Ukraine"}selected="selected"{/if}{/if}>Ukraine </option>
                        <option value="Uruguay" {if isset($reg_pays)}{if $reg_pays=="Uruguay"}selected="selected"{/if}{/if}>Uruguay </option>
                        <option value="Vanuatu" {if isset($reg_pays)}{if $reg_pays=="Vanuatu"}selected="selected"{/if}{/if}>Vanuatu </option>
                        <option value="Vatican" {if isset($reg_pays)}{if $reg_pays=="Vatican"}selected="selected"{/if}{/if}>Vatican </option>
                        <option value="Venezuela" {if isset($reg_pays)}{if $reg_pays=="Venezuela"}selected="selected"{/if}{/if}>Venezuela </option>
                        <option value="Vierges_Americaines" {if isset($reg_pays)}{if $reg_pays=="Vierges_Americaines"}selected="selected"{/if}{/if}>Vierges Americaines </option>
                        <option value="Vierges_Britanniques" {if isset($reg_pays)}{if $reg_pays=="Vierges_Britanniques"}selected="selected"{/if}{/if}>Vierges Britanniques </option>
                        <option value="Vietnam" {if isset($reg_pays)}{if $reg_pays=="Vietnam"}selected="selected"{/if}{/if}>Vietnam </option>
                        <option value="Wake" {if isset($reg_pays)}{if $reg_pays=="Wake"}selected="selected"{/if}{/if}>Wake </option>
                        <option value="Wallis et Futuma" {if isset($reg_pays)}{if $reg_pays=="Wallis et Futuma"}selected="selected"{/if}{/if}>Wallis et Futuma </option>
                        <option value="Yemen" {if isset($reg_pays)}{if $reg_pays=="Yemen"}selected="selected"{/if}{/if}>Yemen </option>
                        <option value="Yougoslavie" {if isset($reg_pays)}{if $reg_pays=="Yougoslavie"}selected="selected"{/if}{/if}>Yougoslavie </option>
                        <option value="Zambie" {if isset($reg_pays)}{if $reg_pays=="Zambie"}selected="selected"{/if}{/if}>Zambie </option>
                        <option value="Zimbabwe" {if isset($reg_pays)}{if $reg_pays=="Zimbabwe"}selected="selected"{/if}{/if}>Zimbabwe </option>
                    </select>
                    <br/><span class="reg_payscheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Username#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_username_error)}
                        { foreach value=error from=$form_username_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input autofocus="autofocus" type="text" class="form-control reg_username" id="reg_username" name="reg_username" value="{if isset($reg_username)}{$reg_username}{/if}" size="25" tabindex="10" maxlength="32"/>
                    <br/><span class="reg_usernamecheckitvalue"></span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Email#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_email_error)}
                        { foreach value=error from=$form_email_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input type="text" class="form-control reg_email" id="reg_email" name="reg_email" value="{if isset($reg_email)}{$reg_email}{/if}" tabindex="12" maxlength="128"/>
                    <br/><span class="reg_emailcheckitvalue"></span>
                    {* <p class="help-inline">{#PLIGG_Visual_Register_Lowercase#}</p> *}
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Password#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    {if isset($form_password_error)}
                        { foreach value=error from=$form_password_error }
                        <div style="margin:10px 0 0 0;" class="alert alert-danger">
                            <button class="close" data-dismiss="alert">&times;</button>
                            {$error}
                        </div>
                        { /foreach }
                    {/if}
                    <input type="password" class="form-control" id="reg_password" name="reg_password" value="{if isset($reg_password)}{$reg_password}{/if}" size="25" tabindex="14"/>
                    <p class="help-inline">{#PLIGG_Visual_Register_FiveChar#}</p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">{#PLIGG_Visual_Register_Verify_Password#}
                    <i class="fa fa-asterisk text-danger"></i></label>
                <div class="controls">
                    <input type="password" class="form-control" id="reg_verify" name="reg_password2" value="{if isset($reg_password2)}{$reg_password2}{/if}" size="25" tabindex="15"/>
                </div>
            </div>
            {if isset($register_step_1_extra)}
                {$register_step_1_extra}
            {/if}
            <div class="form-actions">
                <input type="submit" name="submit" value="{#PLIGG_Visual_Register_Create_User#}" class="btn btn-primary reg_submit" tabindex="16" />
                <input type="hidden" name="regfrom" value="full" />
            </div>
        </form>
    </div><!--/.register-left -->
    <div class="col-md-8 register-right">
        <h2>{#PLIGG_Visual_Register_Description_Title#}</h2>
        <p>{#PLIGG_Visual_Register_Description_Paragraph#}
        <ul>
            {#PLIGG_Visual_Register_Description_Points#}
        </ul>
        </p>
    </div>
    {checkActionsTpl location="tpl_pligg_register_end"}
</div><!--/.register-wrapper -->
<!--/register_center.tpl -->
