--- madpop.lua

-- Copyright (C) 2024 , 

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
-- Copyright (c) 2024 scaramacai
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
	['fg1']      = '#b1b1b1',
	['fg2']      = '#a3a3a3',
	['fg3']      = '#959595',
	['fg4']      = '#878787',
	['fg6']      = '#c4c4c4',
	['bg1']      = '#1b1b1b',
	['bg2']      = '#2d2d2d',
	['bg3']      = '#3f3f3f',
	['bg4']      = '#525252',
	['builtin']  = '#76d27b',
	['keyword']  = '#4ebbdf',
	['const']    = '#8597ff',
	['comment']  = '#5d5d5d',
	['func']     = '#ffd100',
	['str']      = '#d0d900',
	['fgtype']   = '#e095ff',
	['type2']    = '#f66151',
	['var']      = '#ffb6a9',
	['selection']= '#5010e8',
	['warning']  = '#5010e8',
	['warning2'] = '#1063e8',
        ['back_ln']  = '#773300',
        ['headers']  = '#775522',
        ['prep']     = '#778822',
}

-- ['red']= '#000099'
-- ['orange']= '#0066CC'
-- ['yellow']= '#009999'
-- ['green']= '#009900'
-- ['blue']= '#CC6600'

lexers.STYLE_DEFAULT =  'fore:'..colors.fg1..','..'back:'..colors.bg1
lexers.STYLE_NOTHING = ''
lexers.STYLE_CLASS =  'fore:'..colors.func..','..'bold'
lexers.STYLE_COMMENT =  'fore:'..colors.comment
lexers.STYLE_CONSTANT =  'fore:'..colors.const
lexers.STYLE_CONSTANT_BUILTIN =  'fore:'..colors.const..','..'bold'
lexers.STYLE_ERROR =  'fore:'..colors.warning..','..'italics'
lexers.STYLE_FUNCTION = 'fore:'..colors.func
lexers.STYLE_FUNCTION_BUILTIN = 'fore:'..colors.func..','..'bold'
lexers.STYLE_KEYWORD =  'fore:'..colors.keyword
lexers.STYLE_LABEL =  'fore:'..colors.warning
lexers.STYLE_NUMBER =  'fore:'..colors.const
lexers.STYLE_OPERATOR =  'fore:'..colors.fg2
lexers.STYLE_REGEX =  'fore:'..colors.str
lexers.STYLE_STRING =  'fore:'..colors.str
lexers.STYLE_PREPROCESSOR =  'fore:'..colors.prep
lexers.STYLE_TAG =  'fore:'..colors.fg3
lexers.STYLE_TYPE =  'fore:'..colors.fgtype
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
lexers.STYLE_HEADING =  'fore:'..colors.headers
lexers.STYLE_ITALIC =  'italic'
-- lexers.STYLE_LINK =  
-- lexers.STYLE_LIST =  
lexers.STYLE_REFERENCE =  'fore:'..colors.var
-- lexers.STYLE_UNDERLINE =  'fore:'..colors.warning
lexers.STYLE_LINENUMBER = 'fore:'..colors.fg1..','..'back:'..colors.bg2
lexers.STYLE_LINENUMBER_CURSOR = 'fore:'..colors.fg2..','..'back:'..colors.back_ln

lexers.STYLE_CURSOR = 'fore:'..colors.bg1..',back:'..colors.fg1
lexers.STYLE_CURSOR_PRIMARY = 'back:'..colors.bg2
lexers.STYLE_CURSOR_LINE    = 'back:'..colors.bg2
lexers.STYLE_COLOR_COLUMN   = 'back:'..colors.bg2
lexers.STYLE_SELECTION      = 'back:'..colors.selection
--lexers.STYLE_STATUS         = 'reverse'
lexers.STYLE_STATUS         = 'fore:'..colors.fg2..',back:'..colors.bg3
--lexers.STYLE_STATUS_FOCUSED = 'reverse,bold'
lexers.STYLE_STATUS_FOCUSED = 'fore:'..colors.fg2..',back:'..colors.bg3..',bold'
lexers.STYLE_SEPARATOR      = lexers.STYLE_DEFAULT