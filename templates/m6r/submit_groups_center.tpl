{************************************
******* Create New Group Page *******
*************************************}
<!-- submit_groups_center.tpl -->
{if $enable_group eq "true" && $group_allow eq 1}
	<fieldset>
		{if $error}
			<div class="alert alert-danger">
				<button class="close" data-dismiss="alert">&times;</button>
				{$error}
			</div>
		{/if}
		<form action="{$URL_submit_groups}" method="post" name="thisform" id="thisform" class="form-horizontal" enctype="multipart/form-data">
			{$hidden_token_submit_group}
			<div class="control-group">
				<label class="control-label">{#PLIGG_Visual_Submit_Group_Title#}:</label>
				<div class="controls">
					<input type="text" id="group_title" class="form-control col-md-7" name="group_title" value="{$templatelite.post.group_title|escape:"html"}" />
					<br /><p class="help-inline">{#PLIGG_Visual_Group_Submit_TitleInstruction#}</p>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">{#PLIGG_Visual_Submit_Group_Description#}:</label>
				<div class="controls">
					<textarea name="group_description" rows="3" class="form-control" id="group_description" >{$templatelite.post.group_description|escape:"html"}</textarea>
					<br /><p class="help-inline">{#PLIGG_Visual_Group_Submit_DescriptionInstruction#}</p>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">{#PLIGG_Visual_Submit_Group_Mail_Friends#}:</label>
				<div class="controls">
					<input type="text" id="group_mailer" class="form-control col-md-7" name="group_mailer" value="{$templatelite.post.group_mailer|escape:"html"}">
					<br /><p class="help-inline">{#PLIGG_Visual_Group_Submit_Mail_Friends_Desc#}</p>
				</div>
			</div>
			<div class="form-actions">
				<input type="submit" value="{#PLIGG_Visual_Submit_Group_create#}" class="btn btn-primary" />
				<input type="button" onclick="history.go(-1)" value="{#PLIGG_Visual_View_User_Edit_Cancel#}" class="btn btn-default" />
			</div>
		</form>
	</fieldset>
{else}
	{#PLIGG_Visual_Group_Disabled#}
{/if}
<br />
<!--/submit_groups_center.tpl -->
