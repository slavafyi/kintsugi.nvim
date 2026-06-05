" Kintsugi Light for Neovim, ported from ahatem/vscode-kintsugi
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="kintsugi-light"
let g:terminal_color_0  = '#f2ede4'
let g:terminal_color_1  = '#8a4040'
let g:terminal_color_2  = '#4a7a30'
let g:terminal_color_3  = '#9a7820'
let g:terminal_color_4  = '#5a6870'
let g:terminal_color_5  = '#785898'
let g:terminal_color_6  = '#4a8098'
let g:terminal_color_7  = '#3a3828'
let g:terminal_color_8  = '#b0aea6'
let g:terminal_color_9  = '#802828'
let g:terminal_color_10 = '#3a6820'
let g:terminal_color_11 = '#7a6010'
let g:terminal_color_12 = '#3a5868'
let g:terminal_color_13 = '#784878'
let g:terminal_color_14 = '#2a7898'
let g:terminal_color_15 = '#2a2818'
" built-in
hi ColorColumn              guifg=NONE    guibg=#e0deda gui=NONE
hi Conceal                  guifg=#8a8878 guibg=NONE    gui=NONE
hi CurSearch                guifg=#f8f4ea guibg=#9a7820 gui=NONE
hi Cursor                   guifg=#f8f4ea guibg=#9a7820 gui=NONE
hi TermCursor               guifg=#f8f4ea guibg=#9a7820 gui=NONE
hi CursorColumn             guifg=NONE    guibg=#eee6d0 gui=NONE
hi CursorLine               guifg=NONE    guibg=#eee6d0 gui=NONE
hi CursorLineNr             guifg=#9a7820 guibg=NONE    gui=NONE
hi DiffAdd                  guifg=#4a7a30 guibg=NONE    gui=NONE
hi DiffChange               guifg=#9a7820 guibg=NONE    gui=NONE
hi DiffDelete               guifg=#8a4040 guibg=NONE    gui=NONE
hi DiffText                 guifg=#9a7820 guibg=#ddd4c0 gui=NONE
hi GitSignsAdd              guifg=#4a7a30 guibg=NONE    gui=NONE
hi GitSignsChange           guifg=#9a7820 guibg=NONE    gui=NONE
hi GitSignsDelete           guifg=#8a4040 guibg=NONE    gui=NONE
hi Directory                guifg=#5a6870 guibg=NONE    gui=bold
hi EndOfBuffer              guifg=#b6b4ac guibg=NONE    gui=NONE
hi ErrorMsg                 guifg=#8a4040 guibg=#eee8dc gui=NONE
hi Folded                   guifg=#8a8878 guibg=#ebe4d8 gui=NONE
hi IncSearch                guifg=#f8f4ea guibg=#9a7820 gui=NONE
hi LineNr                   guifg=#b6b4ac guibg=NONE    gui=NONE
hi MatchParen               guifg=#2a2818 guibg=#9a7820 gui=NONE
hi ModeMsg                  guifg=#9a7820 guibg=NONE    gui=NONE
hi MoreMsg                  guifg=#9a7820 guibg=NONE    gui=NONE
hi Normal                   guifg=#2a2818 guibg=#f8f4ea gui=nocombine,NONE
hi NormalNC                 guifg=#2a2818 guibg=NONE    gui=nocombine,NONE
hi Pmenu                    guifg=#3a3828 guibg=#f3ede4 gui=NONE
hi PmenuSel                 guifg=#2a2818 guibg=#d8d4c4 gui=NONE
hi PmenuSbar                guifg=NONE    guibg=#eee8dc gui=NONE
hi PmenuThumb               guifg=NONE    guibg=#8a8878 gui=NONE
hi Question                 guifg=#4a7a30 guibg=NONE    gui=NONE
hi Search                   guifg=#2a2818 guibg=#9a7820 gui=NONE
hi SignColumn               guifg=#9a7820 guibg=NONE    gui=NONE
hi SnippetTabstop           guifg=NONE    guibg=NONE    gui=underdotted
hi SpecialKey               guifg=#b0aea6 guibg=NONE    gui=NONE
hi SpellBad                 guifg=#8a4040 guibg=NONE    gui=undercurl,italic guisp=#8a4040
hi SpellCap                 guifg=#8a7830 guibg=NONE    gui=undercurl,italic guisp=#8a7830
hi SpellLocal               guifg=#5a6870 guibg=NONE    gui=undercurl,italic guisp=#5a6870
hi SpellRare                guifg=#4a7a30 guibg=NONE    gui=undercurl,italic guisp=#4a7a30
hi StatusLine               guifg=#605e50 guibg=#f2ede4 gui=NONE
hi StatusLineNC             guifg=#8a8878 guibg=#e0deda gui=NONE
hi Substitute               guifg=#f8f4ea guibg=#9a7820 gui=NONE
hi TabLine                  guifg=#706e60 guibg=#ebe4d8 gui=NONE
hi TabLineFill              guifg=#f2ede4 guibg=#f2ede4 gui=NONE
hi TabLineSel               guifg=#2a2818 guibg=#f8f4ea gui=NONE
hi Title                    guifg=#9a7820 guibg=NONE    gui=bold
hi Visual                   guifg=#2a2818 guibg=#e6ddc4 gui=NONE
hi VisualNOS                guifg=#2a2818 guibg=#e6ddc4 gui=NONE
hi WarningMsg               guifg=#8a7830 guibg=NONE    gui=NONE
hi Whitespace               guifg=#b0aea6 guibg=NONE    gui=NONE
hi WildMenu                 guifg=#f8f4ea guibg=#9a7820 gui=NONE
hi WinSeparator             guifg=#ddd4c0 guibg=NONE    gui=NONE
" vim-preferred
hi Comment                  guifg=#9a8858 guibg=NONE    gui=NONE
hi Constant                 guifg=#5a6060 guibg=NONE    gui=bold
hi String                   guifg=#3a6820 guibg=NONE    gui=nocombine,NONE
hi Character                guifg=#3a6820 guibg=NONE    gui=bold
hi Number                   guifg=#3848a8 guibg=NONE    gui=NONE
hi Boolean                  guifg=#5a6060 guibg=NONE    gui=bold
hi Float                    guifg=#3848a8 guibg=NONE    gui=NONE
hi Identifier               guifg=#2a2818 guibg=NONE    gui=nocombine,NONE
hi Function                 guifg=#2a2818 guibg=NONE    gui=nocombine,NONE
hi Statement                guifg=#9a7820 guibg=NONE    gui=bold
hi Conditional              guifg=#9a7820 guibg=NONE    gui=bold
hi Repeat                   guifg=#9a7820 guibg=NONE    gui=bold
hi Label                    guifg=#5a6060 guibg=NONE    gui=nocombine,NONE
hi Operator                 guifg=#2a2818 guibg=NONE    gui=NONE
hi Keyword                  guifg=#9a7820 guibg=NONE    gui=bold
hi Exception                guifg=#9a7820 guibg=NONE    gui=bold
hi PreProc                  guifg=#9a7820 guibg=NONE    gui=bold
hi Include                  guifg=#9a7820 guibg=NONE    gui=bold
hi Define                   guifg=#9a7820 guibg=NONE    gui=bold
hi Macro                    guifg=#9a7820 guibg=NONE    gui=bold
hi PreCondit                guifg=#9a7820 guibg=NONE    gui=bold
hi Type                     guifg=#5a6060 guibg=NONE    gui=nocombine,NONE
hi StorageClass             guifg=#9a7820 guibg=NONE    gui=bold,nocombine
hi Structure                guifg=#5a6060 guibg=NONE    gui=nocombine,NONE
hi Typedef                  guifg=#5a6060 guibg=NONE    gui=NONE
hi Special                  guifg=#5a6060 guibg=NONE    gui=bold
hi SpecialChar              guifg=#3a6820 guibg=NONE    gui=NONE
hi Tag                      guifg=#5a6060 guibg=NONE    gui=NONE
hi Delimiter                guifg=#8a8468 guibg=NONE    gui=NONE
hi SpecialComment           guifg=#9a8858 guibg=NONE    gui=bold
hi Debug                    guifg=#3848a8 guibg=NONE    gui=NONE
hi Underlined               guifg=NONE    guibg=NONE    gui=underline
hi Error                    guifg=#8a4040 guibg=NONE    gui=bold
hi Todo                     guifg=#9a7820 guibg=NONE    gui=bold
hi Ignore                   guifg=#8a8878 guibg=NONE    gui=NONE
" diagnostics
hi DiagnosticError          guifg=#8a4040 guibg=NONE    gui=NONE
hi DiagnosticWarn           guifg=#8a7830 guibg=NONE    gui=NONE
hi DiagnosticInfo           guifg=#5a6870 guibg=NONE    gui=NONE
hi DiagnosticHint           guifg=#4a7a30 guibg=NONE    gui=NONE
hi DiagnosticOk             guifg=#4a7a30 guibg=NONE    gui=NONE
hi DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=undercurl guisp=#8a4040
hi DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=undercurl guisp=#8a7830
hi DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=undercurl guisp=#5a6870
hi DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=undercurl guisp=#4a7a30
hi DiagnosticUnderlineOk    guifg=NONE    guibg=NONE    gui=undercurl guisp=#4a7a30
hi DiagnosticDeprecated     guifg=NONE    guibg=NONE    gui=strikethrough guisp=#8a4040
" html sections
hi htmlH1                   guifg=#9a7820 guibg=NONE    gui=bold
hi htmlH2                   guifg=#5a6870 guibg=NONE    gui=bold
hi htmlH3                   guifg=#5a6060 guibg=NONE    gui=bold
hi htmlH4                   guifg=#3848a8 guibg=NONE    gui=bold
hi htmlH5                   guifg=#3848a8 guibg=NONE    gui=NONE
hi htmlH6                   guifg=#3848a8 guibg=NONE    gui=italic
hi htmlBold                 guifg=NONE    guibg=NONE    gui=bold
hi htmlBoldUnderline        guifg=NONE    guibg=NONE    gui=bold,underline
hi htmlBoldUnderlineItalic  guifg=NONE    guibg=NONE    gui=bold,underline,italic
hi htmlUnderlineItalic      guifg=NONE    guibg=NONE    gui=underline,italic
hi htmlItalic               guifg=NONE    guibg=NONE    gui=italic
hi htmlBoldItalic           guifg=NONE    guibg=NONE    gui=bold,italic
" custom
hi kintsugiClassCombine     guifg=#5a6060 guibg=NONE    gui=NONE
" Linking -------------------------------------------------------------------
hi clear @variable
hi clear Added
hi clear Changed
hi clear Removed
hi clear NonText
hi clear QuickFixLine
hi clear NormalFloat
hi clear FloatTitle
hi clear FloatFooter
hi clear lCursor
hi clear WinBar
hi clear WinBarNC
hi clear FloatBorder
hi clear FloatShadow
hi clear FloatShadowThrough
hi clear PmenuMatch
hi clear PmenuMatchSel
hi clear PmenuBorder
hi clear PmenuShadow
hi clear PmenuShadowThrough
hi clear ComplMatchIns
hi clear ComplHint
hi clear ComplHintMore
hi clear MsgArea
hi clear MsgSeparator
hi clear OkMsg
hi clear StderrMsg
hi clear StdoutMsg
hi clear StatusLineTerm
hi clear StatusLineTermNC
hi clear DiffTextAdd
hi clear LspInlayHint
hi clear LspCodeLens
hi clear LspCodeLensSeparator
hi clear LspSignatureActiveParameter
hi clear SnippetTabstopActive
hi clear RedrawDebugNormal
hi clear RedrawDebugClear
hi clear RedrawDebugComposed
hi clear RedrawDebugRecompose
hi clear @constant.macro
hi clear @string.regexp
hi clear @keyword.function
hi clear @keyword.coroutine
hi clear @keyword.import
hi clear @keyword.type
hi clear @keyword.modifier
hi clear @keyword.debug
hi clear @keyword.conditional.ternary
hi clear @punctuation.delimiter
hi clear @punctuation.bracket
hi clear @comment.documentation
hi clear @markup.quote
hi clear @markup.link.label
hi clear @markup.link.url
hi clear @markup.underline
hi clear @markup.strikethrough
hi clear @markup.list.checked
hi clear @markup.list.unchecked
hi clear @type.qualifier
hi clear @lsp.type.class
hi clear @lsp.type.decorator
hi clear @lsp.type.event
hi clear @lsp.type.modifier
hi clear @lsp.type.regexp
hi clear @lsp.type.string
hi clear @lsp.type.struct
hi clear @lsp.type.type
hi clear @lsp.mod.abstract
hi clear @lsp.mod.async
hi clear @lsp.mod.defaultLibrary
hi clear @lsp.mod.deprecated
hi clear @lsp.mod.documentation
hi clear @lsp.mod.readonly
hi clear @lsp.mod.static
" built-in
hi link lCursor                                Cursor
hi link NormalFloat                            Normal
hi link FloatTitle                             Title
hi link FloatFooter                            htmlItalic
hi link WinBar                                 StatusLine
hi link WinBarNC                               StatusLineNC
hi link FoldColumn                             LineNr
hi link FloatBorder                            WinSeparator
hi FloatShadow                                 guifg=NONE    guibg=#000000 gui=NONE blend=80
hi FloatShadowThrough                          guifg=NONE    guibg=#000000 gui=NONE blend=100
hi link Added                                  DiffAdd
hi link Changed                                DiffChange
hi link Removed                                DiffDelete
hi link NonText                                Comment
hi link QuickFixLine                           CursorLine
hi link PmenuMatch                             Special
hi link PmenuMatchSel                          Special
hi link PmenuBorder                            FloatBorder
hi link PmenuShadow                            FloatShadow
hi link PmenuShadowThrough                     FloatShadowThrough
hi link ComplMatchIns                          Search
hi link ComplHint                              NonText
hi link ComplHintMore                          MoreMsg
hi link MsgArea                                Normal
hi link MsgSeparator                           StatusLine
hi link OkMsg                                  DiagnosticOk
hi link StderrMsg                              ErrorMsg
hi link StdoutMsg                              Normal
hi link StatusLineTerm                         StatusLine
hi link StatusLineTermNC                       StatusLineNC
hi link DiffTextAdd                            DiffText
hi link LspInlayHint                           NonText
hi link LspCodeLens                            NonText
hi link LspCodeLensSeparator                   LspCodeLens
hi link LspSignatureActiveParameter            Visual
hi link SnippetTabstopActive                   SnippetTabstop
hi RedrawDebugNormal                           guifg=NONE    guibg=NONE    gui=reverse
hi RedrawDebugClear                            guifg=NONE    guibg=#4a7a30 gui=NONE
hi RedrawDebugComposed                         guifg=NONE    guibg=#9a7820 gui=NONE
hi RedrawDebugRecompose                        guifg=NONE    guibg=#8a4040 gui=NONE
hi link LspReferenceText                       Underlined
hi link LspReferenceRead                       Underlined
hi link LspReferenceWrite                      Underlined
hi link LspReferenceTarget                     Underlined
" treesitter-highlight-groups
hi link @constant.macro                        Define
hi link @attribute                             Label
hi link @attribute.builtin                     NONE
hi link @constant.builtin                      Boolean
hi link @constructor                           NONE
hi link @diff.delta                            DiffChange
hi link @diff.minus                            DiffDelete
hi link @diff.plus                             DiffAdd
hi link @function                              Function
hi link @function.builtin                      Function
hi link @function.call                         Function
hi link @function.macro                        Macro
hi link @function.method                       Function
hi link @function.method.builtin               Function
hi link @function.method.call                  Function
hi link @string.regexp                         SpecialChar
hi link @keyword.function                      Keyword
hi link @keyword.coroutine                     Keyword
hi link @keyword.conditional                   Conditional
hi link @keyword.conditional.ternary           Operator
hi link @keyword.directive                     Conditional
hi link @keyword.directive.define              Define
hi link @keyword.import                        Include
hi link @keyword.type                          Structure
hi link @keyword.modifier                      StorageClass
hi link @keyword.debug                         Debug
hi link @keyword.exception                     Exception
hi link @keyword.operator                      Operator
hi link @keyword.repeat                        Repeat
hi link @keyword.return                        Conditional
hi link @punctuation.delimiter                 Delimiter
hi link @punctuation.bracket                   Delimiter
hi link @markup.heading                        Title
hi link @markup.heading.1                      htmlH1
hi link @markup.heading.2                      htmlH2
hi link @markup.heading.3                      htmlH3
hi link @markup.heading.4                      htmlH4
hi link @markup.heading.5                      htmlH5
hi link @markup.heading.6                      htmlH6
hi link @markup.italic                         htmlItalic
hi link @markup.link                           Label
hi link @markup.link.label                     Label
hi link @markup.link.url                       NONE
hi link @markup.list                           Delimiter
hi link @markup.list.checked                   @markup.list
hi link @markup.list.unchecked                 @markup.list
hi link @markup.literal                        String
hi link @markup.quote                          htmlItalic
hi link @markup.raw                            String
hi link @markup.raw.block                      NormalNC
hi link @markup.underline                      Underlined
hi @markup.strikethrough                       guifg=NONE    guibg=NONE    gui=strikethrough
hi link @markup.strong                         htmlBold
hi link @module                                StorageClass
hi link @module.builtin                        StorageClass
hi link @namespace                             StorageClass
hi link @none                                  Normal
hi link @comment.documentation                 Comment
hi link @property                              Identifier
hi link @string.escape                         Special
hi link @string.special.path                   NONE
hi link @string.special.url                    NONE
hi link @tag.attribute                         Identifier
hi link @tag.delimiter                         Operator
hi link @type                                  Type
hi link @type.builtin                          Type
hi link @type.definition                       Type
hi link @type.qualifier                        StorageClass
hi link @variable                              NormalNC
hi link @variable.builtin                      htmlBold
hi link @variable.member                       Identifier
hi link @variable.parameter                    NormalNC
hi link @markup.quote.markdown                 htmlItalic
hi link @variable.parameter.builtin            Special
" treesitter-highlight-groups (lang-specific)
hi link @constructor.lua                       NONE
hi link @function.macro.vim                    Keyword
hi link @tag.builtin.tsx                       Tag
hi link @tag.tsx                               Tag
hi link @variable.vim                          NONE
" lsp.type.<id>
hi link @lsp.type.class                        @type
hi link @lsp.type.boolean                      @boolean
hi link @lsp.type.builtinType                  @type.builtin
hi link @lsp.type.comment                      @comment
hi link @lsp.type.decorator                    @attribute
hi link @lsp.type.enum                         @type
hi link @lsp.type.enumMember                   @boolean
hi link @lsp.type.escapeSequence               @string.escape
hi link @lsp.type.event                        @property
hi link @lsp.type.formatSpecifier              @punctuation.special
hi link @lsp.type.function                     @function.call
hi link @lsp.type.interface                    @type
hi link @lsp.type.keyword                      @keyword
hi link @lsp.type.macro                        Macro
hi link @lsp.type.method                       @function.method.call
hi link @lsp.type.modifier                     @type.qualifier
hi link @lsp.type.namespace                    @namespace
hi link @lsp.type.number                       @number
hi link @lsp.type.operator                     @operator
hi link @lsp.type.parameter                    @variable.parameter
hi link @lsp.type.property                     @property
hi link @lsp.type.regexp                       @string.regexp
hi link @lsp.type.string                       String
hi link @lsp.type.struct                       @type
hi link @lsp.type.type                         @type
hi link @lsp.type.typeAlias                    kintsugiClassCombine
hi link @lsp.type.typeParameter                kintsugiClassCombine
hi link @lsp.type.unresolvedReference          @comment.error
hi link @lsp.type.variable                     NONE
hi link @lsp.mod.abstract                      StorageClass
hi link @lsp.mod.async                         Keyword
hi link @lsp.mod.defaultLibrary                Special
hi link @lsp.mod.deprecated                    DiagnosticDeprecated
hi link @lsp.mod.documentation                 Comment
hi link @lsp.mod.readonly                      Constant
hi link @lsp.mod.static                        StorageClass
" lsp (lang-specific)
hi link @lsp.type.class.markdown               NONE
hi link @lsp.type.enumMember.markdown          NONE
" html
hi link htmlUnderline                          Underlined
hi link htmlTitle                              Title
" misc; corrections for bad upstream decisions
hi link SnacksPickerListCursorLine             CursorLine
hi link TelescopeSelection                     CursorLine
hi link diffAdded                              DiffAdd
hi link diffRemoved                            DiffDelete
