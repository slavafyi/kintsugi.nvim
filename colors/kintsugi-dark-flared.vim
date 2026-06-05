" Kintsugi Dark Flared for Neovim, ported from ahatem/vscode-kintsugi
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="kintsugi-dark-flared"
let g:terminal_color_0  = '#131314'
let g:terminal_color_1  = '#b38f8f'
let g:terminal_color_2  = '#a3be8c'
let g:terminal_color_3  = '#ebcb8b'
let g:terminal_color_4  = '#6c7a8a'
let g:terminal_color_5  = '#b3a3d3'
let g:terminal_color_6  = '#6ac6f2'
let g:terminal_color_7  = '#dddddd'
let g:terminal_color_8  = '#444444'
let g:terminal_color_9  = '#d9a6a6'
let g:terminal_color_10 = '#c3de9c'
let g:terminal_color_11 = '#fbe4a8'
let g:terminal_color_12 = '#8fa3b3'
let g:terminal_color_13 = '#d3a3d3'
let g:terminal_color_14 = '#8ac6f2'
let g:terminal_color_15 = '#ffffff'
" built-in
hi ColorColumn              guifg=NONE    guibg=#1f1f1f gui=NONE
hi Conceal                  guifg=#75715e guibg=NONE    gui=NONE
hi CurSearch                guifg=#131314 guibg=#ebcb8b gui=NONE
hi Cursor                   guifg=#0e0e0e guibg=#d4a943 gui=NONE
hi TermCursor               guifg=#0e0e0e guibg=#d4a943 gui=NONE
hi CursorColumn             guifg=NONE    guibg=#1d1d1c gui=NONE
hi CursorLine               guifg=NONE    guibg=#1d1d1c gui=NONE
hi CursorLineNr             guifg=#b4aa60 guibg=NONE    gui=NONE
hi DiffAdd                  guifg=#a3be8c guibg=NONE    gui=NONE
hi DiffChange               guifg=#ebcb8b guibg=NONE    gui=NONE
hi DiffDelete               guifg=#b38f8f guibg=NONE    gui=NONE
hi DiffText                 guifg=#ebcb8b guibg=#2a2a28 gui=NONE
hi GitSignsAdd              guifg=#a3be8c guibg=NONE    gui=NONE
hi GitSignsChange           guifg=#ebcb8b guibg=NONE    gui=NONE
hi GitSignsDelete           guifg=#b38f8f guibg=NONE    gui=NONE
hi Directory                guifg=#8fa3b3 guibg=NONE    gui=bold
hi EndOfBuffer              guifg=#444444 guibg=NONE    gui=NONE
hi ErrorMsg                 guifg=#b38f8f guibg=#20201f gui=NONE
hi Folded                   guifg=#75715e guibg=#1f1f1f gui=NONE
hi IncSearch                guifg=#131314 guibg=#ebcb8b gui=NONE
hi LineNr                   guifg=#444444 guibg=NONE    gui=NONE
hi MatchParen               guifg=#dddddd guibg=#6c7a8a gui=NONE
hi ModeMsg                  guifg=#dbad49 guibg=NONE    gui=NONE
hi MoreMsg                  guifg=#dbad49 guibg=NONE    gui=NONE
hi Normal                   guifg=#bcac8f guibg=#161618 gui=nocombine,NONE
hi NormalNC                 guifg=#bcac8f guibg=NONE    gui=nocombine,NONE
hi Pmenu                    guifg=#c9c4b8 guibg=#151616 gui=NONE
hi PmenuSel                 guifg=#dddddd guibg=#393b31 gui=NONE
hi PmenuSbar                guifg=NONE    guibg=#20201f gui=NONE
hi PmenuThumb               guifg=NONE    guibg=#75715e gui=NONE
hi Question                 guifg=#a3be8c guibg=NONE    gui=NONE
hi Search                   guifg=#dddddd guibg=#6c7a8a gui=NONE
hi SignColumn               guifg=#ebcb8b guibg=NONE    gui=NONE
hi SnippetTabstop           guifg=NONE    guibg=NONE    gui=underdotted
hi SpecialKey               guifg=#474541 guibg=NONE    gui=NONE
hi SpellBad                 guifg=#b38f8f guibg=NONE    gui=undercurl,italic guisp=#b38f8f
hi SpellCap                 guifg=#ebcb8b guibg=NONE    gui=undercurl,italic guisp=#ebcb8b
hi SpellLocal               guifg=#6c7a8a guibg=NONE    gui=undercurl,italic guisp=#6c7a8a
hi SpellRare                guifg=#8fa3b3 guibg=NONE    gui=undercurl,italic guisp=#8fa3b3
hi StatusLine               guifg=#969b8c guibg=#131314 gui=NONE
hi StatusLineNC             guifg=#75715e guibg=#20201f gui=NONE
hi Substitute               guifg=#131314 guibg=#ebcb8b gui=NONE
hi TabLine                  guifg=#ccccc7 guibg=#1a1a1d gui=NONE
hi TabLineFill              guifg=#131314 guibg=#131314 gui=NONE
hi TabLineSel               guifg=#dddddd guibg=#161618 gui=NONE
hi Title                    guifg=#dbad49 guibg=NONE    gui=bold
hi Visual                   guifg=#dddddd guibg=#26292d gui=NONE
hi VisualNOS                guifg=#dddddd guibg=#26292d gui=NONE
hi WarningMsg               guifg=#ebcb8b guibg=NONE    gui=NONE
hi Whitespace               guifg=#474541 guibg=NONE    gui=NONE
hi WildMenu                 guifg=#dddddd guibg=#dbac35 gui=NONE
hi WinSeparator             guifg=#2a2a28 guibg=NONE    gui=NONE
" vim-preferred
hi Comment                  guifg=#5f5f5f guibg=NONE    gui=NONE
hi Constant                 guifg=#db9833 guibg=NONE    gui=bold
hi String                   guifg=#cc7f66 guibg=NONE    gui=nocombine,NONE
hi Character                guifg=#cc7f66 guibg=NONE    gui=bold
hi Number                   guifg=#db9833 guibg=NONE    gui=NONE
hi Boolean                  guifg=#db9833 guibg=NONE    gui=bold
hi Float                    guifg=#db9833 guibg=NONE    gui=NONE
hi Identifier               guifg=#bcac8f guibg=NONE    gui=nocombine,NONE
hi Function                 guifg=#798283 guibg=NONE    gui=nocombine,NONE
hi Statement                guifg=#d66848 guibg=NONE    gui=bold
hi Conditional              guifg=#d66848 guibg=NONE    gui=bold
hi Repeat                   guifg=#d66848 guibg=NONE    gui=bold
hi Label                    guifg=#678e87 guibg=NONE    gui=nocombine,NONE
hi Operator                 guifg=#e08542 guibg=NONE    gui=NONE
hi Keyword                  guifg=#d66848 guibg=NONE    gui=bold
hi Exception                guifg=#d66848 guibg=NONE    gui=bold
hi PreProc                  guifg=#798283 guibg=NONE    gui=bold
hi Include                  guifg=#d66848 guibg=NONE    gui=bold
hi Define                   guifg=#798283 guibg=NONE    gui=bold
hi Macro                    guifg=#798283 guibg=NONE    gui=bold
hi PreCondit                guifg=#798283 guibg=NONE    gui=bold
hi Type                     guifg=#798283 guibg=NONE    gui=nocombine,NONE
hi StorageClass             guifg=#dbad49 guibg=NONE    gui=bold,nocombine
hi Structure                guifg=#e08542 guibg=NONE    gui=nocombine,NONE
hi Typedef                  guifg=#798283 guibg=NONE    gui=NONE
hi Special                  guifg=#798283 guibg=NONE    gui=bold
hi SpecialChar              guifg=#798283 guibg=NONE    gui=NONE
hi Tag                      guifg=#dbad49 guibg=NONE    gui=bold
hi Delimiter                guifg=#7f7b66 guibg=NONE    gui=NONE
hi SpecialComment           guifg=#5f5f5f guibg=NONE    gui=bold
hi Debug                    guifg=#db9833 guibg=NONE    gui=NONE
hi Underlined               guifg=NONE    guibg=NONE    gui=underline
hi Error                    guifg=#b38f8f guibg=NONE    gui=bold,italic
hi Todo                     guifg=#dbad49 guibg=NONE    gui=bold
hi Ignore                   guifg=#75715e guibg=NONE    gui=NONE
" diagnostics
hi DiagnosticError          guifg=#b38f8f guibg=NONE    gui=NONE
hi DiagnosticWarn           guifg=#ebcb8b guibg=NONE    gui=NONE
hi DiagnosticInfo           guifg=#6c7a8a guibg=NONE    gui=NONE
hi DiagnosticHint           guifg=#a3be8c guibg=NONE    gui=NONE
hi DiagnosticOk             guifg=#a3be8c guibg=NONE    gui=NONE
hi DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=undercurl guisp=#b38f8f
hi DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=undercurl guisp=#ebcb8b
hi DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=undercurl guisp=#6c7a8a
hi DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=undercurl guisp=#a3be8c
hi DiagnosticUnderlineOk    guifg=NONE    guibg=NONE    gui=undercurl guisp=#a3be8c
hi DiagnosticDeprecated     guifg=NONE    guibg=NONE    gui=strikethrough guisp=#b38f8f
" html sections
hi htmlH1                   guifg=#dbad49 guibg=NONE    gui=bold
hi htmlH2                   guifg=#e08542 guibg=NONE    gui=bold
hi htmlH3                   guifg=#798283 guibg=NONE    gui=bold
hi htmlH4                   guifg=#d66848 guibg=NONE    gui=bold
hi htmlH5                   guifg=#d66848 guibg=NONE    gui=NONE
hi htmlH6                   guifg=#d66848 guibg=NONE    gui=italic
hi htmlBold                 guifg=NONE    guibg=NONE    gui=bold
hi htmlBoldUnderline        guifg=NONE    guibg=NONE    gui=bold,underline
hi htmlBoldUnderlineItalic  guifg=NONE    guibg=NONE    gui=bold,underline,italic
hi htmlUnderlineItalic      guifg=NONE    guibg=NONE    gui=underline,italic
hi htmlItalic               guifg=NONE    guibg=NONE    gui=italic
hi htmlBoldItalic           guifg=NONE    guibg=NONE    gui=bold,italic
" custom
hi kintsugiClassCombine     guifg=#e08542 guibg=NONE    gui=NONE
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
hi RedrawDebugClear                            guifg=NONE    guibg=#a3be8c gui=NONE
hi RedrawDebugComposed                         guifg=NONE    guibg=#ebcb8b gui=NONE
hi RedrawDebugRecompose                        guifg=NONE    guibg=#b38f8f gui=NONE
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
