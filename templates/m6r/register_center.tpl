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
                <label class="control-label">{#PLIGG_Visual_Register_Numero_Secu#}</label>
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
                    <input autofocus="autofocus" type="text" class="form-control reg_pays" id="reg_pays" name="reg_pays" value="{if isset($reg_pays)}{$reg_pays}{/if}" size="25" tabindex="10" maxlength="32"/>
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