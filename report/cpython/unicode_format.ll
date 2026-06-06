inline.NumInlined: 83
inline.NumDeleted: 26
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
  %i.a = alloca ptr, align 8                      ; 12 uses
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
  %i.f = tail call ptr @PyNumber_ToBase(ptr noundef %0, i32 noundef %switch.ext) #8 ; 11 uses
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
  %.186 = phi i32 [ %i.w, %bb.m ], [ %i.w, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %bb.j ] ; 6 uses
  %.082 = phi i32 [ %i.y, %bb.m ], [ %i.y, %bb.l ], [ %i.p, %bb.k ], [ %i.p, %bb.j ]
  %.076 = phi ptr [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ %.0.i, %bb.k ], [ %.0.i, %bb.j ] ; 4 uses
  %i.z = icmp sgt i32 %2, %i.u
  br i1 %i.z, label %bb.o, label %Py_DECREF.exit109

bb.o:                                             ; preds = %bb.n
  %i.aa = add i32 %.186, %2                       ; 4 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ab) #8 ; 3 uses
  %.not99.not = icmp eq ptr %i.ac, null
  br i1 %.not99.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %.not.i108 = icmp sgt i32 %i.ae, -1
  br i1 %.not.i108, label %bb.q, label %Py_DECREF.exit109.thread

bb.q:                                             ; preds = %bb.p
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !14
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.r, label %Py_DECREF.exit109.thread

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #8
  br label %Py_DECREF.exit109.thread

bb.s:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %i.ac, i64 32     ; 6 uses
  %i.ai = sext i32 %.186 to i64                   ; 2 uses
  %i.aj = icmp sgt i32 %.186, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %.preheader136

.lr.ph.preheader:                                 ; preds = %bb.s
  %xtraiter = and i64 %i.ai, 7
  %i.ak = icmp ult i32 %.186, 8
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ai, 2147483640
  br label %.lr.ph

.preheader136.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.al = and i32 %.186, 7
  %lcmp.mod.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod.not, label %.preheader136, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader136.loopexit.unr-lcssa, %.lr.ph.preheader
  %.177139.epil.init = phi ptr [ %.076, %.lr.ph.preheader ], [ %i.bo, %.preheader136.loopexit.unr-lcssa ]
  %.088137.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %.preheader136.loopexit.unr-lcssa ]
  %i.am = and i32 %.186, 7
  %lcmp.mod260 = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.177139.epil = phi ptr [ %i.an, %.lr.ph.epil ], [ %.177139.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.088137.epil = phi ptr [ %i.ap, %.lr.ph.epil ], [ %.088137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.an = getelementptr i8, ptr %.177139.epil, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.177139.epil, align 1, !tbaa !14
  %i.ap = getelementptr i8, ptr %.088137.epil, i64 1 ; 2 uses
  store i8 %i.ao, ptr %.088137.epil, align 1, !tbaa !14
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader136, label %.lr.ph.epil, !llvm.loop !21

.preheader136:                                    ; preds = %.preheader136.loopexit.unr-lcssa, %.lr.ph.epil, %bb.s
  %.088.lcssa = phi ptr [ %i.ah, %bb.s ], [ %i.bq, %.preheader136.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil ] ; 3 uses
  %.177.lcssa = phi ptr [ %.076, %bb.s ], [ %i.bo, %.preheader136.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil ] ; 6 uses
  %.177.lcssa173 = ptrtoaddr ptr %.177.lcssa to i64
  %i.aq = sub i32 %2, %i.u                        ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph143.preheader, label %.preheader135

.lr.ph143.preheader:                              ; preds = %.preheader136
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.088.lcssa, i8 48, i64 %i.as, i1 false), !tbaa !14
  %scevgep = getelementptr i8, ptr %.088.lcssa, i64 %i.as
  br label %.preheader135

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.177139 = phi ptr [ %.076, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 9 uses
  %.088137 = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.at = getelementptr i8, ptr %.177139, i64 1
  %i.au = load i8, ptr %.177139, align 1, !tbaa !14
  %i.av = getelementptr i8, ptr %.088137, i64 1
  store i8 %i.au, ptr %.088137, align 1, !tbaa !14
  %i.aw = getelementptr i8, ptr %.177139, i64 2
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !14
  %i.ay = getelementptr i8, ptr %.088137, i64 2
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !14
  %i.az = getelementptr i8, ptr %.177139, i64 3
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.bb = getelementptr i8, ptr %.088137, i64 3
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !14
  %i.bc = getelementptr i8, ptr %.177139, i64 4
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !14
  %i.be = getelementptr i8, ptr %.088137, i64 4
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !14
  %i.bf = getelementptr i8, ptr %.177139, i64 5
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.bh = getelementptr i8, ptr %.088137, i64 5
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !14
  %i.bi = getelementptr i8, ptr %.177139, i64 6
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bk = getelementptr i8, ptr %.088137, i64 6
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !14
  %i.bl = getelementptr i8, ptr %.177139, i64 7
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bn = getelementptr i8, ptr %.088137, i64 7
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !14
  %i.bo = getelementptr i8, ptr %.177139, i64 8   ; 3 uses
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bq = getelementptr i8, ptr %.088137, i64 8   ; 3 uses
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !14
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader136.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

.preheader135:                                    ; preds = %.lr.ph143.preheader, %.preheader136
  %.189.lcssa = phi ptr [ %.088.lcssa, %.preheader136 ], [ %scevgep, %.lr.ph143.preheader ] ; 7 uses
  %i.br = icmp sgt i32 %i.u, 0
  br i1 %i.br, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader135
  %.189.lcssa172 = ptrtoaddr ptr %.189.lcssa to i64
  %i.bs = or disjoint i32 %switch.ext255, %i.s
  %i.bt = sub i32 %i.p, %i.bs                     ; 4 uses
  %i.bu = sext i32 %i.bt to i64                   ; 7 uses
  %min.iters.check = icmp ult i32 %i.bt, 4
  %i.bv = sub i64 %.189.lcssa172, %.177.lcssa173
  %diff.check = icmp ult i64 %i.bv, 32
  %or.cond255 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond255, label %.lr.ph148.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i32 %i.bt, 32
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bu, -32                     ; 6 uses
  %i.bw = getelementptr i8, ptr %.177.lcssa, i64 %n.vec
  %i.bx = getelementptr i8, ptr %.189.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.177.lcssa, i64 %index ; 2 uses
  %next.gep175 = getelementptr i8, ptr %.189.lcssa, i64 %index ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !14
  %wide.load176 = load <16 x i8>, ptr %i.by, align 1, !tbaa !14
  %i.bz = getelementptr i8, ptr %next.gep175, i64 16
  store <16 x i8> %wide.load, ptr %next.gep175, align 1, !tbaa !14
  store <16 x i8> %wide.load176, ptr %i.bz, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bu
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.cb = and i32 %i.bt, 28
  %min.epilog.iters.check = icmp eq i32 %i.cb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph148.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec179 = and i64 %i.bu, -4                   ; 5 uses
  %i.cc = getelementptr i8, ptr %.177.lcssa, i64 %n.vec179
  %i.cd = getelementptr i8, ptr %.189.lcssa, i64 %n.vec179 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index180 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %next.gep181 = getelementptr i8, ptr %.177.lcssa, i64 %index180
  %next.gep182 = getelementptr i8, ptr %.189.lcssa, i64 %index180
  %wide.load183 = load <4 x i8>, ptr %next.gep181, align 1, !tbaa !14
  store <4 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !14
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %n.vec179, %i.bu
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2147.ph = phi ptr [ %.177.lcssa, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %.280146.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec179, %vec.epilog.middle.block ] ; 4 uses
  %.290145.ph = phi ptr [ %.189.lcssa, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %i.cf = sub nsw i64 %i.bu, %.280146.ph
  %xtraiter261 = and i64 %i.cf, 7                 ; 2 uses
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.2147.prol = phi ptr [ %i.cg, %.lr.ph148.prol ], [ %.2147.ph, %.lr.ph148.preheader ] ; 2 uses
  %.280146.prol = phi i64 [ %i.cj, %.lr.ph148.prol ], [ %.280146.ph, %.lr.ph148.preheader ]
  %.290145.prol = phi ptr [ %i.ci, %.lr.ph148.prol ], [ %.290145.ph, %.lr.ph148.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.cg = getelementptr i8, ptr %.2147.prol, i64 1 ; 2 uses
  %i.ch = load i8, ptr %.2147.prol, align 1, !tbaa !14
  %i.ci = getelementptr i8, ptr %.290145.prol, i64 1 ; 3 uses
  store i8 %i.ch, ptr %.290145.prol, align 1, !tbaa !14
  %i.cj = add nuw nsw i64 %.280146.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter261
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !30

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph148.preheader ], [ %i.ci, %.lr.ph148.prol ]
  %.2147.unr = phi ptr [ %.2147.ph, %.lr.ph148.preheader ], [ %i.cg, %.lr.ph148.prol ]
  %.280146.unr = phi i64 [ %.280146.ph, %.lr.ph148.preheader ], [ %i.cj, %.lr.ph148.prol ]
  %.290145.unr = phi ptr [ %.290145.ph, %.lr.ph148.preheader ], [ %i.ci, %.lr.ph148.prol ]
  %i.ck = sub nsw i64 %.280146.ph, %i.bu
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %._crit_edge, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.2147 = phi ptr [ %i.dh, %.lr.ph148 ], [ %.2147.unr, %.lr.ph148.prol.loopexit ] ; 9 uses
  %.280146 = phi i64 [ %i.dk, %.lr.ph148 ], [ %.280146.unr, %.lr.ph148.prol.loopexit ]
  %.290145 = phi ptr [ %i.dj, %.lr.ph148 ], [ %.290145.unr, %.lr.ph148.prol.loopexit ] ; 9 uses
  %i.cm = getelementptr i8, ptr %.2147, i64 1
  %i.cn = load i8, ptr %.2147, align 1, !tbaa !14
  %i.co = getelementptr i8, ptr %.290145, i64 1
  store i8 %i.cn, ptr %.290145, align 1, !tbaa !14
  %i.cp = getelementptr i8, ptr %.2147, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !14
  %i.cr = getelementptr i8, ptr %.290145, i64 2
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !14
  %i.cs = getelementptr i8, ptr %.2147, i64 3
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cu = getelementptr i8, ptr %.290145, i64 3
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !14
  %i.cv = getelementptr i8, ptr %.2147, i64 4
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cx = getelementptr i8, ptr %.290145, i64 4
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !14
  %i.cy = getelementptr i8, ptr %.2147, i64 5
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.da = getelementptr i8, ptr %.290145, i64 5
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !14
  %i.db = getelementptr i8, ptr %.2147, i64 6
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.dd = getelementptr i8, ptr %.290145, i64 6
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !14
  %i.de = getelementptr i8, ptr %.2147, i64 7
  %i.df = load i8, ptr %i.db, align 1, !tbaa !14
  %i.dg = getelementptr i8, ptr %.290145, i64 7
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !14
  %i.dh = getelementptr i8, ptr %.2147, i64 8
  %i.di = load i8, ptr %i.de, align 1, !tbaa !14
  %i.dj = getelementptr i8, ptr %.290145, i64 8   ; 2 uses
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !14
  %i.dk = add nuw nsw i64 %.280146, 8             ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %i.dk, %i.bu
  br i1 %exitcond155.not.7, label %._crit_edge, label %.lr.ph148, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %middle.block, %vec.epilog.middle.block, %.preheader135
  %.290.lcssa = phi ptr [ %.189.lcssa, %.preheader135 ], [ %i.cd, %vec.epilog.middle.block ], [ %i.bx, %middle.block ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.dj, %.lr.ph148 ]
  store i8 0, ptr %.290.lcssa, align 1, !tbaa !14
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !11
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !14 ; 2 uses
  %.not.i106 = icmp sgt i32 %i.dm, -1
  br i1 %.not.i106, label %bb.t, label %Py_DECREF.exit109

bb.t:                                             ; preds = %._crit_edge
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !14
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.u, label %Py_DECREF.exit109

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dl) #8
  br label %Py_DECREF.exit109

Py_DECREF.exit109:                                ; preds = %._crit_edge, %bb.t, %bb.u, %bb.n
  %.284 = phi i32 [ %.082, %bb.n ], [ %i.aa, %bb.u ], [ %i.aa, %bb.t ], [ %i.aa, %._crit_edge ] ; 7 uses
  %.4 = phi ptr [ %.076, %bb.n ], [ %i.ah, %bb.u ], [ %i.ah, %bb.t ], [ %i.ah, %._crit_edge ] ; 23 uses
  %i.dp = icmp eq i32 %3, 88
  br i1 %i.dp, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %Py_DECREF.exit109
  %i.dq = sext i32 %.284 to i64                   ; 5 uses
  %i.dr = icmp sgt i32 %.284, 0
  br i1 %i.dr, label %iter.check232, label %.loopexit

iter.check232:                                    ; preds = %.preheader
  %min.iters.check189 = icmp ult i32 %.284, 4
  br i1 %min.iters.check189, label %.lr.ph151.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %iter.check232
  %min.iters.check191 = icmp ult i32 %.284, 16
  br i1 %min.iters.check191, label %vec.epilog.ph236, label %vector.ph192

vector.ph192:                                     ; preds = %vector.main.loop.iter.check190
  %n.vec194 = and i64 %i.dq, 2147483632           ; 4 uses
  br label %vector.body195

vector.body195:                                   ; preds = %pred.store.continue227, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next228, %pred.store.continue227 ] ; 17 uses
  %i.ds = getelementptr i8, ptr %.4, i64 %index196 ; 2 uses
  %wide.load197 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !14 ; 17 uses
  %i.dt = add <16 x i8> %wide.load197, splat (i8 -97)
  %i.du = icmp ult <16 x i8> %i.dt, splat (i8 24) ; 16 uses
  %i.dv = extractelement <16 x i1> %i.du, i64 0
  br i1 %i.dv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body195
  %i.dw = extractelement <16 x i8> %wide.load197, i64 0
  %i.dx = add nsw i8 %i.dw, -32
  store i8 %i.dx, ptr %i.ds, align 1, !tbaa !14
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body195
  %i.dy = extractelement <16 x i1> %i.du, i64 1
  br i1 %i.dy, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue
  %i.dz = getelementptr i8, ptr %.4, i64 %index196
  %i.ea = getelementptr i8, ptr %i.dz, i64 1
  %i.eb = extractelement <16 x i8> %wide.load197, i64 1
  %i.ec = add nsw i8 %i.eb, -32
end_hunk_0
begin_hunk_1_@PyUnicode_Format:bb.a
  store i32 0, ptr %i.ao, align 4, !tbaa !68
  store i64 -1, ptr %i.ap, align 8, !tbaa !69
  store i32 -1, ptr %i.aq, align 8, !tbaa !70
  store i32 0, ptr %i.ar, align 4, !tbaa !71
  store i64 %i.bd, ptr %i.as, align 8, !tbaa !72
  store ptr null, ptr %i.at, align 8, !tbaa !73
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.dd = icmp eq i32 %.0.i.i45, 40
  br i1 %i.dd, label %bb.ad, label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  %i.de = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.dh = load ptr, ptr %3, align 8, !tbaa !58
  %i.di = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dg, ptr noundef nonnull @.str.6, ptr noundef %i.dh) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.dj = add i64 %i.bd, 2                        ; 3 uses
  store i64 %i.dj, ptr %i.u, align 8, !tbaa !51
  %i.dk = add i64 %i.ba, -3                       ; 3 uses
  store i64 %i.dk, ptr %i.t, align 8, !tbaa !50
  %i.dl = icmp sgt i64 %i.dk, -1
  br i1 %i.dl, label %.lr.ph.i, label %.critedge.thread.i.i

bb.ag:                                            ; preds = %bb.al, %.thread.i
  %i.dm = phi i64 [ %i.dz, %.thread.i ], [ %i.eb, %bb.al ]
  %.1.i244.i = phi i32 [ %.0168246.i138.i, %.thread.i ], [ %i.ea, %bb.al ]
  %i.dn = add nsw i64 %i.dp, -1                   ; 2 uses
  store i64 %i.dn, ptr %i.t, align 8, !tbaa !50
  %i.do = icmp sgt i64 %i.dp, 0
  br i1 %i.do, label %.lr.ph.i, label %.critedge.thread.i.i, !llvm.loop !74

.lr.ph.i:                                         ; preds = %bb.af, %bb.ag
  %i.dp = phi i64 [ %i.dn, %bb.ag ], [ %i.dk, %bb.af ] ; 2 uses
  %.0168246.i138.i = phi i32 [ %.1.i244.i, %bb.ag ], [ 1, %bb.af ] ; 2 uses
  %i.dq = phi i64 [ %i.dm, %bb.ag ], [ %i.dj, %bb.af ] ; 6 uses
  switch i32 %i.bb, label %bb.aj [
    i32 1, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.ah:                                            ; preds = %.lr.ph.i
  %i.dr = getelementptr i8, ptr %i.bc, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dt = zext i8 %i.ds to i32
  br label %PyUnicode_READ.exit.i.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.du = getelementptr [2 x i8], ptr %i.bc, i64 %i.dq
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !59
  %i.dw = zext i16 %i.dv to i32
  br label %PyUnicode_READ.exit.i.i

bb.aj:                                            ; preds = %.lr.ph.i
  %i.dx = getelementptr [4 x i8], ptr %i.bc, i64 %i.dq
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.i.i

PyUnicode_READ.exit.i.i:                          ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i.i.i = phi i32 [ %i.dt, %bb.ah ], [ %i.dw, %bb.ai ], [ %i.dy, %bb.aj ] ; 3 uses
  switch i32 %.0.i.i.i, label %.thread.i [
    i32 41, label %bb.al
    i32 40, label %bb.ak
  ]

.thread.i:                                        ; preds = %PyUnicode_READ.exit.i.i
  %i.dz = add i64 %i.dq, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.u, align 8, !tbaa !51
  br label %bb.ag

bb.ak:                                            ; preds = %PyUnicode_READ.exit.i.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %PyUnicode_READ.exit.i.i
  %.sink.i = phi i32 [ 1, %bb.ak ], [ -1, %PyUnicode_READ.exit.i.i ]
  %i.ea = add i32 %.sink.i, %.0168246.i138.i      ; 2 uses
  %i.eb = add i64 %i.dq, 1                        ; 2 uses
  store i64 %i.eb, ptr %i.u, align 8, !tbaa !51
  %i.ec = icmp sgt i32 %i.ea, 0
  br i1 %i.ec, label %bb.ag, label %.critedge.i21.i, !llvm.loop !74

.critedge.thread.i.i:                             ; preds = %bb.af, %bb.ag
  %i.ed = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.ee = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ed, ptr noundef nonnull @.str.7, i64 noundef %i.bd) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

.critedge.i21.i:                                  ; preds = %bb.al
  store i32 %.0.i.i.i, ptr %2, align 8
  %i.ef = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.eg = call ptr @PyUnicode_Substring(ptr noundef %i.ef, i64 noundef %i.dj, i64 noundef %i.dq) #8 ; 5 uses
  store ptr %i.eg, ptr %i.at, align 8, !tbaa !73
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %unicode_format_arg.exit.thread, label %bb.am

bb.am:                                            ; preds = %.critedge.i21.i
  %i.ei = load i32, ptr %i.ag, align 8, !tbaa !56
  %.not.i22.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i22.i, label %Py_DECREF.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ag, align 8, !tbaa !56
  %i.ej = load ptr, ptr %3, align 8, !tbaa !58    ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ek, -1
  br i1 %.not.i.i.i, label %bb.ao, label %Py_DECREF.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !14
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ap, label %Py_DECREF.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.ej) #8
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.en = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.eo = call ptr @PyObject_GetItem(ptr noundef %i.en, ptr noundef nonnull %i.eg) #8 ; 2 uses
  store ptr %i.eo, ptr %3, align 8, !tbaa !58
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %unicode_format_arg_parse.exit.thread.thread108.i, label %bb.aq

bb.aq:                                            ; preds = %Py_DECREF.exit.i.i
  store i32 1, ptr %i.ag, align 8, !tbaa !56
  store i64 -3, ptr %i.ae, align 8, !tbaa !54
  store i64 -4, ptr %i.af, align 8, !tbaa !55
  %.promoted247.i.i.pre = load i64, ptr %i.t, align 8, !tbaa !50
  br label %bb.at

bb.ar:                                            ; preds = %bb.ac
  %i.eq = load i64, ptr %i.ae, align 8, !tbaa !54 ; 2 uses
  %i.er = icmp slt i64 %i.eq, -1
  br i1 %i.er, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.es = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.et = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.es, ptr noundef nonnull @.str.8, i64 noundef %i.bd) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.promoted247.i.i = phi i64 [ %.promoted247.i.i.pre, %bb.aq ], [ %.pr, %bb.ar ]
  %i.eu = phi ptr [ %i.eg, %bb.aq ], [ null, %bb.ar ] ; 30 uses
  %.0.i67.i = phi i32 [ %.0.i.i.i, %bb.aq ], [ %.0.i.i45, %bb.ar ]
  %i.ev = phi i64 [ -3, %bb.aq ], [ %i.eq, %bb.ar ] ; 5 uses
  %i.ew = add i64 %.promoted247.i.i, -1           ; 4 uses
  store i64 %i.ew, ptr %i.t, align 8, !tbaa !50
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i.i, label %thread-pre-split.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.ey = load i32, ptr %i.r, align 8, !tbaa !49
  %i.ez = load ptr, ptr %i.o, align 8, !tbaa !48  ; 3 uses
  %.promoted248.i.i = load i64, ptr %i.u, align 8, !tbaa !51
  br label %bb.au

bb.au:                                            ; preds = %switch.lookup, %.lr.ph.i.i
  %i.fa = phi i32 [ 0, %.lr.ph.i.i ], [ %i.fo, %switch.lookup ] ; 2 uses
  %i.fb = phi i64 [ %.promoted248.i.i, %.lr.ph.i.i ], [ %i.fl, %switch.lookup ] ; 4 uses
  %i.fc = phi i64 [ %i.ew, %.lr.ph.i.i ], [ %i.fp, %switch.lookup ] ; 3 uses
  switch i32 %i.ey, label %bb.ax [
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr i8, ptr %i.ez, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !14
  %i.ff = zext i8 %i.fe to i32
  br label %PyUnicode_READ.exit210.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fg = getelementptr [2 x i8], ptr %i.ez, i64 %i.fb
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !59
  %i.fi = zext i16 %i.fh to i32
  br label %PyUnicode_READ.exit210.i.i

bb.ax:                                            ; preds = %bb.au
  %i.fj = getelementptr [4 x i8], ptr %i.ez, i64 %i.fb
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  br label %PyUnicode_READ.exit210.i.i

PyUnicode_READ.exit210.i.i:                       ; preds = %bb.ax, %bb.aw, %bb.av
  %.0.i209.i.i = phi i32 [ %i.ff, %bb.av ], [ %i.fi, %bb.aw ], [ %i.fk, %bb.ax ] ; 3 uses
  %i.fl = add i64 %i.fb, 1                        ; 2 uses
  store i64 %i.fl, ptr %i.u, align 8, !tbaa !51
  %switch.tableidx = add i32 %.0.i209.i.i, -32    ; 3 uses
  %i.fm = icmp ult i32 %switch.tableidx, 17
  %switch.shifted = lshr i32 75785, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond777 = select i1 %i.fm, i1 %switch.lobit, i1 false
  br i1 %or.cond777, label %switch.lookup, label %thread-pre-split.i.loopexit.i

switch.lookup:                                    ; preds = %PyUnicode_READ.exit210.i.i
  %i.fn = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.PyUnicode_Format, i64 %i.fn
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.fo = or i32 %i.fa, %switch.ext               ; 2 uses
  %i.fp = add nsw i64 %i.fc, -1                   ; 2 uses
  store i64 %i.fp, ptr %i.t, align 8, !tbaa !50
  %i.fq = icmp sgt i64 %i.fc, 0
  br i1 %i.fq, label %bb.au, label %thread-pre-split.i.loopexit.i, !llvm.loop !75

thread-pre-split.i.loopexit.i:                    ; preds = %PyUnicode_READ.exit210.i.i, %switch.lookup
  %i.fr = phi i64 [ %i.fc, %PyUnicode_READ.exit210.i.i ], [ -1, %switch.lookup ]
  %i.fs = phi i32 [ %i.fa, %PyUnicode_READ.exit210.i.i ], [ %i.fo, %switch.lookup ] ; 2 uses
  store i32 %.0.i209.i.i, ptr %2, align 8, !tbaa !61
  store i32 %i.fs, ptr %i.ao, align 4
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.loopexit.i, %bb.at
  %i.ft = phi i64 [ %i.ew, %bb.at ], [ %i.fr, %thread-pre-split.i.loopexit.i ] ; 2 uses
  %i.fu = phi i32 [ 0, %bb.at ], [ %i.fs, %thread-pre-split.i.loopexit.i ] ; 4 uses
  %i.fv = phi i32 [ %.0.i67.i, %bb.at ], [ %.0.i209.i.i, %thread-pre-split.i.loopexit.i ] ; 3 uses
  %i.fw = icmp eq i32 %i.fv, 42
  br i1 %i.fw, label %bb.ay, label %bb.bu

bb.ay:                                            ; preds = %thread-pre-split.i.i
  %i.fx = icmp slt i64 %i.ev, -1
  br i1 %i.fx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fy = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.fz = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fy, ptr noundef nonnull @.str.9, i64 noundef %i.bd) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

bb.ba:                                            ; preds = %bb.ay
  %i.ga = load i64, ptr %i.af, align 8, !tbaa !55 ; 3 uses
  %i.gb = icmp slt i64 %i.ga, %i.ev
  %i.gc = icmp ne i64 %i.ev, -1
  %or.cond242.i.i = and i1 %i.gc, %i.gb
  br i1 %or.cond242.i.i, label %unicode_format_getnextarg.exit.i.i, label %unicode_format_getnextarg.exit.thread.i.i

unicode_format_getnextarg.exit.thread.i.i:        ; preds = %bb.ba
  %i.gd = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ge = icmp eq i64 %i.ev, -1
  %spec.select.i.i.i = select i1 %i.ge, i64 1, i64 %i.ev
  %i.gf = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gd, ptr noundef nonnull @.str.23, i64 noundef %spec.select.i.i.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

unicode_format_getnextarg.exit.i.i:               ; preds = %bb.ba
  %i.gg = add nsw i64 %i.ga, 1
  store i64 %i.gg, ptr %i.af, align 8, !tbaa !55
  %i.gh = load ptr, ptr %3, align 8, !tbaa !58
  %i.gi = call ptr @PyTuple_GetItem(ptr noundef %i.gh, i64 noundef %i.ga) #8 ; 6 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %unicode_format_arg_parse.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %unicode_format_getnextarg.exit.i.i
  %i.gk = getelementptr i8, ptr %i.gi, i64 8
  %.val206.i.i = load ptr, ptr %i.gk, align 8, !tbaa !36
  %i.gl = getelementptr i8, ptr %.val206.i.i, i64 168
  %.val208.i.i = load i64, ptr %i.gl, align 8, !tbaa !37
  %i.gm = and i64 %.val208.i.i, 16777216
  %.not189.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not189.i.i, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %.not190.i.i = icmp eq ptr %i.eu, null
  br i1 %.not190.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.go = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gn, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.gi) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.thread108.i

bb.be:                                            ; preds = %bb.bc
  %i.gp = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.gq = icmp sgt i64 %i.gp, -1
  %i.gr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11 ; 2 uses
  br i1 %i.gq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gs = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gr, ptr noundef nonnull @.str.11, i64 noundef %i.gp, ptr noundef nonnull %i.gi) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.bg:                                            ; preds = %bb.be
  %i.gt = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gr, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.gi) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.bh:                                            ; preds = %bb.bb
  %i.gu = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.gi) #8 ; 5 uses
  store i64 %i.gu, ptr %i.ap, align 8, !tbaa !69
  %i.gv = icmp eq i64 %i.gu, -1
  br i1 %i.gv, label %bb.bi, label %thread-pre-split226.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.gw = call ptr @PyErr_Occurred() #8
  %.not191.i.i = icmp eq ptr %i.gw, null
  br i1 %.not191.i.i, label %thread-pre-split226.i.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  %i.gy = call i32 @PyErr_ExceptionMatches(ptr noundef %i.gx) #8
  %.not198.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not198.i.i, label %unicode_format_arg_parse.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not199.i.i = icmp eq ptr %i.eu, null
  br i1 %.not199.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gz = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  %i.ha = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gz, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.eu, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.thread108.i

bb.bm:                                            ; preds = %bb.bk
  %i.hb = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, -1
  %i.hd = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11 ; 2 uses
  br i1 %i.hc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.he = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hd, ptr noundef nonnull @.str.15, i64 noundef %i.hb, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.bo:                                            ; preds = %bb.bm
  %i.hf = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.hd, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

thread-pre-split226.i.i:                          ; preds = %bb.bh
  %i.hg = icmp slt i64 %i.gu, 0
  br i1 %i.hg, label %thread-pre-split226.i.thread.i, label %bb.bp

thread-pre-split226.i.thread.i:                   ; preds = %thread-pre-split226.i.i, %bb.bi
  %i.hh = or i32 %i.fu, 1                         ; 2 uses
  store i32 %i.hh, ptr %i.ao, align 4, !tbaa !68
  %i.hi = sub i64 0, %i.gu                        ; 2 uses
  store i64 %i.hi, ptr %i.ap, align 8, !tbaa !69
  br label %bb.bp

bb.bp:                                            ; preds = %thread-pre-split226.i.thread.i, %thread-pre-split226.i.i
  %i.hj = phi i64 [ %i.hi, %thread-pre-split226.i.thread.i ], [ %i.gu, %thread-pre-split226.i.i ]
  %i.hk = phi i32 [ %i.hh, %thread-pre-split226.i.thread.i ], [ %i.fu, %thread-pre-split226.i.i ]
  %i.hl = load i64, ptr %i.t, align 8, !tbaa !50
  %i.hm = add i64 %i.hl, -1                       ; 3 uses
  store i64 %i.hm, ptr %i.t, align 8, !tbaa !50
  %i.hn = icmp sgt i64 %i.hm, -1
  br i1 %i.hn, label %bb.bq, label %.thread239.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ho = load i32, ptr %i.r, align 8, !tbaa !49
  %i.hp = load ptr, ptr %i.o, align 8, !tbaa !48  ; 3 uses
  %i.hq = load i64, ptr %i.u, align 8, !tbaa !51  ; 4 uses
  switch i32 %i.ho, label %bb.bt [
    i32 1, label %bb.br
    i32 2, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.hr = getelementptr i8, ptr %i.hp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !14
  %i.ht = zext i8 %i.hs to i32
  br label %PyUnicode_READ.exit213.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.hu = getelementptr [2 x i8], ptr %i.hp, i64 %i.hq
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !59
  %i.hw = zext i16 %i.hv to i32
  br label %PyUnicode_READ.exit213.i.i

bb.bt:                                            ; preds = %bb.bq
  %i.hx = getelementptr [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !7
  br label %PyUnicode_READ.exit213.i.i

PyUnicode_READ.exit213.i.i:                       ; preds = %bb.bt, %bb.bs, %bb.br
  %.0.i212.i.i = phi i32 [ %i.ht, %bb.br ], [ %i.hw, %bb.bs ], [ %i.hy, %bb.bt ] ; 2 uses
  store i32 %.0.i212.i.i, ptr %2, align 8, !tbaa !61
  %i.hz = add i64 %i.hq, 1
  store i64 %i.hz, ptr %i.u, align 8, !tbaa !51
  br label %thread-pre-split228.i.i

bb.bu:                                            ; preds = %thread-pre-split.i.i
  %i.ia = add i32 %i.fv, -48                      ; 2 uses
  %or.cond202.i.i = icmp ult i32 %i.ia, 10
  br i1 %or.cond202.i.i, label %bb.bv, label %thread-pre-split228.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.ib = zext nneg i32 %i.ia to i64              ; 2 uses
  store i64 %i.ib, ptr %i.ap, align 8, !tbaa !69
  %i.ic = add i64 %i.ft, -1                       ; 3 uses
  store i64 %i.ic, ptr %i.t, align 8, !tbaa !50
  %i.id = icmp sgt i64 %i.ic, -1
  br i1 %i.id, label %.lr.ph251.i.i, label %.thread239.i.i

.lr.ph251.i.i:                                    ; preds = %bb.bv
  %i.ie = load i32, ptr %i.r, align 8, !tbaa !49
  %i.if = load ptr, ptr %i.o, align 8, !tbaa !48  ; 3 uses
  %.promoted252.i.i = load i64, ptr %i.u, align 8, !tbaa !51
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cc, %.lr.ph251.i.i
  %i.ig = phi i64 [ %i.ib, %.lr.ph251.i.i ], [ %i.jb, %bb.cc ] ; 5 uses
  %i.ih = phi i64 [ %.promoted252.i.i, %.lr.ph251.i.i ], [ %i.ir, %bb.cc ] ; 4 uses
  %i.ii = phi i64 [ %i.ic, %.lr.ph251.i.i ], [ %i.jc, %bb.cc ] ; 3 uses
  switch i32 %i.ie, label %bb.bz [
    i32 1, label %bb.bx
end_hunk_1
begin_hunk_2_@PyUnicode_Format:bb.a

.thread239.i.loopexit120.i:                       ; preds = %bb.cc
  store i32 %.0.i214.i.i, ptr %2, align 8, !tbaa !61
  store i64 %i.jb, ptr %i.ap, align 8
  br label %.thread239.i.i

.thread239.i.i:                                   ; preds = %bb.dm, %.loopexit.i.i, %bb.df, %bb.cz, %bb.cd, %bb.bv, %bb.bp, %.thread239.i.loopexit120.i, %.thread239.i.loopexit.i
  %i.nh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.ni = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.nh, ptr noundef nonnull @.str.22, i64 noundef %i.bd) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

unicode_format_arg_parse.exit.i:                  ; preds = %.thread.i.i, %.loopexit.thread.i.i
  %i.nj = phi i64 [ %i.mu, %.thread.i.i ], [ %i.mr, %.loopexit.thread.i.i ]
  %.0.i68.i = phi i32 [ %.0.i222.i.i, %.thread.i.i ], [ %i.mt, %.loopexit.thread.i.i ] ; 35 uses
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %unicode_format_arg_parse.exit.i
  store i8 0, ptr %i.z, align 4, !tbaa !53
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %unicode_format_arg_parse.exit.i
  %i.nl = load i64, ptr %i.af, align 8, !tbaa !55 ; 3 uses
  %i.nm = load i64, ptr %i.ae, align 8, !tbaa !54 ; 4 uses
  %i.nn = icmp slt i64 %i.nl, %i.nm
  br i1 %i.nn, label %bb.dt, label %unicode_format_getnextarg.exit.thread.i23.i

bb.dt:                                            ; preds = %bb.ds
  %i.no = icmp sgt i64 %i.nm, -1
  %i.np = add nsw i64 %i.nl, 1
  store i64 %i.np, ptr %i.af, align 8, !tbaa !55
  %i.nq = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  br i1 %i.no, label %bb.du, label %unicode_format_getnextarg.exit.i26.i

bb.du:                                            ; preds = %bb.dt
  %i.nr = call ptr @PyTuple_GetItem(ptr noundef %i.nq, i64 noundef %i.nl) #8
  br label %unicode_format_getnextarg.exit.i26.i

unicode_format_getnextarg.exit.thread.i23.i:      ; preds = %bb.ds
  %i.ns = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.nt = icmp slt i64 %i.nm, 0
  %spec.select.i.i24.i = select i1 %i.nt, i64 1, i64 %i.nm
  %i.nu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ns, ptr noundef nonnull @.str.23, i64 noundef %spec.select.i.i24.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

unicode_format_getnextarg.exit.i26.i:             ; preds = %bb.du, %bb.dt
  %.0.i.i27.i = phi ptr [ %i.nr, %bb.du ], [ %i.nq, %bb.dt ] ; 40 uses
  %i.nv = icmp eq ptr %.0.i.i27.i, null
  br i1 %i.nv, label %unicode_format_arg_parse.exit.thread.i, label %bb.dv

bb.dv:                                            ; preds = %unicode_format_getnextarg.exit.i26.i
  switch i32 %.0.i68.i, label %bb.gp [
    i32 115, label %bb.dw
    i32 114, label %bb.dw
    i32 97, label %bb.dw
    i32 105, label %bb.ef
    i32 100, label %bb.ef
    i32 117, label %bb.ef
    i32 111, label %bb.ef
    i32 120, label %bb.ef
    i32 88, label %bb.ef
    i32 101, label %bb.fe
    i32 69, label %bb.fe
    i32 102, label %bb.fe
    i32 70, label %bb.fe
    i32 103, label %bb.fe
    i32 71, label %bb.fe
    i32 99, label %bb.fh
  ]

bb.dw:                                            ; preds = %bb.dv, %bb.dv, %bb.dv
  %i.nw = getelementptr i8, ptr %.0.i.i27.i, i64 8
  %.val92.i.i = load ptr, ptr %i.nw, align 8, !tbaa !36 ; 2 uses
  %.not111.i.i = icmp eq ptr %.val92.i.i, @PyLong_Type
  br i1 %.not111.i.i, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.nx = icmp eq i64 %i.jf, -1
  %i.ny = icmp eq i32 %i.ms, -1
  %or.cond.i = select i1 %i.nx, i1 %i.ny, i1 false
  br i1 %or.cond.i, label %bb.dy, label %.thread.i31.i

bb.dy:                                            ; preds = %bb.dx
  %i.nz = and i32 %i.jg, 8
  %i.oa = call i32 @_PyLong_FormatWriter(ptr noundef nonnull %i.v, ptr noundef nonnull %.0.i.i27.i, i32 noundef 10, i32 noundef %i.nz) #8
  %i.ob = icmp eq i32 %i.oa, -1
  br i1 %i.ob, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

bb.dz:                                            ; preds = %bb.dw
  %i.oc = icmp eq ptr %.val92.i.i, @PyUnicode_Type
  %i.od = icmp eq i32 %.0.i68.i, 115
  %or.cond110.i.i = and i1 %i.od, %i.oc
  br i1 %or.cond110.i.i, label %bb.ea, label %.thread.i31.i

bb.ea:                                            ; preds = %bb.dz
  %i.oe = load i32, ptr %.0.i.i27.i, align 8, !tbaa !14 ; 2 uses
  %i.of = icmp ugt i32 %i.oe, -1073741825
  br i1 %i.of, label %unicode_format_arg_format.exit.thread99.thread.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.og = add nuw i32 %i.oe, 1
  store i32 %i.og, ptr %.0.i.i27.i, align 8, !tbaa !14
  br label %unicode_format_arg_format.exit.thread99.thread.i

unicode_format_arg_format.exit.thread99.thread.i: ; preds = %bb.eb, %bb.ea
  store ptr %.0.i.i27.i, ptr %i.b, align 8, !tbaa !11
  br label %unicode_format_arg_format.exit.thread99.i

.thread.i31.i:                                    ; preds = %bb.dz, %bb.dx
  switch i32 %.0.i68.i, label %bb.ee [
    i32 115, label %bb.ec
    i32 114, label %bb.ed
  ]

bb.ec:                                            ; preds = %.thread.i31.i
  %i.oh = call ptr @PyObject_Str(ptr noundef nonnull %.0.i.i27.i) #8
  br label %unicode_format_arg_format.exit.i

bb.ed:                                            ; preds = %.thread.i31.i
  %i.oi = call ptr @PyObject_Repr(ptr noundef nonnull %.0.i.i27.i) #8
  br label %unicode_format_arg_format.exit.i

bb.ee:                                            ; preds = %.thread.i31.i
  %i.oj = call ptr @PyObject_ASCII(ptr noundef nonnull %.0.i.i27.i) #8
  br label %unicode_format_arg_format.exit.i

bb.ef:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.ok = call i32 @PyNumber_Check(ptr noundef nonnull %.0.i.i27.i) #8
  %.not.i.i30.i = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i30.i, label %.loopexit54, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ol = getelementptr i8, ptr %.0.i.i27.i, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ol, align 8, !tbaa !36 ; 3 uses
  %i.om = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val79.i.i.i = load i64, ptr %i.om, align 8, !tbaa !37
  %i.on = and i64 %.val79.i.i.i, 16777216
  %.not69.i.i.i = icmp eq i64 %i.on, 0
  br i1 %.not69.i.i.i, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.oo = icmp eq i32 %.0.i68.i, 111
  %i.op = and i32 %.0.i68.i, 223
  %i.oq = icmp eq i32 %i.op, 88
  %or.cond5.i.i.i = or i1 %i.oo, %i.oq
  br i1 %or.cond5.i.i.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.or = call ptr @_PyNumber_Index(ptr noundef nonnull %.0.i.i27.i) #8
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  %i.os = call ptr @PyNumber_Long(ptr noundef nonnull %.0.i.i27.i) #8
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.061.i.i.i = phi ptr [ %i.or, %bb.ei ], [ %i.os, %bb.ej ] ; 2 uses
  %i.ot = icmp eq ptr %.061.i.i.i, null
  br i1 %i.ot, label %bb.el, label %._Py_NewRef.exit_crit_edge.i.i.i

._Py_NewRef.exit_crit_edge.i.i.i:                 ; preds = %bb.ek
  %.val80.pre.i.i.i = load ptr, ptr %i.ol, align 8, !tbaa !36
  br label %_Py_NewRef.exit.i.i.i

bb.el:                                            ; preds = %bb.ek
  %i.ou = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ov = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ou) #8
  %.not70.i.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not70.i.i.i, label %unicode_format_arg_parse.exit.thread.i, label %.loopexit54

bb.em:                                            ; preds = %bb.eg
  %i.ow = load i32, ptr %.0.i.i27.i, align 8, !tbaa !14 ; 2 uses
  %i.ox = icmp ugt i32 %i.ow, -1073741825
  br i1 %i.ox, label %_Py_NewRef.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.oy = add nuw i32 %i.ow, 1
  store i32 %i.oy, ptr %.0.i.i27.i, align 8, !tbaa !14
  br label %_Py_NewRef.exit.i.i.i

_Py_NewRef.exit.i.i.i:                            ; preds = %bb.en, %bb.em, %._Py_NewRef.exit_crit_edge.i.i.i
  %.val80.i.i.i = phi ptr [ %.val80.pre.i.i.i, %._Py_NewRef.exit_crit_edge.i.i.i ], [ %.val.i.i.i, %bb.em ], [ %.val.i.i.i, %bb.en ]
  %.162.i.i.i = phi ptr [ %.061.i.i.i, %._Py_NewRef.exit_crit_edge.i.i.i ], [ %.0.i.i27.i, %bb.em ], [ %.0.i.i27.i, %bb.en ] ; 7 uses
  %.not81.i.i.i = icmp eq ptr %.val80.i.i.i, @PyLong_Type
  %i.oz = icmp eq i64 %i.jf, -1
  %or.cond110.i = select i1 %.not81.i.i.i, i1 %i.oz, i1 false
  %i.pa = icmp eq i32 %i.ms, -1
  %or.cond111.i = select i1 %or.cond110.i, i1 %i.pa, i1 false
  br i1 %or.cond111.i, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %_Py_NewRef.exit.i.i.i
  %i.pb = and i32 %i.jg, 6
  %i.pc = icmp eq i32 %i.pb, 0
  %i.pd = icmp ne i32 %.0.i68.i, 88
  %or.cond8.i.i.i = and i1 %i.pc, %i.pd
  br i1 %or.cond8.i.i.i, label %switch.lookup779, label %bb.er

switch.lookup779:                                 ; preds = %bb.eo
  %i.pe = and i32 %i.jg, 8
  %i.pf = sext i32 %.0.i68.i to i64
  %4 = getelementptr i8, ptr @switch.table.PyUnicode_Format.12, i64 %i.pf
  %switch.gep780 = getelementptr i8, ptr %4, i64 -100
  %switch.load781 = load i8, ptr %switch.gep780, align 1
  %switch.ext782 = zext i8 %switch.load781 to i32
  %i.pg = call i32 @_PyLong_FormatWriter(ptr noundef nonnull %i.v, ptr noundef nonnull %.0.i.i27.i, i32 noundef %switch.ext782, i32 noundef %i.pe) #8
  %i.ph = icmp eq i32 %i.pg, -1
  %i.pi = load i32, ptr %.162.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i76.i.i.i = icmp sgt i32 %i.pi, -1
  br i1 %.not.i76.i.i.i, label %bb.ep, label %Py_DECREF.exit77.i.i.i

bb.ep:                                            ; preds = %switch.lookup779
  %i.pj = add nsw i32 %i.pi, -1                   ; 2 uses
  store i32 %i.pj, ptr %.162.i.i.i, align 8, !tbaa !14
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.eq, label %Py_DECREF.exit77.i.i.i

bb.eq:                                            ; preds = %bb.ep
  call void @_Py_Dealloc(ptr noundef nonnull %.162.i.i.i) #8
  br label %Py_DECREF.exit77.i.i.i

Py_DECREF.exit77.i.i.i:                           ; preds = %bb.eq, %bb.ep, %switch.lookup779
  br i1 %i.ph, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

bb.er:                                            ; preds = %bb.eo, %_Py_NewRef.exit.i.i.i
  %i.pl = and i32 %i.jg, 8
  %i.pm = call ptr @_PyUnicode_FormatLong(ptr noundef nonnull %.162.i.i.i, i32 noundef %i.pl, i32 noundef %i.ms, i32 noundef %.0.i68.i) ; 3 uses
  %i.pn = load i32, ptr %.162.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.pn, -1
  br i1 %.not.i.i.i.i, label %bb.es, label %Py_DECREF.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.po = add nsw i32 %i.pn, -1                   ; 2 uses
  store i32 %i.po, ptr %.162.i.i.i, align 8, !tbaa !14
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.et, label %Py_DECREF.exit.i.i.i

bb.et:                                            ; preds = %bb.es
  call void @_Py_Dealloc(ptr noundef nonnull %.162.i.i.i) #8
  br label %Py_DECREF.exit.i.i.i

Py_DECREF.exit.i.i.i:                             ; preds = %bb.et, %bb.es, %bb.er
  %i.pq = icmp eq ptr %i.pm, null
  br i1 %i.pq, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread99.thread103.i

.loopexit54:                                      ; preds = %bb.ef, %bb.el
  %.not72.i.i.i = icmp eq ptr %i.eu, null         ; 2 uses
  switch i32 %.0.i68.i, label %bb.ez [
    i32 111, label %bb.eu
    i32 120, label %bb.eu
    i32 88, label %bb.eu
  ]

bb.eu:                                            ; preds = %.loopexit54, %.loopexit54, %.loopexit54
  br i1 %.not72.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.pr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.ps = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.pr, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.eu, i32 noundef %.0.i68.i, ptr noundef nonnull %.0.i.i27.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.thread108.i

bb.ew:                                            ; preds = %bb.eu
  %i.pt = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.pu = icmp sgt i64 %i.pt, -1
  %i.pv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11 ; 2 uses
  br i1 %i.pu, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.pw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.pv, ptr noundef nonnull @.str.30, i64 noundef %i.pt, i32 noundef %.0.i68.i, ptr noundef nonnull %.0.i.i27.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.ey:                                            ; preds = %bb.ew
  %i.px = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.pv, ptr noundef nonnull @.str.31, i32 noundef %.0.i68.i, ptr noundef nonnull %.0.i.i27.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.ez:                                            ; preds = %.loopexit54
  br i1 %.not72.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.py = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.pz = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.py, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.eu, i32 noundef %.0.i68.i, ptr noundef nonnull %.0.i.i27.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.thread108.i

bb.fb:                                            ; preds = %bb.ez
  %i.qa = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.qb = icmp sgt i64 %i.qa, -1
  %i.qc = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11 ; 2 uses
  br i1 %i.qb, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.qd = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.qc, ptr noundef nonnull @.str.33, i64 noundef %i.qa, i32 noundef %.0.i68.i, ptr noundef nonnull %.0.i.i27.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.fd:                                            ; preds = %bb.fb
  %i.qe = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.qc, ptr noundef nonnull @.str.34, i32 noundef %.0.i68.i, ptr noundef nonnull %.0.i.i27.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

unicode_format_arg_format.exit.thread99.thread103.i: ; preds = %Py_DECREF.exit.i.i.i
  store ptr %i.pm, ptr %i.b, align 8, !tbaa !11
  store i32 1, ptr %i.ar, align 4, !tbaa !71
  br label %unicode_format_arg_format.exit.thread99.thread247.i

bb.fe:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.qf = icmp eq i64 %i.jf, -1
  %i.qg = icmp eq i32 %i.ms, -1
  %or.cond112.i = select i1 %i.qf, i1 %i.qg, i1 false
  %i.qh = and i32 %i.jg, 6
  %.not.i29.i = icmp eq i32 %i.qh, 0
  %or.cond113.i = select i1 %or.cond112.i, i1 %.not.i29.i, i1 false
  br i1 %or.cond113.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.qi = call fastcc i32 @formatfloat(ptr noundef %.0.i.i27.i, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %i.v)
  %i.qj = icmp eq i32 %i.qi, -1
  br i1 %i.qj, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread93.i

bb.fg:                                            ; preds = %bb.fe
  store i32 1, ptr %i.ar, align 4, !tbaa !71
  %i.qk = call fastcc i32 @formatfloat(ptr noundef %.0.i.i27.i, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef null)
  %i.ql = icmp eq i32 %i.qk, -1
  %.pre.i28.i = load ptr, ptr %i.b, align 8       ; 2 uses
  %i.qm = icmp eq ptr %.pre.i28.i, null
  %or.cond272.i = select i1 %i.ql, i1 true, i1 %i.qm
  br i1 %or.cond272.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread99.thread247.i

bb.fh:                                            ; preds = %bb.dv
  %i.qn = getelementptr i8, ptr %.0.i.i27.i, i64 8
  %.val42.i.i.i = load ptr, ptr %i.qn, align 8, !tbaa !36
  %i.qo = getelementptr i8, ptr %.val42.i.i.i, i64 168
  %.val43.i.i.i = load i64, ptr %i.qo, align 8, !tbaa !37
  %i.qp = and i64 %.val43.i.i.i, 268435456
  %.not.i94.i.i = icmp eq i64 %i.qp, 0
  br i1 %.not.i94.i.i, label %bb.fy, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.qq = getelementptr i8, ptr %.0.i.i27.i, i64 16
  %.val41.i.i.i = load i64, ptr %i.qq, align 8, !tbaa !15 ; 4 uses
  %i.qr = icmp eq i64 %.val41.i.i.i, 1
  br i1 %i.qr, label %bb.fj, label %bb.ft

bb.fj:                                            ; preds = %bb.fi
  %i.qs = getelementptr i8, ptr %.0.i.i27.i, i64 32
  %i.qt = load i32, ptr %i.qs, align 8            ; 5 uses
  %i.qu = lshr i32 %i.qt, 2
  %i.qv = and i32 %i.qu, 7
  %i.qw = and i32 %i.qt, 32
  %.not.i19.i.i.i.i = icmp eq i32 %i.qw, 0        ; 3 uses
  switch i32 %i.qv, label %bb.fq [
    i32 1, label %bb.fk
    i32 2, label %bb.fn
  ]

bb.fk:                                            ; preds = %bb.fj
  br i1 %.not.i19.i.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qx = and i32 %i.qt, 64
  %.not.i.i.i.i.i.i = icmp eq i32 %i.qx, 0
  %.0.v.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i.i.i = getelementptr i8, ptr %.0.i.i27.i, i64 %.0.v.i.i.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i.i.i

bb.fm:                                            ; preds = %bb.fk
  %i.qy = getelementptr i8, ptr %.0.i.i27.i, i64 56
  %.val4.i.i.i.i.i = load ptr, ptr %i.qy, align 8, !tbaa !14
  br label %_PyUnicode_DATA.exit.i.i.i.i

_PyUnicode_DATA.exit.i.i.i.i:                     ; preds = %bb.fm, %bb.fl
  %.0.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %bb.fl ], [ %.val4.i.i.i.i.i, %bb.fm ]
  %i.qz = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !14
  %i.ra = zext i8 %i.qz to i32
  br label %formatchar.exit.thread102.i.i

bb.fn:                                            ; preds = %bb.fj
  br i1 %.not.i19.i.i.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.rb = and i32 %i.qt, 64
  %.not.i.i12.i.i.i.i = icmp eq i32 %i.rb, 0
  %.0.v.i.i13.i.i.i.i = select i1 %.not.i.i12.i.i.i.i, i64 56, i64 40
  %.0.i.i14.i.i.i.i = getelementptr i8, ptr %.0.i.i27.i, i64 %.0.v.i.i13.i.i.i.i
  br label %_PyUnicode_DATA.exit17.i.i.i.i

bb.fp:                                            ; preds = %bb.fn
  %i.rc = getelementptr i8, ptr %.0.i.i27.i, i64 56
  %.val4.i16.i.i.i.i = load ptr, ptr %i.rc, align 8, !tbaa !14
  br label %_PyUnicode_DATA.exit17.i.i.i.i

_PyUnicode_DATA.exit17.i.i.i.i:                   ; preds = %bb.fp, %bb.fo
  %.0.i15.i.i.i.i = phi ptr [ %.0.i.i14.i.i.i.i, %bb.fo ], [ %.val4.i16.i.i.i.i, %bb.fp ]
  %i.rd = load i16, ptr %.0.i15.i.i.i.i, align 2, !tbaa !59
  %i.re = zext i16 %i.rd to i32
  br label %formatchar.exit.thread102.i.i

bb.fq:                                            ; preds = %bb.fj
  br i1 %.not.i19.i.i.i.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.rf = and i32 %i.qt, 64
  %.not.i.i20.i.i.i.i = icmp eq i32 %i.rf, 0
  %.0.v.i.i21.i.i.i.i = select i1 %.not.i.i20.i.i.i.i, i64 56, i64 40
  %.0.i.i22.i.i.i.i = getelementptr i8, ptr %.0.i.i27.i, i64 %.0.v.i.i21.i.i.i.i
  br label %_PyUnicode_DATA.exit25.i.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.rg = getelementptr i8, ptr %.0.i.i27.i, i64 56
end_hunk_2
