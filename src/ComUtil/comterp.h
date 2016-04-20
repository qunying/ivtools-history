/*
 * Copyright (c) 1993-1995 Vectaport Inc.
 * Copyright (c) 1989 Triple Vision, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and its
 * documentation for any purpose is hereby granted without fee, provided
 * that the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation, and that the names of the copyright holders not be used in 
 * advertising or publicity pertaining to distribution of the software 
 * without specific, written prior permission.  The copyright holders make 
 * no representation about the suitability of this software for any purpose.  
 * It is provided "as is" without express or implied warranty.
 *
 * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
 * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.
 * IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL,
 * INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING
 * FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
 * NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION
 * WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#ifndef COMTERP_INCLUDED

#define COMTERP_INCLUDED

#include <ComUtil/comutil.h>

/*
** GLOBAL debug flag
*/
extern int com_debug;

/* C Function macros for COMTERP */
#define COMCFUNC(name) name(flag, argc, argv) int flag,argc; void *argv[];
#define IOPNTR(comtype) ((comtype *)argv[0])

/* Token types returned from SCANNER.C */
#define TOK_LPAREN      16      /* Left parenthesis */
#define TOK_RPAREN      17      /* Right parenthesis */
#define TOK_LBRACKET	18	/* Left bracket */
#define TOK_RBRACKET	19	/* Right bracket */
#define TOK_LBRACE	20	/* Left brace */
#define TOK_RBRACE	21	/* Right brace */ 
#define TOK_KEYWORD     22      /* Keyword for free format parameters */

/* Token types returned from OPTABLE.C */
#define TOK_COMMAND     23      /* Command name */

#define TOK_BLANK       24      /* genereated by empty parens: () */
 
/* OPTABLE.C Constants */

/* Kind of operator in operator table */
#define OPTYPE_BINARY		0
#define OPTYPE_UNARY_PREFIX	1
#define OPTYPE_UNARY_POSTFIX	2
#define OPTYPE_NUM		3

/* Ways to print operator table */
#define OPBY_PRIORITY		0
#define OPBY_OPERATOR		1
#define OPBY_COMMAND		2

/* TYPES.C Constants/Enums */
/* simple type strings */
#define   TYPE_STRING_CHAR		"CHAR"
#define   TYPE_STRING_SHORT  		"SHORT"
#define   TYPE_STRING_INT		"INT"
#define   TYPE_STRING_LONG		"LONG"
#define   TYPE_STRING_UCHAR		"UCHAR"
#define   TYPE_STRING_USHORT  		"USHORT"
#define   TYPE_STRING_UINT		"UINT"
#define   TYPE_STRING_ULONG		"ULONG"
#define   TYPE_STRING_FLOAT		"FLOAT"
#define   TYPE_STRING_DOUBLE  		"DOUBLE"
#define   TYPE_STRING_BOOLEAN		"BOOLEAN"
#define   TYPE_STRING_SYMBOL		"SYMBOL"
#define   TYPE_STRING_ENUM		"ENUM"
/* aggregate type strings */
#define   TYPE_STRING_ARRAY		"ARRAY"
#define   TYPE_STRING_STREAM		"STREAM"

/* simple type flag identifiers */
#define   TYPE_CHAR		0
#define   TYPE_SHORT  		1
#define   TYPE_INT		2
#define   TYPE_LONG		3
#define   TYPE_UCHAR		4
#define   TYPE_USHORT  		5
#define   TYPE_UINT		6
#define   TYPE_ULONG		7
#define   TYPE_FLOAT		8
#define   TYPE_DOUBLE  		9 
#define   TYPE_BOOLEAN		10
#define   TYPE_SYMBOL		11
#define   TYPE_ENUM		12
/* Number of simple types: UPDATE IF YOU ADD OR REMOVE ANY */
#define   TYPE_NUM_SIMPLES	13

/* aggregate type strings */
#define   TYPE_ARRAY		100
#define   TYPE_STREAM		101

/* other type defines */
#define   TYPE_FIRST		1
#define   TYPE_NEXT		2

/* Reference Parameter Structure */
typedef struct
{
    void (*comfunc)();
    void *valptr;
} REFPARAM;

/* Union for data storage */
typedef union data_value_union
{
      int               dfintval;
      unsigned int      dfunsval;
      long              lnintval;
      unsigned long     lnunsval;
      double            doublval;
      char              char_val;
      int               symbolid;
      void *            ptrval;
} data_value;


/* Structure for token in postfix expression */
typedef struct postfix_token_struct
{
   data_value v;	/* Location to store data value */
   unsigned type;       /* Token type */
   int narg;            /* Number of arguments to command */
   int nkey;		/* Number of keywords to command */
   int nids;		/* Number of ids in compound command name */
} postfix_token;

/* Package function prototypes */
#if !defined(OSK)
#include <ComUtil/comterp.arg>
#endif

#endif /* not COMTERP_INCLUDED */


