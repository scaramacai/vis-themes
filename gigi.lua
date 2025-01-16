--- gigi.lua

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

lexers.STYLE_DEFAULT = 'back:#001020'
lexers.STYLE_NOTHING = ''
lexers.STYLE_COMMENT = 'fore:#8787af,'..',italics'
lexers.STYLE_CONSTANT = 'fore:#5c5cff'
lexers.STYLE_ERROR = 'back:#ff0000,fore:#ffffff'
lexers.STYLE_FUNCTION = 'fore:#cf0000'
lexers.STYLE_KEYWORD = 'fore:#00af00'
lexers.STYLE_LABEL = 'fore:#00af00'
lexers.STYLE_NUMBER = 'fore:#af0000'
lexers.STYLE_OPERATOR = 'fore:#00af00'
lexers.STYLE_STRING = 'fore:#5c5cff'
lexers.STYLE_PREPROCESSOR = 'fore:#af00af'
lexers.STYLE_TAG = 'fore:#afd700'
lexers.STYLE_TYPE = 'bold,fore:#60ff60'
lexers.STYLE_WHITESPACE = 'bold,fore:#0000ff'
lexers.STYLE_IDENTIFIER = 'fore:#00d7af'

lexers.STYLE_LINENUMBER = 'fore:#8787af'
lexers.STYLE_LINENUMBER_CURSOR =  'back:ffx303030,fore:#eeeeee'
lexers.STYLE_CURSOR = 'back:#8787af,fore:#eeeeee'
lexers.STYLE_CURSOR_PRIMARY = 'back:#0abdc6,fore:#000000'
lexers.STYLE_CURSOR_LINE = 'back:ffx303030'
lexers.STYLE_COLOR_COLUMN = 'back:#303030'
lexers.STYLE_SELECTION = 'back:#a9a9a9'
--lexers.STYLE_STATUS = 'back:#000000,fore:#ffffff'
lexers.STYLE_STATUS = 'back:#666666,fore:#dd9900'
--lexers.STYLE_STATUS = 'reverse'
lexers.STYLE_STATUS_FOCUSED = 'back:#008080,fore:#ffff00'
--lexers.STYLE_STATUS_FOCUSED = 'reverse, bold'
lexers.STYLE_EOF = 'fore:#8787af'
