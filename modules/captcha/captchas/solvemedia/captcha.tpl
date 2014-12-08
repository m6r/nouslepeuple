{literal}
<script>
var ACPuzzleOptions = {
   theme : {/literal} "<?php echo get_misc_data('adcopy_theme'); ?>"{literal},
   lang : {/literal} "<?php echo get_misc_data('adcopy_lang'); ?>"
{literal}};
</script>
{/literal}
<br/>
<div class="control-group{if isset($register_captcha_error)} error{/if}">
	<label for="input01" class="control-label">Captcha <i class="fa fa-asterisk text-danger"></i></label>
	<div class="controls">
                <p class="help-inline">{#PLIGG_Visual_Captcha_Explication#}</p>
		{if isset($register_captcha_error)}
			<div class="alert alert-error">
				<button class="close" data-dismiss="alert">&times;</button>
				{$register_captcha_error}
			</div>
		{/if}
		<div id="solvemedia_display">
			{php}
				require_once(captcha_captchas_path . '/solvemedia/lib/solvemedialib.php');
				$publickey = get_misc_data('adcopy_pubkey'); // you got this from the portal
				echo solvemedia_get_html($publickey);
			{/php}	
		</div>
		<br />
	</div>
</div>
