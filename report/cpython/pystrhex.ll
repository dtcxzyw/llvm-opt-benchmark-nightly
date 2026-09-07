Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pystrhex?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"sep must be length 1.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sep must be ASCII.\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"sep must be str or bytes.\00", align 1
@Py_hexdigits = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_strhex(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  %.not136.i = icmp slt i64 %1, 4611686018427387903
  br i1 %.not136.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyErr_NoMemory() #6
  br label %_Py_strhex_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = shl i64 %1, 1
  %i.d = tail call ptr @PyUnicode_New(i64 noundef %i.c, i32 noundef 127) #6 ; 9 uses
  %.not139.i = icmp eq ptr %i.d, null
  br i1 %.not139.i, label %_Py_strhex_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val.i.i = load i32, ptr %i.e, align 8         ; 2 uses
  %i.f = and i32 %.val.i.i, 32
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i145.i = getelementptr i8, ptr %i.d, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.d, i64 56
  %.val4.i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.f, %bb.e
  %.0112.i = phi ptr [ %.val4.i.i, %bb.f ], [ %.0.i.i145.i, %bb.e ] ; 3 uses
  %i.i = icmp sgt i64 %1, 15
  br i1 %i.i, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %_PyUnicode_DATA.exit.i, %.preheader.i
  %i.j = phi i64 [ %i.z, %.preheader.i ], [ 16, %_PyUnicode_DATA.exit.i ] ; 4 uses
  %.038.i.i = phi ptr [ %i.y, %.preheader.i ], [ %.0112.i, %_PyUnicode_DATA.exit.i ] ; 3 uses
  %.03437.i.i = phi i64 [ %i.j, %.preheader.i ], [ 0, %_PyUnicode_DATA.exit.i ]
  %i.k = getelementptr i8, ptr %0, i64 %.03437.i.i
  %.0.copyload13.i.i = load <16 x i8>, ptr %i.k, align 1 ; 3 uses
  %i.l = lshr <16 x i8> %.0.copyload13.i.i, splat (i8 4)
  %i.m = and <16 x i8> %.0.copyload13.i.i, splat (i8 15) ; 2 uses
  %i.n = icmp ugt <16 x i8> %.0.copyload13.i.i, splat (i8 -97)
  %i.o = icmp samesign ugt <16 x i8> %i.m, splat (i8 9)
  %i.p = or disjoint <16 x i8> %i.l, splat (i8 48)
  %i.q = select <16 x i1> %i.n, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.r = add nuw nsw <16 x i8> %i.p, %i.q         ; 2 uses
  %i.s = or disjoint <16 x i8> %i.m, splat (i8 48)
  %i.t = select <16 x i1> %i.o, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.u = add nuw nsw <16 x i8> %i.t, %i.s         ; 2 uses
  %i.v = shufflevector <16 x i8> %i.r, <16 x i8> %i.u, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.w = shufflevector <16 x i8> %i.r, <16 x i8> %i.u, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.v, ptr %.038.i.i, align 1
  %i.x = getelementptr i8, ptr %.038.i.i, i64 16
  store <16 x i8> %i.w, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %.038.i.i, i64 32  ; 2 uses
  %i.z = add nuw nsw i64 %i.j, 16                 ; 2 uses
  %.not.i147.i = icmp samesign ugt i64 %i.z, %1
  br i1 %.not.i147.i, label %bb.g, label %.preheader.i, !llvm.loop !0

bb.g:                                             ; preds = %.preheader.i
  %i.aa = getelementptr i8, ptr %0, i64 %i.j
  %i.ab = sub nsw i64 %1, %i.j                    ; 2 uses
  %2 = icmp sgt i64 %i.ab, 0
  br i1 %2, label %.lr.ph.i.i.i, label %_Py_strhex_impl.exit

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %.089.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %.089.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.af = zext i8 %i.ad to i32                    ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = getelementptr i8, ptr %.010.i.i.i, i64 1
  store i8 %i.aj, ptr %.010.i.i.i, align 1, !tbaa !13
  %i.al = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.am = and i32 %i.af, 15
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = getelementptr i8, ptr %.010.i.i.i, i64 2
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !13
  %i.ar = add nuw nsw i64 %.089.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, %i.ab
  br i1 %exitcond.not.i.i.i, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.i, !llvm.loop !1

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.i
  br i1 %i.a, label %.lr.ph.i.i.preheader, label %_Py_strhex_impl.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %xtraiter = and i64 %1, 1
  %i.as = icmp eq i64 %1, 1
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi ptr [ %.0112.i, %.lr.ph.i.i.preheader.new ], [ %i.bx, %.lr.ph.i.i ] ; 5 uses
  %.089.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.at = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.aw = zext i8 %i.au to i32                    ; 2 uses
  %i.ax = lshr i32 %i.aw, 4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.ba, ptr %.010.i.i, align 1, !tbaa !13
  %i.bc = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bd = and i32 %i.aw, 15
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.bc, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !13
  %i.bi = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bm = zext i8 %i.bk to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %i.bl, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = getelementptr i8, ptr %.010.i.i, i64 3
  store i8 %i.bq, ptr %i.bh, align 1, !tbaa !13
  %i.bs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bt = and i32 %i.bm, 15
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.bs, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = getelementptr i8, ptr %.010.i.i, i64 4  ; 2 uses
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !13
  %i.by = add nuw nsw i64 %.089.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Py_strhex_impl.exit.loopexit12.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_Py_strhex_impl.exit.loopexit12.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Py_strhex_impl.exit.loopexit12.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi ptr [ %.0112.i, %.lr.ph.i.i.preheader ], [ %i.bx, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.by, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.bz = getelementptr i8, ptr %0, i64 %.089.i.i.epil.init
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cc = zext i8 %i.ca to i32                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.cb, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = getelementptr i8, ptr %.010.i.i.epil.init, i64 1
  store i8 %i.cg, ptr %.010.i.i.epil.init, align 1, !tbaa !13
  %i.ci = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cj = and i32 %i.cc, 15
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  store i8 %i.cm, ptr %i.ch, align 1, !tbaa !13
  br label %_Py_strhex_impl.exit

_Py_strhex_impl.exit:                             ; preds = %.lr.ph.i.i.epil.preheader, %_Py_strhex_impl.exit.loopexit12.unr-lcssa, %.lr.ph.i.i.i, %bb.b, %bb.c, %bb.g, %bb.h
  %.3123.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.b, %bb.b ], [ null, %bb.c ], [ %i.d, %bb.g ], [ %i.d, %bb.h ], [ %i.d, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ], [ %i.d, %.lr.ph.i.i.epil.preheader ]
  ret ptr %.3123.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_Py_strhex_impl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread154, label %bb.b

.thread154:                                       ; preds = %bb.a
  %i.a = icmp sgt i64 %1, 0
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @PyObject_Size(ptr noundef nonnull %2) #6 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not132 = icmp eq i64 %i.b, 1
  br i1 %.not132, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str) #6
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val142 = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr i8, ptr %.val142, i64 168
  %.val144 = load i64, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.g = and i64 %.val144, 268435456
  %.not133 = icmp eq i64 %i.g, 0
  br i1 %.not133, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = and i32 %i.i, 28
  %.not135 = icmp eq i32 %i.j, 4
  br i1 %.not135, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.1) #6
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.l = and i32 %i.i, 32
  %.not.i19.i = icmp eq i32 %i.l, 0
  br i1 %.not.i19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %i.i, 64
  %.not.i.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.n = getelementptr i8, ptr %2, i64 56
  %.val4.i.i = load ptr, ptr %i.n, align 8, !tbaa !13
  br label %_PyUnicode_DATA.exit.i

bb.k:                                             ; preds = %bb.e
  %i.o = and i64 %.val144, 134217728
  %.not134 = icmp eq i64 %i.o, 0
  br i1 %.not134, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr i8, ptr %2, i64 32
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.2) #6
  br label %.critedge

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.j, %bb.l
  %.0117.in = phi ptr [ %i.p, %bb.l ], [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %.0117 = load i8, ptr %.0117.in, align 1, !tbaa !13 ; 3 uses
  %i.r = icmp sgt i8 %.0117, -1
  %i.s = icmp ne i32 %4, 0
  %or.cond = or i1 %i.s, %i.r
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.1) #6
  br label %.critedge

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %spec.select160 = tail call i32 @llvm.abs.i32(i32 %3, i1 false) ; 3 uses
  %i.u = icmp ne i32 %3, 0
  %i.v = icmp sgt i64 %1, 0                       ; 2 uses
  %or.cond3 = and i1 %i.v, %i.u
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = add nsw i64 %1, -1
  %i.x = zext i32 %spec.select160 to i64
  %i.y = udiv i64 %i.w, %i.x
  br label %bb.q

bb.q:                                             ; preds = %.thread154, %bb.p, %bb.o
  %i.z = phi i1 [ true, %bb.p ], [ %i.v, %bb.o ], [ %i.a, %.thread154 ]
  %i.aa = phi i32 [ %spec.select160, %bb.p ], [ %spec.select160, %bb.o ], [ 0, %.thread154 ] ; 2 uses
  %.0124150159 = phi i32 [ %3, %bb.p ], [ %3, %bb.o ], [ 0, %.thread154 ]
  %.2119152158 = phi i8 [ %.0117, %bb.p ], [ %.0117, %bb.o ], [ 0, %.thread154 ] ; 4 uses
  %.0114 = phi i64 [ %i.y, %bb.p ], [ 0, %bb.o ], [ 0, %.thread154 ] ; 2 uses
  %i.ab = sub nsw i64 4611686018427387903, %.0114
  %.not136 = icmp slt i64 %1, %i.ab
  br i1 %.not136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = tail call ptr @PyErr_NoMemory() #6
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ad = shl i64 %1, 1
  %i.ae = add i64 %.0114, %i.ad                   ; 4 uses
  %i.af = zext i32 %i.aa to i64
  %.not137 = icmp ugt i64 %1, %i.af               ; 2 uses
  %spec.select = select i1 %.not137, i32 %.0124150159, i32 0 ; 2 uses
  %spec.select141 = select i1 %.not137, i32 %i.aa, i32 0 ; 10 uses
  %.not138 = icmp eq i32 %4, 0
  br i1 %.not138, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ae) #6 ; 3 uses
  %.not140 = icmp eq ptr %i.ag, null
  br i1 %.not140, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  br label %_PyUnicode_DATA.exit

bb.v:                                             ; preds = %bb.s
  %i.ai = tail call ptr @PyUnicode_New(i64 noundef %i.ae, i32 noundef 127) #6 ; 6 uses
  %.not139 = icmp eq ptr %i.ai, null
  br i1 %.not139, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.val.i = load i32, ptr %i.aj, align 8          ; 2 uses
  %i.ak = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.al, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i145 = getelementptr i8, ptr %i.ai, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.y:                                             ; preds = %bb.w
  %i.am = getelementptr i8, ptr %i.ai, i64 56
  %.val4.i = load ptr, ptr %i.am, align 8, !tbaa !13
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.y, %bb.x, %bb.u
  %.0113 = phi ptr [ %i.ag, %bb.u ], [ %i.ai, %bb.x ], [ %i.ai, %bb.y ] ; 11 uses
  %.0112 = phi ptr [ %i.ah, %bb.u ], [ %.0.i.i145, %bb.x ], [ %.val4.i, %bb.y ] ; 19 uses
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ao = icmp sgt i64 %1, 15
  br i1 %i.ao, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.z, %.preheader
  %i.ap = phi i64 [ %i.bf, %.preheader ], [ 16, %bb.z ] ; 4 uses
  %.038.i = phi ptr [ %i.be, %.preheader ], [ %.0112, %bb.z ] ; 3 uses
  %.03437.i = phi i64 [ %i.ap, %.preheader ], [ 0, %bb.z ]
  %i.aq = getelementptr i8, ptr %0, i64 %.03437.i
  %.0.copyload13.i = load <16 x i8>, ptr %i.aq, align 1 ; 3 uses
  %i.ar = lshr <16 x i8> %.0.copyload13.i, splat (i8 4)
  %i.as = and <16 x i8> %.0.copyload13.i, splat (i8 15) ; 2 uses
  %i.at = icmp ugt <16 x i8> %.0.copyload13.i, splat (i8 -97)
  %i.au = icmp samesign ugt <16 x i8> %i.as, splat (i8 9)
  %i.av = or disjoint <16 x i8> %i.ar, splat (i8 48)
  %i.aw = select <16 x i1> %i.at, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.ax = add nuw nsw <16 x i8> %i.av, %i.aw      ; 2 uses
  %i.ay = or disjoint <16 x i8> %i.as, splat (i8 48)
  %i.az = select <16 x i1> %i.au, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.ba = add nuw nsw <16 x i8> %i.az, %i.ay      ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bb, ptr %.038.i, align 1
  %i.bd = getelementptr i8, ptr %.038.i, i64 16
  store <16 x i8> %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %.038.i, i64 32   ; 2 uses
  %i.bf = add nuw nsw i64 %i.ap, 16               ; 2 uses
  %.not.i147 = icmp samesign ugt i64 %i.bf, %1
  br i1 %.not.i147, label %bb.aa, label %.preheader, !llvm.loop !0

bb.aa:                                            ; preds = %.preheader
  %i.bg = getelementptr i8, ptr %0, i64 %i.ap
  %i.bh = sub nsw i64 %1, %i.ap                   ; 2 uses
  %5 = icmp sgt i64 %i.bh, 0
  br i1 %5, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.be, %bb.aa ] ; 3 uses
  %.089.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 %.089.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bl = zext i8 %i.bj to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 4
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.bp, ptr %.010.i.i, align 1, !tbaa !13
  %i.br = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bs = and i32 %i.bl, 15
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.br, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !13
  %i.bx = add nuw nsw i64 %.089.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.bh
  br i1 %exitcond.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !1

bb.ab:                                            ; preds = %bb.z
  br i1 %i.z, label %.lr.ph.i.preheader, label %.critedge

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %xtraiter267 = and i64 %1, 1
  %i.by = icmp eq i64 %1, 1
  br i1 %i.by, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter270 = and i64 %1, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi ptr [ %.0112, %.lr.ph.i.preheader.new ], [ %i.dd, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.de, %.lr.ph.i ] ; 3 uses
  %niter271 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter271.next.1, %.lr.ph.i ]
  %i.bz = getelementptr i8, ptr %0, i64 %.089.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cc = zext i8 %i.ca to i32                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.cb, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = getelementptr i8, ptr %.010.i, i64 1
  store i8 %i.cg, ptr %.010.i, align 1, !tbaa !13
  %i.ci = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cj = and i32 %i.cc, 15
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = getelementptr i8, ptr %.010.i, i64 2
  store i8 %i.cm, ptr %i.ch, align 1, !tbaa !13
  %i.co = getelementptr i8, ptr %0, i64 %.089.i
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cs = zext i8 %i.cq to i32                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 4
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %i.cr, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = getelementptr i8, ptr %.010.i, i64 3
  store i8 %i.cw, ptr %i.cn, align 1, !tbaa !13
  %i.cy = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cz = and i32 %i.cs, 15
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr i8, ptr %i.cy, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = getelementptr i8, ptr %.010.i, i64 4    ; 2 uses
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !13
  %i.de = add nuw nsw i64 %.089.i, 2              ; 2 uses
  %niter271.next.1 = add i64 %niter271, 2         ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %.critedge.loopexit249.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit
  %i.df = add i64 %1, -1                          ; 4 uses
  %i.dg = zext i32 %spec.select141 to i64
  %i.dh = sdiv i64 %i.df, %i.dg                   ; 9 uses
  %i.di = icmp slt i32 %spec.select, 0
  br i1 %i.di, label %.preheader165, label %.preheader169

.preheader169:                                    ; preds = %bb.ac
  %.3175 = add i64 %i.ae, -1                      ; 3 uses
  %i.dj = icmp sgt i64 %i.dh, 0
  br i1 %i.dj, label %.preheader168.lr.ph, label %.preheader166

.preheader168.lr.ph:                              ; preds = %.preheader169
  %.not201 = icmp eq i32 %spec.select141, 0
  br i1 %.not201, label %.preheader168.preheader, label %.preheader168.us.preheader

.preheader168.us.preheader:                       ; preds = %.preheader168.lr.ph
  %xtraiter = and i32 %spec.select141, 1
  %i.dk = icmp eq i32 %spec.select141, 1
  %unroll_iter = and i32 %spec.select141, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod260 = trunc i32 %spec.select141 to i1
  br label %.preheader168.us

.preheader168.preheader:                          ; preds = %.preheader168.lr.ph
  %i.dl = sub nuw nsw i64 %i.ae, %i.dh
  %scevgep = getelementptr i8, ptr %.0112, i64 %i.dl
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %.2119152158, i64 %i.dh, i1 false), !tbaa !13
  %i.dm = sub nuw nsw i64 %.3175, %i.dh
  br label %.preheader166

.preheader168.us:                                 ; preds = %.preheader168.us.preheader, %._crit_edge.us
  %.3178.us = phi i64 [ %.3.us, %._crit_edge.us ], [ %.3175, %.preheader168.us.preheader ] ; 2 uses
  %.1103177.us = phi i64 [ %i.fn, %._crit_edge.us ], [ 0, %.preheader168.us.preheader ]
  %.3109176.us = phi i64 [ %.lcssa256.a, %._crit_edge.us ], [ %i.df, %.preheader168.us.preheader ] ; 2 uses
  br i1 %i.dk, label %.epil.preheader, label %.preheader168.us.new

.preheader168.us.new:                             ; preds = %.preheader168.us, %.preheader168.us.new
  %.4172.us = phi i64 [ %i.et, %.preheader168.us.new ], [ %.3178.us, %.preheader168.us ] ; 3 uses
  %.4110171.us = phi i64 [ %i.ed, %.preheader168.us.new ], [ %.3109176.us, %.preheader168.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader168.us.new ], [ 0, %.preheader168.us ]
  %i.dn = getelementptr i8, ptr %0, i64 %.4110171.us
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.dq = zext i8 %i.do to i32                    ; 2 uses
  %i.dr = and i32 %i.dq, 15
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.dp, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13
  %i.dv = getelementptr i8, ptr %.0112, i64 %.4172.us ; 2 uses
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !13
  %i.dw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.dx = lshr i32 %i.dq, 4
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = add i64 %.4172.us, -2                   ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dv, i64 -1
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !13
  %i.ed = add i64 %.4110171.us, -2                ; 3 uses
  %i.ee = getelementptr i8, ptr %0, i64 %.4110171.us
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ei = zext i8 %i.eg to i32                    ; 2 uses
  %i.ej = and i32 %i.ei, 15
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.eh, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = getelementptr i8, ptr %.0112, i64 %i.eb ; 2 uses
  store i8 %i.em, ptr %i.en, align 1, !tbaa !13
  %i.eo = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ep = lshr i32 %i.ei, 4
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.eo, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %i.et = add i64 %.4172.us, -4                   ; 3 uses
  %i.eu = getelementptr i8, ptr %i.en, i64 -1
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !13
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader168.us.new, !llvm.loop !18

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader168.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader168.us
  %.4172.us.epil.init = phi i64 [ %.3178.us, %.preheader168.us ], [ %i.et, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.4110171.us.epil.init = phi i64 [ %.3109176.us, %.preheader168.us ], [ %i.ed, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod260)
  %i.ev = add i64 %.4110171.us.epil.init, -1
  %i.ew = getelementptr i8, ptr %0, i64 %.4110171.us.epil.init
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13
  %i.ey = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ez = zext i8 %i.ex to i32                    ; 2 uses
  %i.fa = and i32 %i.ez, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %i.ey, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = getelementptr i8, ptr %.0112, i64 %.4172.us.epil.init ; 2 uses
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !13
  %i.ff = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.fg = lshr i32 %i.ez, 4
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr i8, ptr %i.ff, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !13
  %i.fk = add i64 %.4172.us.epil.init, -2
  %i.fl = getelementptr i8, ptr %i.fe, i64 -1
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !13
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.4172.us.lcssa = phi i64 [ %i.eb, %._crit_edge.us.unr-lcssa ], [ %.4172.us.epil.init, %.epil.preheader ]
  %.lcssa256.a = phi i64 [ %i.ed, %._crit_edge.us.unr-lcssa ], [ %i.ev, %.epil.preheader ] ; 2 uses
  %.lcssa255 = phi i64 [ %i.et, %._crit_edge.us.unr-lcssa ], [ %i.fk, %.epil.preheader ]
  %i.fm = getelementptr i8, ptr %.0112, i64 %.lcssa255
  store i8 %.2119152158, ptr %i.fm, align 1, !tbaa !13
  %i.fn = add nuw nsw i64 %.1103177.us, 1         ; 2 uses
  %.3.us = add i64 %.4172.us.lcssa, -3            ; 2 uses
end_hunk_0
begin_hunk_1_@_Py_strhex_impl:bb.a
  %i.if = getelementptr i8, ptr %.0112, i64 %.0104.lcssa ; 2 uses
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !13
  %i.ig = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ih = and i32 %i.ia, 15
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr i8, ptr %i.ig, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !13
  %i.il = add i64 %.0104.lcssa, 2
  %i.im = getelementptr i8, ptr %i.if, i64 1
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !13
  br label %.lr.ph200.prol.loopexit

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %.2199.unr = phi i64 [ %.0104.lcssa, %.lr.ph200.preheader ], [ %i.il, %.lr.ph200.prol ]
  %.2108198.unr = phi i64 [ %.0106.lcssa, %.lr.ph200.preheader ], [ %i.hw, %.lr.ph200.prol ]
  %i.in = icmp eq i64 %1, %.neg
  br i1 %i.in, label %.critedge, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %.2199 = phi i64 [ %i.ju, %.lr.ph200 ], [ %.2199.unr, %.lr.ph200.prol.loopexit ] ; 3 uses
  %.2108198 = phi i64 [ %i.jd, %.lr.ph200 ], [ %.2108198.unr, %.lr.ph200.prol.loopexit ] ; 3 uses
  %i.io = getelementptr i8, ptr %0, i64 %.2108198
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !13
  %i.iq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ir = zext i8 %i.ip to i32                    ; 2 uses
  %i.is = lshr i32 %i.ir, 4
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr i8, ptr %i.iq, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !13
  %i.iw = getelementptr i8, ptr %.0112, i64 %.2199 ; 2 uses
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !13
  %i.ix = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.iy = and i32 %i.ir, 15
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr i8, ptr %i.ix, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.jc = getelementptr i8, ptr %i.iw, i64 1
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !13
  %i.jd = add nsw i64 %.2108198, 2                ; 2 uses
  %i.je = getelementptr i8, ptr %0, i64 %.2108198
  %i.jf = getelementptr i8, ptr %i.je, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13
  %i.jh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ji = zext i8 %i.jg to i32                    ; 2 uses
  %i.jj = lshr i32 %i.ji, 4
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr i8, ptr %i.jh, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !13
  %i.jn = getelementptr i8, ptr %.0112, i64 %.2199 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 2
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !13
  %i.jp = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.jq = and i32 %i.ji, 15
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr i8, ptr %i.jp, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !13
  %i.ju = add i64 %.2199, 4
  %i.jv = getelementptr i8, ptr %i.jn, i64 3
  store i8 %i.jt, ptr %i.jv, align 1, !tbaa !13
  %exitcond219.not.1 = icmp eq i64 %i.jd, %1
  br i1 %exitcond219.not.1, label %.critedge, label %.lr.ph200, !llvm.loop !22

.preheader166:                                    ; preds = %._crit_edge.us, %.preheader168.preheader, %.preheader169
  %.3109.lcssa = phi i64 [ %i.df, %.preheader169 ], [ %i.df, %.preheader168.preheader ], [ %.lcssa256.a, %._crit_edge.us ] ; 6 uses
  %.3.lcssa = phi i64 [ %.3175, %.preheader169 ], [ %i.dm, %.preheader168.preheader ], [ %.3.us, %._crit_edge.us ] ; 3 uses
  %i.jw = icmp sgt i64 %.3109.lcssa, -1
  br i1 %i.jw, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader166
  %i.jx = and i64 %.3109.lcssa, 1
  %lcmp.mod262.not.not = icmp eq i64 %i.jx, 0
  br i1 %lcmp.mod262.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.jy = add nsw i64 %.3109.lcssa, -1
  %i.jz = getelementptr i8, ptr %0, i64 %.3109.lcssa
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !13
  %i.kb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.kc = zext i8 %i.ka to i32                    ; 2 uses
  %i.kd = and i32 %i.kc, 15
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr i8, ptr %i.kb, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !13
  %i.kh = getelementptr i8, ptr %.0112, i64 %.3.lcssa ; 2 uses
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !13
  %i.ki = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.kj = lshr i32 %i.kc, 4
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !13
  %i.kn = add i64 %.3.lcssa, -2
  %i.ko = getelementptr i8, ptr %i.kh, i64 -1
  store i8 %i.km, ptr %i.ko, align 1, !tbaa !13
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.5183.unr = phi i64 [ %.3.lcssa, %.lr.ph.preheader ], [ %i.kn, %.lr.ph.prol ]
  %.5111182.unr = phi i64 [ %.3109.lcssa, %.lr.ph.preheader ], [ %i.jy, %.lr.ph.prol ]
  %i.kp = icmp eq i64 %.3109.lcssa, 0
  br i1 %i.kp, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.5183 = phi i64 [ %i.lw, %.lr.ph ], [ %.5183.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.5111182 = phi i64 [ %i.lg, %.lr.ph ], [ %.5111182.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.kq = add nsw i64 %.5111182, -1               ; 2 uses
  %i.kr = getelementptr i8, ptr %0, i64 %.5111182
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !13
  %i.kt = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ku = zext i8 %i.ks to i32                    ; 2 uses
  %i.kv = and i32 %i.ku, 15
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr i8, ptr %i.kt, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !13
  %i.kz = getelementptr i8, ptr %.0112, i64 %.5183 ; 2 uses
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !13
  %i.la = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.lb = lshr i32 %i.ku, 4
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr i8, ptr %i.la, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !13
  %i.lf = getelementptr i8, ptr %i.kz, i64 -1
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !13
  %i.lg = add nsw i64 %.5111182, -2
  %i.lh = getelementptr i8, ptr %0, i64 %i.kq
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !13
  %i.lj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.lk = zext i8 %i.li to i32                    ; 2 uses
  %i.ll = and i32 %i.lk, 15
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr i8, ptr %i.lj, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !13
  %i.lp = getelementptr i8, ptr %.0112, i64 %.5183 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 -2
  store i8 %i.lo, ptr %i.lq, align 1, !tbaa !13
  %i.lr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ls = lshr i32 %i.lk, 4
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr i8, ptr %i.lr, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !13
  %i.lw = add i64 %.5183, -4
  %i.lx = getelementptr i8, ptr %i.lp, i64 -3
  store i8 %i.lv, ptr %i.lx, align 1, !tbaa !13
  %.not238.1 = icmp eq i64 %i.kq, 0
  br i1 %.not238.1, label %.critedge, label %.lr.ph, !llvm.loop !23

.critedge.loopexit249.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.critedge, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.critedge.loopexit249.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi ptr [ %.0112, %.lr.ph.i.preheader ], [ %i.dd, %.critedge.loopexit249.unr-lcssa ] ; 2 uses
  %.089.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.de, %.critedge.loopexit249.unr-lcssa ]
  %lcmp.mod269 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.ly = getelementptr i8, ptr %0, i64 %.089.i.epil.init
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !13
  %i.ma = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.mb = zext i8 %i.lz to i32                    ; 2 uses
  %i.mc = lshr i32 %i.mb, 4
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr i8, ptr %i.ma, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !13
  %i.mg = getelementptr i8, ptr %.010.i.epil.init, i64 1
  store i8 %i.mf, ptr %.010.i.epil.init, align 1, !tbaa !13
  %i.mh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.mi = and i32 %i.mb, 15
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr i8, ptr %i.mh, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !13
  store i8 %i.ml, ptr %i.mg, align 1, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph200.prol.loopexit, %.lr.ph200, %.lr.ph.i.epil.preheader, %.critedge.loopexit249.unr-lcssa, %.lr.ph.i.i, %.preheader166, %.preheader162, %bb.ab, %bb.aa, %bb.m, %bb.d, %bb.g, %bb.b, %bb.n, %bb.r, %bb.v, %bb.t
  %.3123 = phi ptr [ %.0113, %.preheader162 ], [ %i.ac, %bb.r ], [ null, %bb.v ], [ null, %bb.t ], [ %.0113, %.preheader166 ], [ %.0113, %.lr.ph200.prol.loopexit ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.d ], [ %.0113, %bb.aa ], [ %.0113, %bb.ab ], [ %.0113, %.lr.ph.i.i ], [ %.0113, %.lr.ph.i.epil.preheader ], [ %.0113, %.critedge.loopexit249.unr-lcssa ], [ %.0113, %.lr.ph200 ], [ %.0113, %.lr.ph ], [ %.0113, %.lr.ph.prol.loopexit ]
  ret ptr %.3123
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_strhex_bytes(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  %.not136.i = icmp slt i64 %1, 4611686018427387903
  br i1 %.not136.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyErr_NoMemory() #6
  br label %_Py_strhex_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = shl i64 %1, 1
  %i.d = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.c) #6 ; 7 uses
  %.not140.i = icmp eq ptr %i.d, null
  br i1 %.not140.i, label %_Py_strhex_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 32       ; 3 uses
  %i.f = icmp sgt i64 %1, 15
  br i1 %i.f, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.g = phi i64 [ %i.w, %.preheader.i ], [ 16, %bb.d ] ; 4 uses
  %.038.i.i = phi ptr [ %i.v, %.preheader.i ], [ %i.e, %bb.d ] ; 3 uses
  %.03437.i.i = phi i64 [ %i.g, %.preheader.i ], [ 0, %bb.d ]
  %i.h = getelementptr i8, ptr %0, i64 %.03437.i.i
  %.0.copyload13.i.i = load <16 x i8>, ptr %i.h, align 1 ; 3 uses
  %i.i = lshr <16 x i8> %.0.copyload13.i.i, splat (i8 4)
  %i.j = and <16 x i8> %.0.copyload13.i.i, splat (i8 15) ; 2 uses
  %i.k = icmp ugt <16 x i8> %.0.copyload13.i.i, splat (i8 -97)
  %i.l = icmp samesign ugt <16 x i8> %i.j, splat (i8 9)
  %i.m = or disjoint <16 x i8> %i.i, splat (i8 48)
  %i.n = select <16 x i1> %i.k, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.o = add nuw nsw <16 x i8> %i.m, %i.n         ; 2 uses
  %i.p = or disjoint <16 x i8> %i.j, splat (i8 48)
  %i.q = select <16 x i1> %i.l, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.r = add nuw nsw <16 x i8> %i.q, %i.p         ; 2 uses
  %i.s = shufflevector <16 x i8> %i.o, <16 x i8> %i.r, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.t = shufflevector <16 x i8> %i.o, <16 x i8> %i.r, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.s, ptr %.038.i.i, align 1
  %i.u = getelementptr i8, ptr %.038.i.i, i64 16
  store <16 x i8> %i.t, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %.038.i.i, i64 32  ; 2 uses
  %i.w = add nuw nsw i64 %i.g, 16                 ; 2 uses
  %.not.i147.i = icmp samesign ugt i64 %i.w, %1
  br i1 %.not.i147.i, label %bb.e, label %.preheader.i, !llvm.loop !0

bb.e:                                             ; preds = %.preheader.i
  %i.x = getelementptr i8, ptr %0, i64 %i.g
  %i.y = sub nsw i64 %1, %i.g                     ; 2 uses
  %2 = icmp sgt i64 %i.y, 0
  br i1 %2, label %.lr.ph.i.i.i, label %_Py_strhex_impl.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %.089.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %.089.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ac = zext i8 %i.aa to i32                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = getelementptr i8, ptr %.010.i.i.i, i64 1
  store i8 %i.ag, ptr %.010.i.i.i, align 1, !tbaa !13
  %i.ai = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.aj = and i32 %i.ac, 15
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = getelementptr i8, ptr %.010.i.i.i, i64 2
  store i8 %i.am, ptr %i.ah, align 1, !tbaa !13
  %i.ao = add nuw nsw i64 %.089.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %exitcond.not.i.i.i, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.i, !llvm.loop !1

bb.f:                                             ; preds = %bb.d
  br i1 %i.a, label %.lr.ph.i.i.preheader, label %_Py_strhex_impl.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %xtraiter = and i64 %1, 1
  %i.ap = icmp eq i64 %1, 1
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi ptr [ %i.e, %.lr.ph.i.i.preheader.new ], [ %i.bu, %.lr.ph.i.i ] ; 5 uses
  %.089.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.aq = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.at = zext i8 %i.ar to i32                    ; 2 uses
  %i.au = lshr i32 %i.at, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.ax, ptr %.010.i.i, align 1, !tbaa !13
  %i.az = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.ba = and i32 %i.at, 15
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !13
  %i.bf = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bj = zext i8 %i.bh to i32                    ; 2 uses
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = getelementptr i8, ptr %.010.i.i, i64 3
  store i8 %i.bn, ptr %i.be, align 1, !tbaa !13
  %i.bp = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bq = and i32 %i.bj, 15
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = getelementptr i8, ptr %.010.i.i, i64 4  ; 2 uses
  store i8 %i.bt, ptr %i.bo, align 1, !tbaa !13
  %i.bv = add nuw nsw i64 %.089.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Py_strhex_impl.exit.loopexit12.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_Py_strhex_impl.exit.loopexit12.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Py_strhex_impl.exit.loopexit12.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi ptr [ %i.e, %.lr.ph.i.i.preheader ], [ %i.bu, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bv, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.bw = getelementptr i8, ptr %0, i64 %.089.i.i.epil.init
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.bz = zext i8 %i.bx to i32                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr i8, ptr %i.by, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = getelementptr i8, ptr %.010.i.i.epil.init, i64 1
  store i8 %i.cd, ptr %.010.i.i.epil.init, align 1, !tbaa !13
  %i.cf = load ptr, ptr @Py_hexdigits, align 8, !tbaa !17
  %i.cg = and i32 %i.bz, 15
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.cf, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  store i8 %i.cj, ptr %i.ce, align 1, !tbaa !13
  br label %_Py_strhex_impl.exit

_Py_strhex_impl.exit:                             ; preds = %.lr.ph.i.i.epil.preheader, %_Py_strhex_impl.exit.loopexit12.unr-lcssa, %.lr.ph.i.i.i, %bb.b, %bb.c, %bb.e, %bb.f
  %.3123.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.b, %bb.b ], [ %i.d, %bb.e ], [ null, %bb.c ], [ %i.d, %bb.f ], [ %i.d, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ], [ %i.d, %.lr.ph.i.i.epil.preheader ]
  ret ptr %.3123.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_strhex_with_sep(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @_Py_strhex_impl(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_strhex_bytes_with_sep(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @_Py_strhex_impl(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  ret ptr %i.a
}

declare i64 @PyObject_Size(ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_New(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{!"p1 _ZTS7_object", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!27 = !{!"_object", !10, i64 0, !26, i64 8}
!28 = !{!27, !26, i64 8}
!29 = !{!"long", !10, i64 0}
!30 = !{!"PyVarObject", !27, i64 0, !29, i64 16}
!31 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!32 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!33 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!34 = !{!"short", !10, i64 0}
!35 = !{!"_typeobject", !30, i64 0, !16, i64 24, !29, i64 32, !29, i64 40, !15, i64 48, !29, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !29, i64 168, !16, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !29, i64 208, !15, i64 216, !15, i64 224, !31, i64 232, !32, i64 240, !33, i64 248, !26, i64 256, !24, i64 264, !15, i64 272, !15, i64 280, !29, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !15, i64 360, !24, i64 368, !15, i64 376, !11, i64 384, !15, i64 392, !15, i64 400, !10, i64 408, !34, i64 410}
!36 = !{!35, !29, i64 168}
end_hunk_1
