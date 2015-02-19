{************************************
******* Breadcrumbs Template ********
*************************************}
<!-- breadcrumb.tpl -->
<ul class="breadcrumb">
    <li><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Home#}</a></li>
    {if $pagename eq "404"}<li class="active">{#PLIGG_Visual_404_Error#}</li>{/if}
    {if $pagename eq "submit"}<li class="active">{#PLIGG_Visual_Submit#}</li>{/if}
    {if $pagename eq "submit_groups"}<li><a href="{$URL_groups}">{#PLIGG_Visual_Groups#}</a></li><li class="active">{#PLIGG_Visual_Submit_A_New_Group#}</li>{/if}
    {if $pagename eq "groups"}<li class="active">{#PLIGG_Visual_Groups#}</li>{/if}
    {if $pagename eq "editgroup"}<li><a href="{$URL_groups}">{#PLIGG_Visual_Groups#}</a></li><li><a href="{$group_story_url}">{$group_name}</a></li><li class="active">{#PLIGG_Visual_Group_Edit#}</li>{/if}
    {if $pagename eq "group_story" }<li><a href="{$URL_groups}">{#PLIGG_Visual_Groups#}</a></li><li class="active">{$group_name}</li>{/if}
    {if $pagename eq "login"}<li class="active">{#PLIGG_Visual_Login#}</li>{/if}
    {if $pagename eq "recover"}<li class="active">{#PLIGG_Visual_Breadcrumb_Recover_Password#}</li>{/if}
    {if $pagename eq "register"}<li class="active">{#PLIGG_Visual_Register#}</li>{/if}
    {if $pagename eq "editlink"}<li><a href="{$my_base_url}{$my_pligg_base}/story.php?id={$submit_id}">{$submit_title}</a></li><li class="active">{#PLIGG_Visual_LS_Admin_Edit#}</li>{/if}
    {if $pagename eq "rssfeeds"}<li class="active">{#PLIGG_Visual_RSS_Feeds#}</li>{/if}
    {if $pagename eq "topusers"}<li class="active">{#PLIGG_Visual_TopUsers_Statistics#}</li>{/if}
    {if $pagename eq "cloud"}<li class="active">{#PLIGG_Visual_Tags_Tags#}</li>{/if}
    {if $pagename eq "live"}<li class="active">{#PLIGG_Visual_Live#}</li>{/if}
    {if $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}<li><a href="{$URL_live}">{#PLIGG_Visual_Breadcrumb_Live#}</a> <span class="divider">/</span></li>{/if}
        {if $pagename eq "live_unpublished"}<li class="active">{#PLIGG_Visual_Breadcrumb_Unpublished#}</li>{/if}
        {if $pagename eq "live_published"}<li class="active">{#PLIGG_Visual_Breadcrumb_Published#}</li>{/if}
        {if $pagename eq "live_comments"}<li class="active">{#PLIGG_Visual_Breadcrumb_Comments#}</li>{/if}
    {if $pagename eq "advancedsearch"}<li class="active">{#PLIGG_Visual_Search_Advanced#}</li>{/if}
    {if $pagename eq "profile" || $pagename eq "user_edit"}
        <li><a href="{$URL_userNoVar}">{$user_login}</a></li> 
        <li class="active">{#PLIGG_Visual_Profile_ModifyProfile#}</li>
    {/if}
    {if $pagename eq "user"}
        {if $user_view eq 'search'}
            <li>{#PLIGG_Visual_User_Search_Users#}</li>
        {else}
            <li>{if $user_view neq 'profile'}<a href="{$user_url_personal_data2}">{/if}{$username}{if $user_view neq 'profile'}</a></li> {/if}
            {if $user_view neq 'profile'}<li class="active">{$page_header} <a href="{$user_rss, $view_href}" target="_blank"><i class="fa fa-rss-square opacity_reset" style="color:#EEA639;"></i></a></li>{/if}
        {/if}
    {/if}
    {if $pagename eq "published" && $get.category eq '' || $pagename eq "index"}<li class="active">{#PLIGG_Visual_Published_News#}{/if}
    {if $pagename eq "new" && $get.category eq ''}<li class="active">{#PLIGG_Visual_Pligg_Queued#}{/if}
    {if $get.category}
        {if $pagename eq "published" || $pagename eq "index"}<li><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Published_News#}</a></li>{/if}
        {if $pagename eq "new"}<li><a href="{$URL_index}">{#PLIGG_Visual_Pligg_Queued#}</a></li>{/if}
    {/if}
    {if $pagename eq "noresults"}<li class="active">{$posttitle}
    {elseif isset($get.search)}<li class="active">{#PLIGG_Visual_Search_SearchResults#} &quot;{if $get.search}{$get.search}{else}{$get.date}{/if}&quot;{/if}
    {if isset($get.q)}<li class="active">{#PLIGG_Visual_Search_SearchResults#} &quot;{$get.q}&quot;{/if} 
    {if $pagename eq "index" || $pagename eq "published" || $pagename eq "new" || isset($get.search) || isset($get.q)}
        {if isset($navbar_where.link2) && $navbar_where.link2 neq ""} <li> <a href="{$navbar_where.link2}">{$navbar_where.text2}</a> </li> {elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} <li> {$navbar_where.text2} </li> {/if}
        {if isset($navbar_where.link3) && $navbar_where.link3 neq ""} <li> <a href="{$navbar_where.link3}">{$navbar_where.text3}</a> </li> {elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} <li> {$navbar_where.text3} </li> {/if}
        {if isset($navbar_where.link4) && $navbar_where.link4 neq ""} <li> <a href="{$navbar_where.link4}">{$navbar_where.text4}</a> </li> {elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} <li> {$navbar_where.text4} </li> {/if}
        </li>
    {/if}
    {if $posttitle neq "" && $pagename eq "page"}<li>{$posttitle}</li>{/if}
    {checkActionsTpl location="tpl_pligg_breadcrumb_end"}
    {if $pagename eq "published" || $pagename eq "index" || $pagename eq "new" || $pagename eq "cloud" || $pagename eq "groups" || $pagename eq "live" || $pagename eq "live_published" || $pagename eq "live_unpublished" || $pagename eq "live_comments" || $pagename eq "search"}
        {* Sort Dropdown *}
        <div class="btn-group pull-right breadcrumb-right">
            <ul class="nav nav-pills">
                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                        {if $setmekb eq "upscored" || $setmekb eq ""}
                            {#PLIGG_Visual_ScoreDesc#}
                        {elseif $setmekb eq "downscored"}
                            {#PLIGG_Visual_ScoreAsc#}
                        {elseif $setmekb eq "upvoted"}
                            {#PLIGG_Visual_VotesFor#}
                        {elseif $setmekb eq "downvoted"}
                            {#PLIGG_Visual_VotesAgainst#}
                        {elseif $setmekb eq "recent"}
                            {#PLIGG_Visual_MostRecent#}
                        {elseif $setmekb eq "commented"}
                            {#PLIGG_Visual_MostCommented#}
                        {elseif $setmekb eq "debated"}
                            {#PLIGG_Visual_MostDebated#}
                        {/if}
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="menu1">
                        {if $pagename eq "published" || $pagename eq "index" || $pagename eq "new" || $pagename eq "search"}

                            {if $setmekb eq "" || $setmekb eq "upscored"}
                                <li class="active"><a id="current" href="{$index_url_upscored}"><span class="active">{#PLIGG_Visual_ScoreDesc#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_upscored}">{#PLIGG_Visual_ScoreDesc#}</a></li>
                            {/if}

                        {/if}
                            
                        {if $pagename eq "published" || $pagename eq "index" || $pagename eq "new"}
                                
                            {if $setmekb eq "downscored"}
                                <li class="active"><a id="current" href="{$index_url_downscored}"><span class="active">{#PLIGG_Visual_ScoreAsc#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_downscored}">{#PLIGG_Visual_ScoreAsc#}</a></li>
                            {/if}
                                
                            {if $setmekb eq "upvoted"}
                                <li class="active"><a id="current" href="{$index_url_upvoted}"><span class="active">{#PLIGG_Visual_VotesFor#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_upvoted}">{#PLIGG_Visual_VotesFor#}</a></li>
                            {/if}
                            
                            {if $setmekb eq "downvoted"}
                                <li class="active"><a id="current" href="{$index_url_downvoted}"><span class="active">{#PLIGG_Visual_VotesAgainst#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_downvoted}">{#PLIGG_Visual_VotesAgainst#}</a></li>
                            {/if}
                            
                            {if $setmekb eq "recent"}
                                <li class="active"><a id="current" href="{$index_url_recent}"><span class="active">{#PLIGG_Visual_MostRecent#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_recent}">{#PLIGG_Visual_MostRecent#}</a></li>
                            {/if}
                            
                            {if $setmekb eq "commented"}
                                <li class="active"><a id="current" href="{$index_url_commented}"><span class="active">{#PLIGG_Visual_MostCommented#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_commented}">{#PLIGG_Visual_MostCommented#}</a></li>
                            {/if}
                            
                            {if $setmekb eq "debated"}
                                <li class="active"><a id="current" href="{$index_url_debated}"><span class="active">{#PLIGG_Visual_MostDebated#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_debated}">{#PLIGG_Visual_MostDebated#}</a></li>
                            {/if}
                        {/if}
                    </ul>
                </li>
                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                            {if $setmeka eq "" || $setmeka eq "alltime"}
                                {#PLIGG_Visual_DateNone#}
                            {elseif $setmeka eq "hour"}
                                {#PLIGG_Visual_DateHour#}
                            {elseif $setmeka eq "day"}
                                {#PLIGG_Visual_DateDay#}
                            {elseif $setmeka eq "week"}
                                {#PLIGG_Visual_DateWeek#}
                            {elseif $setmeka eq "month"}
                                {#PLIGG_Visual_DateMonth#}
                            {elseif $setmeka eq "year"}
                                {#PLIGG_Visual_DateYear#}
                            {/if}

                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="menu1">
                        {if $pagename eq "published" || $pagename eq "index" || $pagename eq "new" || $pagename eq "search"}
                        
                            {if $setmeka eq "" || $setmeka eq "alltime"}
                                <li class="active"><a id="current" href="{$index_url_alltime}"><span class="active">{#PLIGG_Visual_DateNone#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_alltime}">{#PLIGG_Visual_DateNone#}</a></li>
                            {/if}
                        {/if}
                            
                        {if $pagename eq "published" || $pagename eq "index" || $pagename eq "new"}
                            {if $setmeka eq "hour"}
                                <li class="active"><a href="{$index_url_hour}" id="current"><span class="active">{#PLIGG_Visual_DateHour#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_hour}">{#PLIGG_Visual_DateHour#}</a></li>
                            {/if}
                                
                            {if $setmeka eq "day"}
                                <li class="active"><a id="current" href="{$index_url_day}"><span class="active">{#PLIGG_Visual_DateDay#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_day}">{#PLIGG_Visual_DateDay#}</a></li>
                            {/if}
                                
                            {if $setmeka eq "week"}
                                <li class="active"><a id="current" href="{$index_url_week}"><span class="active">{#PLIGG_Visual_DateWeek#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_week}">{#PLIGG_Visual_DateWeek#}</a></li>
                            {/if}
                            
                            {if $setmeka eq "month"}
                                <li class="active"><a id="current" href="{$index_url_month}"><span class="active">{#PLIGG_Visual_DateMonth#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_month}">{#PLIGG_Visual_DateMonth#}</a></li>
                            {/if}
                            
                            {if $setmeka eq "year"}
                                <li class="active"><a id="current" href="{$index_url_year}"><span class="active">{#PLIGG_Visual_DateYear#}</span></a></li>
                            {else}
                                <li><a href="{$index_url_year}">{#PLIGG_Visual_DateYear#}</a></li>
                            {/if}
                        {/if}
                            
                    </ul>
                </li>
                            
                {if $pagename eq "groups" || $pagename eq "live" || $pagename eq "live_published" || $pagename eq "live_unpublished" || $pagename eq "live_comments" || $pagename eq "cloud"}
                <li class="dropdown pull-right">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">{#PLIGG_Visual_Sort#} <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="menu1">
                            
                        {if $pagename eq "groups"}
                            
                            <li {if $sortby eq "members"}class="active"{/if}>
                                {if $sortby eq "members"}
                                    <a id="current" href="{$group_url_members}">
                                        <span class="active">{#PLIGG_Visual_Group_Sort_Members#}</span>
                                    </a>
                                {else}
                                    <a href="{$group_url_members}">{#PLIGG_Visual_Group_Sort_Members#}</a>
                                {/if}
                            </li>                           
                            <li {if $sortby eq "name"}class="active"{/if}>
                                {if $sortby eq "name"}
                                    <a id="current" href="{$group_url_name}">
                                        <span class="active">{#PLIGG_Visual_Group_Sort_Name#}</span>
                                    </a>
                                {else}
                                    <a href="{$group_url_name}">{#PLIGG_Visual_Group_Sort_Name#}</a>
                                {/if}
                            </li>
                            <li {if $sortby eq "newest"}class="active"{/if}>
                                {if $sortby eq "newest"}
                                    <a id="current" href="{$group_url_newest}">
                                        <span class="active">{#PLIGG_Visual_Group_Sort_Newest#}</span>
                                    </a>
                                {else}
                                    <a href="{$group_url_newest}">{#PLIGG_Visual_Group_Sort_Newest#}</a>
                                {/if}
                            </li>
                            <li {if $sortby eq "oldest"}class="active"{/if}>
                                {if $sortby eq "oldest"}
                                    <a id="current" href="{$group_url_oldest}">
                                        <span class="active">{#PLIGG_Visual_Group_Sort_Oldest#}</span>
                                    </a>
                                {else}
                                    <a href="{$group_url_oldest}">{#PLIGG_Visual_Group_Sort_Oldest#}</a>
                                {/if}
                            </li>
                            
                        {elseif $pagename eq "live" || $pagename eq "live_published" || $pagename eq "live_unpublished" || $pagename eq "live_comments"}
                        
                            <li {if $pagename eq "live"}class="active"{/if}>
                                <a href="{$URL_live}">
                                    <span {if $pagename eq "live"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_All#}</span>
                                </a>
                            </li>
                            <li {if $pagename eq "live_published"}class="active"{/if}>
                                <a href="{$URL_published}">
                                    <span {if $pagename eq "live_published"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Published_Tab#}</span>
                                </a>
                            </li>
                            <li {if $pagename eq "live_unpublished"}class="active"{/if}>
                                <a href="{$URL_unpublished}">
                                    <span {if $pagename eq "live_unpublished"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</span>
                                </a>
                            </li>
                            <li {if $pagename eq "live_comments"}class="active"{/if}>
                                <a href="{$URL_comments}">
                                    <span {if $pagename eq "live_comments"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Comments#}</span>
                                </a>
                            </li>
                            
                        {elseif $pagename eq "cloud"}
                            {section name=i start=0 loop=$count_range_values step=1}
                                {if $templatelite.section.i.index eq $current_range}
                                    <li class="active"><a href="#"><span class="active">{$range_names[i]}</span></a></li>
                                {else}  
                                    <li><a href="{$URL_tagcloud_range, $templatelite.section.i.index}"><span>{$range_names[i]}</span></a></li>
                                {/if}
                            {/section}
                        {/if}

                        
                    </ul>
                </li>
                {/if}
            </ul>
        </div>
    {/if}
</ul>
<!--/breadcrumb.tpl -->
