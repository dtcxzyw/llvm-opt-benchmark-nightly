inline.NumInlined: 11
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str = private unnamed_addr constant [26 x i8] c"../Parser/string_parser.c\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"string to parse is too long\00", align 1
@PyExc_SyntaxError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"bytes can only contain ASCII literal characters\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"u005c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\U%08x\00", align 1
@.str.5 = private unnamed_addr constant [144 x i8] c"\22\\%.3s\22 is an invalid octal escape sequence. Such sequences will not work in the future. Did you mean \22\\\\%.3s\22? A raw string is also an option.\00", align 1
@.str.6 = private unnamed_addr constant [134 x i8] c"\22\\%c\22 is an invalid escape sequence. Such sequences will not work in the future. Did you mean \22\\\\%c\22? A raw string is also an option.\00", align 1
@PyExc_SyntaxWarning = external local_unnamed_addr global ptr, align 8
@PyExc_DeprecationWarning = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [100 x i8] c"\22\\%.3s\22 is an invalid octal escape sequence. Did you mean \22\\\\%.3s\22? A raw string is also an option.\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"\22\\%c\22 is an invalid escape sequence. Did you mean \22\\\\%c\22? A raw string is also an option.\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_decode_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyUnicode_DecodeUTF8Stateful(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef null) #7
  br label %decode_unicode_with_escapes.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 1537228672809129301
  br i1 %i.d, label %decode_unicode_with_escapes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = mul nuw nsw i64 %3, 6
  %i.f = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.e) #7 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %decode_unicode_with_escapes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyBytes_AsString(ptr noundef nonnull %i.f) #7 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %decode_unicode_with_escapes.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %2, i64 %3         ; 6 uses
  %i.k = icmp ult ptr %2, %i.j
  br i1 %i.k, label %.lr.ph105.i, label %.loopexit.i

.lr.ph105.i:                                      ; preds = %bb.f
  %5 = ptrtoint ptr %i.j to i64
  br label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit69.i, %.lr.ph105.i
  %.046103.i = phi ptr [ %i.h, %.lr.ph105.i ], [ %.450.i, %Py_DECREF.exit69.i ] ; 5 uses
  %.0102.i = phi ptr [ %2, %.lr.ph105.i ], [ %.2.i, %Py_DECREF.exit69.i ] ; 3 uses
  %i.l = load i8, ptr %.0102.i, align 1, !tbaa !11 ; 2 uses
  %i.m = icmp eq i8 %i.l, 92
  br i1 %i.m, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %.0102.i, i64 1    ; 5 uses
  %i.o = getelementptr i8, ptr %.046103.i, i64 1  ; 3 uses
  store i8 92, ptr %.046103.i, align 1, !tbaa !11
  %.not.i = icmp ult ptr %i.n, %i.j
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = load i8, ptr %i.n, align 1, !tbaa !11    ; 2 uses
  %.not62.i = icmp sgt i8 %i.p, -1
  br i1 %.not62.i, label %.thread84.i, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false) #7
  %i.q = getelementptr i8, ptr %.046103.i, i64 6
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false) #7
  %i.r = getelementptr i8, ptr %.046103.i, i64 6
  br label %.loopexit.i

bb.k:                                             ; preds = %.thread.i, %bb.g
  %i.s = phi i8 [ %.pr.i, %.thread.i ], [ %i.l, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %i.n, %.thread.i ], [ %.0102.i, %bb.g ] ; 7 uses
  %.147.i = phi ptr [ %i.q, %.thread.i ], [ %.046103.i, %bb.g ] ; 5 uses
  %.not64.i = icmp sgt i8 %i.s, -1
  br i1 %.not64.i, label %.thread84.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %6 = ptrtoint ptr %.1.i to i64                  ; 3 uses
  %i.t = icmp ult ptr %.1.i, %i.j
  br i1 %i.t, label %.lr.ph.preheader.i.i, label %decode_utf8.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.u = sub i64 %5, %6
  %scevgep.i.i = getelementptr i8, ptr %.1.i, i64 %i.u
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.w, %bb.m ], [ %.1.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.v = load i8, ptr %.010.i.i, align 1, !tbaa !11
  %.not.i72.i = icmp sgt i8 %i.v, -1
  br i1 %.not.i72.i, label %.critedge.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr i8, ptr %.010.i.i, i64 1   ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.w, %i.j
  br i1 %exitcond.not.i.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !12

.critedge.loopexit.i.i:                           ; preds = %bb.m, %.lr.ph.i.i
  %.0.lcssa.ph.i.i = phi ptr [ %.010.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.m ] ; 2 uses
  %.pre.i.i = ptrtoint ptr %.0.lcssa.ph.i.i to i64
  br label %decode_utf8.exit.i

decode_utf8.exit.i:                               ; preds = %.critedge.loopexit.i.i, %bb.l
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.critedge.loopexit.i.i ], [ %6, %bb.l ]
  %.0.lcssa.i.i = phi ptr [ %.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ], [ %.1.i, %bb.l ] ; 3 uses
  %i.x = sub i64 %.pre-phi.i.i, %6
  %i.y = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %.1.i, i64 noundef %i.x, ptr noundef null) #7 ; 8 uses
  %.not65.i = icmp eq ptr %i.y, null
  br i1 %.not65.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %decode_utf8.exit.i
  %i.z = load i32, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %.not.i68.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i68.i, label %bb.o, label %decode_unicode_with_escapes.exit

bb.o:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !11
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.p, label %decode_unicode_with_escapes.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #7
  br label %decode_unicode_with_escapes.exit

bb.q:                                             ; preds = %decode_utf8.exit.i
  %i.ac = getelementptr i8, ptr %i.y, i64 32
  %i.ad = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 7
  %i.ag = and i32 %i.ad, 32
  %.not.i73.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i73.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = and i32 %i.ad, 64
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ai = getelementptr i8, ptr %i.y, i64 56
  %.val4.i.i = load ptr, ptr %i.ai, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.s, %bb.r
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.r ], [ %.val4.i.i, %bb.s ] ; 3 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  %.val.i = load i64, ptr %i.aj, align 8, !tbaa !14 ; 4 uses
  %i.ak = icmp sgt i64 %.val.i, 0
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  switch i32 %i.af, label %PyUnicode_READ.exit.i [
    i32 1, label %PyUnicode_READ.exit.us.i
    i32 2, label %PyUnicode_READ.exit.us98.i
  ]

PyUnicode_READ.exit.us.i:                         ; preds = %.lr.ph.i, %PyUnicode_READ.exit.us.i
  %.04594.us.i = phi i64 [ %i.aq, %PyUnicode_READ.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.24893.us.i = phi ptr [ %i.ap, %PyUnicode_READ.exit.us.i ], [ %.147.i, %.lr.ph.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.i.i, i64 %.04594.us.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.24893.us.i, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.an) #7 ; 0 uses
  %i.ap = getelementptr i8, ptr %.24893.us.i, i64 10 ; 2 uses
  %i.aq = add nuw nsw i64 %.04594.us.i, 1         ; 2 uses
  %exitcond114.not.i = icmp eq i64 %i.aq, %.val.i
  br i1 %exitcond114.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i, !llvm.loop !21

PyUnicode_READ.exit.us98.i:                       ; preds = %.lr.ph.i, %PyUnicode_READ.exit.us98.i
  %.04594.us96.i = phi i64 [ %i.aw, %PyUnicode_READ.exit.us98.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.24893.us97.i = phi ptr [ %i.av, %PyUnicode_READ.exit.us98.i ], [ %.147.i, %.lr.ph.i ] ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %.0.i.i, i64 %.04594.us96.i
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.at = zext i16 %i.as to i32
  %i.au = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.24893.us97.i, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.at) #7 ; 0 uses
  %i.av = getelementptr i8, ptr %.24893.us97.i, i64 10 ; 2 uses
  %i.aw = add nuw nsw i64 %.04594.us96.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.val.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us98.i, !llvm.loop !21

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.i, %PyUnicode_READ.exit.i
  %.04594.i = phi i64 [ %i.bb, %PyUnicode_READ.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.24893.i = phi ptr [ %i.ba, %PyUnicode_READ.exit.i ], [ %.147.i, %.lr.ph.i ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %.0.i.i, i64 %.04594.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.az = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.24893.i, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ay) #7 ; 0 uses
  %i.ba = getelementptr i8, ptr %.24893.i, i64 10 ; 2 uses
  %i.bb = add nuw nsw i64 %.04594.i, 1            ; 2 uses
  %exitcond115.not.i = icmp eq i64 %i.bb, %.val.i
  br i1 %exitcond115.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %PyUnicode_READ.exit.us98.i, %PyUnicode_READ.exit.us.i, %PyUnicode_READ.exit.i, %_PyUnicode_DATA.exit.i
  %.248.lcssa.i = phi ptr [ %.147.i, %_PyUnicode_DATA.exit.i ], [ %i.ap, %PyUnicode_READ.exit.us.i ], [ %i.ba, %PyUnicode_READ.exit.i ], [ %i.av, %PyUnicode_READ.exit.us98.i ] ; 3 uses
  %i.bc = load i32, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %.not.i66.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i66.i, label %bb.t, label %Py_DECREF.exit69.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.y, align 8, !tbaa !11
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.u, label %Py_DECREF.exit69.i

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #7
  br label %Py_DECREF.exit69.i

.thread84.i:                                      ; preds = %bb.k, %bb.i
  %.14789.i = phi ptr [ %.147.i, %bb.k ], [ %i.o, %bb.i ] ; 2 uses
  %.188.i = phi ptr [ %.1.i, %bb.k ], [ %i.n, %bb.i ]
  %i.bf = phi i8 [ %i.s, %bb.k ], [ %i.p, %bb.i ]
  %i.bg = getelementptr i8, ptr %.188.i, i64 1
  %i.bh = getelementptr i8, ptr %.14789.i, i64 1
  store i8 %i.bf, ptr %.14789.i, align 1, !tbaa !11
  br label %Py_DECREF.exit69.i

Py_DECREF.exit69.i:                               ; preds = %.thread84.i, %bb.u, %bb.t, %._crit_edge.i
  %.2.i = phi ptr [ %i.bg, %.thread84.i ], [ %.0.lcssa.i.i, %bb.u ], [ %.0.lcssa.i.i, %bb.t ], [ %.0.lcssa.i.i, %._crit_edge.i ] ; 2 uses
  %.450.i = phi ptr [ %i.bh, %.thread84.i ], [ %.248.lcssa.i, %bb.u ], [ %.248.lcssa.i, %bb.t ], [ %.248.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bi = icmp ult ptr %.2.i, %i.j
  br i1 %i.bi, label %bb.g, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %Py_DECREF.exit69.i, %bb.j, %bb.f
  %.5.i = phi ptr [ %i.r, %bb.j ], [ %i.h, %bb.f ], [ %.450.i, %Py_DECREF.exit69.i ]
  %i.bj = ptrtoint ptr %.5.i to i64
  %i.bk = ptrtoint ptr %i.h to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bm = call ptr @_PyUnicode_DecodeUnicodeEscapeInternal2(ptr noundef nonnull %i.h, i64 noundef %i.bl, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 7 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bp = icmp ne ptr %i.bo, null
  %or.cond.i = select i1 %i.bn, i1 %i.bp, i1 false
  %i.bq = icmp ne ptr %4, null
  %or.cond3.i = and i1 %i.bq, %or.cond.i
  br i1 %or.cond3.i, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.loopexit.i
  %i.br = call fastcc i32 @warn_invalid_escape_sequence(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %i.bo, ptr noundef nonnull %4)
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bt = load i32, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %.not.i.i75.i = icmp sgt i32 %i.bt, -1
  br i1 %.not.i.i75.i, label %bb.x, label %Py_XDECREF.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.f, align 8, !tbaa !11
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.y, label %Py_XDECREF.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #7
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.y, %bb.x, %bb.w
  %i.bw = load i32, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not.i.i, label %bb.z, label %Py_DECREF.exit.i

bb.z:                                             ; preds = %Py_XDECREF.exit.i
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bm, align 8, !tbaa !11
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %Py_DECREF.exit.sink.split.i, label %Py_DECREF.exit.i

bb.aa:                                            ; preds = %bb.v, %.loopexit.i
  %i.bz = load i32, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %.not.i.i76.i = icmp sgt i32 %i.bz, -1
  br i1 %.not.i.i76.i, label %bb.ab, label %Py_DECREF.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.f, align 8, !tbaa !11
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %Py_DECREF.exit.sink.split.i, label %Py_DECREF.exit.i

Py_DECREF.exit.sink.split.i:                      ; preds = %bb.ab, %bb.z
  %.sink.i = phi ptr [ %i.bm, %bb.z ], [ %i.f, %bb.ab ]
  %.3.ph.i = phi ptr [ null, %bb.z ], [ %i.bm, %bb.ab ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #7
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %Py_DECREF.exit.sink.split.i, %bb.ab, %bb.aa, %bb.z, %Py_XDECREF.exit.i
  %.3.i = phi ptr [ %i.bm, %bb.ab ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.z ], [ %i.bm, %bb.aa ], [ %.3.ph.i, %Py_DECREF.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %decode_unicode_with_escapes.exit

decode_unicode_with_escapes.exit:                 ; preds = %Py_DECREF.exit.i, %bb.p, %bb.o, %bb.n, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ %.3.i, %Py_DECREF.exit.i ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ]
  ret ptr %.0
}

declare ptr @PyUnicode_DecodeUTF8Stateful(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_parse_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_PyPegen_parse_string:bb.a
bb.h:                                             ; preds = %bb.g
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 303) #7
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %i.r, 3
  br i1 %i.v, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.n, align 1, !tbaa !11
  %i.x = sext i8 %i.w to i32
  %i.y = icmp eq i32 %.273, %i.x
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.277, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = sext i8 %i.aa to i32
  %i.ac = icmp eq i32 %.273, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %.277, i64 3      ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.o
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = sext i8 %i.ag to i32
  %.not89 = icmp eq i32 %.273, %i.ah
  br i1 %.not89, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i64 %i.o, -5                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = sext i8 %i.ak to i32
  %.not90 = icmp eq i32 %.273, %i.al
  br i1 %.not90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 314) #7
  br label %bb.w

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i
  %.3 = phi ptr [ %i.ad, %bb.m ], [ %i.n, %bb.k ], [ %i.n, %bb.j ], [ %i.n, %bb.i ] ; 6 uses
  %.074 = phi i64 [ %i.ai, %bb.m ], [ %i.r, %bb.k ], [ %i.r, %bb.j ], [ %i.r, %bb.i ] ; 3 uses
  br i1 %.2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.3, i32 noundef 92) #8
  %i.an = icmp eq ptr %i.am, null
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = phi i1 [ true, %bb.o ], [ %i.an, %bb.p ] ; 2 uses
  br i1 %.270, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.ap = load i8, ptr %.3, align 1, !tbaa !11    ; 2 uses
  %.not93101 = icmp eq i8 %i.ap, 0
  br i1 %.not93101, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.aq = getelementptr i8, ptr %.0102, i64 1     ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11  ; 2 uses
  %.not93 = icmp eq i8 %i.ar, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %i.as = phi i8 [ %i.ar, %bb.r ], [ %i.ap, %.preheader ]
  %.0102 = phi ptr [ %i.aq, %bb.r ], [ %.3, %.preheader ]
  %i.at = icmp slt i8 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.r

bb.s:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !30
  %i.av = getelementptr i8, ptr %1, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %1, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !33
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %1, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !34
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %1, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !35
  %i.bg = sext i32 %i.bf to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %i.au, i64 noundef %i.ax, i64 noundef %i.ba, i64 noundef %i.bd, i64 noundef %i.bg, ptr noundef nonnull @.str.2)
  br label %bb.w

._crit_edge:                                      ; preds = %bb.r, %.preheader
  br i1 %i.ao, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.bh = tail call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %.3, i64 noundef %.074) #7
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge
  %i.bi = tail call fastcc ptr @decode_bytes_with_escapes(ptr noundef %0, ptr noundef nonnull %.3, i64 noundef %.074, ptr noundef %1)
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bj = zext i1 %i.ao to i32
  %i.bk = tail call ptr @_PyPegen_decode_string(ptr noundef %0, i32 noundef %i.bj, ptr noundef %.3, i64 noundef %.074, ptr noundef %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.n, %bb.v, %bb.u, %bb.t, %bb.s, %bb.a
  %.280 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.n ], [ %i.bk, %bb.v ], [ null, %bb.s ], [ %i.bh, %bb.t ], [ %i.bi, %bb.u ]
  ret ptr %.280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #1

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i64 noundef range(i64 -2147483648, 2147483648) %5, ptr noundef %6, ...) unnamed_addr #4 {
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.va_start.p0(ptr nonnull %7)
  %i.a = icmp eq i64 %3, -5
  %i.b = add nsw i64 %3, 1
  %i.c = select i1 %i.a, i64 -5, i64 %i.b
  %i.d = icmp eq i64 %5, -5
  %i.e = add nsw i64 %5, 1
  %i.f = select i1 %i.d, i64 -5, i64 %i.e
  %i.g = call ptr @_PyPegen_raise_error_known_location(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %4, i64 noundef %i.f, ptr noundef %6, ptr noundef nonnull %7) #7 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret void
}

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decode_bytes_with_escapes(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -5, 2147483647) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call ptr @_PyBytes_DecodeEscape2(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc i32 @warn_invalid_escape_sequence(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, ptr noundef %3)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @_PyUnicode_DecodeUnicodeEscapeInternal2(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @warn_invalid_escape_sequence(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = ptrtoint ptr %1 to i64                     ; 2 uses
  %5 = ptrtoint ptr %2 to i64                     ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %Py_DECREF.exit92

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !11      ; 3 uses
  %i.d = load i32, ptr %3, align 8, !tbaa !47
  switch i32 %i.d, label %bb.d [
    i32 60, label %bb.c
    i32 61, label %bb.c
    i32 63, label %bb.c
    i32 64, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  switch i8 %i.c, label %bb.d [
    i8 125, label %Py_DECREF.exit92
    i8 123, label %Py_DECREF.exit92
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = zext i8 %i.c to i32                      ; 4 uses
  %i.f = and i8 %i.c, -4
  %i.g = icmp eq i8 %i.f, 52                      ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.6, i32 noundef %i.e, i32 noundef %i.e) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.i, %bb.f ] ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit92, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %0, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !48
  %i.n = icmp sgt i32 %i.m, 11
  %PyExc_SyntaxWarning.val = load ptr, ptr @PyExc_SyntaxWarning, align 8
  %PyExc_DeprecationWarning.val = load ptr, ptr @PyExc_DeprecationWarning, align 8
  %.084 = select i1 %i.n, ptr %PyExc_SyntaxWarning.val, ptr %PyExc_DeprecationWarning.val ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 4 uses
  %i.q = getelementptr i8, ptr %3, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !33   ; 3 uses
  %i.s = icmp ult ptr %1, %2
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.t = sub i64 %5, %4
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.07897.prol = phi i32 [ %.179.prol, %.lr.ph.prol ], [ %i.r, %.lr.ph.preheader ]
  %.08196.prol = phi i32 [ %.182.prol, %.lr.ph.prol ], [ %i.p, %.lr.ph.preheader ]
  %.08395.prol = phi ptr [ %i.y, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = load i8, ptr %.08395.prol, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 10                      ; 2 uses
  %i.w = add i32 %.07897.prol, 1
  %i.x = zext i1 %i.v to i32
  %.182.prol = add i32 %.08196.prol, %i.x         ; 3 uses
  %.179.prol = select i1 %i.v, i32 0, i32 %i.w    ; 3 uses
  %i.y = getelementptr i8, ptr %.08395.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !49

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.182.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.182.prol, %.lr.ph.prol ]
  %.179.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.179.prol, %.lr.ph.prol ]
  %.07897.unr = phi i32 [ %i.r, %.lr.ph.preheader ], [ %.179.prol, %.lr.ph.prol ]
  %.08196.unr = phi i32 [ %i.p, %.lr.ph.preheader ], [ %.182.prol, %.lr.ph.prol ]
  %.08395.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %i.z = sub i64 %4, %5
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07897 = phi i32 [ %.179.3, %.lr.ph ], [ %.07897.unr, %.lr.ph.prol.loopexit ]
  %.08196 = phi i32 [ %.182.3, %.lr.ph ], [ %.08196.unr, %.lr.ph.prol.loopexit ]
  %.08395 = phi ptr [ %i.au, %.lr.ph ], [ %.08395.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ab = load i8, ptr %.08395, align 1, !tbaa !11
  %i.ac = icmp eq i8 %i.ab, 10                    ; 2 uses
  %i.ad = zext i1 %i.ac to i32
  %.182 = add i32 %.08196, %i.ad
  %i.ae = getelementptr i8, ptr %.08395, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = icmp eq i8 %i.af, 10                    ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %.182.1 = add i32 %.182, %i.ah
  %i.ai = getelementptr i8, ptr %.08395, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = icmp eq i8 %i.aj, 10                    ; 2 uses
  %i.al = zext i1 %i.ak to i32
  %.182.2 = add i32 %.182.1, %i.al
  %i.am = getelementptr i8, ptr %.08395, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %i.ao = icmp eq i8 %i.an, 10                    ; 2 uses
  %i.ap = add i32 %.07897, 4
  %i.aq = select i1 %i.ac, i32 3, i32 %i.ap
  %i.ar = select i1 %i.ag, i32 2, i32 %i.aq
  %i.as = select i1 %i.ak, i32 1, i32 %i.ar
  %i.at = zext i1 %i.ao to i32
  %.182.3 = add i32 %.182.2, %i.at                ; 2 uses
  %.179.3 = select i1 %i.ao, i32 0, i32 %i.as     ; 2 uses
  %i.au = getelementptr i8, ptr %.08395, i64 4    ; 2 uses
  %exitcond.not.3 = icmp eq ptr %i.au, %2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.182.lcssa = phi i32 [ %.182.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.182.3, %.lr.ph ] ; 3 uses
  %.179.lcssa = phi i32 [ %.179.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.179.3, %.lr.ph ] ; 2 uses
  %i.av = icmp eq i32 %.182.lcssa, %i.p
  br i1 %i.av, label %._crit_edge.thread, label %bb.j

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge
  %.078.lcssa116 = phi i32 [ %.179.lcssa, %._crit_edge ], [ %i.r, %bb.h ]
  %.081.lcssa115 = phi i32 [ %.182.lcssa, %._crit_edge ], [ %i.p, %bb.h ]
  %i.aw = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = tail call ptr @PyBytes_AsString(ptr noundef %i.ax) #7
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ba = tail call i64 @PyBytes_Size(ptr noundef %i.az) #7
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge.thread, %bb.i
  %i.bc = phi i64 [ %i.bj, %bb.i ], [ 0, %._crit_edge.thread ]
  %.0101 = phi i32 [ %i.bi, %bb.i ], [ 0, %._crit_edge.thread ]
  %.074100 = phi i32 [ %spec.select, %bb.i ], [ 0, %._crit_edge.thread ] ; 3 uses
  %.07699 = phi i8 [ %spec.select94, %bb.i ], [ 0, %._crit_edge.thread ]
  %i.bd = getelementptr i8, ptr %i.ay, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11  ; 3 uses
  switch i8 %i.be, label %._crit_edge104 [
    i8 39, label %bb.i
    i8 34, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph103, %.lr.ph103
  %i.bf = icmp eq i32 %.074100, 0
  %spec.select94 = select i1 %i.bf, i8 %i.be, i8 %.07699 ; 2 uses
  %i.bg = icmp eq i8 %i.be, %spec.select94
  %i.bh = zext i1 %i.bg to i32
  %spec.select = add i32 %.074100, %i.bh          ; 2 uses
  %i.bi = add i32 %.0101, 1                       ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.bl = tail call i64 @PyBytes_Size(ptr noundef %i.bk) #7
  %i.bm = icmp sgt i64 %i.bl, %i.bj
  br i1 %i.bm, label %.lr.ph103, label %._crit_edge104, !llvm.loop !52

._crit_edge104:                                   ; preds = %bb.i, %.lr.ph103, %._crit_edge.thread
  %.074.lcssa = phi i32 [ 0, %._crit_edge.thread ], [ %.074100, %.lr.ph103 ], [ %spec.select, %bb.i ]
  %i.bn = add i32 %.074.lcssa, %.078.lcssa116
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge104, %._crit_edge
  %.081.lcssa114 = phi i32 [ %.081.lcssa115, %._crit_edge104 ], [ %.182.lcssa, %._crit_edge ] ; 2 uses
  %.280 = phi i32 [ %i.bn, %._crit_edge104 ], [ %.179.lcssa, %._crit_edge ] ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 2336
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.br = getelementptr i8, ptr %i.bo, i64 2344
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = tail call i32 @PyErr_WarnExplicitObject(ptr noundef %.084, ptr noundef nonnull %i.j, ptr noundef %i.bq, i32 noundef %.081.lcssa114, ptr noundef %i.bs, ptr noundef null) #7
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call i32 @PyErr_ExceptionMatches(ptr noundef %.084) #7
  %.not90 = icmp eq i32 %i.bv, 0
  br i1 %.not90, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @PyErr_Clear() #7
  %i.bw = getelementptr i8, ptr %0, i64 136
  store ptr %3, ptr %i.bw, align 8, !tbaa !58
  %i.bx = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !30 ; 2 uses
  %i.by = sext i32 %.081.lcssa114 to i64          ; 4 uses
  %i.bz = add i32 %.280, -1
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = add i32 %.280, 1
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.g, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.bx, i64 noundef %i.by, i64 noundef %i.ca, i64 noundef %i.by, i64 noundef %i.cc, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, ptr noundef nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.bx, i64 noundef %i.by, i64 noundef %i.ca, i64 noundef %i.by, i64 noundef %i.cc, ptr noundef nonnull @.str.8, i32 noundef %i.e, i32 noundef %i.e)
end_hunk_1
