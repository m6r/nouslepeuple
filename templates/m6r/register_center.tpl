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
                        <option value="France" {if isset($reg_pays)}{if $reg_pays=="France"}{/if}selected="selected"{/if}>France </option>
                        <option value="Afghanistan" {if isset($reg_pays)}{if $reg_pays=="Afghanistan"}{/if}selected="selected"{/if}>Afghanistan </option>
                        <option value="Afrique_Centrale" {if isset($reg_pays)}{if $reg_pays=="Afrique_Centrale"}{/if}selected="selected"{/if}>Afrique Centrale </option>
                        <option value="Afrique_du_sud" {if isset($reg_pays)}{if $reg_pays=="Afrique_du_sud"}{/if}selected="selected"{/if}>Afrique du Sud </option>
                        <option value="Albanie" {if isset($reg_pays)}{if $reg_pays=="Albanie"}{/if}selected="selected"{/if}>Albanie </option>
                        <option value="Algerie" {if isset($reg_pays)}{if $reg_pays=="Algerie"}{/if}selected="selected"{/if}>Algerie </option>
                        <option value="Allemagne" {if isset($reg_pays)}{if $reg_pays=="Allemagne"}{/if}selected="selected"{/if}>Allemagne </option>
                        <option value="Andorre" {if isset($reg_pays)}{if $reg_pays=="Andorre"}{/if}selected="selected"{/if}>Andorre </option>
                        <option value="Angola" {if isset($reg_pays)}{if $reg_pays=="Angola"}{/if}selected="selected"{/if}>Angola </option>
                        <option value="Anguilla" {if isset($reg_pays)}{if $reg_pays=="Anguilla"}{/if}selected="selected"{/if}>Anguilla </option>
                        <option value="Arabie_Saoudite" {if isset($reg_pays)}{if $reg_pays=="Arabie_Saoudite"}{/if}selected="selected"{/if}>Arabie Saoudite </option>
                        <option value="Argentine" {if isset($reg_pays)}{if $reg_pays=="Argentine"}{/if}selected="selected"{/if}>Argentine </option>
                        <option value="Armenie" {if isset($reg_pays)}{if $reg_pays=="Armenie"}{/if}selected="selected"{/if}>Armenie </option>
                        <option value="Australie" {if isset($reg_pays)}{if $reg_pays=="Australie"}{/if}selected="selected"{/if}>Australie </option>
                        <option value="Autriche" {if isset($reg_pays)}{if $reg_pays=="Autriche"}{/if}selected="selected"{/if}>Autriche </option>
                        <option value="Azerbaidjan" {if isset($reg_pays)}{if $reg_pays=="Azerbaidjan"}{/if}selected="selected"{/if}>Azerbaidjan </option>
                        <option value="Bahamas" {if isset($reg_pays)}{if $reg_pays=="Bahamas"}{/if}selected="selected"{/if}>Bahamas </option>
                        <option value="Bangladesh" {if isset($reg_pays)}{if $reg_pays=="Bangladesh"}{/if}selected="selected"{/if}>Bangladesh </option>
                        <option value="Barbade" {if isset($reg_pays)}{if $reg_pays=="Barbade"}{/if}selected="selected"{/if}>Barbade </option>
                        <option value="Bahrein" {if isset($reg_pays)}{if $reg_pays=="Bahrein"}{/if}selected="selected"{/if}>Bahrein </option>
                        <option value="Belgique" {if isset($reg_pays)}{if $reg_pays=="Belgique"}{/if}selected="selected"{/if}>Belgique </option>
                        <option value="Belize" {if isset($reg_pays)}{if $reg_pays=="Belize"}{/if}selected="selected"{/if}>Belize </option>
                        <option value="Benin" {if isset($reg_pays)}{if $reg_pays=="Benin"}{/if}selected="selected"{/if}>Benin </option>
                        <option value="Bermudes" {if isset($reg_pays)}{if $reg_pays=="Bermudes"}{/if}selected="selected"{/if}>Bermudes </option>
                        <option value="Bielorussie" {if isset($reg_pays)}{if $reg_pays=="Bielorussie"}{/if}selected="selected"{/if}>Bielorussie </option>
                        <option value="Bolivie" {if isset($reg_pays)}{if $reg_pays=="Bolivie"}{/if}selected="selected"{/if}>Bolivie </option>
                        <option value="Botswana" {if isset($reg_pays)}{if $reg_pays=="Botswana"}{/if}selected="selected"{/if}>Botswana </option>
                        <option value="Bhoutan" {if isset($reg_pays)}{if $reg_pays=="Bhoutan"}{/if}selected="selected"{/if}>Bhoutan </option>
                        <option value="Boznie_Herzegovine" {if isset($reg_pays)}{if $reg_pays=="Boznie_Herzegovine"}{/if}selected="selected"{/if}>Boznie Herzegovine </option>
                        <option value="Bresil" {if isset($reg_pays)}{if $reg_pays=="Bresil"}{/if}selected="selected"{/if}>Bresil </option>
                        <option value="Brunei" {if isset($reg_pays)}{if $reg_pays=="Brunei"}{/if}selected="selected"{/if}>Brunei </option>
                        <option value="Bulgarie" {if isset($reg_pays)}{if $reg_pays=="Bulgarie"}{/if}selected="selected"{/if}>Bulgarie </option>
                        <option value="Burkina_Faso" {if isset($reg_pays)}{if $reg_pays=="Burkina_Faso"}{/if}selected="selected"{/if}>Burkina Faso </option>
                        <option value="Burundi" {if isset($reg_pays)}{if $reg_pays=="Burundi"}{/if}selected="selected"{/if}>Burundi </option>
                        <option value="Caiman" {if isset($reg_pays)}{if $reg_pays=="Caiman"}{/if}selected="selected"{/if}>Caiman </option>
                        <option value="Cambodge" {if isset($reg_pays)}{if $reg_pays=="Cambodge"}{/if}selected="selected"{/if}>Cambodge </option>
                        <option value="Cameroun" {if isset($reg_pays)}{if $reg_pays=="Cameroun"}{/if}selected="selected"{/if}>Cameroun </option>
                        <option value="Canada" {if isset($reg_pays)}{if $reg_pays=="Canada"}{/if}selected="selected"{/if}>Canada </option>
                        <option value="Canaries" {if isset($reg_pays)}{if $reg_pays=="Canaries"}{/if}selected="selected"{/if}>Canaries </option>
                        <option value="Cap_vert" {if isset($reg_pays)}{if $reg_pays=="Cap_vert"}{/if}selected="selected"{/if}>Cap_Vert </option>
                        <option value="Chili" {if isset($reg_pays)}{if $reg_pays=="Chili"}{/if}selected="selected"{/if}>Chili </option>
                        <option value="Chine" {if isset($reg_pays)}{if $reg_pays=="Chine"}{/if}selected="selected"{/if}>Chine </option>
                        <option value="Chypre" {if isset($reg_pays)}{if $reg_pays=="Chypre"}{/if}selected="selected"{/if}>Chypre </option>
                        <option value="Colombie" {if isset($reg_pays)}{if $reg_pays=="Colombie"}{/if}selected="selected"{/if}>Colombie </option>
                        <option value="Comores" {if isset($reg_pays)}{if $reg_pays=="Comores"}{/if}selected="selected"{/if}>Colombie </option>
                        <option value="Congo" {if isset($reg_pays)}{if $reg_pays=="Congo"}{/if}selected="selected"{/if}>Congo </option>
                        <option value="Congo_democratique" {if isset($reg_pays)}{if $reg_pays=="Congo_democratique"}{/if}selected="selected"{/if}>Congo democratique </option>
                        <option value="Cook" {if isset($reg_pays)}{if $reg_pays=="Cook"}{/if}selected="selected"{/if}>Cook </option>
                        <option value="Coree_du_Nord" {if isset($reg_pays)}{if $reg_pays=="Coree_du_Nord"}{/if}selected="selected"{/if}>Coree du Nord </option>
                        <option value="Coree_du_Sud" {if isset($reg_pays)}{if $reg_pays=="Coree_du_Sud"}{/if}selected="selected"{/if}>Coree du Sud </option>
                        <option value="Costa_Rica" {if isset($reg_pays)}{if $reg_pays=="Costa_Rica"}{/if}selected="selected"{/if}>Costa Rica </option>
                        <option value="Cote_d_Ivoire" {if isset($reg_pays)}{if $reg_pays=="Cote_d_Ivoire"}{/if}selected="selected"{/if}>Côte d'Ivoire </option>
                        <option value="Croatie" {if isset($reg_pays)}{if $reg_pays=="Croatie"}{/if}selected="selected"{/if}>Croatie </option>
                        <option value="Cuba" {if isset($reg_pays)}{if $reg_pays=="Cuba"}{/if}selected="selected"{/if}>Cuba </option>
                        <option value="Danemark" {if isset($reg_pays)}{if $reg_pays=="Danemark"}{/if}selected="selected"{/if}>Danemark </option>
                        <option value="Djibouti" {if isset($reg_pays)}{if $reg_pays=="Djibouti"}{/if}selected="selected"{/if}>Djibouti </option>
                        <option value="Dominique" {if isset($reg_pays)}{if $reg_pays=="Dominique"}{/if}selected="selected"{/if}>Dominique </option>
                        <option value="Egypte" {if isset($reg_pays)}{if $reg_pays=="Egypte"}{/if}selected="selected"{/if}>Egypte </option>
                        <option value="Emirats_Arabes_Unis" {if isset($reg_pays)}{if $reg_pays=="Emirats_Arabes_Unis"}{/if}selected="selected"{/if}>Emirats Arabes Unis </option>
                        <option value="Equateur" {if isset($reg_pays)}{if $reg_pays=="Equateur"}{/if}selected="selected"{/if}>Equateur </option>
                        <option value="Erythree" {if isset($reg_pays)}{if $reg_pays=="Erythree"}{/if}selected="selected"{/if}>Erythree </option>
                        <option value="Espagne" {if isset($reg_pays)}{if $reg_pays=="Espagne"}{/if}selected="selected"{/if}>Espagne </option>
                        <option value="Estonie" {if isset($reg_pays)}{if $reg_pays=="Estonie"}{/if}selected="selected"{/if}>Estonie </option>
                        <option value="Etats_Unis" {if isset($reg_pays)}{if $reg_pays=="Etats_Unis"}{/if}selected="selected"{/if}>Etats Unis </option>
                        <option value="Ethiopie" {if isset($reg_pays)}{if $reg_pays=="Ethiopie"}{/if}selected="selected"{/if}>Ethiopie </option>
                        <option value="Falkland" {if isset($reg_pays)}{if $reg_pays=="Falkland"}{/if}selected="selected"{/if}>Falkland </option>
                        <option value="Feroe" {if isset($reg_pays)}{if $reg_pays=="Feroe"}{/if}selected="selected"{/if}>Feroe </option>
                        <option value="Fidji" {if isset($reg_pays)}{if $reg_pays=="Fidji"}{/if}selected="selected"{/if}>Fidji </option>
                        <option value="Finlande" {if isset($reg_pays)}{if $reg_pays=="Finlande"}{/if}selected="selected"{/if}>Finlande </option>
                        <option value="Gabon" {if isset($reg_pays)}{if $reg_pays=="Gabon"}{/if}selected="selected"{/if}>Gabon </option>
                        <option value="Gambie" {if isset($reg_pays)}{if $reg_pays=="Gambie"}{/if}selected="selected"{/if}>Gambie </option>
                        <option value="Georgie" {if isset($reg_pays)}{if $reg_pays=="Georgie"}{/if}selected="selected"{/if}>Georgie </option>
                        <option value="Ghana" {if isset($reg_pays)}{if $reg_pays=="Ghana"}{/if}selected="selected"{/if}>Ghana </option>
                        <option value="Gibraltar" {if isset($reg_pays)}{if $reg_pays=="Gibraltar"}{/if}selected="selected"{/if}>Gibraltar </option>
                        <option value="Grece" {if isset($reg_pays)}{if $reg_pays=="Grece"}{/if}selected="selected"{/if}>Grece </option>
                        <option value="Grenade" {if isset($reg_pays)}{if $reg_pays=="Grenade"}{/if}selected="selected"{/if}>Grenade </option>
                        <option value="Groenland" {if isset($reg_pays)}{if $reg_pays=="Groenland"}{/if}selected="selected"{/if}>Groenland </option>
                        <option value="Guadeloupe" {if isset($reg_pays)}{if $reg_pays=="Guadeloupe"}{/if}selected="selected"{/if}>Guadeloupe </option>
                        <option value="Guam" {if isset($reg_pays)}{if $reg_pays=="Guam"}{/if}selected="selected"{/if}>Guam </option>
                        <option value="Guatemala" {if isset($reg_pays)}{if $reg_pays=="Guatemala"}{/if}selected="selected"{/if}>Guatemala</option>
                        <option value="Guernesey" {if isset($reg_pays)}{if $reg_pays=="Guernesey"}{/if}selected="selected"{/if}>Guernesey </option>
                        <option value="Guinee" {if isset($reg_pays)}{if $reg_pays=="Guinee"}{/if}selected="selected"{/if}>Guinee </option>
                        <option value="Guinee_Bissau" {if isset($reg_pays)}{if $reg_pays=="Guinee_Bissau"}{/if}selected="selected"{/if}>Guinee_Bissau </option>
                        <option value="Guinee equatoriale" {if isset($reg_pays)}{if $reg_pays=="Guinee equatoriale"}{/if}selected="selected"{/if}>Guinee Equatoriale </option>
                        <option value="Guyana" {if isset($reg_pays)}{if $reg_pays=="Guyana"}{/if}selected="selected"{/if}>Guyana </option>
                        <option value="Guyane_Francaise" {if isset($reg_pays)}{if $reg_pays=="Guyane_Francaise"}{/if}selected="selected"{/if}>Guyane Francaise </option>
                        <option value="Haiti" {if isset($reg_pays)}{if $reg_pays=="Haiti"}{/if}selected="selected"{/if}>Haiti </option>
                        <option value="Hawaii" {if isset($reg_pays)}{if $reg_pays=="Hawaii"}{/if}selected="selected"{/if}>Hawaii </option>
                        <option value="Honduras" {if isset($reg_pays)}{if $reg_pays=="Honduras"}{/if}selected="selected"{/if}>Honduras </option>
                        <option value="Hong_Kong" {if isset($reg_pays)}{if $reg_pays=="Hong_Kong"}{/if}selected="selected"{/if}>Hong Kong </option>
                        <option value="Hongrie" {if isset($reg_pays)}{if $reg_pays=="Hongrie"}{/if}selected="selected"{/if}>Hongrie </option>
                        <option value="Inde" {if isset($reg_pays)}{if $reg_pays=="Inde"}{/if}selected="selected"{/if}>Inde </option>
                        <option value="Indonesie" {if isset($reg_pays)}{if $reg_pays=="Indonesie"}{/if}selected="selected"{/if}>Indonesie </option>
                        <option value="Iran" {if isset($reg_pays)}{if $reg_pays=="Iran"}{/if}selected="selected"{/if}>Iran </option>
                        <option value="Iraq" {if isset($reg_pays)}{if $reg_pays=="Iraq"}{/if}selected="selected"{/if}>Iraq </option>
                        <option value="Irlande" {if isset($reg_pays)}{if $reg_pays=="Irlande"}{/if}selected="selected"{/if}>Irlande </option>
                        <option value="Islande" {if isset($reg_pays)}{if $reg_pays=="Islande"}{/if}selected="selected"{/if}>Islande </option>
                        <option value="Israel" {if isset($reg_pays)}{if $reg_pays=="Israel"}{/if}selected="selected"{/if}>Israel </option>
                        <option value="Italie" {if isset($reg_pays)}{if $reg_pays=="Italie"}{/if}selected="selected"{/if}>italie </option>
                        <option value="Jamaique" {if isset($reg_pays)}{if $reg_pays=="Jamaique"}{/if}selected="selected"{/if}>Jamaique </option>
                        <option value="Jan Mayen" {if isset($reg_pays)}{if $reg_pays=="Jan Mayen"}{/if}selected="selected"{/if}>Jan Mayen </option>
                        <option value="Japon" {if isset($reg_pays)}{if $reg_pays=="Japon"}{/if}selected="selected"{/if}>Japon </option>
                        <option value="Jersey" {if isset($reg_pays)}{if $reg_pays=="Jersey"}{/if}selected="selected"{/if}>Jersey </option>
                        <option value="Jordanie" {if isset($reg_pays)}{if $reg_pays=="Jordanie"}{/if}selected="selected"{/if}>Jordanie </option>
                        <option value="Kazakhstan" {if isset($reg_pays)}{if $reg_pays=="Kazakhstan"}{/if}selected="selected"{/if}>Kazakhstan </option>
                        <option value="Kenya" {if isset($reg_pays)}{if $reg_pays=="Kenya"}{/if}selected="selected"{/if}>Kenya </option>
                        <option value="Kirghizstan" {if isset($reg_pays)}{if $reg_pays=="Kirghizstan"}{/if}selected="selected"{/if}>Kirghizistan </option>
                        <option value="Kiribati" {if isset($reg_pays)}{if $reg_pays=="Kiribati"}{/if}selected="selected"{/if}>Kiribati </option>
                        <option value="Koweit" {if isset($reg_pays)}{if $reg_pays=="Koweit"}{/if}selected="selected"{/if}>Koweit </option>
                        <option value="Laos" {if isset($reg_pays)}{if $reg_pays=="Laos"}{/if}selected="selected"{/if}>Laos </option>
                        <option value="Lesotho" {if isset($reg_pays)}{if $reg_pays=="Lesotho"}{/if}selected="selected"{/if}>Lesotho </option>
                        <option value="Lettonie" {if isset($reg_pays)}{if $reg_pays=="Lettonie"}{/if}selected="selected"{/if}>Lettonie </option>
                        <option value="Liban" {if isset($reg_pays)}{if $reg_pays=="Liban"}{/if}selected="selected"{/if}>Liban </option>
                        <option value="Liberia" {if isset($reg_pays)}{if $reg_pays=="Liberia"}{/if}selected="selected"{/if}>Liberia </option>
                        <option value="Liechtenstein" {if isset($reg_pays)}{if $reg_pays=="Liechtenstein"}{/if}selected="selected"{/if}>Liechtenstein </option>
                        <option value="Lituanie" {if isset($reg_pays)}{if $reg_pays=="Lituanie"}{/if}selected="selected"{/if}>Lituanie </option>
                        <option value="Luxembourg" {if isset($reg_pays)}{if $reg_pays=="Luxembourg"}{/if}selected="selected"{/if}>Luxembourg </option>
                        <option value="Lybie" {if isset($reg_pays)}{if $reg_pays=="Lybie"}{/if}selected="selected"{/if}>Lybie </option>
                        <option value="Macao" {if isset($reg_pays)}{if $reg_pays=="Macao"}{/if}selected="selected"{/if}>Macao </option>
                        <option value="Macedoine" {if isset($reg_pays)}{if $reg_pays=="Macedoine"}{/if}selected="selected"{/if}>Macedoine </option>
                        <option value="Madagascar" {if isset($reg_pays)}{if $reg_pays=="Madagascar"}{/if}selected="selected"{/if}>Madagascar </option>
                        <option value="MadÃ¨re" {if isset($reg_pays)}{if $reg_pays=="MadÃ¨re"}{/if}selected="selected"{/if}>MadÃ¨re </option>
                        <option value="Malaisie" {if isset($reg_pays)}{if $reg_pays=="Malaisie"}{/if}selected="selected"{/if}>Malaisie </option>
                        <option value="Malawi" {if isset($reg_pays)}{if $reg_pays=="Malawi"}{/if}selected="selected"{/if}>Malawi </option>
                        <option value="Maldives" {if isset($reg_pays)}{if $reg_pays=="Maldives"}{/if}selected="selected"{/if}>Maldives </option>
                        <option value="Mali" {if isset($reg_pays)}{if $reg_pays=="Mali"}{/if}selected="selected"{/if}>Mali </option>
                        <option value="Malte" {if isset($reg_pays)}{if $reg_pays=="Malte"}{/if}selected="selected"{/if}>Malte </option>
                        <option value="Man" {if isset($reg_pays)}{if $reg_pays=="Man"}{/if}selected="selected"{/if}>Man </option>
                        <option value="Mariannes du Nord" {if isset($reg_pays)}{if $reg_pays=="Mariannes du Nord"}{/if}selected="selected"{/if}>Mariannes du Nord </option>
                        <option value="Maroc" {if isset($reg_pays)}{if $reg_pays=="Maroc"}{/if}selected="selected"{/if}>Maroc </option>
                        <option value="Marshall" {if isset($reg_pays)}{if $reg_pays=="Marshall"}{/if}selected="selected"{/if}>Marshall </option>
                        <option value="Martinique" {if isset($reg_pays)}{if $reg_pays=="Martinique"}{/if}selected="selected"{/if}>Martinique </option>
                        <option value="Maurice" {if isset($reg_pays)}{if $reg_pays=="Maurice"}{/if}selected="selected"{/if}>Maurice </option>
                        <option value="Mauritanie" {if isset($reg_pays)}{if $reg_pays=="Mauritanie"}{/if}selected="selected"{/if}>Mauritanie </option>
                        <option value="Mayotte" {if isset($reg_pays)}{if $reg_pays=="Mayotte"}{/if}selected="selected"{/if}>Mayotte </option>
                        <option value="Mexique" {if isset($reg_pays)}{if $reg_pays=="Mexique"}{/if}selected="selected"{/if}>Mexique </option>
                        <option value="Micronesie" {if isset($reg_pays)}{if $reg_pays=="Micronesie"}{/if}selected="selected"{/if}>Micronesie </option>
                        <option value="Midway" {if isset($reg_pays)}{if $reg_pays=="Midway"}{/if}selected="selected"{/if}>Midway </option>
                        <option value="Moldavie" {if isset($reg_pays)}{if $reg_pays=="Moldavie"}{/if}selected="selected"{/if}>Moldavie </option>
                        <option value="Monaco" {if isset($reg_pays)}{if $reg_pays=="Monaco"}{/if}selected="selected"{/if}>Monaco </option>
                        <option value="Mongolie" {if isset($reg_pays)}{if $reg_pays=="Mongolie"}{/if}selected="selected"{/if}>Mongolie </option>
                        <option value="Montserrat" {if isset($reg_pays)}{if $reg_pays=="Montserrat"}{/if}selected="selected"{/if}>Montserrat </option>
                        <option value="Mozambique" {if isset($reg_pays)}{if $reg_pays=="Mozambique"}{/if}selected="selected"{/if}>Mozambique </option>
                        <option value="Namibie" {if isset($reg_pays)}{if $reg_pays=="Namibie"}{/if}selected="selected"{/if}>Namibie </option>
                        <option value="Nauru" {if isset($reg_pays)}{if $reg_pays=="Nauru"}{/if}selected="selected"{/if}>Nauru </option>
                        <option value="Nepal" {if isset($reg_pays)}{if $reg_pays=="Nepal"}{/if}selected="selected"{/if}>Nepal </option>
                        <option value="Nicaragua" {if isset($reg_pays)}{if $reg_pays=="Nicaragua"}{/if}selected="selected"{/if}>Nicaragua </option>
                        <option value="Niger" {if isset($reg_pays)}{if $reg_pays=="Niger"}{/if}selected="selected"{/if}>Niger </option>
                        <option value="Nigeria" {if isset($reg_pays)}{if $reg_pays=="Nigeria"}{/if}selected="selected"{/if}>Nigeria </option>
                        <option value="Niue" {if isset($reg_pays)}{if $reg_pays=="Niue"}{/if}selected="selected"{/if}>Niue </option>
                        <option value="Norfolk" {if isset($reg_pays)}{if $reg_pays=="Norfolk"}{/if}selected="selected"{/if}>Norfolk </option>
                        <option value="Norvege" {if isset($reg_pays)}{if $reg_pays=="Norvege"}{/if}selected="selected"{/if}>Norvege </option>
                        <option value="Nouvelle_Caledonie" {if isset($reg_pays)}{if $reg_pays=="Nouvelle_Caledonie"}{/if}selected="selected"{/if}>Nouvelle Caledonie </option>
                        <option value="Nouvelle_Zelande" {if isset($reg_pays)}{if $reg_pays=="Nouvelle_Zelande"}{/if}selected="selected"{/if}>Nouvelle Zelande </option>
                        <option value="Oman" {if isset($reg_pays)}{if $reg_pays=="Oman"}{/if}selected="selected"{/if}>Oman </option>
                        <option value="Ouganda" {if isset($reg_pays)}{if $reg_pays=="Ouganda"}{/if}selected="selected"{/if}>Ouganda </option>
                        <option value="Ouzbekistan" {if isset($reg_pays)}{if $reg_pays=="Ouzbekistan"}{/if}selected="selected"{/if}>Ouzbekistan </option>
                        <option value="Pakistan" {if isset($reg_pays)}{if $reg_pays=="Pakistan"}{/if}selected="selected"{/if}>Pakistan </option>
                        <option value="Palau" {if isset($reg_pays)}{if $reg_pays=="Palau"}{/if}selected="selected"{/if}>Palau </option>
                        <option value="Palestine" {if isset($reg_pays)}{if $reg_pays=="Palestine"}{/if}selected="selected"{/if}>Palestine </option>
                        <option value="Panama" {if isset($reg_pays)}{if $reg_pays=="Panama"}{/if}selected="selected"{/if}>Panama </option>
                        <option value="Papouasie_Nouvelle_Guinee" {if isset($reg_pays)}{if $reg_pays=="Papouasie_Nouvelle_Guinee"}{/if}selected="selected"{/if}>Papouasie Nouvelle Guinee </option>
                        <option value="Paraguay" {if isset($reg_pays)}{if $reg_pays=="Paraguay"}{/if}selected="selected"{/if}>Paraguay </option>
                        <option value="Pays_Bas" {if isset($reg_pays)}{if $reg_pays=="Pays_Bas"}{/if}selected="selected"{/if}>Pays Bas </option>
                        <option value="Perou" {if isset($reg_pays)}{if $reg_pays=="Perou"}{/if}selected="selected"{/if}>Perou </option>
                        <option value="Philippines" {if isset($reg_pays)}{if $reg_pays=="Philippines"}{/if}selected="selected"{/if}>Philippines </option>
                        <option value="Pologne" {if isset($reg_pays)}{if $reg_pays=="Pologne"}{/if}selected="selected"{/if}>Pologne </option>
                        <option value="Polynesie" {if isset($reg_pays)}{if $reg_pays=="Polynesie"}{/if}selected="selected"{/if}>Polynesie </option>
                        <option value="Porto_Rico" {if isset($reg_pays)}{if $reg_pays=="Porto_Rico"}{/if}selected="selected"{/if}>Porto_Rico </option>
                        <option value="Portugal" {if isset($reg_pays)}{if $reg_pays=="Portugal"}{/if}selected="selected"{/if}>Portugal </option>
                        <option value="Qatar" {if isset($reg_pays)}{if $reg_pays=="Qatar"}{/if}selected="selected"{/if}>Qatar </option>
                        <option value="Republique_Dominicaine" {if isset($reg_pays)}{if $reg_pays=="Republique_Dominicaine"}{/if}selected="selected"{/if}>Republique Dominicaine </option>
                        <option value="Republique_Tcheque" {if isset($reg_pays)}{if $reg_pays=="Republique_Tcheque"}{/if}selected="selected"{/if}>Republique Tcheque </option>
                        <option value="Reunion" {if isset($reg_pays)}{if $reg_pays=="Reunion"}{/if}selected="selected"{/if}>Reunion </option>
                        <option value="Roumanie" {if isset($reg_pays)}{if $reg_pays=="Roumanie"}{/if}selected="selected"{/if}>Roumanie </option>
                        <option value="Royaume_Uni" {if isset($reg_pays)}{if $reg_pays=="Royaume_Uni"}{/if}selected="selected"{/if}>Royaume Uni </option>
                        <option value="Russie" {if isset($reg_pays)}{if $reg_pays=="Russie"}{/if}selected="selected"{/if}>Russie </option>
                        <option value="Rwanda" {if isset($reg_pays)}{if $reg_pays=="Rwanda"}{/if}selected="selected"{/if}>Rwanda </option>
                        <option value="Sahara Occidental" {if isset($reg_pays)}{if $reg_pays=="Sahara Occidental"}{/if}selected="selected"{/if}>Sahara Occidental </option>
                        <option value="Sainte_Lucie" {if isset($reg_pays)}{if $reg_pays=="Sainte_Lucie"}{/if}selected="selected"{/if}>Sainte Lucie </option>
                        <option value="Saint_Marin" {if isset($reg_pays)}{if $reg_pays=="Saint_Marin"}{/if}selected="selected"{/if}>Saint Marin </option>
                        <option value="Salomon" {if isset($reg_pays)}{if $reg_pays=="Salomon"}{/if}selected="selected"{/if}>Salomon </option>
                        <option value="Salvador" {if isset($reg_pays)}{if $reg_pays=="Salvador"}{/if}selected="selected"{/if}>Salvador </option>
                        <option value="Samoa_Occidentales" {if isset($reg_pays)}{if $reg_pays=="Samoa_Occidentales"}{/if}selected="selected"{/if}>Samoa Occidentales</option>
                        <option value="Samoa_Americaine" {if isset($reg_pays)}{if $reg_pays=="Samoa_Americaine"}{/if}selected="selected"{/if}>Samoa Americaine </option>
                        <option value="Sao_Tome_et_Principe" {if isset($reg_pays)}{if $reg_pays=="Sao_Tome_et_Principe"}{/if}selected="selected"{/if}>Sao Tome et Principe </option>
                        <option value="Senegal" {if isset($reg_pays)}{if $reg_pays=="Senegal"}{/if}selected="selected"{/if}>Senegal </option>
                        <option value="Seychelles" {if isset($reg_pays)}{if $reg_pays=="Seychelles"}{/if}selected="selected"{/if}>Seychelles </option>
                        <option value="Sierra Leone" {if isset($reg_pays)}{if $reg_pays=="Sierra Leone"}{/if}selected="selected"{/if}>Sierra Leone </option>
                        <option value="Singapour" {if isset($reg_pays)}{if $reg_pays=="Singapour"}{/if}selected="selected"{/if}>Singapour </option>
                        <option value="Slovaquie" {if isset($reg_pays)}{if $reg_pays=="Slovaquie"}{/if}selected="selected"{/if}>Slovaquie </option>
                        <option value="Slovenie" {if isset($reg_pays)}{if $reg_pays=="Slovenie"}{/if}selected="selected"{/if}>Slovenie</option>
                        <option value="Somalie" {if isset($reg_pays)}{if $reg_pays=="Somalie"}{/if}selected="selected"{/if}>Somalie </option>
                        <option value="Soudan" {if isset($reg_pays)}{if $reg_pays=="Soudan"}{/if}selected="selected"{/if}>Soudan </option>
                        <option value="Sri_Lanka" {if isset($reg_pays)}{if $reg_pays=="Sri_Lanka"}{/if}selected="selected"{/if}>Sri_Lanka </option>
                        <option value="Suede" {if isset($reg_pays)}{if $reg_pays=="Suede"}{/if}selected="selected"{/if}>Suede </option>
                        <option value="Suisse" {if isset($reg_pays)}{if $reg_pays=="Suisse"}{/if}selected="selected"{/if}>Suisse </option>
                        <option value="Surinam" {if isset($reg_pays)}{if $reg_pays=="Surinam"}{/if}selected="selected"{/if}>Surinam </option>
                        <option value="Swaziland" {if isset($reg_pays)}{if $reg_pays=="Swaziland"}{/if}selected="selected"{/if}>Swaziland </option>
                        <option value="Syrie" {if isset($reg_pays)}{if $reg_pays=="Syrie"}{/if}selected="selected"{/if}>Syrie </option>
                        <option value="Tadjikistan" {if isset($reg_pays)}{if $reg_pays=="Tadjikistan"}{/if}selected="selected"{/if}>Tadjikistan </option>
                        <option value="Taiwan" {if isset($reg_pays)}{if $reg_pays=="Taiwan"}{/if}selected="selected"{/if}>Taiwan </option>
                        <option value="Tonga" {if isset($reg_pays)}{if $reg_pays=="Tonga"}{/if}selected="selected"{/if}>Tonga </option>
                        <option value="Tanzanie" {if isset($reg_pays)}{if $reg_pays=="Afghanistan"}{/if}selected="selected"{/if}>Tanzanie </option>
                        <option value="Tchad" {if isset($reg_pays)}{if $reg_pays=="Tanzanie"}{/if}selected="selected"{/if}>Tchad </option>
                        <option value="Thailande" {if isset($reg_pays)}{if $reg_pays=="Afghanistan"}{/if}selected="selected"{/if}>Thailande </option>
                        <option value="Tibet" {if isset($reg_pays)}{if $reg_pays=="Thailande"}{/if}selected="selected"{/if}>Tibet </option>
                        <option value="Timor_Oriental" {if isset($reg_pays)}{if $reg_pays=="Timor_Oriental"}{/if}selected="selected"{/if}>Timor Oriental </option>
                        <option value="Togo" {if isset($reg_pays)}{if $reg_pays=="Togo"}{/if}selected="selected"{/if}>Togo </option>
                        <option value="Trinite_et_Tobago" {if isset($reg_pays)}{if $reg_pays=="Trinite_et_Tobago"}{/if}selected="selected"{/if}>Trinite et Tobago </option>
                        <option value="Tristan da cunha" {if isset($reg_pays)}{if $reg_pays=="Tristan da cunha"}{/if}selected="selected"{/if}>Tristan de cuncha </option>
                        <option value="Tunisie" {if isset($reg_pays)}{if $reg_pays=="Tunisie"}{/if}selected="selected"{/if}>Tunisie </option>
                        <option value="Turkmenistan" {if isset($reg_pays)}{if $reg_pays=="Turkmenistan"}{/if}selected="selected"{/if}>Turmenistan </option>
                        <option value="Turquie" {if isset($reg_pays)}{if $reg_pays=="Turquie"}{/if}selected="selected"{/if}>Turquie </option>
                        <option value="Ukraine" {if isset($reg_pays)}{if $reg_pays=="Ukraine"}{/if}selected="selected"{/if}>Ukraine </option>
                        <option value="Uruguay" {if isset($reg_pays)}{if $reg_pays=="Uruguay"}{/if}selected="selected"{/if}>Uruguay </option>
                        <option value="Vanuatu" {if isset($reg_pays)}{if $reg_pays=="Vanuatu"}{/if}selected="selected"{/if}>Vanuatu </option>
                        <option value="Vatican" {if isset($reg_pays)}{if $reg_pays=="Vatican"}{/if}selected="selected"{/if}>Vatican </option>
                        <option value="Venezuela" {if isset($reg_pays)}{if $reg_pays=="Venezuela"}{/if}selected="selected"{/if}>Venezuela </option>
                        <option value="Vierges_Americaines" {if isset($reg_pays)}{if $reg_pays=="Vierges_Americaines"}{/if}selected="selected"{/if}>Vierges Americaines </option>
                        <option value="Vierges_Britanniques" {if isset($reg_pays)}{if $reg_pays=="Vierges_Britanniques"}{/if}selected="selected"{/if}>Vierges Britanniques </option>
                        <option value="Vietnam" {if isset($reg_pays)}{if $reg_pays=="Vietnam"}{/if}selected="selected"{/if}>Vietnam </option>
                        <option value="Wake" {if isset($reg_pays)}{if $reg_pays=="Wake"}{/if}selected="selected"{/if}>Wake </option>
                        <option value="Wallis et Futuma" {if isset($reg_pays)}{if $reg_pays=="Wallis et Futuma"}{/if}selected="selected"{/if}>Wallis et Futuma </option>
                        <option value="Yemen" {if isset($reg_pays)}{if $reg_pays=="Yemen"}{/if}selected="selected"{/if}>Yemen </option>
                        <option value="Yougoslavie" {if isset($reg_pays)}{if $reg_pays=="Yougoslavie"}{/if}selected="selected"{/if}>Yougoslavie </option>
                        <option value="Zambie" {if isset($reg_pays)}{if $reg_pays=="Zambie"}{/if}selected="selected"{/if}>Zambie </option>
                        <option value="Zimbabwe" {if isset($reg_pays)}{if $reg_pays=="Zimbabwe"}{/if}selected="selected"{/if}>Zimbabwe </option>
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
