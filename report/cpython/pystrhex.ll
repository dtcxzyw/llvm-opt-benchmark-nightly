inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0_@_Py_strhex:bb.a
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
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %5 = trunc nuw i32 %4 to i1
  %or.cond = or i1 %i.r, %5
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.1) #6
  br label %.critedge

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %spec.select160 = tail call i32 @llvm.abs.i32(i32 %3, i1 false) ; 3 uses
  %i.t = icmp ne i32 %3, 0
  %i.u = icmp sgt i64 %1, 0                       ; 2 uses
  %or.cond3 = and i1 %i.u, %i.t
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i64 %1, -1
  %i.w = zext i32 %spec.select160 to i64
  %i.x = udiv i64 %i.v, %i.w
  br label %bb.q

bb.q:                                             ; preds = %.thread154, %bb.p, %bb.o
  %i.y = phi i1 [ true, %bb.p ], [ %i.u, %bb.o ], [ %i.a, %.thread154 ]
  %i.z = phi i32 [ %spec.select160, %bb.p ], [ %spec.select160, %bb.o ], [ 0, %.thread154 ] ; 2 uses
  %.2125150159 = phi i8 [ %.0123, %bb.p ], [ %.0123, %bb.o ], [ 0, %.thread154 ] ; 4 uses
  %.0121152158 = phi i32 [ %3, %bb.p ], [ %3, %bb.o ], [ 0, %.thread154 ]
  %.0118 = phi i64 [ %i.x, %bb.p ], [ 0, %bb.o ], [ 0, %.thread154 ] ; 2 uses
  %i.aa = sub nsw i64 4611686018427387903, %.0118
  %.not136 = icmp slt i64 %1, %i.aa
  br i1 %.not136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call ptr @PyErr_NoMemory() #6
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ac = shl i64 %1, 1
  %i.ad = add i64 %.0118, %i.ac                   ; 4 uses
  %i.ae = zext i32 %i.z to i64
  %.not137 = icmp ugt i64 %1, %i.ae               ; 2 uses
  %spec.select = select i1 %.not137, i32 %.0121152158, i32 0 ; 2 uses
  %spec.select141 = select i1 %.not137, i32 %i.z, i32 0 ; 10 uses
  %.not138 = icmp eq i32 %4, 0
  br i1 %.not138, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ad) #6 ; 3 uses
  %.not140 = icmp eq ptr %i.af, null
  br i1 %.not140, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  br label %_PyUnicode_DATA.exit

bb.v:                                             ; preds = %bb.s
  %i.ah = tail call ptr @PyUnicode_New(i64 noundef %i.ad, i32 noundef 127) #6 ; 6 uses
  %.not139 = icmp eq ptr %i.ah, null
  br i1 %.not139, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %.val.i = load i32, ptr %i.ai, align 8          ; 2 uses
  %i.aj = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.ak, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i145 = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.y:                                             ; preds = %bb.w
  %i.al = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i = load ptr, ptr %i.al, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.y, %bb.x, %bb.u
  %.0117 = phi ptr [ %i.af, %bb.u ], [ %i.ah, %bb.x ], [ %i.ah, %bb.y ] ; 11 uses
  %.0116 = phi ptr [ %i.ag, %bb.u ], [ %.0.i.i145, %bb.x ], [ %.val4.i, %bb.y ] ; 19 uses
  %i.am = icmp eq i32 %spec.select, 0
  br i1 %i.am, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_PyUnicode_DATA.exit
  %i.an = icmp sgt i64 %1, 15
  br i1 %i.an, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.z, %.preheader
  %i.ao = phi i64 [ %i.be, %.preheader ], [ 16, %bb.z ] ; 4 uses
  %.038.i = phi ptr [ %i.bd, %.preheader ], [ %.0116, %bb.z ] ; 3 uses
  %.03437.i = phi i64 [ %i.ao, %.preheader ], [ 0, %bb.z ]
  %i.ap = getelementptr i8, ptr %0, i64 %.03437.i
  %.0.copyload13.i = load <16 x i8>, ptr %i.ap, align 1 ; 3 uses
  %i.aq = lshr <16 x i8> %.0.copyload13.i, splat (i8 4)
  %i.ar = and <16 x i8> %.0.copyload13.i, splat (i8 15) ; 2 uses
  %i.as = icmp ugt <16 x i8> %.0.copyload13.i, splat (i8 -97)
  %i.at = icmp samesign ugt <16 x i8> %i.ar, splat (i8 9)
  %i.au = or disjoint <16 x i8> %i.aq, splat (i8 48)
  %i.av = select <16 x i1> %i.as, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.aw = add nuw nsw <16 x i8> %i.au, %i.av      ; 2 uses
  %i.ax = or disjoint <16 x i8> %i.ar, splat (i8 48)
  %i.ay = select <16 x i1> %i.at, <16 x i8> splat (i8 39), <16 x i8> zeroinitializer
  %i.az = add nuw nsw <16 x i8> %i.ay, %i.ax      ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bb = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ba, ptr %.038.i, align 1
  %i.bc = getelementptr i8, ptr %.038.i, i64 16
  store <16 x i8> %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %.038.i, i64 32   ; 2 uses
  %i.be = add nuw nsw i64 %i.ao, 16               ; 2 uses
  %.not.i147 = icmp samesign ugt i64 %i.be, %1
  br i1 %.not.i147, label %bb.aa, label %.preheader, !llvm.loop !12

bb.aa:                                            ; preds = %.preheader
  %i.bf = getelementptr i8, ptr %0, i64 %i.ao
  %i.bg = sub nsw i64 %1, %i.ao                   ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.bd, %bb.aa ] ; 3 uses
  %.089.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bf, i64 %.089.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bl = zext i8 %i.bj to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 4
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = getelementptr i8, ptr %.010.i.i, i64 1
  store i8 %i.bp, ptr %.010.i.i, align 1, !tbaa !11
  %i.br = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.bs = and i32 %i.bl, 15
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %i.br, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = getelementptr i8, ptr %.010.i.i, i64 2
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !11
  %i.bx = add nuw nsw i64 %.089.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.bg
  br i1 %exitcond.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !17

bb.ab:                                            ; preds = %bb.z
  br i1 %i.y, label %.lr.ph.i.preheader, label %.critedge

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %xtraiter267 = and i64 %1, 1
  %i.by = icmp eq i64 %1, 1
  br i1 %i.by, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter270 = and i64 %1, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi ptr [ %.0116, %.lr.ph.i.preheader.new ], [ %i.dd, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.de, %.lr.ph.i ] ; 3 uses
  %niter271 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter271.next.1, %.lr.ph.i ]
  %i.bz = getelementptr i8, ptr %0, i64 %.089.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.cc = zext i8 %i.ca to i32                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.cb, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = getelementptr i8, ptr %.010.i, i64 1
  store i8 %i.cg, ptr %.010.i, align 1, !tbaa !11
  %i.ci = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.cj = and i32 %i.cc, 15
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = getelementptr i8, ptr %.010.i, i64 2
  store i8 %i.cm, ptr %i.ch, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %0, i64 %.089.i
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cr = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.cs = zext i8 %i.cq to i32                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 4
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %i.cr, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = getelementptr i8, ptr %.010.i, i64 3
  store i8 %i.cw, ptr %i.cn, align 1, !tbaa !11
  %i.cy = load ptr, ptr @Py_hexdigits, align 8, !tbaa !14
  %i.cz = and i32 %i.cs, 15
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr i8, ptr %i.cy, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr i8, ptr %.010.i, i64 4    ; 2 uses
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !11
  %i.de = add nuw nsw i64 %.089.i, 2              ; 2 uses
  %niter271.next.1 = add i64 %niter271, 2         ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %.critedge.loopexit249.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit
end_hunk_0
