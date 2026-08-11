inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Py_strhex:bb.a
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
  %.010.i.i = phi ptr [ %.0116.i, %.lr.ph.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i ] ; 5 uses
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
  %.010.i.i.epil.init = phi ptr [ %.0116.i, %.lr.ph.i.i.preheader ], [ %i.by, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ] ; 2 uses
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
  %.3.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.b, %bb.b ], [ null, %bb.c ], [ %i.d, %bb.g ], [ %i.d, %bb.h ], [ %i.d, %_Py_strhex_impl.exit.loopexit12.unr-lcssa ], [ %i.d, %.lr.ph.i.i.epil.preheader ]
  ret ptr %.3.i
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
  %.0123.in = phi ptr [ %i.p, %bb.l ], [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %.0123 = load i8, ptr %.0123.in, align 1, !tbaa !11 ; 3 uses
  %i.r = icmp sgt i8 %.0123, -1
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
  %i.aa = phi i32 [ %spec.select160, %bb.p ], [ %spec.select160, %bb.o ], [ 0, %.thread154 ] ; 4 uses
  %.2125150159 = phi i8 [ %.0123, %bb.p ], [ %.0123, %bb.o ], [ 0, %.thread154 ] ; 4 uses
  %.0121152158 = phi i32 [ %3, %bb.p ], [ %3, %bb.o ], [ 0, %.thread154 ]
  %.0118 = phi i64 [ %i.y, %bb.p ], [ 0, %bb.o ], [ 0, %.thread154 ] ; 2 uses
  %i.ab = sub nsw i64 4611686018427387903, %.0118
  %.not136 = icmp slt i64 %1, %i.ab
  br i1 %.not136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = tail call ptr @PyErr_NoMemory() #6
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ad = shl i64 %1, 1
  %i.ae = add i64 %.0118, %i.ad                   ; 4 uses
  %i.af = zext i32 %i.aa to i64
  %.not137 = icmp ugt i64 %1, %i.af               ; 2 uses
  %spec.select = select i1 %.not137, i32 %.0121152158, i32 0 ; 2 uses
  %spec.select141 = select i1 %.not137, i32 %i.aa, i32 0 ; 9 uses
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
  %.0117 = phi ptr [ %i.ag, %bb.u ], [ %i.ai, %bb.x ], [ %i.ai, %bb.y ] ; 11 uses
  %.0116 = phi ptr [ %i.ah, %bb.u ], [ %.0.i.i145, %bb.x ], [ %.val4.i, %bb.y ] ; 19 uses
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ao = icmp sgt i64 %1, 15
  br i1 %i.ao, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.z, %.preheader
  %i.ap = phi i64 [ %i.bf, %.preheader ], [ 16, %bb.z ] ; 4 uses
  %.038.i = phi ptr [ %i.be, %.preheader ], [ %.0116, %bb.z ] ; 3 uses
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
  %.010.i = phi ptr [ %.0116, %.lr.ph.i.preheader.new ], [ %i.de, %.lr.ph.i ] ; 5 uses
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
  %.3109175 = add i64 %i.ae, -1                   ; 3 uses
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
  %i.dm = sub nuw nsw i64 %i.ae, %i.di
  %scevgep = getelementptr i8, ptr %.0116, i64 %i.dm
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %.2125150159, i64 %i.di, i1 false), !tbaa !11
  %i.dn = sub nuw nsw i64 %.3109175, %i.di
  br label %.preheader166

.preheader168.us:                                 ; preds = %.preheader168.us.preheader, %._crit_edge.us
  %.3109178.us = phi i64 [ %.3109.us, %._crit_edge.us ], [ %.3109175, %.preheader168.us.preheader ] ; 2 uses
  %.1103177.us = phi i64 [ %i.fo, %._crit_edge.us ], [ 0, %.preheader168.us.preheader ]
  %.3113176.us = phi i64 [ %.lcssa256, %._crit_edge.us ], [ %i.dg, %.preheader168.us.preheader ] ; 2 uses
  br i1 %i.dl, label %.epil.preheader, label %.preheader168.us.new

.preheader168.us.new:                             ; preds = %.preheader168.us, %.preheader168.us.new
  %.4172.us = phi i64 [ %i.eu, %.preheader168.us.new ], [ %.3109178.us, %.preheader168.us ] ; 3 uses
  %.4114171.us = phi i64 [ %i.ee, %.preheader168.us.new ], [ %.3113176.us, %.preheader168.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader168.us.new ], [ 0, %.preheader168.us ]
  %i.do = getelementptr i8, ptr %0, i64 %.4114171.us
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11
  %i.dq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.dr = zext i8 %i.dp to i32                    ; 2 uses
  %i.ds = and i32 %i.dr, 15
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr i8, ptr %i.dq, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11
  %i.dw = getelementptr i8, ptr %.0116, i64 %.4172.us ; 2 uses
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !11
  %i.dx = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.dy = lshr i32 %i.dr, 4
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr i8, ptr %i.dx, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11
  %i.ec = add i64 %.4172.us, -2                   ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dw, i64 -1
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !11
  %i.ee = add i64 %.4114171.us, -2                ; 3 uses
  %i.ef = getelementptr i8, ptr %0, i64 %.4114171.us
  %i.eg = getelementptr i8, ptr %i.ef, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !11
  %i.ei = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ej = zext i8 %i.eh to i32                    ; 2 uses
  %i.ek = and i32 %i.ej, 15
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr i8, ptr %i.ei, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = getelementptr i8, ptr %.0116, i64 %i.ec ; 2 uses
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !11
  %i.ep = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.eq = lshr i32 %i.ej, 4
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.ep, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !11
  %i.eu = add i64 %.4172.us, -4                   ; 3 uses
  %i.ev = getelementptr i8, ptr %i.eo, i64 -1
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !11
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader168.us.new, !llvm.loop !31

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader168.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader168.us
  %.4172.us.epil.init = phi i64 [ %.3109178.us, %.preheader168.us ], [ %i.eu, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.4114171.us.epil.init = phi i64 [ %.3113176.us, %.preheader168.us ], [ %i.ee, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod260)
  %i.ew = add i64 %.4114171.us.epil.init, -1
  %i.ex = getelementptr i8, ptr %0, i64 %.4114171.us.epil.init
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.fa = zext i8 %i.ey to i32                    ; 2 uses
  %i.fb = and i32 %i.fa, 15
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr i8, ptr %i.ez, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !11
  %i.ff = getelementptr i8, ptr %.0116, i64 %.4172.us.epil.init ; 2 uses
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !11
  %i.fg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.fh = lshr i32 %i.fa, 4
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr i8, ptr %i.fg, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = add i64 %.4172.us.epil.init, -2
  %i.fm = getelementptr i8, ptr %i.ff, i64 -1
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !11
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.4172.us.lcssa = phi i64 [ %i.ec, %._crit_edge.us.unr-lcssa ], [ %.4172.us.epil.init, %.epil.preheader ]
  %.lcssa256 = phi i64 [ %i.ee, %._crit_edge.us.unr-lcssa ], [ %i.ew, %.epil.preheader ] ; 2 uses
  %.lcssa255 = phi i64 [ %i.eu, %._crit_edge.us.unr-lcssa ], [ %i.fl, %.epil.preheader ]
  %i.fn = getelementptr i8, ptr %.0116, i64 %.lcssa255
  store i8 %.2125150159, ptr %i.fn, align 1, !tbaa !11
  %i.fo = add nuw nsw i64 %.1103177.us, 1         ; 2 uses
  %.3109.us = add i64 %.4172.us.lcssa, -3         ; 2 uses
  %exitcond216.not = icmp eq i64 %i.fo, %i.di
  br i1 %exitcond216.not, label %.preheader166, label %.preheader168.us, !llvm.loop !32

.preheader165:                                    ; preds = %bb.ac
  %i.fp = icmp sgt i64 %i.di, 0
  br i1 %i.fp, label %.preheader164.lr.ph, label %.preheader162

.preheader164.lr.ph:                              ; preds = %.preheader165
  %.not202 = icmp eq i32 %spec.select141, 0
  br i1 %.not202, label %.preheader164.preheader, label %.preheader164.us.preheader

.preheader164.us.preheader:                       ; preds = %.preheader164.lr.ph
  %5 = add i32 %i.aa, -1
  br label %.preheader164.us

.preheader164.preheader:                          ; preds = %.preheader164.lr.ph
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0116, i8 %.2125150159, i64 %i.di, i1 false), !tbaa !11
  br label %.preheader162

.preheader164.us:                                 ; preds = %.preheader164.us.preheader, %._crit_edge.us194
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge.us194 ], [ %i.aa, %.preheader164.us.preheader ] ; 3 uses
  %.0102191.us = phi i64 [ %i.ht, %._crit_edge.us194 ], [ 0, %.preheader164.us.preheader ] ; 2 uses
  %.0106190.us = phi i64 [ %i.hr, %._crit_edge.us194 ], [ 0, %.preheader164.us.preheader ] ; 4 uses
  %.0110189.us = phi i64 [ %.lcssa252, %._crit_edge.us194 ], [ 0, %.preheader164.us.preheader ] ; 4 uses
  %6 = trunc i64 %.0110189.us to i32              ; 2 uses
  %7 = sub i32 %indvars.iv, %6
  %i.fq = trunc i64 %.0102191.us to i32
  %8 = mul i32 %spec.select141, %i.fq
  %i.fr = add i32 %8, %5
  %xtraiter263 = and i32 %7, 1
  %lcmp.mod264.not = icmp eq i32 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader164.us
  %i.fs = add i64 %.0110189.us, 1                 ; 2 uses
  %i.ft = getelementptr i8, ptr %0, i64 %.0110189.us
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11
  %i.fv = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.fw = zext i8 %i.fu to i32                    ; 2 uses
  %i.fx = lshr i32 %i.fw, 4
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr i8, ptr %i.fv, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %i.gb = getelementptr i8, ptr %.0116, i64 %.0106190.us ; 2 uses
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !11
  %i.gc = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.gd = and i32 %i.fw, 15
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr i8, ptr %i.gc, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = add i64 %.0106190.us, 2                 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gb, i64 1
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !11
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader164.us
  %.lcssa252.unr = phi i64 [ poison, %.preheader164.us ], [ %i.fs, %.prol.loopexit.unr-lcssa ]
  %.lcssa251.unr = phi i64 [ poison, %.preheader164.us ], [ %i.gh, %.prol.loopexit.unr-lcssa ]
  %.1107185.us.unr = phi i64 [ %.0106190.us, %.preheader164.us ], [ %i.gh, %.prol.loopexit.unr-lcssa ]
  %.1111184.us.unr = phi i64 [ %.0110189.us, %.preheader164.us ], [ %i.fs, %.prol.loopexit.unr-lcssa ]
  %9 = icmp eq i32 %i.fr, %6
  br i1 %9, label %._crit_edge.us194, label %.preheader164.us.new

.preheader164.us.new:                             ; preds = %.prol.loopexit, %.preheader164.us.new
  %.1107185.us = phi i64 [ %i.hp, %.preheader164.us.new ], [ %.1107185.us.unr, %.prol.loopexit ] ; 3 uses
  %.1111184.us = phi i64 [ %i.gz, %.preheader164.us.new ], [ %.1111184.us.unr, %.prol.loopexit ] ; 3 uses
  %i.gj = getelementptr i8, ptr %0, i64 %.1111184.us
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !11
  %i.gl = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.gm = zext i8 %i.gk to i32                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 4
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr i8, ptr %i.gl, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !11
  %i.gr = getelementptr i8, ptr %.0116, i64 %.1107185.us ; 2 uses
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !11
  %i.gs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.gt = and i32 %i.gm, 15
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr i8, ptr %i.gs, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !11
  %i.gx = add i64 %.1107185.us, 2                 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gr, i64 1
  store i8 %i.gw, ptr %i.gy, align 1, !tbaa !11
  %i.gz = add i64 %.1111184.us, 2                 ; 3 uses
  %i.ha = getelementptr i8, ptr %0, i64 %.1111184.us
  %i.hb = getelementptr i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !11
  %i.hd = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.he = zext i8 %i.hc to i32                    ; 2 uses
  %i.hf = lshr i32 %i.he, 4
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr i8, ptr %i.hd, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !11
  %i.hj = getelementptr i8, ptr %.0116, i64 %i.gx ; 2 uses
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !11
  %i.hk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.hl = and i32 %i.he, 15
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr i8, ptr %i.hk, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !11
  %i.hp = add i64 %.1107185.us, 4                 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hj, i64 1
  store i8 %i.ho, ptr %i.hq, align 1, !tbaa !11
  %lftr.wideiv.1 = trunc i64 %i.gz to i32
  %exitcond217.not.1 = icmp eq i32 %indvars.iv, %lftr.wideiv.1
  br i1 %exitcond217.not.1, label %._crit_edge.us194, label %.preheader164.us.new, !llvm.loop !33

._crit_edge.us194:                                ; preds = %.preheader164.us.new, %.prol.loopexit
  %.1107185.us.lcssa = phi i64 [ %.0106190.us, %.prol.loopexit ], [ %i.gx, %.preheader164.us.new ]
  %.lcssa252 = phi i64 [ %.lcssa252.unr, %.prol.loopexit ], [ %i.gz, %.preheader164.us.new ] ; 2 uses
  %.lcssa251 = phi i64 [ %.lcssa251.unr, %.prol.loopexit ], [ %i.hp, %.preheader164.us.new ]
  %i.hr = add i64 %.1107185.us.lcssa, 3           ; 2 uses
  %i.hs = getelementptr i8, ptr %.0116, i64 %.lcssa251
  store i8 %.2125150159, ptr %i.hs, align 1, !tbaa !11
  %i.ht = add nuw nsw i64 %.0102191.us, 1         ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %spec.select141
  %exitcond218.not = icmp eq i64 %i.ht, %i.di
  br i1 %exitcond218.not, label %.preheader162, label %.preheader164.us, !llvm.loop !34

.preheader162:                                    ; preds = %._crit_edge.us194, %.preheader164.preheader, %.preheader165
  %.0110.lcssa = phi i64 [ 0, %.preheader165 ], [ 0, %.preheader164.preheader ], [ %.lcssa252, %._crit_edge.us194 ] ; 6 uses
  %.0106.lcssa = phi i64 [ 0, %.preheader165 ], [ %i.di, %.preheader164.preheader ], [ %i.hr, %._crit_edge.us194 ] ; 3 uses
  %i.hu = icmp slt i64 %.0110.lcssa, %1
  br i1 %i.hu, label %.lr.ph200.preheader, label %.critedge

.lr.ph200.preheader:                              ; preds = %.preheader162
  %i.hv = sub i64 %1, %.0110.lcssa
  %.neg = add i64 %.0110.lcssa, 1
  %xtraiter265 = and i64 %i.hv, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader
  %i.hw = add nsw i64 %.0110.lcssa, 1
  %i.hx = getelementptr i8, ptr %0, i64 %.0110.lcssa
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !11
  %i.hz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ia = zext i8 %i.hy to i32                    ; 2 uses
  %i.ib = lshr i32 %i.ia, 4
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr i8, ptr %i.hz, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !11
  %i.if = getelementptr i8, ptr %.0116, i64 %.0106.lcssa ; 2 uses
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !11
  %i.ig = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ih = and i32 %i.ia, 15
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr i8, ptr %i.ig, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !11
  %i.il = add i64 %.0106.lcssa, 2
  %i.im = getelementptr i8, ptr %i.if, i64 1
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !11
  br label %.lr.ph200.prol.loopexit

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %.2108199.unr = phi i64 [ %.0106.lcssa, %.lr.ph200.preheader ], [ %i.il, %.lr.ph200.prol ]
  %.2112198.unr = phi i64 [ %.0110.lcssa, %.lr.ph200.preheader ], [ %i.hw, %.lr.ph200.prol ]
  %i.in = icmp eq i64 %1, %.neg
  br i1 %i.in, label %.critedge, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %.2108199 = phi i64 [ %i.ju, %.lr.ph200 ], [ %.2108199.unr, %.lr.ph200.prol.loopexit ] ; 3 uses
  %.2112198 = phi i64 [ %i.jd, %.lr.ph200 ], [ %.2112198.unr, %.lr.ph200.prol.loopexit ] ; 3 uses
  %i.io = getelementptr i8, ptr %0, i64 %.2112198
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !11
  %i.iq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ir = zext i8 %i.ip to i32                    ; 2 uses
  %i.is = lshr i32 %i.ir, 4
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr i8, ptr %i.iq, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !11
  %i.iw = getelementptr i8, ptr %.0116, i64 %.2108199 ; 2 uses
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !11
  %i.ix = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.iy = and i32 %i.ir, 15
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr i8, ptr %i.ix, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !11
  %i.jc = getelementptr i8, ptr %i.iw, i64 1
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !11
  %i.jd = add nsw i64 %.2112198, 2                ; 2 uses
  %i.je = getelementptr i8, ptr %0, i64 %.2112198
  %i.jf = getelementptr i8, ptr %i.je, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !11
  %i.jh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ji = zext i8 %i.jg to i32                    ; 2 uses
  %i.jj = lshr i32 %i.ji, 4
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr i8, ptr %i.jh, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !11
  %i.jn = getelementptr i8, ptr %.0116, i64 %.2108199 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 2
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !11
  %i.jp = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.jq = and i32 %i.ji, 15
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr i8, ptr %i.jp, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !11
  %i.ju = add i64 %.2108199, 4
  %i.jv = getelementptr i8, ptr %i.jn, i64 3
  store i8 %i.jt, ptr %i.jv, align 1, !tbaa !11
  %exitcond219.not.1 = icmp eq i64 %i.jd, %1
  br i1 %exitcond219.not.1, label %.critedge, label %.lr.ph200, !llvm.loop !35

.preheader166:                                    ; preds = %._crit_edge.us, %.preheader168.preheader, %.preheader169
  %.3113.lcssa = phi i64 [ %i.dg, %.preheader169 ], [ %i.dg, %.preheader168.preheader ], [ %.lcssa256, %._crit_edge.us ] ; 6 uses
  %.3109.lcssa = phi i64 [ %.3109175, %.preheader169 ], [ %i.dn, %.preheader168.preheader ], [ %.3109.us, %._crit_edge.us ] ; 3 uses
  %i.jw = icmp sgt i64 %.3113.lcssa, -1
  br i1 %i.jw, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader166
  %i.jx = and i64 %.3113.lcssa, 1
  %lcmp.mod262.not.not = icmp eq i64 %i.jx, 0
  br i1 %lcmp.mod262.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.jy = add nsw i64 %.3113.lcssa, -1
  %i.jz = getelementptr i8, ptr %0, i64 %.3113.lcssa
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !11
  %i.kb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.kc = zext i8 %i.ka to i32                    ; 2 uses
  %i.kd = and i32 %i.kc, 15
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr i8, ptr %i.kb, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !11
  %i.kh = getelementptr i8, ptr %.0116, i64 %.3109.lcssa ; 2 uses
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !11
  %i.ki = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.kj = lshr i32 %i.kc, 4
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !11
  %i.kn = add i64 %.3109.lcssa, -2
  %i.ko = getelementptr i8, ptr %i.kh, i64 -1
  store i8 %i.km, ptr %i.ko, align 1, !tbaa !11
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.5183.unr = phi i64 [ %.3109.lcssa, %.lr.ph.preheader ], [ %i.kn, %.lr.ph.prol ]
  %.5115182.unr = phi i64 [ %.3113.lcssa, %.lr.ph.preheader ], [ %i.jy, %.lr.ph.prol ]
  %i.kp = icmp eq i64 %.3113.lcssa, 0
  br i1 %i.kp, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.5183 = phi i64 [ %i.lw, %.lr.ph ], [ %.5183.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.5115182 = phi i64 [ %i.lg, %.lr.ph ], [ %.5115182.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.kq = add nsw i64 %.5115182, -1               ; 2 uses
  %i.kr = getelementptr i8, ptr %0, i64 %.5115182
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !11
  %i.kt = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ku = zext i8 %i.ks to i32                    ; 2 uses
  %i.kv = and i32 %i.ku, 15
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr i8, ptr %i.kt, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !11
  %i.kz = getelementptr i8, ptr %.0116, i64 %.5183 ; 2 uses
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !11
  %i.la = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.lb = lshr i32 %i.ku, 4
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr i8, ptr %i.la, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !11
  %i.lf = getelementptr i8, ptr %i.kz, i64 -1
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !11
  %i.lg = add nsw i64 %.5115182, -2
  %i.lh = getelementptr i8, ptr %0, i64 %i.kq
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !11
  %i.lj = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.lk = zext i8 %i.li to i32                    ; 2 uses
  %i.ll = and i32 %i.lk, 15
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr i8, ptr %i.lj, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !11
  %i.lp = getelementptr i8, ptr %.0116, i64 %.5183 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 -2
  store i8 %i.lo, ptr %i.lq, align 1, !tbaa !11
  %i.lr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.ls = lshr i32 %i.lk, 4
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr i8, ptr %i.lr, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !11
  %i.lw = add i64 %.5183, -4
  %i.lx = getelementptr i8, ptr %i.lp, i64 -3
  store i8 %i.lv, ptr %i.lx, align 1, !tbaa !11
  %.not238.1 = icmp eq i64 %i.kq, 0
  br i1 %.not238.1, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge.loopexit249.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.critedge, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.critedge.loopexit249.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi ptr [ %.0116, %.lr.ph.i.preheader ], [ %i.de, %.critedge.loopexit249.unr-lcssa ] ; 2 uses
  %.089.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.df, %.critedge.loopexit249.unr-lcssa ]
  %lcmp.mod269 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.ly = getelementptr i8, ptr %0, i64 %.089.i.epil.init
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !11
  %i.ma = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.mb = zext i8 %i.lz to i32                    ; 2 uses
  %i.mc = lshr i32 %i.mb, 4
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr i8, ptr %i.ma, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11
  %i.mg = getelementptr i8, ptr %.010.i.epil.init, i64 1
  store i8 %i.mf, ptr %.010.i.epil.init, align 1, !tbaa !11
  %i.mh = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.mi = and i32 %i.mb, 15
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr i8, ptr %i.mh, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !11
  store i8 %i.ml, ptr %i.mg, align 1, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph200.prol.loopexit, %.lr.ph200, %.lr.ph.i.epil.preheader, %.critedge.loopexit249.unr-lcssa, %.lr.ph.i.i, %.preheader166, %.preheader162, %bb.ab, %bb.aa, %bb.m, %bb.d, %bb.g, %bb.b, %bb.n, %bb.r, %bb.v, %bb.t
  %.3 = phi ptr [ %.0117, %.preheader162 ], [ %i.ac, %bb.r ], [ null, %bb.v ], [ null, %bb.t ], [ %.0117, %.preheader166 ], [ %.0117, %.lr.ph200.prol.loopexit ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.d ], [ %.0117, %bb.aa ], [ %.0117, %bb.ab ], [ %.0117, %.lr.ph.i.i ], [ %.0117, %.lr.ph.i.epil.preheader ], [ %.0117, %.critedge.loopexit249.unr-lcssa ], [ %.0117, %.lr.ph200 ], [ %.0117, %.lr.ph ], [ %.0117, %.lr.ph.prol.loopexit ]
end_hunk_0
