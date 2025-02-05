--- scaramacai.lua

-- Copyright (C) 2025 scaramacai (https://github.com/scaramacai)

-- Author: scaramacai
-- License: BSD-2-clause
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are
--  met:
--  
--      * Redistributions of source code must retain the above copyright
--        notice, this list of conditions and the following disclaimer.
--  
--      * Redistributions in binary form must reproduce the above
--        copyright notice, this list of conditions and the following
--        disclaimer in the documentation and/or other materials provided
--        with the distribution.
--  
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
--  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
--  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
--  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
--  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
--  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
--  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
--  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-- ------------------------------------------------------------------------------
local lexers = vis.lexers

local colors = {
	['fg1']        = '#dfdfc0',
	['fg2']        = '#d4d4d5',
	['fg3']        = '#c1c1c3',
	['fg4']        = '#e6e6e8',
	['fg6']        = '#dbdbdb',
	['bg1']        = '#021520',
	['bg2']        = '#253641',
	['bg3']        = '#384851',
	['bg4']        = '#4b5962',
	['builtin']    = '#00d9e3',
	['keyword']    = '#63d484',
	['const']      = '#d1bf4e',
	['comment']    = '#a4a1a0',
	['fg_error']   = '#eb6f92',
	['func']       = '#ccadff',
	['str']        = '#00cdff',
	['fg_type']    = '#ff9f72',
	['var']        = '#cfcfd0',
	['selection']  = '#01659f',
	['warning']    = '#eb6f92',
	['warning2']   = '#f6c177',
	['tag']        = '#5ccfe6',
	['operator']   = '#ebb393',
	['number']     = '#fd339b',
	['class']      = '#9ccfd8',
        ['bg_lnum_c']  = '#d8dee9',
        ['fg_lnum_c']  = '#958fb8',
        ['headers']    = '#c4a7e7',
        ['prep']       = '#00b9c3',
        ['bg_lnum']    = '#242933',
	['fg_lnum']    = '#6e6a7b',
	['regex']      = '#ebcb8b',
	['type2']      = '#f66151',
	['hi']         = '#031e2e',
	['fg_stat']    = '#9ccfd8',
	['bg_stat']    = '#26233a',
	['fg_stat_f']  = '#f8235f',
	['bg_stat_f']  = '#05324d',
}

lexers.STYLE_DEFAULT =  'fore:'..colors.fg1..','..'back:'..colors.bg1
lexers.STYLE_NOTHING = ''
--lexers.STYLE_CLASS =  'fore:'..colors.func..','..'bold'
lexers.STYLE_CLASS =  'fore:'..colors.class
lexers.STYLE_COMMENT =  'fore:'..colors.comment..','..'italics'
lexers.STYLE_CONSTANT =  'fore:'..colors.const
lexers.STYLE_CONSTANT_BUILTIN =  'fore:'..colors.const..','..'bold'
lexers.STYLE_ERROR =  'fore:'..colors.fg_error..','..'italics'
lexers.STYLE_FUNCTION = 'fore:'..colors.func
lexers.STYLE_FUNCTION_BUILTIN = 'fore:'..colors.func..','..'bold'
lexers.STYLE_KEYWORD =  'fore:'..colors.keyword..','..'bold'
lexers.STYLE_LABEL =  'fore:'..colors.warning
lexers.STYLE_NUMBER =  'fore:'..colors.number
lexers.STYLE_OPERATOR =  'fore:'..colors.operator..','..'bold'
lexers.STYLE_REGEX =  'fore:'..colors.regex
lexers.STYLE_STRING =  'fore:'..colors.str
lexers.STYLE_PREPROCESSOR =  'fore:'..colors.prep
lexers.STYLE_TAG =  'fore:'..colors.tag
lexers.STYLE_TYPE =  'fore:'..colors.fg_type
lexers.STYLE_VARIABLE =  'fore:'..colors.warning
lexers.STYLE_VARIABLE_BUILTIN =  'fore:'..colors.warning..',bold'
lexers.STYLE_WHITESPACE =  ''
lexers.STYLE_EMBEDDED =  'fore:'..colors.builtin..','..'back:'..colors.bg2
lexers.STYLE_IDENTIFIER =  'fore:'..colors.var
lexers.STYLE_BRACELIGHT = 'fore:'..colors.func,'back:'..colors.bg2..','..'bold'
lexers.STYLE_BRACEBAD = 'fore:'..colors.warning,'back:'..colors.bg3..','..'bold'
-- view.STYLE_CONTROLCHAR = 
lexers.STYLE_INDENTGUIDE = 'fore:'..colors.comment
lexers.STYLE_CALLTIP = 'fore:'..colors.fg1..','..'back:'..colors.bg2
lexers.STYLE_FOLDDISPLAYTEXT = 'fore:'..colors.bg2

-- Tgag styles.
-- lexers.STYLE_ANNOTATION = 'fore:'..colors.magenta
lexers.STYLE_ATTRIBUTE = 'fore:'..colors.fg3
lexers.STYLE_BOLD = 'bold'
--lexers.STYLE_CODE =  
-- lexers.STYLE_FUNCTION_METHOD = 
lexers.STYLE_HEADING =  'fore:'..colors.headers..','..'bold'
lexers.STYLE_ITALIC =  'italics'
-- lexers.STYLE_LINK =  
-- lexers.STYLE_LIST =  
lexers.STYLE_REFERENCE =  'fore:'..colors.var
-- lexers.STYLE_UNDERLINE =  'fore:'..colors.warning
lexers.STYLE_LINENUMBER = 'fore:'..colors.fg_lnum..','..'back:'..colors.bg1
lexers.STYLE_LINENUMBER_CURSOR = 'fore:'..colors.fg_lnum_c..','..'back:'..colors.bg1

lexers.STYLE_CURSOR = 'fore:'..colors.bg1..',back:'..colors.fg3
lexers.STYLE_CURSOR_PRIMARY = 'back:'..colors.bg2
lexers.STYLE_CURSOR_LINE    = 'back:'..colors.hi
lexers.STYLE_COLOR_COLUMN   = 'back:'..colors.hi
lexers.STYLE_SELECTION      = 'back:'..colors.selection
lexers.STYLE_STATUS         = 'fore:'..colors.fg_stat..',back:'..colors.bg_stat
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.fg_stat_f..',back:'..colors.bg_stat_f..',bold'
lexers.STYLE_SEPARATOR      = lexers.STYLE_DEFAULT
