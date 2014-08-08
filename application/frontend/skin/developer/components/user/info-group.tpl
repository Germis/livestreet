{**
 * Блок с информацией
 *}

{$component = 'user-info-group'}

{if $smarty.local.html || $smarty.local.items}
	<div class="{$component} {mod name=$component mods=$smarty.local.mods} {$smarty.local.classes}" {$smarty.local.attributes}>
		<h3 class="user-info-group-title">
			{$smarty.local.title}
		</h3>

		<div class="user-info-group-content">
			{if $smarty.local.html}
				{$smarty.local.html}
			{else}
				{include 'components/info_list/info_list.tpl' aInfoList=$smarty.local.items sClasses='user-info-group-items'}
			{/if}
		</div>
	</div>
{/if}