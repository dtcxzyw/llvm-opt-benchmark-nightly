inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.unicode_format_arg_t = type { i32, i32, i64, i32, i32, i64, ptr }
%struct.unicode_formatter_t = type { ptr, i32, i64, i64, ptr, i32, i64, i64, ptr, ptr, %struct._PyUnicodeWriter }
%struct._PyUnicodeWriter = type { ptr, ptr, i32, i32, i64, i64, i64, i32, i8, i8 }

@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"precision too large\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"../Objects/unicode_format.c\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"string too large in _PyUnicode_FormatLong\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [77 x i8] c"not all arguments converted during string formatting (required %zd, got %zd)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"must be str, not %T\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"not all arguments converted during string formatting\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"format requires a mapping, not %T\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"stray %% or incomplete format key at position %zd\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"format requires a parenthesised mapping key at position %zd\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"* cannot be used with a parenthesised mapping key at position %zd\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"format argument %R: * requires int, not %T\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"format argument %zd: * requires int, not %T\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"format argument: * requires int, not %T\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"format argument %R: too big for width%s\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"format argument %zd: too big for width%s\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"format argument: too big for width%s\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"width too big at position %zd\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"format argument %R: too big for precision%s\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"format argument %zd: too big for precision%s\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"format argument: too big for precision%s\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"precision too big at position %zd\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"stray %% at position %zd\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"not enough arguments for format string (got %zd)\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str.24 = private unnamed_addr constant [40 x i8] c"unsupported format %%%c at position %zd\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c"stray %% at position %zd or unexpected format character \22'\22 at position %zd\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"stray %% at position %zd or unexpected format character '%c' at position %zd\00", align 1
@.str.27 = private unnamed_addr constant [86 x i8] c"stray %% at position %zd or unexpected format character '%c' (U+%04X) at position %zd\00", align 1
@.str.28 = private unnamed_addr constant [79 x i8] c"stray %% at position %zd or unexpected format character U+%04X at position %zd\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"format argument %R: %%%c requires an integer, not %T\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"format argument %zd: %%%c requires an integer, not %T\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"format argument: %%%c requires an integer, not %T\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"format argument %R: %%%c requires a real number, not %T\00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"format argument %zd: %%%c requires a real number, not %T\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"format argument: %%%c requires a real number, not %T\00", align 1
@.str.35 = private unnamed_addr constant [95 x i8] c"format argument %R: %%c requires an integer or a unicode character, not a string of length %zd\00", align 1
@.str.36 = private unnamed_addr constant [96 x i8] c"format argument %zd: %%c requires an integer or a unicode character, not a string of length %zd\00", align 1
@.str.37 = private unnamed_addr constant [92 x i8] c"format argument: %%c requires an integer or a unicode character, not a string of length %zd\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"format argument %R: %%c requires an integer or a unicode character, not %T\00", align 1
@.str.39 = private unnamed_addr constant [76 x i8] c"format argument %zd: %%c requires an integer or a unicode character, not %T\00", align 1
@.str.40 = private unnamed_addr constant [72 x i8] c"format argument: %%c requires an integer or a unicode character, not %T\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"format argument %R: %%c argument not in range(0x110000)%s\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c"format argument %zd: %%c argument not in range(0x110000)%s\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"format argument: %%c argument not in range(0x110000)%s\00", align 1
@switch.table._PyUnicode_FormatLong = private unnamed_addr constant [33 x i8] [i8 16, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 poison, i8 16], align 4
@switch.table._PyUnicode_FormatLong.11 = private unnamed_addr constant [33 x i8] [i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 2], align 4
@switch.table.PyUnicode_Format = private unnamed_addr constant [17 x i8] [i8 4, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 1, i8 poison, i8 poison, i8 16], align 4
@switch.table.PyUnicode_Format.12 = private unnamed_addr constant [21 x i8] [i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 poison, i8 16], align 4

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_FormatLong(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp sgt i32 %2, 2147483644
  br i1 %i.b, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str) #8
  br label %Py_DECREF.exit109.thread

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add nsw i32 %3, -88          ; 2 uses
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._PyUnicode_FormatLong, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep253 = getelementptr inbounds nuw i8, ptr @switch.table._PyUnicode_FormatLong.11, i64 %i.e
  %switch.load254 = load i8, ptr %switch.gep253, align 1
  %switch.ext255 = zext i8 %switch.load254 to i32 ; 2 uses
  %i.f = tail call ptr @PyNumber_ToBase(ptr noundef %0, i32 noundef %switch.ext) #8 ; 15 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %Py_DECREF.exit109.thread, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %.val = load i32, ptr %i.f, align 8, !tbaa !14  ; 3 uses
  %.not134 = icmp eq i32 %.val, 1
  br i1 %.not134, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i112 = icmp sgt i32 %.val, -1
  br i1 %.not.i112, label %bb.e, label %Py_DECREF.exit113

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %.val, -1                    ; 2 uses
  store i32 %i.g, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit113

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #8
  br label %Py_DECREF.exit113

Py_DECREF.exit113:                                ; preds = %bb.d, %bb.e, %bb.f
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 237) #8
  br label %Py_DECREF.exit109.thread

bb.g:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i32, ptr %i.i, align 8           ; 2 uses
  %i.j = and i32 %.val.i, 32
  %.not.i123 = icmp eq i32 %i.j, 0
  br i1 %.not.i123, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.k, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.f, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %i.f, i64 56
  %.val4.i = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %.0.i.i, %bb.h ], [ %.val4.i, %bb.i ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %.val120 = load i64, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.n = icmp sgt i64 %.val120, 2147483647
  br i1 %i.n, label %Py_DECREF.exit111, label %bb.j

Py_DECREF.exit111:                                ; preds = %_PyUnicode_DATA.exit
  store i32 0, ptr %i.f, align 8, !tbaa !14
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #8
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.2) #8
  br label %Py_DECREF.exit109.thread

bb.j:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = trunc i64 %.val120 to i32                ; 5 uses
  %i.q = load i8, ptr %.0.i, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 45                      ; 2 uses
  %i.s = zext i1 %i.r to i32                      ; 2 uses
  %i.t = or disjoint i32 %switch.ext255, %i.s     ; 4 uses
  %i.u = sub i32 %i.p, %i.t                       ; 3 uses
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  switch i32 %3, label %bb.n [
    i32 120, label %bb.l
    i32 111, label %bb.l
    i32 88, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.w = add nsw i32 %i.t, -2                     ; 2 uses
  %i.x = getelementptr i8, ptr %.0.i, i64 2       ; 3 uses
  %i.y = add i32 %i.p, -2                         ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 45, ptr %i.x, align 1, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j
  %.186 = phi i32 [ %i.w, %bb.m ], [ %i.w, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %bb.j ] ; 4 uses
  %.082 = phi i32 [ %i.y, %bb.m ], [ %i.y, %bb.l ], [ %i.p, %bb.k ], [ %i.p, %bb.j ]
  %.076 = phi ptr [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ %.0.i, %bb.k ], [ %.0.i, %bb.j ] ; 4 uses
  %i.z = icmp sgt i32 %2, %i.u
  br i1 %i.z, label %bb.o, label %Py_DECREF.exit109

bb.o:                                             ; preds = %bb.n
  %i.aa = add i32 %.186, %2                       ; 4 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ab) #8 ; 6 uses
  %.not99.not = icmp eq ptr %i.ac, null
  br i1 %.not99.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %.not.i108 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i108, label %bb.q, label %Py_DECREF.exit109.thread

bb.q:                                             ; preds = %bb.p
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !14
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.r, label %Py_DECREF.exit109.thread

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #8
  br label %Py_DECREF.exit109.thread

bb.s:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %i.ac, i64 32     ; 6 uses
  %4 = zext i32 %.186 to i64                      ; 2 uses
  %i.ah = icmp sgt i32 %.186, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %.preheader136

.lr.ph.preheader:                                 ; preds = %bb.s
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ai = icmp ult i32 %.186, 8
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, 2147483640
  br label %.lr.ph

.preheader136.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader136, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader136.loopexit.unr-lcssa, %.lr.ph.preheader
  %.177139.epil.init = phi ptr [ %.076, %.lr.ph.preheader ], [ %i.bk, %.preheader136.loopexit.unr-lcssa ]
  %.088137.epil.init = phi ptr [ %i.ag, %.lr.ph.preheader ], [ %i.bm, %.preheader136.loopexit.unr-lcssa ]
  %lcmp.mod261 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.177139.epil = phi ptr [ %i.aj, %.lr.ph.epil ], [ %.177139.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.088137.epil = phi ptr [ %i.al, %.lr.ph.epil ], [ %.088137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aj = getelementptr i8, ptr %.177139.epil, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.177139.epil, align 1, !tbaa !14
  %i.al = getelementptr i8, ptr %.088137.epil, i64 1 ; 2 uses
  store i8 %i.ak, ptr %.088137.epil, align 1, !tbaa !14
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader136, label %.lr.ph.epil, !llvm.loop !21

.preheader136:                                    ; preds = %.preheader136.loopexit.unr-lcssa, %.lr.ph.epil, %bb.s
  %.088.lcssa = phi ptr [ %i.ag, %bb.s ], [ %i.bm, %.preheader136.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.epil ] ; 3 uses
  %.177.lcssa = phi ptr [ %.076, %bb.s ], [ %i.bk, %.preheader136.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil ] ; 6 uses
  %.177.lcssa173 = ptrtoaddr ptr %.177.lcssa to i64
  %i.am = sub i32 %2, %i.u                        ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph143.preheader, label %.preheader135

.lr.ph143.preheader:                              ; preds = %.preheader136
  %i.ao = zext nneg i32 %i.am to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.088.lcssa, i8 48, i64 %i.ao, i1 false), !tbaa !14
  %scevgep = getelementptr i8, ptr %.088.lcssa, i64 %i.ao
  br label %.preheader135

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.177139 = phi ptr [ %.076, %.lr.ph.preheader.new ], [ %i.bk, %.lr.ph ] ; 9 uses
  %.088137 = phi ptr [ %i.ag, %.lr.ph.preheader.new ], [ %i.bm, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ap = getelementptr i8, ptr %.177139, i64 1
  %i.aq = load i8, ptr %.177139, align 1, !tbaa !14
  %i.ar = getelementptr i8, ptr %.088137, i64 1
  store i8 %i.aq, ptr %.088137, align 1, !tbaa !14
  %i.as = getelementptr i8, ptr %.177139, i64 2
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.au = getelementptr i8, ptr %.088137, i64 2
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !14
  %i.av = getelementptr i8, ptr %.177139, i64 3
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !14
  %i.ax = getelementptr i8, ptr %.088137, i64 3
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !14
  %i.ay = getelementptr i8, ptr %.177139, i64 4
  %i.az = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ba = getelementptr i8, ptr %.088137, i64 4
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !14
  %i.bb = getelementptr i8, ptr %.177139, i64 5
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.bd = getelementptr i8, ptr %.088137, i64 5
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !14
  %i.be = getelementptr i8, ptr %.177139, i64 6
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bg = getelementptr i8, ptr %.088137, i64 6
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !14
  %i.bh = getelementptr i8, ptr %.177139, i64 7
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bj = getelementptr i8, ptr %.088137, i64 7
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !14
  %i.bk = getelementptr i8, ptr %.177139, i64 8   ; 3 uses
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bm = getelementptr i8, ptr %.088137, i64 8   ; 3 uses
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !14
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader136.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

.preheader135:                                    ; preds = %.lr.ph143.preheader, %.preheader136
  %.189.lcssa = phi ptr [ %.088.lcssa, %.preheader136 ], [ %scevgep, %.lr.ph143.preheader ] ; 7 uses
  %i.bn = icmp sgt i32 %i.u, 0
  br i1 %i.bn, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader135
  %.189.lcssa172 = ptrtoaddr ptr %.189.lcssa to i64
  %i.bo = or disjoint i32 %switch.ext255, %i.s
  %i.bp = sub i32 %i.p, %i.bo                     ; 4 uses
  %i.bq = sext i32 %i.bp to i64                   ; 7 uses
  %min.iters.check = icmp ult i32 %i.bp, 4
  %i.br = sub i64 %.177.lcssa173, %.189.lcssa172
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond256 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond256, label %.lr.ph148.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i32 %i.bp, 32
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bq, -32                     ; 6 uses
  %i.bs = getelementptr i8, ptr %.177.lcssa, i64 %n.vec
  %i.bt = getelementptr i8, ptr %.189.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.177.lcssa, i64 %index ; 2 uses
  %next.gep175 = getelementptr i8, ptr %.189.lcssa, i64 %index ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !14
  %wide.load176 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !14
  %i.bv = getelementptr i8, ptr %next.gep175, i64 16
  store <16 x i8> %wide.load, ptr %next.gep175, align 1, !tbaa !14
  store <16 x i8> %wide.load176, ptr %i.bv, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bq
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.bx = and i32 %i.bp, 28
  %min.epilog.iters.check = icmp eq i32 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph148.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec179 = and i64 %i.bq, -4                   ; 5 uses
  %i.by = getelementptr i8, ptr %.177.lcssa, i64 %n.vec179
  %i.bz = getelementptr i8, ptr %.189.lcssa, i64 %n.vec179 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index180 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %next.gep181 = getelementptr i8, ptr %.177.lcssa, i64 %index180
  %next.gep182 = getelementptr i8, ptr %.189.lcssa, i64 %index180
  %wide.load183 = load <4 x i8>, ptr %next.gep181, align 1, !tbaa !14
  store <4 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !14
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %n.vec179, %i.bq
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2147.ph = phi ptr [ %.177.lcssa, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 2 uses
  %.280146.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec179, %vec.epilog.middle.block ] ; 4 uses
  %.290145.ph = phi ptr [ %.189.lcssa, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ] ; 2 uses
  %i.cb = sub nsw i64 %i.bq, %.280146.ph
  %xtraiter262 = and i64 %i.cb, 7                 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.2147.prol = phi ptr [ %i.cc, %.lr.ph148.prol ], [ %.2147.ph, %.lr.ph148.preheader ] ; 2 uses
  %.280146.prol = phi i64 [ %i.cf, %.lr.ph148.prol ], [ %.280146.ph, %.lr.ph148.preheader ]
  %.290145.prol = phi ptr [ %i.ce, %.lr.ph148.prol ], [ %.290145.ph, %.lr.ph148.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.cc = getelementptr i8, ptr %.2147.prol, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.2147.prol, align 1, !tbaa !14
  %i.ce = getelementptr i8, ptr %.290145.prol, i64 1 ; 3 uses
  store i8 %i.cd, ptr %.290145.prol, align 1, !tbaa !14
  %i.cf = add nuw nsw i64 %.280146.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter262
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !30

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph148.preheader ], [ %i.ce, %.lr.ph148.prol ]
  %.2147.unr = phi ptr [ %.2147.ph, %.lr.ph148.preheader ], [ %i.cc, %.lr.ph148.prol ]
  %.280146.unr = phi i64 [ %.280146.ph, %.lr.ph148.preheader ], [ %i.cf, %.lr.ph148.prol ]
  %.290145.unr = phi ptr [ %.290145.ph, %.lr.ph148.preheader ], [ %i.ce, %.lr.ph148.prol ]
  %i.cg = sub nsw i64 %.280146.ph, %i.bq
  %i.ch = icmp ugt i64 %i.cg, -8
  br i1 %i.ch, label %._crit_edge, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.2147 = phi ptr [ %i.dd, %.lr.ph148 ], [ %.2147.unr, %.lr.ph148.prol.loopexit ] ; 9 uses
  %.280146 = phi i64 [ %i.dg, %.lr.ph148 ], [ %.280146.unr, %.lr.ph148.prol.loopexit ]
  %.290145 = phi ptr [ %i.df, %.lr.ph148 ], [ %.290145.unr, %.lr.ph148.prol.loopexit ] ; 9 uses
  %i.ci = getelementptr i8, ptr %.2147, i64 1
  %i.cj = load i8, ptr %.2147, align 1, !tbaa !14
  %i.ck = getelementptr i8, ptr %.290145, i64 1
  store i8 %i.cj, ptr %.290145, align 1, !tbaa !14
  %i.cl = getelementptr i8, ptr %.2147, i64 2
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.cn = getelementptr i8, ptr %.290145, i64 2
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !14
  %i.co = getelementptr i8, ptr %.2147, i64 3
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cq = getelementptr i8, ptr %.290145, i64 3
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !14
  %i.cr = getelementptr i8, ptr %.2147, i64 4
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !14
  %i.ct = getelementptr i8, ptr %.290145, i64 4
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !14
  %i.cu = getelementptr i8, ptr %.2147, i64 5
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.cw = getelementptr i8, ptr %.290145, i64 5
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !14
  %i.cx = getelementptr i8, ptr %.2147, i64 6
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cz = getelementptr i8, ptr %.290145, i64 6
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !14
  %i.da = getelementptr i8, ptr %.2147, i64 7
end_hunk_0
