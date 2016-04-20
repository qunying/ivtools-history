/*
 * Copyright (c) 1987, 1988, 1989, 1990, 1991 Stanford University
 * Copyright (c) 1991 Silicon Graphics, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and 
 * its documentation for any purpose is hereby granted without fee, provided
 * that (i) the above copyright notices and this permission notice appear in
 * all copies of the software and related documentation, and (ii) the names of
 * Stanford and Silicon Graphics may not be used in any advertising or
 * publicity relating to the software without the specific, prior written
 * permission of Stanford and Silicon Graphics.
 * 
 * THE SOFTWARE IS PROVIDED "AS-IS" AND WITHOUT WARRANTY OF ANY KIND, 
 * EXPRESS, IMPLIED OR OTHERWISE, INCLUDING WITHOUT LIMITATION, ANY 
 * WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  
 *
 * IN NO EVENT SHALL STANFORD OR SILICON GRAPHICS BE LIABLE FOR
 * ANY SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY KIND,
 * OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
 * WHETHER OR NOT ADVISED OF THE POSSIBILITY OF DAMAGE, AND ON ANY THEORY OF 
 * LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE 
 * OF THIS SOFTWARE.
 */

/*
 * A perspective describes what portion of the total view
 * an interactor shows.
 */

#ifndef iv2_6_perspective_h
#define iv2_6_perspective_h

#include <InterViews/boolean.h>
#include <InterViews/coord.h>
#include <InterViews/resource.h>

#include <IV-2_6/_enter.h>

class Interactor;
class ViewList;

//: indicates portion of total view shown (iv-2.6).
// A Perspective describes what portion of the total view
// an Interactor shows.
// <p><a href=../man3.1/Perspective.html>man page</a>
class Perspective : public Resource {
public:
    IntCoord x0, y0;		/* origin of view */
    int width, height;		/* total size of view */
    IntCoord curx, cury;	/* current position */
    int curwidth, curheight;	/* current size */
    int sx, sy, lx, ly;		/* small and large scrolling increments */

    Perspective();
    Perspective(Perspective&);
    ~Perspective();

    void Init(IntCoord ix0, IntCoord iy0, int iwidth, int iheight);
    void Attach(Interactor*);
    void Detach(Interactor*);
    void Update();

    boolean operator ==(Perspective&);
    boolean operator !=(Perspective&);
    Perspective& operator =(Perspective&);
protected:
    ViewList* views;	/* interactors that access the perspective */
};

#include <IV-2_6/_leave.h>

#endif
