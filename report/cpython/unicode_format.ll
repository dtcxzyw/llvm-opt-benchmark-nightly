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
  %.186 = phi i32 [ %i.w, %bb.m ], [ %i.w, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %bb.j ] ; 6 uses
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
  %i.ah = sext i32 %.186 to i64                   ; 2 uses
  %i.ai = icmp sgt i32 %.186, 0
  br i1 %i.ai, label %.lr.ph.preheader, label %.preheader136

.lr.ph.preheader:                                 ; preds = %bb.s
  %xtraiter = and i64 %i.ah, 7
  %i.aj = icmp ult i32 %.186, 8
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ah, 2147483640
  br label %.lr.ph

.preheader136.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.ak = and i32 %.186, 7
  %lcmp.mod.not = icmp eq i32 %i.ak, 0
  br i1 %lcmp.mod.not, label %.preheader136, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader136.loopexit.unr-lcssa, %.lr.ph.preheader
  %.177139.epil.init = phi ptr [ %.076, %.lr.ph.preheader ], [ %i.bn, %.preheader136.loopexit.unr-lcssa ]
  %.088137.epil.init = phi ptr [ %i.ag, %.lr.ph.preheader ], [ %i.bp, %.preheader136.loopexit.unr-lcssa ]
  %i.al = and i32 %.186, 7
  %lcmp.mod261 = icmp ne i32 %i.al, 0
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.177139.epil = phi ptr [ %i.am, %.lr.ph.epil ], [ %.177139.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.088137.epil = phi ptr [ %i.ao, %.lr.ph.epil ], [ %.088137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.am = getelementptr i8, ptr %.177139.epil, i64 1 ; 2 uses
  %i.an = load i8, ptr %.177139.epil, align 1, !tbaa !14
  %i.ao = getelementptr i8, ptr %.088137.epil, i64 1 ; 2 uses
  store i8 %i.an, ptr %.088137.epil, align 1, !tbaa !14
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader136, label %.lr.ph.epil, !llvm.loop !21

.preheader136:                                    ; preds = %.preheader136.loopexit.unr-lcssa, %.lr.ph.epil, %bb.s
  %.088.lcssa = phi ptr [ %i.ag, %bb.s ], [ %i.bp, %.preheader136.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.epil ] ; 3 uses
  %.177.lcssa = phi ptr [ %.076, %bb.s ], [ %i.bn, %.preheader136.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.epil ] ; 6 uses
  %.177.lcssa173 = ptrtoaddr ptr %.177.lcssa to i64
  %i.ap = sub i32 %2, %i.u                        ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph143.preheader, label %.preheader135

.lr.ph143.preheader:                              ; preds = %.preheader136
  %i.ar = zext nneg i32 %i.ap to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.088.lcssa, i8 48, i64 %i.ar, i1 false), !tbaa !14
  %scevgep = getelementptr i8, ptr %.088.lcssa, i64 %i.ar
  br label %.preheader135

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.177139 = phi ptr [ %.076, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ] ; 9 uses
  %.088137 = phi ptr [ %i.ag, %.lr.ph.preheader.new ], [ %i.bp, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.as = getelementptr i8, ptr %.177139, i64 1
  %i.at = load i8, ptr %.177139, align 1, !tbaa !14
  %i.au = getelementptr i8, ptr %.088137, i64 1
  store i8 %i.at, ptr %.088137, align 1, !tbaa !14
  %i.av = getelementptr i8, ptr %.177139, i64 2
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !14
  %i.ax = getelementptr i8, ptr %.088137, i64 2
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !14
  %i.ay = getelementptr i8, ptr %.177139, i64 3
  %i.az = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ba = getelementptr i8, ptr %.088137, i64 3
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !14
  %i.bb = getelementptr i8, ptr %.177139, i64 4
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.bd = getelementptr i8, ptr %.088137, i64 4
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !14
  %i.be = getelementptr i8, ptr %.177139, i64 5
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bg = getelementptr i8, ptr %.088137, i64 5
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !14
  %i.bh = getelementptr i8, ptr %.177139, i64 6
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bj = getelementptr i8, ptr %.088137, i64 6
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !14
  %i.bk = getelementptr i8, ptr %.177139, i64 7
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bm = getelementptr i8, ptr %.088137, i64 7
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !14
  %i.bn = getelementptr i8, ptr %.177139, i64 8   ; 3 uses
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bp = getelementptr i8, ptr %.088137, i64 8   ; 3 uses
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !14
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader136.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

.preheader135:                                    ; preds = %.lr.ph143.preheader, %.preheader136
  %.189.lcssa = phi ptr [ %.088.lcssa, %.preheader136 ], [ %scevgep, %.lr.ph143.preheader ] ; 7 uses
  %i.bq = icmp sgt i32 %i.u, 0
  br i1 %i.bq, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader135
  %.189.lcssa172 = ptrtoaddr ptr %.189.lcssa to i64
  %i.br = or disjoint i32 %switch.ext255, %i.s
  %i.bs = sub i32 %i.p, %i.br                     ; 4 uses
  %i.bt = sext i32 %i.bs to i64                   ; 7 uses
  %min.iters.check = icmp ult i32 %i.bs, 4
  %i.bu = sub i64 %.189.lcssa172, %.177.lcssa173
  %diff.check = icmp ult i64 %i.bu, 32
  %or.cond256 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond256, label %.lr.ph148.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i32 %i.bs, 32
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bt, -32                     ; 6 uses
  %i.bv = getelementptr i8, ptr %.177.lcssa, i64 %n.vec
  %i.bw = getelementptr i8, ptr %.189.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.177.lcssa, i64 %index ; 2 uses
  %next.gep175 = getelementptr i8, ptr %.189.lcssa, i64 %index ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !14
  %wide.load176 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !14
  %i.by = getelementptr i8, ptr %next.gep175, i64 16
  store <16 x i8> %wide.load, ptr %next.gep175, align 1, !tbaa !14
  store <16 x i8> %wide.load176, ptr %i.by, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ca = and i32 %i.bs, 28
  %min.epilog.iters.check = icmp eq i32 %i.ca, 0
  br i1 %min.epilog.iters.check, label %.lr.ph148.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec179 = and i64 %i.bt, -4                   ; 5 uses
  %i.cb = getelementptr i8, ptr %.177.lcssa, i64 %n.vec179
  %i.cc = getelementptr i8, ptr %.189.lcssa, i64 %n.vec179 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index180 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %next.gep181 = getelementptr i8, ptr %.177.lcssa, i64 %index180
  %next.gep182 = getelementptr i8, ptr %.189.lcssa, i64 %index180
  %wide.load183 = load <4 x i8>, ptr %next.gep181, align 1, !tbaa !14
  store <4 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !14
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %n.vec179, %i.bt
  br i1 %cmp.n185, label %._crit_edge, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2147.ph = phi ptr [ %.177.lcssa, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 2 uses
  %.280146.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec179, %vec.epilog.middle.block ] ; 4 uses
  %.290145.ph = phi ptr [ %.189.lcssa, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %i.ce = sub nsw i64 %i.bt, %.280146.ph
  %xtraiter262 = and i64 %i.ce, 7                 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.2147.prol = phi ptr [ %i.cf, %.lr.ph148.prol ], [ %.2147.ph, %.lr.ph148.preheader ] ; 2 uses
  %.280146.prol = phi i64 [ %i.ci, %.lr.ph148.prol ], [ %.280146.ph, %.lr.ph148.preheader ]
  %.290145.prol = phi ptr [ %i.ch, %.lr.ph148.prol ], [ %.290145.ph, %.lr.ph148.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.cf = getelementptr i8, ptr %.2147.prol, i64 1 ; 2 uses
  %i.cg = load i8, ptr %.2147.prol, align 1, !tbaa !14
  %i.ch = getelementptr i8, ptr %.290145.prol, i64 1 ; 3 uses
  store i8 %i.cg, ptr %.290145.prol, align 1, !tbaa !14
  %i.ci = add nuw nsw i64 %.280146.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter262
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !30

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph148.preheader ], [ %i.ch, %.lr.ph148.prol ]
  %.2147.unr = phi ptr [ %.2147.ph, %.lr.ph148.preheader ], [ %i.cf, %.lr.ph148.prol ]
  %.280146.unr = phi i64 [ %.280146.ph, %.lr.ph148.preheader ], [ %i.ci, %.lr.ph148.prol ]
  %.290145.unr = phi ptr [ %.290145.ph, %.lr.ph148.preheader ], [ %i.ch, %.lr.ph148.prol ]
  %i.cj = sub nsw i64 %.280146.ph, %i.bt
  %i.ck = icmp ugt i64 %i.cj, -8
  br i1 %i.ck, label %._crit_edge, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.2147 = phi ptr [ %i.dg, %.lr.ph148 ], [ %.2147.unr, %.lr.ph148.prol.loopexit ] ; 9 uses
  %.280146 = phi i64 [ %i.dj, %.lr.ph148 ], [ %.280146.unr, %.lr.ph148.prol.loopexit ]
  %.290145 = phi ptr [ %i.di, %.lr.ph148 ], [ %.290145.unr, %.lr.ph148.prol.loopexit ] ; 9 uses
  %i.cl = getelementptr i8, ptr %.2147, i64 1
  %i.cm = load i8, ptr %.2147, align 1, !tbaa !14
  %i.cn = getelementptr i8, ptr %.290145, i64 1
  store i8 %i.cm, ptr %.290145, align 1, !tbaa !14
  %i.co = getelementptr i8, ptr %.2147, i64 2
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cq = getelementptr i8, ptr %.290145, i64 2
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !14
  %i.cr = getelementptr i8, ptr %.2147, i64 3
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !14
  %i.ct = getelementptr i8, ptr %.290145, i64 3
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !14
  %i.cu = getelementptr i8, ptr %.2147, i64 4
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.cw = getelementptr i8, ptr %.290145, i64 4
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !14
  %i.cx = getelementptr i8, ptr %.2147, i64 5
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cz = getelementptr i8, ptr %.290145, i64 5
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !14
  %i.da = getelementptr i8, ptr %.2147, i64 6
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !14
  %i.dc = getelementptr i8, ptr %.290145, i64 6
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !14
  %i.dd = getelementptr i8, ptr %.2147, i64 7
  %i.de = load i8, ptr %i.da, align 1, !tbaa !14
  %i.df = getelementptr i8, ptr %.290145, i64 7
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !14
  %i.dg = getelementptr i8, ptr %.2147, i64 8
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.di = getelementptr i8, ptr %.290145, i64 8   ; 2 uses
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !14
  %i.dj = add nuw nsw i64 %.280146, 8             ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %i.dj, %i.bt
  br i1 %exitcond155.not.7, label %._crit_edge, label %.lr.ph148, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %middle.block, %vec.epilog.middle.block, %.preheader135
  %.290.lcssa = phi ptr [ %.189.lcssa, %.preheader135 ], [ %i.cc, %vec.epilog.middle.block ], [ %i.bw, %middle.block ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.di, %.lr.ph148 ]
  store i8 0, ptr %.290.lcssa, align 1, !tbaa !14
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !11
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !14 ; 2 uses
  %.not.i106 = icmp sgt i32 %i.dl, -1
  br i1 %.not.i106, label %bb.t, label %Py_DECREF.exit109

bb.t:                                             ; preds = %._crit_edge
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !14
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.u, label %Py_DECREF.exit109

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dk) #8
  br label %Py_DECREF.exit109

Py_DECREF.exit109:                                ; preds = %._crit_edge, %bb.t, %bb.u, %bb.n
  %4 = phi ptr [ %i.f, %bb.n ], [ %i.ac, %bb.u ], [ %i.ac, %bb.t ], [ %i.ac, %._crit_edge ] ; 2 uses
  %.284 = phi i32 [ %.082, %bb.n ], [ %i.aa, %bb.u ], [ %i.aa, %bb.t ], [ %i.aa, %._crit_edge ] ; 7 uses
  %.4 = phi ptr [ %.076, %bb.n ], [ %i.ag, %bb.u ], [ %i.ag, %bb.t ], [ %i.ag, %._crit_edge ] ; 23 uses
  %i.do = icmp eq i32 %3, 88
  br i1 %i.do, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %Py_DECREF.exit109
  %i.dp = sext i32 %.284 to i64                   ; 5 uses
  %i.dq = icmp sgt i32 %.284, 0
  br i1 %i.dq, label %iter.check232, label %.loopexit

iter.check232:                                    ; preds = %.preheader
  %min.iters.check189 = icmp ult i32 %.284, 4
  br i1 %min.iters.check189, label %.lr.ph151.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %iter.check232
  %min.iters.check191 = icmp ult i32 %.284, 16
  br i1 %min.iters.check191, label %vec.epilog.ph236, label %vector.ph192

vector.ph192:                                     ; preds = %vector.main.loop.iter.check190
  %n.vec194 = and i64 %i.dp, 2147483632           ; 4 uses
  br label %vector.body195

vector.body195:                                   ; preds = %pred.store.continue227, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next228, %pred.store.continue227 ] ; 17 uses
  %i.dr = getelementptr i8, ptr %.4, i64 %index196 ; 2 uses
  %wide.load197 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !14 ; 17 uses
  %i.ds = add <16 x i8> %wide.load197, splat (i8 -97)
  %i.dt = icmp ult <16 x i8> %i.ds, splat (i8 24) ; 16 uses
  %i.du = extractelement <16 x i1> %i.dt, i64 0
  br i1 %i.du, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body195
  %i.dv = extractelement <16 x i8> %wide.load197, i64 0
  %i.dw = add nsw i8 %i.dv, -32
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !14
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body195
  %i.dx = extractelement <16 x i1> %i.dt, i64 1
  br i1 %i.dx, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue
  %i.dy = getelementptr i8, ptr %.4, i64 %index196
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  %i.ea = extractelement <16 x i8> %wide.load197, i64 1
  %i.eb = add nsw i8 %i.ea, -32
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !14
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue
  %i.ec = extractelement <16 x i1> %i.dt, i64 2
  br i1 %i.ec, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  %i.ed = getelementptr i8, ptr %.4, i64 %index196
  %i.ee = getelementptr i8, ptr %i.ed, i64 2
  %i.ef = extractelement <16 x i8> %wide.load197, i64 2
  %i.eg = add nsw i8 %i.ef, -32
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !14
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.eh = extractelement <16 x i1> %i.dt, i64 3
  br i1 %i.eh, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  %i.ei = getelementptr i8, ptr %.4, i64 %index196
  %i.ej = getelementptr i8, ptr %i.ei, i64 3
  %i.ek = extractelement <16 x i8> %wide.load197, i64 3
  %i.el = add nsw i8 %i.ek, -32
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !14
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.em = extractelement <16 x i1> %i.dt, i64 4
  br i1 %i.em, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  %i.en = getelementptr i8, ptr %.4, i64 %index196
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %i.ep = extractelement <16 x i8> %wide.load197, i64 4
  %i.eq = add nsw i8 %i.ep, -32
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !14
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.er = extractelement <16 x i1> %i.dt, i64 5
  br i1 %i.er, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  %i.es = getelementptr i8, ptr %.4, i64 %index196
  %i.et = getelementptr i8, ptr %i.es, i64 5
  %i.eu = extractelement <16 x i8> %wide.load197, i64 5
  %i.ev = add nsw i8 %i.eu, -32
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !14
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.ew = extractelement <16 x i1> %i.dt, i64 6
  br i1 %i.ew, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  %i.ex = getelementptr i8, ptr %.4, i64 %index196
  %i.ey = getelementptr i8, ptr %i.ex, i64 6
  %i.ez = extractelement <16 x i8> %wide.load197, i64 6
  %i.fa = add nsw i8 %i.ez, -32
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !14
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.fb = extractelement <16 x i1> %i.dt, i64 7
  br i1 %i.fb, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  %i.fc = getelementptr i8, ptr %.4, i64 %index196
  %i.fd = getelementptr i8, ptr %i.fc, i64 7
  %i.fe = extractelement <16 x i8> %wide.load197, i64 7
  %i.ff = add nsw i8 %i.fe, -32
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !14
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.fg = extractelement <16 x i1> %i.dt, i64 8
  br i1 %i.fg, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  %i.fh = getelementptr i8, ptr %.4, i64 %index196
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = extractelement <16 x i8> %wide.load197, i64 8
  %i.fk = add nsw i8 %i.fj, -32
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !14
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.fl = extractelement <16 x i1> %i.dt, i64 9
  br i1 %i.fl, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  %i.fm = getelementptr i8, ptr %.4, i64 %index196
  %i.fn = getelementptr i8, ptr %i.fm, i64 9
  %i.fo = extractelement <16 x i8> %wide.load197, i64 9
  %i.fp = add nsw i8 %i.fo, -32
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !14
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.fq = extractelement <16 x i1> %i.dt, i64 10
  br i1 %i.fq, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.fr = getelementptr i8, ptr %.4, i64 %index196
  %i.fs = getelementptr i8, ptr %i.fr, i64 10
  %i.ft = extractelement <16 x i8> %wide.load197, i64 10
  %i.fu = add nsw i8 %i.ft, -32
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !14
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.fv = extractelement <16 x i1> %i.dt, i64 11
  br i1 %i.fv, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  %i.fw = getelementptr i8, ptr %.4, i64 %index196
  %i.fx = getelementptr i8, ptr %i.fw, i64 11
  %i.fy = extractelement <16 x i8> %wide.load197, i64 11
  %i.fz = add nsw i8 %i.fy, -32
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !14
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.ga = extractelement <16 x i1> %i.dt, i64 12
  br i1 %i.ga, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  %i.gb = getelementptr i8, ptr %.4, i64 %index196
  %i.gc = getelementptr i8, ptr %i.gb, i64 12
  %i.gd = extractelement <16 x i8> %wide.load197, i64 12
  %i.ge = add nsw i8 %i.gd, -32
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !14
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.gf = extractelement <16 x i1> %i.dt, i64 13
  br i1 %i.gf, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  %i.gg = getelementptr i8, ptr %.4, i64 %index196
  %i.gh = getelementptr i8, ptr %i.gg, i64 13
  %i.gi = extractelement <16 x i8> %wide.load197, i64 13
  %i.gj = add nsw i8 %i.gi, -32
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !14
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.gk = extractelement <16 x i1> %i.dt, i64 14
  br i1 %i.gk, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  %i.gl = getelementptr i8, ptr %.4, i64 %index196
  %i.gm = getelementptr i8, ptr %i.gl, i64 14
  %i.gn = extractelement <16 x i8> %wide.load197, i64 14
  %i.go = add nsw i8 %i.gn, -32
  store i8 %i.go, ptr %i.gm, align 1, !tbaa !14
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.gp = extractelement <16 x i1> %i.dt, i64 15
  br i1 %i.gp, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  %i.gq = getelementptr i8, ptr %.4, i64 %index196
  %i.gr = getelementptr i8, ptr %i.gq, i64 15
  %i.gs = extractelement <16 x i8> %wide.load197, i64 15
  %i.gt = add nsw i8 %i.gs, -32
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !14
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %index.next228 = add nuw i64 %index196, 16      ; 2 uses
  %i.gu = icmp eq i64 %index.next228, %n.vec194
  br i1 %i.gu, label %middle.block229, label %vector.body195, !llvm.loop !32

middle.block229:                                  ; preds = %pred.store.continue227
  %cmp.n230 = icmp eq i64 %n.vec194, %i.dp
  br i1 %cmp.n230, label %.loopexit.loopexit, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block229
  %i.gv = and i32 %.284, 12
  %min.epilog.iters.check235 = icmp eq i32 %i.gv, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph151.preheader, label %vec.epilog.ph236, !prof !33

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check190, %vec.epilog.iter.check234
  %vec.epilog.resume.val231 = phi i64 [ %n.vec194, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check190 ]
  %n.vec238 = and i64 %i.dp, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body239

vec.epilog.vector.body239:                        ; preds = %pred.store.continue249, %vec.epilog.ph236
  %index240 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph236 ], [ %index.next250, %pred.store.continue249 ] ; 5 uses
  %i.gw = getelementptr i8, ptr %.4, i64 %index240 ; 2 uses
  %wide.load241 = load <4 x i8>, ptr %i.gw, align 1, !tbaa !14 ; 5 uses
  %i.gx = add <4 x i8> %wide.load241, splat (i8 -97)
  %i.gy = icmp ult <4 x i8> %i.gx, splat (i8 24)  ; 4 uses
  %i.gz = extractelement <4 x i1> %i.gy, i64 0
  br i1 %i.gz, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %vec.epilog.vector.body239
  %i.ha = extractelement <4 x i8> %wide.load241, i64 0
  %i.hb = add nsw i8 %i.ha, -32
  store i8 %i.hb, ptr %i.gw, align 1, !tbaa !14
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %vec.epilog.vector.body239
  %i.hc = extractelement <4 x i1> %i.gy, i64 1
  br i1 %i.hc, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  %i.hd = getelementptr i8, ptr %.4, i64 %index240
  %i.he = getelementptr i8, ptr %i.hd, i64 1
  %i.hf = extractelement <4 x i8> %wide.load241, i64 1
  %i.hg = add nsw i8 %i.hf, -32
  store i8 %i.hg, ptr %i.he, align 1, !tbaa !14
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.hh = extractelement <4 x i1> %i.gy, i64 2
  br i1 %i.hh, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  %i.hi = getelementptr i8, ptr %.4, i64 %index240
  %i.hj = getelementptr i8, ptr %i.hi, i64 2
  %i.hk = extractelement <4 x i8> %wide.load241, i64 2
  %i.hl = add nsw i8 %i.hk, -32
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !14
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %i.hm = extractelement <4 x i1> %i.gy, i64 3
  br i1 %i.hm, label %pred.store.if248, label %pred.store.continue249

pred.store.if248:                                 ; preds = %pred.store.continue247
  %i.hn = getelementptr i8, ptr %.4, i64 %index240
  %i.ho = getelementptr i8, ptr %i.hn, i64 3
  %i.hp = extractelement <4 x i8> %wide.load241, i64 3
  %i.hq = add nsw i8 %i.hp, -32
  store i8 %i.hq, ptr %i.ho, align 1, !tbaa !14
  br label %pred.store.continue249

pred.store.continue249:                           ; preds = %pred.store.if248, %pred.store.continue247
  %index.next250 = add nuw i64 %index240, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next250, %n.vec238
  br i1 %i.hr, label %vec.epilog.middle.block251, label %vec.epilog.vector.body239, !llvm.loop !34

vec.epilog.middle.block251:                       ; preds = %pred.store.continue249
  %cmp.n252 = icmp eq i64 %n.vec238, %i.dp
  br i1 %cmp.n252, label %.loopexit.loopexit, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block251
  %.381150.ph = phi i64 [ 0, %iter.check232 ], [ %n.vec194, %vec.epilog.iter.check234 ], [ %n.vec238, %vec.epilog.middle.block251 ]
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %bb.w
  %.381150 = phi i64 [ %i.hv, %bb.w ], [ %.381150.ph, %.lr.ph151.preheader ] ; 2 uses
  %i.hs = getelementptr i8, ptr %.4, i64 %.381150 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !14  ; 2 uses
  %i.hu = add i8 %i.ht, -97
  %or.cond = icmp ult i8 %i.hu, 24
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph151
  %narrow = add nsw i8 %i.ht, -32
  store i8 %narrow, ptr %i.hs, align 1, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph151, %bb.v
  %i.hv = add nuw nsw i64 %.381150, 1             ; 2 uses
  %exitcond156.not = icmp eq i64 %i.hv, %i.dp
  br i1 %exitcond156.not, label %.loopexit.loopexit, label %.lr.ph151, !llvm.loop !35

.loopexit.loopexit:                               ; preds = %bb.w, %vec.epilog.middle.block251, %middle.block229
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %Py_DECREF.exit109
  %5 = phi ptr [ %.pre, %.loopexit.loopexit ], [ %4, %.preheader ], [ %4, %Py_DECREF.exit109 ] ; 8 uses
  %i.hw = getelementptr i8, ptr %5, i64 8
  %.val121 = load ptr, ptr %i.hw, align 8, !tbaa !36
  %i.hx = getelementptr i8, ptr %.val121, i64 168
  %.val122 = load i64, ptr %i.hx, align 8, !tbaa !37
  %i.hy = and i64 %.val122, 268435456
  %.not100 = icmp eq i64 %i.hy, 0
  br i1 %.not100, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.hz = getelementptr i8, ptr %5, i64 32
  %.val.i124 = load i32, ptr %i.hz, align 8       ; 2 uses
  %i.ia = and i32 %.val.i124, 32
  %.not.i125 = icmp eq i32 %i.ia, 0
  br i1 %.not.i125, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ib = and i32 %.val.i124, 64
  %.not.i.i126 = icmp eq i32 %i.ib, 0
  %.0.v.i.i127 = select i1 %.not.i.i126, i64 56, i64 40
  %.0.i.i128 = getelementptr i8, ptr %5, i64 %.0.v.i.i127
  br label %_PyUnicode_DATA.exit131

bb.z:                                             ; preds = %bb.x
  %i.ic = getelementptr i8, ptr %5, i64 56
  %.val4.i130 = load ptr, ptr %i.ic, align 8, !tbaa !14
  br label %_PyUnicode_DATA.exit131

_PyUnicode_DATA.exit131:                          ; preds = %bb.y, %bb.z
  %.0.i129 = phi ptr [ %.0.i.i128, %bb.y ], [ %.val4.i130, %bb.z ]
  %.not101 = icmp eq ptr %.4, %.0.i129
  br i1 %.not101, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit131, %.loopexit
  %i.id = sext i32 %.284 to i64
  %i.ie = tail call ptr @_PyUnicode_FromASCII(ptr noundef %.4, i64 noundef %i.id) #8
  store ptr %i.ie, ptr %i.a, align 8, !tbaa !11
  %i.if = load i32, ptr %5, align 8, !tbaa !14    ; 2 uses
  %.not.i104 = icmp sgt i32 %i.if, -1
  br i1 %.not.i104, label %bb.ab, label %Py_DECREF.exit105

bb.ab:                                            ; preds = %bb.aa
  %i.ig = add nsw i32 %i.if, -1                   ; 2 uses
  store i32 %i.ig, ptr %5, align 8, !tbaa !14
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ac, label %Py_DECREF.exit105

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %5) #8
  br label %Py_DECREF.exit105

bb.ad:                                            ; preds = %_PyUnicode_DATA.exit131
  %i.ii = sext i32 %.284 to i64                   ; 2 uses
  %i.ij = getelementptr i8, ptr %5, i64 16
  %.val119 = load i64, ptr %i.ij, align 8, !tbaa !15
  %.not102 = icmp eq i64 %.val119, %i.ii
  br i1 %.not102, label %Py_DECREF.exit105, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ik = call i32 @PyUnicode_Resize(ptr noundef nonnull %i.a, i64 noundef %i.ii) #8
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.af, label %Py_DECREF.exit105

bb.af:                                            ; preds = %bb.ae
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %.not103 = icmp eq ptr %i.im, null
  br i1 %.not103, label %Py_DECREF.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.in = load i32, ptr %i.im, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp sgt i32 %i.in, -1
  br i1 %.not.i, label %bb.ah, label %Py_DECREF.exit105

bb.ah:                                            ; preds = %bb.ag
  %i.io = add nsw i32 %i.in, -1                   ; 2 uses
  store i32 %i.io, ptr %i.im, align 8, !tbaa !14
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.ai, label %Py_DECREF.exit105

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.im) #8
  br label %Py_DECREF.exit105

Py_DECREF.exit105:                                ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ac, %bb.ab, %bb.aa, %bb.af, %bb.ad, %bb.ae
  %i.iq = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %Py_DECREF.exit109.thread

Py_DECREF.exit109.thread:                         ; preds = %bb.p, %bb.q, %bb.r, %switch.lookup, %Py_DECREF.exit105, %Py_DECREF.exit111, %Py_DECREF.exit113, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %Py_DECREF.exit111 ], [ %i.iq, %Py_DECREF.exit105 ], [ null, %bb.p ], [ null, %Py_DECREF.exit113 ], [ null, %switch.lookup ], [ null, %bb.r ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_ToBase(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_PyUnicode_FromASCII(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyUnicode_Resize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Format(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %2 = alloca %struct.unicode_format_arg_t, align 8 ; 24 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.unicode_formatter_t, align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 1027) #8
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.f, align 8, !tbaa !37
  %i.g = and i64 %.val2.i, 268435456
  %.not.i38 = icmp eq i64 %i.g, 0
  br i1 %.not.i38, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #8 ; 0 uses
  br label %Py_DECREF.exit

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store ptr %0, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr i8, ptr %0, i64 32
  %.val.i39 = load i32, ptr %i.k, align 8         ; 3 uses
  %i.l = and i32 %.val.i39, 32
  %.not.i40 = icmp eq i32 %i.l, 0
  br i1 %.not.i40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.m = and i32 %.val.i39, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !14
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i41 = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 8 uses
  store ptr %.0.i41, ptr %i.o, align 8, !tbaa !48
  %i.p = lshr i32 %.val.i39, 2
  %i.q = and i32 %i.p, 7
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 8 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !49
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.s, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 23 uses
  store i64 %.val, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 25 uses
  store i64 0, ptr %i.u, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 12 uses
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %i.v) #8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !50
  %i.x = add i64 %i.w, 100
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %i.x, ptr %i.y, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 3 uses
  store i8 1, ptr %i.z, align 4, !tbaa !53
  %i.aa = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val34 = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr i8, ptr %.val34, i64 168
  %.val37 = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ac = and i64 %.val37, 67108864
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ad = call i64 @PyTuple_Size(ptr noundef nonnull %1) #8
  br label %bb.g

bb.g:                                             ; preds = %_PyUnicode_DATA.exit, %bb.f
  %.sink376 = phi i64 [ %i.ad, %bb.f ], [ -1, %_PyUnicode_DATA.exit ]
  %.sink = phi i64 [ 0, %bb.f ], [ -2, %_PyUnicode_DATA.exit ]
end_hunk_0
