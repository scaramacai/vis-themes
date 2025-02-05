--- ampoule.lua

-- Copyright (C) 2024 

-- Author: scaramacai
-- License: BSD-2-clause
--
-- ------------------------------------------------------------------------------
-- based on the pygments (www.pygments.org) version of the Lightbulb theme
-- for VScode
--
-- pygments theme is Copyright 2006-2024 the Pygments team,
-- under a BSD-2-clause license.
-- ------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------
--  License: BSD-2-clause
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
	['fg1']        = '#d4d2c8',
	['fg2']        = '#bfbfbf',
	['fg3']        = '#afafaf',
	['fg4']        = '#9e9e9e',
	['fg6']        = '#dbdbdb',
	['bg1']        = '#1d2331',
	['bg2']        = '#3f444f',
	['bg3']        = '#5f544f',
	['bg4']        = '#6e6560',
	['builtin']    = '#ffd173',
	['keyword']    = '#ffad66',
	['const']      = '#ffad66',
	['comment']    = '#7e8aa1',
	['func']       = '#ffd173',
	['str']        = '#d5ff80',
	['fg_type']    = '#73d0ff',
	['var']        = '#d4d2c8',
	['selection']  = '#6e7681',
	['warning']    = '#f88f7f',
	['warning2']   = '#f88f7f',
	['tag']        = '#5ccfe6',
	['operator']   = '#FFAD66',
	['number']     = '#DFBFFF',
	['class']      = '#73D0FF',
        ['bg_lnum_c']  = '#d8dee9',
        ['fg_lnum_c']  = '#292933',
        ['headers']    = '#88c0d0',
        ['prep']       = '#416270',
        ['bg_lnum']    = '#242933',
	['fg_lnum']    = '#d8dee9',
	['regex']      = '#ebcb8b',
	['type2']      = '#f66151',
	['hi']         = '#6e7681',
	['fg_stat']    = '#d8dee9',
	['bg_stat']    = '#3b4252',
	['fg_stat_f']  = '#81a1c1',
	['bg_stat_f']  = '#4b5262',
}

lexers.STYLE_DEFAULT =  'fore:'..colors.fg1..','..'back:'..colors.bg1
lexers.STYLE_NOTHING = ''
--lexers.STYLE_CLASS =  'fore:'..colors.func..','..'bold'
lexers.STYLE_CLASS =  'fore:'..colors.class
lexers.STYLE_COMMENT =  'fore:'..colors.comment..','..'italics'
lexers.STYLE_CONSTANT =  'fore:'..colors.const
lexers.STYLE_CONSTANT_BUILTIN =  'fore:'..colors.const..','..'bold'
lexers.STYLE_ERROR =  'fore:'..colors.warning..','..'italics'
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
lexers.STYLE_LINENUMBER = 'fore:'..colors.fg_lnum..','..'back:'..colors.bg_lnum
lexers.STYLE_LINENUMBER_CURSOR = 'fore:'..colors.fg_lnum_c..','..'back:'..colors.bg_lnum_c

lexers.STYLE_CURSOR = 'fore:'..colors.bg1..',back:'..colors.fg1
lexers.STYLE_CURSOR_PRIMARY = 'back:'..colors.bg2
lexers.STYLE_CURSOR_LINE    = 'back:'..colors.hi
lexers.STYLE_COLOR_COLUMN   = 'back:'..colors.hi
lexers.STYLE_SELECTION      = 'back:'..colors.selection
lexers.STYLE_STATUS         = 'fore:'..colors.fg_stat..',back:'..colors.bg_stat
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.fg_stat_f..',back:'..colors.bg_stat_f..',bold'
lexers.STYLE_SEPARATOR      = lexers.STYLE_DEFAULT
