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
  %.val4.i.i = load ptr, ptr %i.h, align 8, !tbaa !11
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
  br i1 %.not.i147.i, label %bb.g, label %.preheader.i, !llvm.loop !12

bb.g:                                             ; preds = %.preheader.i
  %i.aa = getelementptr i8, ptr %0, i64 %i.j
  %i.ab = sub nsw i64 %1, %i.j                    ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_Py_strhex_impl.exit

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %.089.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 %.089.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.af = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ag = zext i8 %i.ae to i32                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.af, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = getelementptr i8, ptr %.010.i.i.i, i64 1
  store i8 %i.ak, ptr %.010.i.i.i, align 1, !tbaa !11
  %i.am = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.an = and i32 %i.ag, 15
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %i.am, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %.010.i.i.i, i64 2
  store i8 %i.aq, ptr %i.al, align 1, !tbaa !11
  %i.as = add nuw nsw i64 %.089.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.as, %i.ab
  br i1 %exitcond.not.i.i.i, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.i, !llvm.loop !17

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.i
  br i1 %i.a, label %.lr.ph.i.i.preheader, label %_Py_strhex_impl.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %xtraiter = and i64 %1, 1
  %i.at = icmp eq i64 %1, 1
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi ptr [ %.0112.i, %.lr.ph.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i ] ; 5 uses
  %.089.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ax = zext i8 %i.av to i32                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.bb, ptr %.010.i.i, align 1, !tbaa !11
  %i.bd = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.be = and i32 %i.ax, 15
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !11
  %i.bj = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bn = zext i8 %i.bl to i32                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 4
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = getelementptr i8, ptr %.010.i.i, i64 3
  store i8 %i.br, ptr %i.bi, align 1, !tbaa !11
  %i.bt = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bu = and i32 %i.bn, 15
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bt, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = getelementptr i8, ptr %.010.i.i, i64 4  ; 2 uses
  store i8 %i.bx, ptr %i.bs, align 1, !tbaa !11
  %i.bz = add nuw nsw i64 %.089.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Py_strhex_impl.exit.loopexit12.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !17

_Py_strhex_impl.exit.loopexit12.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Py_strhex_impl.exit.loopexit12.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi ptr [ %.0112.i, %.lr.ph.i.i.preheader ], [ %i.by, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bz, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ca = getelementptr i8, ptr %0, i64 %.089.i.i.epil.init
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.cd = zext i8 %i.cb to i32                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 4
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %i.cc, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = getelementptr i8, ptr %.010.i.i.epil.init, i64 1
  store i8 %i.ch, ptr %.010.i.i.epil.init, align 1, !tbaa !11
  %i.cj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ck = and i32 %i.cd, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %i.cj, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !11
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
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str) #6
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val142 = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr i8, ptr %.val142, i64 168
  %.val144 = load i64, ptr %i.f, align 8, !tbaa !23 ; 2 uses
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
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
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
  %.val4.i.i = load ptr, ptr %i.n, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit.i

bb.k:                                             ; preds = %bb.e
  %i.o = and i64 %.val144, 134217728
  %.not134 = icmp eq i64 %i.o, 0
  br i1 %.not134, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr i8, ptr %2, i64 32
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.2) #6
  br label %.critedge

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.j, %bb.l
  %.0117.in = phi ptr [ %i.p, %bb.l ], [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %.0117 = load i8, ptr %.0117.in, align 1, !tbaa !11 ; 3 uses
  %i.r = icmp sgt i8 %.0117, -1
  %i.s = icmp ne i32 %4, 0
  %or.cond = or i1 %i.s, %i.r
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
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
  %.val4.i = load ptr, ptr %i.am, align 8, !tbaa !11
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
  br i1 %.not.i147, label %bb.aa, label %.preheader, !llvm.loop !12

bb.aa:                                            ; preds = %.preheader
  %i.bg = getelementptr i8, ptr %0, i64 %i.ap
  %i.bh = sub nsw i64 %1, %i.ap                   ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.be, %bb.aa ] ; 3 uses
  %.089.i.i = phi i64 [ %i.by, %.lr.ph.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 %.089.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bm = zext i8 %i.bk to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %i.bl, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.bq, ptr %.010.i.i, align 1, !tbaa !11
  %i.bs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bt = and i32 %i.bm, 15
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.bs, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !11
  %i.by = add nuw nsw i64 %.089.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.bh
  br i1 %exitcond.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !17

bb.ab:                                            ; preds = %bb.z
  br i1 %i.z, label %.lr.ph.i.preheader, label %.critedge

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %xtraiter267 = and i64 %1, 1
  %i.bz = icmp eq i64 %1, 1
  br i1 %i.bz, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter270 = and i64 %1, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi ptr [ %.0112, %.lr.ph.i.preheader.new ], [ %i.de, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.df, %.lr.ph.i ] ; 3 uses
  %niter271 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter271.next.1, %.lr.ph.i ]
  %i.ca = getelementptr i8, ptr %0, i64 %.089.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.cd = zext i8 %i.cb to i32                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 4
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %i.cc, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = getelementptr i8, ptr %.010.i, i64 1
  store i8 %i.ch, ptr %.010.i, align 1, !tbaa !11
  %i.cj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ck = and i32 %i.cd, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %i.cj, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %.010.i, i64 2
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !11
  %i.cp = getelementptr i8, ptr %0, i64 %.089.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ct = zext i8 %i.cr to i32                    ; 2 uses
  %i.cu = lshr i32 %i.ct, 4
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.cs, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = getelementptr i8, ptr %.010.i, i64 3
  store i8 %i.cx, ptr %i.co, align 1, !tbaa !11
  %i.cz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.da = and i32 %i.ct, 15
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = getelementptr i8, ptr %.010.i, i64 4    ; 2 uses
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !11
  %i.df = add nuw nsw i64 %.089.i, 2              ; 2 uses
  %niter271.next.1 = add i64 %niter271, 2         ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %.critedge.loopexit249.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit
  %i.dg = add i64 %1, -1                          ; 4 uses
  %i.dh = zext i32 %spec.select141 to i64
  %i.di = sdiv i64 %i.dg, %i.dh                   ; 9 uses
  %i.dj = icmp slt i32 %spec.select, 0
  br i1 %i.dj, label %.preheader165, label %.preheader169

.preheader169:                                    ; preds = %bb.ac
  %.3175 = add i64 %i.ae, -1                      ; 3 uses
  %i.dk = icmp sgt i64 %i.di, 0
  br i1 %i.dk, label %.preheader168.lr.ph, label %.preheader166

.preheader168.lr.ph:                              ; preds = %.preheader169
  %.not201 = icmp eq i32 %spec.select141, 0
  br i1 %.not201, label %.preheader168.preheader, label %.preheader168.us.preheader

.preheader168.us.preheader:                       ; preds = %.preheader168.lr.ph
  %xtraiter = and i32 %spec.select141, 1
  %i.dl = icmp eq i32 %spec.select141, 1
  %unroll_iter = and i32 %spec.select141, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod260 = trunc i32 %spec.select141 to i1
  br label %.preheader168.us

.preheader168.preheader:                          ; preds = %.preheader168.lr.ph
  %5 = sub nuw nsw i64 %i.ae, %i.di
  %scevgep = getelementptr i8, ptr %.0112, i64 %5
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %.2119152158, i64 %i.di, i1 false), !tbaa !11
  %6 = sub nuw nsw i64 %.3175, %i.di
  br label %.preheader166

.preheader168.us:                                 ; preds = %.preheader168.us.preheader, %._crit_edge.us
  %.3178.us = phi i64 [ %.3.us, %._crit_edge.us ], [ %.3175, %.preheader168.us.preheader ] ; 2 uses
  %.1103177.us = phi i64 [ %i.fm, %._crit_edge.us ], [ 0, %.preheader168.us.preheader ]
  %.3109176.us = phi i64 [ %.lcssa256, %._crit_edge.us ], [ %i.dg, %.preheader168.us.preheader ] ; 2 uses
  br i1 %i.dl, label %.epil.preheader, label %.preheader168.us.new

.preheader168.us.new:                             ; preds = %.preheader168.us, %.preheader168.us.new
  %.4172.us = phi i64 [ %i.es, %.preheader168.us.new ], [ %.3178.us, %.preheader168.us ] ; 3 uses
  %.4110171.us = phi i64 [ %i.ec, %.preheader168.us.new ], [ %.3109176.us, %.preheader168.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader168.us.new ], [ 0, %.preheader168.us ]
  %i.dm = getelementptr i8, ptr %0, i64 %.4110171.us
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !11
  %i.do = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.dp = zext i8 %i.dn to i32                    ; 2 uses
  %i.dq = and i32 %i.dp, 15
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr i8, ptr %i.do, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !11
  %i.du = getelementptr i8, ptr %.0112, i64 %.4172.us ; 2 uses
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !11
  %i.dv = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.dw = lshr i32 %i.dp, 4
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr i8, ptr %i.dv, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !11
  %i.ea = add i64 %.4172.us, -2                   ; 2 uses
  %i.eb = getelementptr i8, ptr %i.du, i64 -1
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !11
  %i.ec = add i64 %.4110171.us, -2                ; 3 uses
  %i.ed = getelementptr i8, ptr %0, i64 %.4110171.us
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !11
  %i.eg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.eh = zext i8 %i.ef to i32                    ; 2 uses
  %i.ei = and i32 %i.eh, 15
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr i8, ptr %i.eg, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !11
  %i.em = getelementptr i8, ptr %.0112, i64 %i.ea ; 2 uses
  store i8 %i.el, ptr %i.em, align 1, !tbaa !11
  %i.en = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.eo = lshr i32 %i.eh, 4
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr i8, ptr %i.en, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.es = add i64 %.4172.us, -4                   ; 3 uses
  %i.et = getelementptr i8, ptr %i.em, i64 -1
  store i8 %i.er, ptr %i.et, align 1, !tbaa !11
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader168.us.new, !llvm.loop !31

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader168.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader168.us
  %.4172.us.epil.init = phi i64 [ %.3178.us, %.preheader168.us ], [ %i.es, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.4110171.us.epil.init = phi i64 [ %.3109176.us, %.preheader168.us ], [ %i.ec, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod260)
  %i.eu = add i64 %.4110171.us.epil.init, -1
  %i.ev = getelementptr i8, ptr %0, i64 %.4110171.us.epil.init
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !11
  %i.ex = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ey = zext i8 %i.ew to i32                    ; 2 uses
  %i.ez = and i32 %i.ey, 15
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %i.ex, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = getelementptr i8, ptr %.0112, i64 %.4172.us.epil.init ; 2 uses
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !11
  %i.fe = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ff = lshr i32 %i.ey, 4
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr i8, ptr %i.fe, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !11
  %i.fj = add i64 %.4172.us.epil.init, -2
  %i.fk = getelementptr i8, ptr %i.fd, i64 -1
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !11
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.4172.us.lcssa = phi i64 [ %i.ea, %._crit_edge.us.unr-lcssa ], [ %.4172.us.epil.init, %.epil.preheader ]
  %.lcssa256 = phi i64 [ %i.ec, %._crit_edge.us.unr-lcssa ], [ %i.eu, %.epil.preheader ] ; 2 uses
  %.lcssa255 = phi i64 [ %i.es, %._crit_edge.us.unr-lcssa ], [ %i.fj, %.epil.preheader ]
  %i.fl = getelementptr i8, ptr %.0112, i64 %.lcssa255
  store i8 %.2119152158, ptr %i.fl, align 1, !tbaa !11
  %i.fm = add nuw nsw i64 %.1103177.us, 1         ; 2 uses
  %.3.us = add i64 %.4172.us.lcssa, -3            ; 2 uses
  %exitcond216.not = icmp eq i64 %i.fm, %i.di
  br i1 %exitcond216.not, label %.preheader166, label %.preheader168.us, !llvm.loop !32

.preheader165:                                    ; preds = %bb.ac
  %i.fn = icmp sgt i64 %i.di, 0
  br i1 %i.fn, label %.preheader164.lr.ph, label %.preheader162

.preheader164.lr.ph:                              ; preds = %.preheader165
  %.not202 = icmp eq i32 %spec.select141, 0
  br i1 %.not202, label %.preheader164.preheader, label %.preheader164.us.preheader

.preheader164.us.preheader:                       ; preds = %.preheader164.lr.ph
  %xtraiter263 = and i32 %spec.select141, 1
  %lcmp.mod264.not = icmp eq i32 %xtraiter263, 0
  %i.fo = icmp eq i32 %spec.select141, 1
  br label %.preheader164.us

.preheader164.preheader:                          ; preds = %.preheader164.lr.ph
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0112, i8 %.2119152158, i64 %i.di, i1 false), !tbaa !11
  br label %.preheader162

.preheader164.us:                                 ; preds = %.preheader164.us.preheader, %._crit_edge.us194
  %.0102191.us = phi i64 [ %i.hs, %._crit_edge.us194 ], [ 0, %.preheader164.us.preheader ]
  %.0104190.us = phi i64 [ %i.hq, %._crit_edge.us194 ], [ 0, %.preheader164.us.preheader ] ; 4 uses
  %.0106189.us = phi i64 [ %.lcssa252, %._crit_edge.us194 ], [ 0, %.preheader164.us.preheader ] ; 4 uses
  %i.fp = trunc i64 %.0106189.us to i32
  %i.fq = add i32 %spec.select141, %i.fp
  br i1 %lcmp.mod264.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader164.us
  %i.fr = add i64 %.0106189.us, 1                 ; 2 uses
  %i.fs = getelementptr i8, ptr %0, i64 %.0106189.us
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !11
  %i.fu = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.fv = zext i8 %i.ft to i32                    ; 2 uses
  %i.fw = lshr i32 %i.fv, 4
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr i8, ptr %i.fu, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !11
  %i.ga = getelementptr i8, ptr %.0112, i64 %.0104190.us ; 2 uses
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !11
  %i.gb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.gc = and i32 %i.fv, 15
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr i8, ptr %i.gb, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = add i64 %.0104190.us, 2                 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.ga, i64 1
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !11
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader164.us
  %.lcssa252.unr = phi i64 [ poison, %.preheader164.us ], [ %i.fr, %.prol.loopexit.unr-lcssa ]
  %.lcssa251.unr = phi i64 [ poison, %.preheader164.us ], [ %i.gg, %.prol.loopexit.unr-lcssa ]
  %.1105185.us.unr = phi i64 [ %.0104190.us, %.preheader164.us ], [ %i.gg, %.prol.loopexit.unr-lcssa ]
  %.1107184.us.unr = phi i64 [ %.0106189.us, %.preheader164.us ], [ %i.fr, %.prol.loopexit.unr-lcssa ]
  br i1 %i.fo, label %._crit_edge.us194, label %.preheader164.us.new

.preheader164.us.new:                             ; preds = %.prol.loopexit, %.preheader164.us.new
  %.1105185.us = phi i64 [ %i.ho, %.preheader164.us.new ], [ %.1105185.us.unr, %.prol.loopexit ] ; 3 uses
  %.1107184.us = phi i64 [ %i.gy, %.preheader164.us.new ], [ %.1107184.us.unr, %.prol.loopexit ] ; 3 uses
  %i.gi = getelementptr i8, ptr %0, i64 %.1107184.us
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !11
  %i.gk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.gl = zext i8 %i.gj to i32                    ; 2 uses
  %i.gm = lshr i32 %i.gl, 4
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr i8, ptr %i.gk, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  %i.gq = getelementptr i8, ptr %.0112, i64 %.1105185.us ; 2 uses
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !11
  %i.gr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.gs = and i32 %i.gl, 15
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !11
  %i.gw = add i64 %.1105185.us, 2                 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gq, i64 1
  store i8 %i.gv, ptr %i.gx, align 1, !tbaa !11
  %i.gy = add i64 %.1107184.us, 2                 ; 3 uses
  %i.gz = getelementptr i8, ptr %0, i64 %.1107184.us
  %i.ha = getelementptr i8, ptr %i.gz, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11
  %i.hc = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.hd = zext i8 %i.hb to i32                    ; 2 uses
  %i.he = lshr i32 %i.hd, 4
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr i8, ptr %i.hc, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !11
  %i.hi = getelementptr i8, ptr %.0112, i64 %i.gw ; 2 uses
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !11
  %i.hj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.hk = and i32 %i.hd, 15
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr i8, ptr %i.hj, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = add i64 %.1105185.us, 4                 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hi, i64 1
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !11
  %lftr.wideiv.1 = trunc i64 %i.gy to i32
  %exitcond217.not.1.a = icmp eq i32 %i.fq, %lftr.wideiv.1
  br i1 %exitcond217.not.1.a, label %._crit_edge.us194, label %.preheader164.us.new, !llvm.loop !33

._crit_edge.us194:                                ; preds = %.preheader164.us.new, %.prol.loopexit
  %.1105185.us.lcssa = phi i64 [ %.0104190.us, %.prol.loopexit ], [ %i.gw, %.preheader164.us.new ]
  %.lcssa252 = phi i64 [ %.lcssa252.unr, %.prol.loopexit ], [ %i.gy, %.preheader164.us.new ] ; 2 uses
  %.lcssa251 = phi i64 [ %.lcssa251.unr, %.prol.loopexit ], [ %i.ho, %.preheader164.us.new ]
  %i.hq = add i64 %.1105185.us.lcssa, 3           ; 2 uses
  %i.hr = getelementptr i8, ptr %.0112, i64 %.lcssa251
  store i8 %.2119152158, ptr %i.hr, align 1, !tbaa !11
  %i.hs = add nuw nsw i64 %.0102191.us, 1         ; 2 uses
  %exitcond218.not = icmp eq i64 %i.hs, %i.di
  br i1 %exitcond218.not, label %.preheader162, label %.preheader164.us, !llvm.loop !34

.preheader162:                                    ; preds = %._crit_edge.us194, %.preheader164.preheader, %.preheader165
  %.0106.lcssa = phi i64 [ 0, %.preheader165 ], [ 0, %.preheader164.preheader ], [ %.lcssa252, %._crit_edge.us194 ] ; 6 uses
  %.0104.lcssa = phi i64 [ 0, %.preheader165 ], [ %i.di, %.preheader164.preheader ], [ %i.hq, %._crit_edge.us194 ] ; 3 uses
  %i.ht = icmp slt i64 %.0106.lcssa, %1
  br i1 %i.ht, label %.lr.ph200.preheader, label %.critedge

.lr.ph200.preheader:                              ; preds = %.preheader162
  %i.hu = sub i64 %1, %.0106.lcssa
  %.neg = add i64 %.0106.lcssa, 1
  %xtraiter265 = and i64 %i.hu, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader
  %i.hv = add nsw i64 %.0106.lcssa, 1
  %i.hw = getelementptr i8, ptr %0, i64 %.0106.lcssa
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !11
  %i.hy = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.hz = zext i8 %i.hx to i32                    ; 2 uses
  %i.ia = lshr i32 %i.hz, 4
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %i.hy, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !11
  %i.ie = getelementptr i8, ptr %.0112, i64 %.0104.lcssa ; 2 uses
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !11
  %i.if = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ig = and i32 %i.hz, 15
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr i8, ptr %i.if, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !11
  %i.ik = add i64 %.0104.lcssa, 2
  %i.il = getelementptr i8, ptr %i.ie, i64 1
  store i8 %i.ij, ptr %i.il, align 1, !tbaa !11
  br label %.lr.ph200.prol.loopexit

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %.2199.unr = phi i64 [ %.0104.lcssa, %.lr.ph200.preheader ], [ %i.ik, %.lr.ph200.prol ]
  %.2108198.unr = phi i64 [ %.0106.lcssa, %.lr.ph200.preheader ], [ %i.hv, %.lr.ph200.prol ]
  %i.im = icmp eq i64 %1, %.neg
  br i1 %i.im, label %.critedge, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %.2199 = phi i64 [ %i.jt, %.lr.ph200 ], [ %.2199.unr, %.lr.ph200.prol.loopexit ] ; 3 uses
  %.2108198 = phi i64 [ %i.jc, %.lr.ph200 ], [ %.2108198.unr, %.lr.ph200.prol.loopexit ] ; 3 uses
  %i.in = getelementptr i8, ptr %0, i64 %.2108198
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %i.ip = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.iq = zext i8 %i.io to i32                    ; 2 uses
  %i.ir = lshr i32 %i.iq, 4
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr i8, ptr %i.ip, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !11
  %i.iv = getelementptr i8, ptr %.0112, i64 %.2199 ; 2 uses
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !11
  %i.iw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ix = and i32 %i.iq, 15
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr i8, ptr %i.iw, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !11
  %i.jb = getelementptr i8, ptr %i.iv, i64 1
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !11
  %i.jc = add nsw i64 %.2108198, 2                ; 2 uses
  %i.jd = getelementptr i8, ptr %0, i64 %.2108198
  %i.je = getelementptr i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !11
  %i.jg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.jh = zext i8 %i.jf to i32                    ; 2 uses
  %i.ji = lshr i32 %i.jh, 4
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr i8, ptr %i.jg, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !11
  %i.jm = getelementptr i8, ptr %.0112, i64 %.2199 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 2
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !11
  %i.jo = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.jp = and i32 %i.jh, 15
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr i8, ptr %i.jo, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !11
  %i.jt = add i64 %.2199, 4
  %i.ju = getelementptr i8, ptr %i.jm, i64 3
  store i8 %i.js, ptr %i.ju, align 1, !tbaa !11
  %exitcond219.not.1 = icmp eq i64 %i.jc, %1
  br i1 %exitcond219.not.1, label %.critedge, label %.lr.ph200, !llvm.loop !35

.preheader166:                                    ; preds = %._crit_edge.us, %.preheader168.preheader, %.preheader169
  %.3109.lcssa = phi i64 [ %i.dg, %.preheader169 ], [ %i.dg, %.preheader168.preheader ], [ %.lcssa256, %._crit_edge.us ] ; 6 uses
  %.3.lcssa = phi i64 [ %.3175, %.preheader169 ], [ %6, %.preheader168.preheader ], [ %.3.us, %._crit_edge.us ] ; 3 uses
  %i.jv = icmp sgt i64 %.3109.lcssa, -1
  br i1 %i.jv, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader166
  %i.jw = and i64 %.3109.lcssa, 1
  %lcmp.mod262.not.not = icmp eq i64 %i.jw, 0
  br i1 %lcmp.mod262.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.jx = add nsw i64 %.3109.lcssa, -1
  %i.jy = getelementptr i8, ptr %0, i64 %.3109.lcssa
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !11
  %i.ka = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.kb = zext i8 %i.jz to i32                    ; 2 uses
  %i.kc = and i32 %i.kb, 15
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr i8, ptr %i.ka, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !11
  %i.kg = getelementptr i8, ptr %.0112, i64 %.3.lcssa ; 2 uses
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !11
  %i.kh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ki = lshr i32 %i.kb, 4
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr i8, ptr %i.kh, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !11
  %i.km = add i64 %.3.lcssa, -2
  %i.kn = getelementptr i8, ptr %i.kg, i64 -1
  store i8 %i.kl, ptr %i.kn, align 1, !tbaa !11
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.5183.unr = phi i64 [ %.3.lcssa, %.lr.ph.preheader ], [ %i.km, %.lr.ph.prol ]
  %.5111182.unr = phi i64 [ %.3109.lcssa, %.lr.ph.preheader ], [ %i.jx, %.lr.ph.prol ]
  %i.ko = icmp eq i64 %.3109.lcssa, 0
  br i1 %i.ko, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.5183 = phi i64 [ %i.lv, %.lr.ph ], [ %.5183.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.5111182 = phi i64 [ %i.lf, %.lr.ph ], [ %.5111182.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.kp = add nsw i64 %.5111182, -1               ; 2 uses
  %i.kq = getelementptr i8, ptr %0, i64 %.5111182
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !11
  %i.ks = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.kt = zext i8 %i.kr to i32                    ; 2 uses
  %i.ku = and i32 %i.kt, 15
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr i8, ptr %i.ks, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !11
  %i.ky = getelementptr i8, ptr %.0112, i64 %.5183 ; 2 uses
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !11
  %i.kz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.la = lshr i32 %i.kt, 4
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr i8, ptr %i.kz, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !11
  %i.le = getelementptr i8, ptr %i.ky, i64 -1
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !11
  %i.lf = add nsw i64 %.5111182, -2
  %i.lg = getelementptr i8, ptr %0, i64 %i.kp
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !11
  %i.li = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.lj = zext i8 %i.lh to i32                    ; 2 uses
  %i.lk = and i32 %i.lj, 15
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr i8, ptr %i.li, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !11
  %i.lo = getelementptr i8, ptr %.0112, i64 %.5183 ; 2 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 -2
  store i8 %i.ln, ptr %i.lp, align 1, !tbaa !11
  %i.lq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.lr = lshr i32 %i.lj, 4
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr i8, ptr %i.lq, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !11
  %i.lv = add i64 %.5183, -4
  %i.lw = getelementptr i8, ptr %i.lo, i64 -3
  store i8 %i.lu, ptr %i.lw, align 1, !tbaa !11
  %.not238.1 = icmp eq i64 %i.kp, 0
  br i1 %.not238.1, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge.loopexit249.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.critedge, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.critedge.loopexit249.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi ptr [ %.0112, %.lr.ph.i.preheader ], [ %i.de, %.critedge.loopexit249.unr-lcssa ] ; 2 uses
  %.089.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.df, %.critedge.loopexit249.unr-lcssa ]
  %lcmp.mod269 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.lx = getelementptr i8, ptr %0, i64 %.089.i.epil.init
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11
  %i.lz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ma = zext i8 %i.ly to i32                    ; 2 uses
  %i.mb = lshr i32 %i.ma, 4
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr i8, ptr %i.lz, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !11
  %i.mf = getelementptr i8, ptr %.010.i.epil.init, i64 1
  store i8 %i.me, ptr %.010.i.epil.init, align 1, !tbaa !11
  %i.mg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.mh = and i32 %i.ma, 15
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr i8, ptr %i.mg, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !11
  store i8 %i.mk, ptr %i.mf, align 1, !tbaa !11
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
  br i1 %.not.i147.i, label %bb.e, label %.preheader.i, !llvm.loop !12

bb.e:                                             ; preds = %.preheader.i
  %i.x = getelementptr i8, ptr %0, i64 %i.g
  %i.y = sub nsw i64 %1, %i.g                     ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i, label %_Py_strhex_impl.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %.089.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %.089.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ad = zext i8 %i.ab to i32                    ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = getelementptr i8, ptr %.010.i.i.i, i64 1
  store i8 %i.ah, ptr %.010.i.i.i, align 1, !tbaa !11
  %i.aj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ak = and i32 %i.ad, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %i.ao = getelementptr i8, ptr %.010.i.i.i, i64 2
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !11
  %i.ap = add nuw nsw i64 %.089.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, %i.y
  br i1 %exitcond.not.i.i.i, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d
  br i1 %i.a, label %.lr.ph.i.i.preheader, label %_Py_strhex_impl.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %xtraiter = and i64 %1, 1
  %i.aq = icmp eq i64 %1, 1
  br i1 %i.aq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi ptr [ %i.e, %.lr.ph.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i ] ; 5 uses
  %.089.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bw, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ar = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.au = zext i8 %i.as to i32                    ; 2 uses
  %i.av = lshr i32 %i.au, 4
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.at, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.ay, ptr %.010.i.i, align 1, !tbaa !11
  %i.ba = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bb = and i32 %i.au, 15
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.be, ptr %i.az, align 1, !tbaa !11
  %i.bg = getelementptr i8, ptr %0, i64 %.089.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bk = zext i8 %i.bi to i32                    ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bp = getelementptr i8, ptr %.010.i.i, i64 3
  store i8 %i.bo, ptr %i.bf, align 1, !tbaa !11
  %i.bq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.br = and i32 %i.bk, 15
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = getelementptr i8, ptr %.010.i.i, i64 4  ; 2 uses
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !11
  %i.bw = add nuw nsw i64 %.089.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Py_strhex_impl.exit.loopexit12.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !17

_Py_strhex_impl.exit.loopexit12.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Py_strhex_impl.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Py_strhex_impl.exit.loopexit12.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi ptr [ %i.e, %.lr.ph.i.i.preheader ], [ %i.bv, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bw, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.bx = getelementptr i8, ptr %0, i64 %.089.i.i.epil.init
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ca = zext i8 %i.by to i32                    ; 2 uses
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr i8, ptr %.010.i.i.epil.init, i64 1
  store i8 %i.ce, ptr %.010.i.i.epil.init, align 1, !tbaa !11
  %i.cg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ch = and i32 %i.ca, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  store i8 %i.ck, ptr %i.cf, align 1, !tbaa !11
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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = distinct !{!17, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS7_object", !16, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_object", !9, i64 0, !22, i64 8}
!22 = !{!"p1 _ZTS11_typeobject", !16, i64 0}
!23 = !{!24, !26, i64 168}
!24 = !{!"_typeobject", !25, i64 0, !15, i64 24, !26, i64 32, !26, i64 40, !16, i64 48, !26, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !26, i64 168, !15, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !26, i64 208, !16, i64 216, !16, i64 224, !27, i64 232, !28, i64 240, !29, i64 248, !22, i64 256, !19, i64 264, !16, i64 272, !16, i64 280, !26, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !16, i64 360, !19, i64 368, !16, i64 376, !8, i64 384, !16, i64 392, !16, i64 400, !9, i64 408, !30, i64 410}
!25 = !{!"PyVarObject", !21, i64 0, !26, i64 16}
!26 = !{!"long", !9, i64 0}
!27 = !{!"p1 _ZTS11PyMethodDef", !16, i64 0}
!28 = !{!"p1 _ZTS11PyMemberDef", !16, i64 0}
!29 = !{!"p1 _ZTS11PyGetSetDef", !16, i64 0}
!30 = !{!"short", !9, i64 0}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
end_hunk_0
