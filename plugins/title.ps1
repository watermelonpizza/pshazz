function pshazz:title:init {
    $title = $global:pshazz.theme.title

	# default
	if(!$title) { $title = 'Console' }

	$global:pshazz.title = $title
}

function global:pshazz:title:prompt {
    $vars = $global:pshazz.prompt_vars
    $vars.keys | ForEach-Object { set-variable $_ $vars[$_] }
    $title = $executionContext.InvokeCommand.ExpandString($global:pshazz.title)
    $host.ui.rawui.WindowTitle = $title
}
