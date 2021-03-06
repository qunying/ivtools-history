/*
 * Copyright (c) 2000 IET Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and
 * its documentation for any purpose is hereby granted without fee, provided
 * that the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation, and that the names of the copyright holders not be used in
 * advertising or publicity pertaining to distribution of the software
 * without specific, written prior permission.  The copyright holders make
 * no representations about the suitability of this software for any purpose.
 * It is provided "as is" without express or implied warranty.
 *
 * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS
 * SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.
 * IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL,
 * INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING
 * FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
 * NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION
 * WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 * 
 */

/* 
 * at func for componentviews
 */

#if !defined(_grlistfunc_h)
#define _grlistfunc_h

#include <ComTerp/listfunc.h>

//: list member command for ComUnidraw
// val=at(list|attrlist|compview n :set val :ins val) -- return (or set or insert after) the nth item in a list.
class GrListAtFunc : public ComFunc {
public:
    GrListAtFunc(ComTerp*);

    virtual void execute();
    virtual const char* docstring() { 
      return "val=at(list|attrlist|compview n :set val :ins val) -- return (or set or insert after) the nth item in a list"; }
};

//: list size command for Unidraw
// num=size(list|attrlist|str|compview) -- return size of a list (or string).
class GrListSizeFunc : public ComFunc {
public:
    GrListSizeFunc(ComTerp*);

    virtual void execute();
    virtual const char* docstring() { 
      return "val=size(list|attrlist|str|compview) -- return the size of the list (or string)"; }
};

#endif /* !defined(_grlistfunc_h) */




