--- sciurbet.lua

-- Copyright (C) 2025 

-- Author: scaramacai
-- ------------------------------------------------------------------------------
-- This software is available under 2 licenses -- choose whichever you prefer.
-- ------------------------------------------------------------------------------
-- ALTERNATIVE A - Public Domain (www.unlicense.org)
-- This is free and unencumbered software released into the public domain.
-- Anyone is free to copy, modify, publish, use, compile, sell, or distribute this
-- software, either in source code form or as a compiled binary, for any purpose,
-- commercial or non-commercial, and by any means.
-- In jurisdictions that recognize copyright laws, the author or authors of this
-- software dedicate any and all copyright interest in the software to the public
-- domain. We make this dedication for the benefit of the public at large and to
-- the detriment of our heirs and successors. We intend this dedication to be an
-- overt act of relinquishment in perpetuity of all present and future rights to
-- this software under copyright law.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
-- ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
-- WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-- ------------------------------------------------------------------------------
-- ALTERNATIVE B - MIT License
-- Copyright (c) 2025 scaramacai
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this software and associated documentation files (the "Software"), to deal in
-- the Software without restriction, including without limitation the rights to
-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
-- of the Software, and to permit persons to whom the Software is furnished to do
-- so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
-- ------------------------------------------------------------------------------

local lexers = vis.lexers

local colors = {
	['fg1']      = '#c1c1c1',
	['fg2']      = '#b2b2b2',
	['fg3']      = '#a9a9a9',
	['fg4']      = '#999999',
	['fg6']      = '#d6d6d6',
	['bg1']      = '#161821',
	['bg2']      = '#292a33',
	['bg3']      = '#3a4b4b',
	['bg4']      = '#4c5c5c',
	['builtin']  = '#779fc7',
	['keyword']  = '#87afd7',
	['const']    = '#d75f5f',
	['comment']  = '#af87d7',
	['func']     = '#dadada',
	['str']      = '#daaf57',
	['fgtype']   = '#87afd7',
	['type2']    = '#5161f6',
	['var']      = '#dadada',
	['oper']      = '#5ca0b3',
	--['bg_selection']= '#ffaf00',
	['bg_selection']= '#434c5e',
	['fg_selection']= '#000000',
	['warning']  = '#e81050',
	['warning2'] = '#e86310',
        ['bg_ln_c']  = '#494934',
        ['fg_ln_c']  = '#f8f8f8',
        ['headers']  = '#775522',
        ['prep']     = '#80a0c0',
        ['bg_ln']     = '#161821',
        ['fg_ln']     = '#5f5f87',
        ['bg_ln_c']     = '#161821',
        ['fg_ln_c']     = '#d7d7ff',
        --['bg_status_f']     = '#d7d7ff',
        --['bg_status_f']     = '#d75fff',
        --['bg_status_f']     = '#d787ff',
        --['bg_status_f']     = '#875fd7',
        ['bg_status_f']     = '#5f005f',
        ['bg_status']     = '#8787af',
        --['fg_status_f']     = 'black',
        --['fg_status_f']     = 'yellow',
        ['fg_status_f']     = '#bfbf1f',
        ['fg_status']     = 'black',
        ['cur_col_bg']     = '#363841',
	['fg_brace_l']	= '#ff00af',
}

lexers.STYLE_DEFAULT =  'fore:'..colors.fg1..','..'back:'..colors.bg1
lexers.STYLE_NOTHING = ''
lexers.STYLE_CLASS =  'fore:'..colors.func..','..'bold'
lexers.STYLE_COMMENT =  'fore:'..colors.comment..','..'italics'
lexers.STYLE_CONSTANT =  'fore:'..colors.const
lexers.STYLE_CONSTANT_BUILTIN =  'fore:'..colors.const..','..'bold'
lexers.STYLE_ERROR =  'fore:'..colors.warning..','..'italics'
lexers.STYLE_FUNCTION = 'fore:'..colors.func
lexers.STYLE_FUNCTION_BUILTIN = 'fore:'..colors.func..','..'bold'
lexers.STYLE_KEYWORD =  'fore:'..colors.keyword
lexers.STYLE_LABEL =  'fore:'..colors.warning
lexers.STYLE_NUMBER =  'fore:'..colors.const
lexers.STYLE_OPERATOR =  'fore:'..colors.oper
lexers.STYLE_REGEX =  'fore:'..colors.str
lexers.STYLE_STRING =  'fore:'..colors.str
lexers.STYLE_PREPROCESSOR =  'fore:'..colors.prep
lexers.STYLE_TAG =  'fore:'..colors.fg3
lexers.STYLE_TYPE =  'fore:'..colors.fgtype
lexers.STYLE_VARIABLE =  'fore:'..colors.var
lexers.STYLE_VARIABLE_BUILTIN =  'fore:'..colors.var..',bold'
lexers.STYLE_WHITESPACE =  ''
lexers.STYLE_EMBEDDED =  'fore:'..colors.builtin..','..'back:'..colors.bg2
lexers.STYLE_IDENTIFIER =  'fore:'..colors.var
lexers.STYLE_BRACELIGHT = 'fore:'..colors.fg_brace_l..','..'back:'..colors.bg2..','..'bold'
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
lexers.STYLE_HEADING =  'fore:'..colors.headers
lexers.STYLE_ITALIC =  'italics'
-- lexers.STYLE_LINK =  
-- lexers.STYLE_LIST =  
lexers.STYLE_REFERENCE =  'fore:'..colors.var
-- lexers.STYLE_UNDERLINE =  'fore:'..colors.warning
lexers.STYLE_LINENUMBER = 'fore:'..colors.fg_ln..','..'back:'..colors.bg_ln
lexers.STYLE_LINENUMBER_CURSOR = 'fore:'..colors.fg_ln_c..','..'back:'..colors.bg_ln_c

lexers.STYLE_CURSOR = 'fore:'..colors.bg1..',back:'..colors.fg1
lexers.STYLE_CURSOR_PRIMARY = 'back:'..colors.bg2
lexers.STYLE_CURSOR_LINE    = 'back:'..colors.bg2
lexers.STYLE_COLOR_COLUMN   = 'back:'..colors.bg2
--lexers.STYLE_SELECTION      = 'fore:'..colors.fg_selection..','..'back:'..colors.bg_selection
lexers.STYLE_SELECTION      = 'back:'..colors.bg_selection
--lexers.STYLE_STATUS         = 'reverse'
lexers.STYLE_STATUS         = 'fore:'..colors.fg_status..',back:'..colors.bg_status
--lexers.STYLE_STATUS_FOCUSED = 'reverse,bold'
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.fg_status_f..',back:'..colors.bg_status_f..',bold'
lexers.STYLE_SEPARATOR      = lexers.STYLE_DEFAULT
