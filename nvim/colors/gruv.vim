hi clear
syntax reset

let colors_name = 'gruv'

highlight Blue guifg=#7EA99D guibg=NONE  gui=NONE
highlight Normal guifg=#E2CBA7 guibg=NONE  gui=NONE
highlight Pmenu guifg=#E2CBA7 guibg=NONE  gui=NONE
highlight PmenuSel guifg=#443F3C guibg=#A89985  gui=NONE
highlight PmenuSbar guifg=NONE guibg=#443F3C  gui=NONE
highlight PmenuThumb guifg=NONE guibg=#7D6F64  gui=NONE
highlight Search guifg=#292929 guibg=#B1B946  gui=NONE
highlight SpecialKey guifg=#5B534D guibg=NONE  gui=NONE
highlight StatusLine guifg=#E2CBA7 guibg=#443F3C  gui=NONE
highlight StatusLineNC guifg=#A89985 guibg=NONE  gui=NONE
highlight TabLine guifg=#A89985 guibg=#3a3735  gui=NONE
highlight TabLineFill guifg=#A89985 guibg=#292929  gui=NONE
highlight TabLineSel guifg=#292929 guibg=#A89985  gui=NONE
highlight Visual guifg=NONE guibg=#384242  gui=NONE
highlight Constant guifg=#8AB97E guibg=NONE  gui=NONE
highlight String guifg=#B1B946 guibg=NONE  gui=NONE
highlight Statement guifg=#F2584A guibg=NONE  gui=italic
highlight PreProc guifg=#D4879C guibg=NONE  gui=italic
highlight TSConstBuiltin guifg=#7EA99D guibg=NONE  gui=italic
highlight TSConstMacro guifg=#7EA99D guibg=NONE  gui=italic
highlight TSError guifg=#F2584A guibg=NONE  gui=underline
highlight TSNamespace guifg=#E9B244 guibg=NONE  gui=italic
highlight Comment guifg=#918273 guibg=NONE  gui=italic
highlight TSTypeBuiltin guifg=#E9B244 guibg=NONE  gui=italic
highlight TSVariableBuiltin guifg=#7EA99D guibg=NONE  gui=italic
highlight TSEmphasis guifg=NONE guibg=NONE  gui=bold
highlight TSUnderline guifg=NONE guibg=NONE  gui=underline
highlight TSURI guifg=#7EA99D guibg=NONE  gui=underline
highlight Fg guifg=#E2CBA7 guibg=NONE  gui=NONE
highlight Grey guifg=#918273 guibg=NONE  gui=NONE
highlight Red guifg=#F2584A guibg=NONE  gui=NONE
highlight Orange guifg=#F28736 guibg=NONE  gui=NONE
highlight Yellow guifg=#E9B244 guibg=NONE  gui=NONE
highlight Green guifg=#B1B946 guibg=NONE  gui=NONE
highlight Aqua guifg=#8AB97E guibg=NONE  gui=NONE
highlight Purple guifg=#D4879C guibg=NONE  gui=NONE
highlight CurrentWord guibg=#3c3836 gui=bold
highlight ErrorText guifg=#F2584A guibg=NONE  gui=underline
highlight WarningText guifg=#E9B244 guibg=NONE  gui=underline
highlight InfoText guifg=#7EA99D guibg=NONE  gui=underline
highlight HintText guifg=#B1B946 guibg=NONE  gui=underline
highlight ColorColumn guifg=NONE guibg=NONE  gui=NONE
highlight Conceal guifg=NONE guibg=#5B534D  gui=NONE
highlight Cursor guifg=NONE guibg=NONE  gui=NONE
highlight lCursor guifg=NONE guibg=NONE  gui=reverse
highlight CursorColumn guifg=NONE guibg=#32302F  gui=NONE
highlight CursorLine guifg=NONE guibg=#443F3C  gui=NONE
highlight DiffAdd guifg=NONE guibg=#33371B  gui=NONE
highlight DiffChange guifg=NONE guibg=#0E363E  gui=NONE
highlight DiffDelete guifg=NONE guibg=#402220  gui=NONE
highlight DiffText guifg=#292929 guibg=#7EA99D  gui=NONE
highlight EndOfBuffer guifg=#5B534D guibg=#32302F  gui=NONE
highlight VertSplit guifg=#5B534D guibg=NONE  gui=NONE
highlight Folded guifg=#918273 guibg=NONE  gui=NONE
highlight FoldColumn guifg=#5B534D guibg=NONE  gui=NONE
highlight SignColumn guifg=#E2CBA7 guibg=NONE  gui=NONE
highlight IncSearch guifg=#292929 guibg=#E9B244  gui=NONE
highlight LineNr guifg=#5B534D guibg=NONE  gui=NONE
highlight CursorLineNr guifg=#E9B244 guibg=NONE  gui=NONE
highlight MatchParen guifg=#F28736 guibg=NONE  gui=bold
highlight NeogitDiffContextHighlight guifg=NONE guibg=#443F3C  gui=NONE
highlight NonText guifg=#5B534D guibg=NONE  gui=NONE
highlight WindowPicker guifg=#E2CBA7 guibg=#7EA99D  gui=bold
highlight! link YankHighlight Visual
highlight! link NeogitHunkHeaderHighlight Blue
highlight! link Question Yellow
highlight! link NeogitHunkHeader Blue
highlight! link Title Orange
highlight! link WildMenu PmenuSel
highlight! link Character Green
highlight! link Number Purple
highlight! link Boolean Purple
highlight! link Identifier Blue
highlight! link Function Green
highlight! link Type Green
highlight! link Special Yellow
highlight! link Error Red
highlight! link Todo Purple
highlight! link LspReferenceText CurrentWord
highlight! link LspReferenceRead CurrentWord
highlight! link LspReferenceWrite CurrentWord
highlight! link LspDiagnosticsDefaultError ErrorText
highlight! link LspDiagnosticsDefaultWarning WarningText
highlight! link LspDiagnosticsDefaultInformation InfoText
highlight! link LspDiagnosticsDefaultHint HintText
highlight! link LspDiagnosticsFloatingError Red
highlight! link LspDiagnosticsFloatingWarning Yellow
highlight! link LspDiagnosticsFloatingInformation Blue
highlight! link LspDiagnosticsFloatingHint Blue
highlight! link LspDiagnosticsSignError Red
highlight! link LspDiagnosticsSignWarning Yellow
highlight! link LspDiagnosticsSignInformation Blue
highlight! link LspDiagnosticsSignHint Blue
highlight! link TSAnnotation Purple
highlight! link TSAttribute Purple
highlight! link TSBoolean Purple
highlight! link TSCharacter Aqua
highlight! link TSComment Comment
highlight! link TSConstructor Yellow
highlight! link TSConditional Red
highlight! link TSConstant Fg
highlight! link TSException Red
highlight! link TSField Green
highlight! link TSFloat Purple
highlight! link TSFunction Green
highlight! link TSFuncBuiltin Green
highlight! link TSFuncMacro Green
highlight! link TSInclude Red
highlight! link TSKeyword Red
highlight! link TSKeywordFunction Red
highlight! link TSLabel Orange
highlight! link TSMethod Green
highlight! link TSNone Fg
highlight! link TSNumber Purple
highlight! link TSOperator Orange
highlight! link TSParameter Fg
highlight! link TSParameterReference Fg
highlight! link TSProperty Green
highlight! link TSPunctDelimiter Grey
highlight! link TSPunctBracket Fg
highlight! link TSPunctSpecial Blue
highlight! link TSRepeat Red
highlight! link TSString Aqua
highlight! link TSStringRegex Green
highlight! link TSSymbol Fg
highlight! link ErrorMsg Red
highlight! link TSVariable Fg
highlight! link TSTag Orange
highlight! link TSTagDelimiter Green
highlight! link TSText Green
highlight! link TSTitle Purple
highlight! link GitSignsAdd Green
highlight! link GitSignsChange Blue
highlight! link GitSignsDelete Red
highlight! link NvimTreeImageFile Fg
highlight! link NvimTreeGitStaged Blue
highlight! link NvimTreeGitRenamed Purple
highlight! link Directory Green
highlight! link MoreMsg Yellow
highlight! link NeogitDiffDeleteHighlight DiffDelete
highlight! link NeogitDiffAddHighlight DiffAdd
highlight! link TelescopeSelectionCaret Green
highlight! link TelescopeSelection Green
highlight! link TelescopePromptPrefix Orange
highlight! link TelescopeBorder Grey
highlight! link NvimTreeGitDeleted Red
highlight! link NvimTreeGitNew Aqua
highlight! link NvimTreeGitMerge Orange
highlight! link NvimTreeGitDirty Yellow
highlight! link NvimTreeIndentMarker Grey
highlight! link NvimTreeMarkdownFile Fg
highlight! link NvimTreeSpecialFile Fg
highlight! link NvimTreeOpenedFile Fg
highlight! link NvimTreeExecFile Fg
highlight! link NvimTreeOpenedFolderName Green
highlight! link NvimTreeEmptyFolderName Green
highlight! link NvimTreeFolderIcon Red
highlight! link NvimTreeRootFolder Grey
highlight! link NvimTreeFolderName Green
highlight! link NvimTreeSymlink Fg
highlight! link GitSignsChangeDelete Purple
highlight! link WarningMsg Yellow
highlight! link TSStringEscape Green
highlight! link TSType Yellow
