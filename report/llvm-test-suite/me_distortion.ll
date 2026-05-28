inline.NumInlined: 51
inline.NumDeleted: 4
begin_hunk_0_@computeBiPredSSE2:bb.a

.preheader109.preheader:                          ; preds = %.preheader109.lr.ph.split
  %i.jo = sext i32 %i.e to i64
  %i.jp = shl nsw i64 %i.jo, 1                    ; 2 uses
  %i.jq = sext i32 %2 to i64
  %i.jr = shl nsw i64 %i.jq, 1                    ; 2 uses
  %i.js = sub nsw i64 %i.jp, %i.jr
  %i.jt = add nsw i32 %1, -1
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = mul i64 %i.js, %i.ju
  %i.jw = add i64 %i.jv, %i.jp
  %i.jx = sub i64 %i.jw, %i.jr                    ; 2 uses
  %scevgep = getelementptr i8, ptr %ref2_line.promoted118, i64 %i.jx
  %scevgep212 = getelementptr i8, ptr %i.q, i64 %i.jx
  store ptr %scevgep, ptr @ref2_line, align 8, !tbaa !33
  store ptr %scevgep212, ptr @ref1_line, align 8, !tbaa !33
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.preheader109.preheader, %._crit_edge132.split.us, %bb.a
  %.098.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.preheader109.preheader ], [ %.lcssa279, %._crit_edge132.split.us ] ; 6 uses
  %i.jy = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not = icmp eq i32 %i.jy, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge132
  %i.jz = load i32, ptr @shift_cr_x, align 4, !tbaa !4
  %i.ka = ashr i32 %2, %i.jz                      ; 10 uses
  %i.kb = load i32, ptr @shift_cr_y, align 4, !tbaa !4
  %i.kc = ashr i32 %1, %i.kb
  %.fr185 = freeze i32 %i.kc                      ; 4 uses
  %i.kd = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4 ; 2 uses
  %i.ke = sub nsw i32 %i.kd, %i.ka
  %i.kf = icmp sgt i32 %.fr185, 0
  %i.kg = icmp sgt i32 %i.ka, 0                   ; 2 uses
  %i.kh = sext i32 %i.ke to i64                   ; 4 uses
  br i1 %i.kf, label %.preheader.lr.ph.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.ki, ptr @src_line, align 8, !tbaa !33
  %i.kj = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.kk
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !8
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 8), align 8, !tbaa !42
  %i.ko = tail call ptr %i.km(ptr noundef %i.kn, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.ko, ptr @ref2_line, align 8, !tbaa !33
  %i.kp = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !8
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 8), align 8, !tbaa !42
  %i.ku = tail call ptr %i.ks(ptr noundef %i.kt, i32 noundef %5, i32 noundef %4) #8
  store ptr %i.ku, ptr @ref1_line, align 8, !tbaa !33
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.kv, ptr @src_line, align 8, !tbaa !33
  %i.kw = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !8
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !42
  %i.lb = tail call ptr %i.kz(ptr noundef %i.la, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.lb, ptr @ref2_line, align 8, !tbaa !33
  %i.lc = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.lg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !42
  %i.lh = tail call ptr %i.lf(ptr noundef %i.lg, i32 noundef %5, i32 noundef %4) #8
  store ptr %i.lh, ptr @ref1_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.lr.ph.us.preheader:                    ; preds = %bb.c
  %i.li = sext i32 %i.kd to i64
  %i.lj = shl nsw i64 %i.li, 1                    ; 2 uses
  %i.lk = sext i32 %i.ka to i64
  %i.ll = shl nsw i64 %i.lk, 1                    ; 2 uses
  %i.lm = sub nsw i64 %i.lj, %i.ll
  %i.ln = add nsw i32 %.fr185, -1
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = mul i64 %i.lm, %i.lo
  %i.lq = add i64 %i.lp, %i.lj
  %i.lr = sub i64 %i.lq, %i.ll                    ; 4 uses
  %i.ls = add i32 %i.ka, -1
  %i.lt = zext i32 %i.ls to i64
  %i.lu = shl nuw nsw i64 %i.lt, 2
  %i.lv = add nuw nsw i64 %i.lu, 4                ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.lw, ptr @src_line, align 8, !tbaa !33
  %i.lx = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !8
  %i.mb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 8), align 8, !tbaa !42
  %i.mc = tail call ptr %i.ma(ptr noundef %i.mb, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.mc, ptr @ref2_line, align 8, !tbaa !33
  %i.md = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.me
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !8
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 8), align 8, !tbaa !42
  %i.mi = tail call ptr %i.mg(ptr noundef %i.mh, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.mi, ptr @ref1_line, align 8, !tbaa !33
  %ref2_line.promoted144.us = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.kg, label %.preheader.lr.ph.split.us.us, label %.preheader.lr.ph.split.us176

.preheader.lr.ph.split.us176:                     ; preds = %.preheader.lr.ph.us.preheader
  %.not106.us177 = icmp slt i32 %.098.lcssa, %3
  br i1 %.not106.us177, label %.preheader.us171.preheader, label %.loopexit

.preheader.us171.preheader:                       ; preds = %.preheader.lr.ph.split.us176
  %scevgep214 = getelementptr i8, ptr %ref2_line.promoted144.us, i64 %i.lr
  %scevgep215 = getelementptr i8, ptr %i.mi, i64 %i.lr
  br label %._crit_edge158.us

._crit_edge158.us:                                ; preds = %bb.e, %.preheader.us171.preheader
  %.lcssa254.sink = phi ptr [ %scevgep214, %.preheader.us171.preheader ], [ %i.rn, %bb.e ]
  %.lcssa253.sink = phi ptr [ %scevgep215, %.preheader.us171.preheader ], [ %i.ro, %bb.e ]
  %.us-phi163.us = phi i32 [ %.098.lcssa, %.preheader.us171.preheader ], [ %.lcssa272, %bb.e ] ; 2 uses
  store ptr %.lcssa254.sink, ptr @ref2_line, align 8, !tbaa !33
  store ptr %.lcssa253.sink, ptr @ref1_line, align 8, !tbaa !33
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.mj, ptr @src_line, align 8, !tbaa !33
  %i.mk = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !8
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !42
  %i.mp = tail call ptr %i.mn(ptr noundef %i.mo, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.mp, ptr @ref2_line, align 8, !tbaa !33
  %i.mq = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !8
  %i.mu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !42
  %i.mv = tail call ptr %i.mt(ptr noundef %i.mu, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.mv, ptr @ref1_line, align 8, !tbaa !33
  %ref2_line.promoted144.us.1 = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.kg, label %.preheader.lr.ph.split.us.us.1, label %.preheader.us171.preheader.1

.preheader.us171.preheader.1:                     ; preds = %._crit_edge158.us
  %scevgep214.1 = getelementptr i8, ptr %ref2_line.promoted144.us.1, i64 %i.lr
  %scevgep215.1 = getelementptr i8, ptr %i.mv, i64 %i.lr
  store ptr %scevgep214.1, ptr @ref2_line, align 8, !tbaa !33
  store ptr %scevgep215.1, ptr @ref1_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.lr.ph.split.us.us.1:                   ; preds = %._crit_edge158.us
  %i.mw = load ptr, ptr @img, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 15524
  %src_line.promoted150.us.1 = load ptr, ptr @src_line, align 8
  %i.my = load i16, ptr getelementptr inbounds nuw (i8, ptr @weight1_cr, i64 2), align 2, !tbaa !40
  %i.mz = sext i16 %i.my to i32                   ; 3 uses
  %i.na = load i16, ptr getelementptr inbounds nuw (i8, ptr @weight2_cr, i64 2), align 2, !tbaa !40
  %i.nb = sext i16 %i.na to i32                   ; 3 uses
  %i.nc = load i32, ptr %i.mx, align 4, !tbaa !48 ; 3 uses
  %i.nd = load i16, ptr getelementptr inbounds nuw (i8, ptr @offsetBi_cr, i64 2), align 2, !tbaa !40
  %i.ne = sext i16 %i.nd to i32                   ; 3 uses
  %i.nf = zext nneg i32 %i.ka to i64              ; 2 uses
  %min.iters.check352 = icmp ult i32 %i.ka, 4
  %n.vec355 = and i64 %i.nf, 2147483644           ; 4 uses
  %i.ng = trunc nuw nsw i64 %n.vec355 to i32
  %i.nh = shl nuw nsw i64 %n.vec355, 2            ; 3 uses
  %broadcast.splatinsert356 = insertelement <4 x i32> poison, i32 %i.mz, i64 0
  %broadcast.splat357 = shufflevector <4 x i32> %broadcast.splatinsert356, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert358 = insertelement <4 x i32> poison, i32 %i.nb, i64 0
  %broadcast.splat359 = shufflevector <4 x i32> %broadcast.splatinsert358, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert364 = insertelement <4 x i32> poison, i32 %i.ne, i64 0
  %broadcast.splat365 = shufflevector <4 x i32> %broadcast.splatinsert364, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <4 x i32> poison, i32 %i.nc, i64 0
  %broadcast.splat367 = shufflevector <4 x i32> %broadcast.splatinsert366, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n385 = icmp eq i64 %n.vec355, %i.nf
  br label %.preheader.us.us.1

.preheader.us.us.1:                               ; preds = %bb.d, %.preheader.lr.ph.split.us.us.1
  %.3157.us.us.1 = phi i32 [ %.us-phi163.us, %.preheader.lr.ph.split.us.us.1 ], [ %.lcssa, %bb.d ] ; 2 uses
  %.1102156.us.us.1 = phi i32 [ 0, %.preheader.lr.ph.split.us.us.1 ], [ %i.qb, %bb.d ]
  %.lcssa142145155.us.us.1 = phi ptr [ %ref2_line.promoted144.us.1, %.preheader.lr.ph.split.us.us.1 ], [ %i.pz, %bb.d ] ; 4 uses
  %.lcssa141148154.us.us.1 = phi ptr [ %i.mv, %.preheader.lr.ph.split.us.us.1 ], [ %i.qa, %bb.d ] ; 4 uses
  %.lcssa143152153.us.us.1 = phi ptr [ %src_line.promoted150.us.1, %.preheader.lr.ph.split.us.us.1 ], [ %scevgep218.1, %bb.d ] ; 4 uses
  br i1 %min.iters.check352, label %scalar.ph351.preheader, label %vector.ph353

vector.ph353:                                     ; preds = %.preheader.us.us.1
  %i.ni = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.nh
  %i.nj = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.nh
  %i.nk = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.nh
  %i.nl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3157.us.us.1, i64 0
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph353
  %index369 = phi i64 [ 0, %vector.ph353 ], [ %index.next383, %vector.body368 ] ; 2 uses
  %vec.phi370 = phi <4 x i32> [ %i.nl, %vector.ph353 ], [ %i.oe, %vector.body368 ]
  %i.nm = shl i64 %index369, 2                    ; 3 uses
  %next.gep371 = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.nm
  %next.gep372 = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.nm
  %next.gep373 = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.nm
  %wide.vec374 = load <8 x i16>, ptr %next.gep371, align 2, !tbaa !40 ; 2 uses
  %strided.vec375 = shufflevector <8 x i16> %wide.vec374, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec376 = shufflevector <8 x i16> %wide.vec374, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = zext <4 x i16> %strided.vec375 to <4 x i32>
  %i.nn = mul nsw <4 x i32> %broadcast.splat357, %8
  %wide.vec377 = load <8 x i16>, ptr %next.gep372, align 2, !tbaa !40 ; 2 uses
  %strided.vec378 = shufflevector <8 x i16> %wide.vec377, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec379 = shufflevector <8 x i16> %wide.vec377, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %9 = zext <4 x i16> %strided.vec378 to <4 x i32>
  %i.no = mul nsw <4 x i32> %broadcast.splat359, %9
  %i.np = add <4 x i32> %i.nn, %broadcast.splat361
  %i.nq = add <4 x i32> %i.np, %i.no
  %i.nr = ashr <4 x i32> %i.nq, %broadcast.splat363
  %i.ns = add nsw <4 x i32> %i.nr, %broadcast.splat365
  %i.nt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ns, <4 x i32> zeroinitializer)
  %i.nu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.nt, <4 x i32> %broadcast.splat367)
  %wide.vec380 = load <8 x i16>, ptr %next.gep373, align 2, !tbaa !40 ; 2 uses
  %strided.vec381 = shufflevector <8 x i16> %wide.vec380, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec382 = shufflevector <8 x i16> %wide.vec380, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %10 = zext <4 x i16> %strided.vec381 to <4 x i32>
  %11 = sub nsw <4 x i32> %10, %i.nu              ; 2 uses
  %12 = mul nsw <4 x i32> %11, %11
  %13 = add <4 x i32> %12, %vec.phi370
  %14 = zext <4 x i16> %strided.vec376 to <4 x i32>
  %15 = mul nsw <4 x i32> %broadcast.splat357, %14
  %16 = zext <4 x i16> %strided.vec379 to <4 x i32>
  %i.nv = mul nsw <4 x i32> %broadcast.splat359, %16
  %i.nw = add <4 x i32> %15, %broadcast.splat361
  %i.nx = add <4 x i32> %i.nw, %i.nv
  %i.ny = ashr <4 x i32> %i.nx, %broadcast.splat363
  %i.nz = add nsw <4 x i32> %i.ny, %broadcast.splat365
  %i.oa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nz, <4 x i32> zeroinitializer)
  %i.ob = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.oa, <4 x i32> %broadcast.splat367)
  %17 = zext <4 x i16> %strided.vec382 to <4 x i32>
  %i.oc = sub nsw <4 x i32> %17, %i.ob            ; 2 uses
  %i.od = mul nsw <4 x i32> %i.oc, %i.oc
  %i.oe = add <4 x i32> %13, %i.od                ; 2 uses
  %index.next383 = add nuw i64 %index369, 4       ; 2 uses
  %i.of = icmp eq i64 %index.next383, %n.vec355
  br i1 %i.of, label %middle.block384, label %vector.body368, !llvm.loop !94

middle.block384:                                  ; preds = %vector.body368
  %i.og = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oe) ; 2 uses
  br i1 %cmp.n385, label %._crit_edge.us160.us.1, label %scalar.ph351.preheader

scalar.ph351.preheader:                           ; preds = %.preheader.us.us.1, %middle.block384
  %.4140.us.us.1.ph = phi i32 [ %.3157.us.us.1, %.preheader.us.us.1 ], [ %i.og, %middle.block384 ]
  %.1104139.us.us.1.ph = phi i32 [ 0, %.preheader.us.us.1 ], [ %i.ng, %middle.block384 ]
  %.ph = phi ptr [ %.lcssa141148154.us.us.1, %.preheader.us.us.1 ], [ %i.ni, %middle.block384 ]
  %.ph391 = phi ptr [ %.lcssa142145155.us.us.1, %.preheader.us.us.1 ], [ %i.nj, %middle.block384 ]
  %.ph392 = phi ptr [ %.lcssa143152153.us.us.1, %.preheader.us.us.1 ], [ %i.nk, %middle.block384 ]
  br label %scalar.ph351

scalar.ph351:                                     ; preds = %scalar.ph351.preheader, %scalar.ph351
  %.4140.us.us.1 = phi i32 [ %i.px, %scalar.ph351 ], [ %.4140.us.us.1.ph, %scalar.ph351.preheader ]
  %.1104139.us.us.1 = phi i32 [ %i.py, %scalar.ph351 ], [ %.1104139.us.us.1.ph, %scalar.ph351.preheader ]
  %i.oh = phi ptr [ %i.pe, %scalar.ph351 ], [ %.ph, %scalar.ph351.preheader ] ; 3 uses
  %i.oi = phi ptr [ %i.pi, %scalar.ph351 ], [ %.ph391, %scalar.ph351.preheader ] ; 3 uses
  %i.oj = phi ptr [ %i.ps, %scalar.ph351 ], [ %.ph392, %scalar.ph351.preheader ] ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.ol = load i16, ptr %i.oh, align 2, !tbaa !40
  %i.om = zext i16 %i.ol to i32
  %i.on = mul nsw i32 %i.om, %i.mz
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  %i.op = load i16, ptr %i.oi, align 2, !tbaa !40
  %i.oq = zext i16 %i.op to i32
  %i.or = mul nsw i32 %i.oq, %i.nb
  %i.os = add i32 %i.on, %i.d
  %i.ot = add i32 %i.os, %i.or
  %i.ou = ashr i32 %i.ot, %i.b
  %i.ov = add nsw i32 %i.ou, %i.ne
  %i.ow = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ov, i32 0)
  %i.ox = tail call noundef i32 @llvm.smin.i32(i32 %i.ow, i32 %i.nc)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.oz = load i16, ptr %i.oj, align 2, !tbaa !40
  %i.pa = zext i16 %i.oz to i32
  %i.pb = sub nsw i32 %i.pa, %i.ox                ; 2 uses
  %i.pc = mul nsw i32 %i.pb, %i.pb
  %i.pd = add nsw i32 %i.pc, %.4140.us.us.1
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.pf = load i16, ptr %i.ok, align 2, !tbaa !40
  %i.pg = zext i16 %i.pf to i32
  %i.ph = mul nsw i32 %i.pg, %i.mz
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.pj = load i16, ptr %i.oo, align 2, !tbaa !40
  %i.pk = zext i16 %i.pj to i32
  %i.pl = mul nsw i32 %i.pk, %i.nb
  %i.pm = add i32 %i.ph, %i.d
  %i.pn = add i32 %i.pm, %i.pl
  %i.po = ashr i32 %i.pn, %i.b
  %i.pp = add nsw i32 %i.po, %i.ne
  %i.pq = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.pp, i32 0)
  %i.pr = tail call noundef i32 @llvm.smin.i32(i32 %i.pq, i32 %i.nc)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.pt = load i16, ptr %i.oy, align 2, !tbaa !40
  %i.pu = zext i16 %i.pt to i32
  %i.pv = sub nsw i32 %i.pu, %i.pr                ; 2 uses
  %i.pw = mul nsw i32 %i.pv, %i.pv
  %i.px = add nsw i32 %i.pd, %i.pw                ; 2 uses
  %i.py = add nuw nsw i32 %.1104139.us.us.1, 1    ; 2 uses
  %exitcond219.1.not = icmp eq i32 %i.py, %i.ka
  br i1 %exitcond219.1.not, label %._crit_edge.us160.us.1, label %scalar.ph351, !llvm.loop !95

._crit_edge.us160.us.1:                           ; preds = %scalar.ph351, %middle.block384
  %.lcssa = phi i32 [ %i.og, %middle.block384 ], [ %i.px, %scalar.ph351 ] ; 4 uses
  %scevgep216.1 = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.lv ; 2 uses
  %scevgep217.1 = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.lv ; 2 uses
  %scevgep218.1 = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.lv ; 3 uses
  %.not106.us.us.1 = icmp slt i32 %.lcssa, %3
  br i1 %.not106.us.us.1, label %bb.d, label %.loopexit.split.us

bb.d:                                             ; preds = %._crit_edge.us160.us.1
  %i.pz = getelementptr inbounds [2 x i8], ptr %scevgep217.1, i64 %i.kh ; 2 uses
  %i.qa = getelementptr inbounds [2 x i8], ptr %scevgep216.1, i64 %i.kh ; 2 uses
  %i.qb = add nuw nsw i32 %.1102156.us.us.1, 1    ; 2 uses
  %exitcond220.1.not = icmp eq i32 %i.qb, %.fr185
  br i1 %exitcond220.1.not, label %._crit_edge158.split.us.us.1, label %.preheader.us.us.1, !llvm.loop !96

._crit_edge158.split.us.us.1:                     ; preds = %bb.d
  store ptr %i.pz, ptr @ref2_line, align 8, !tbaa !33
  store ptr %i.qa, ptr @ref1_line, align 8, !tbaa !33
  store ptr %scevgep218.1, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.lr.ph.split.us.us:                     ; preds = %.preheader.lr.ph.us.preheader
  %i.qc = load ptr, ptr @img, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 15524
  %src_line.promoted150.us = load ptr, ptr @src_line, align 8
  %i.qe = load i16, ptr @weight1_cr, align 2, !tbaa !40
  %i.qf = sext i16 %i.qe to i32                   ; 3 uses
  %i.qg = load i16, ptr @weight2_cr, align 2, !tbaa !40
  %i.qh = sext i16 %i.qg to i32                   ; 3 uses
  %i.qi = load i32, ptr %i.qd, align 4, !tbaa !48 ; 3 uses
  %i.qj = load i16, ptr @offsetBi_cr, align 2, !tbaa !40
  %i.qk = sext i16 %i.qj to i32                   ; 3 uses
  %i.ql = zext nneg i32 %i.ka to i64              ; 2 uses
  %min.iters.check314 = icmp ult i32 %i.ka, 4
  %n.vec317 = and i64 %i.ql, 2147483644           ; 4 uses
  %i.qm = trunc nuw nsw i64 %n.vec317 to i32
  %i.qn = shl nuw nsw i64 %n.vec317, 2            ; 3 uses
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %i.qf, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert320 = insertelement <4 x i32> poison, i32 %i.qh, i64 0
  %broadcast.splat321 = shufflevector <4 x i32> %broadcast.splatinsert320, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert322 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat323 = shufflevector <4 x i32> %broadcast.splatinsert322, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert324 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat325 = shufflevector <4 x i32> %broadcast.splatinsert324, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert326 = insertelement <4 x i32> poison, i32 %i.qk, i64 0
  %broadcast.splat327 = shufflevector <4 x i32> %broadcast.splatinsert326, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert328 = insertelement <4 x i32> poison, i32 %i.qi, i64 0
  %broadcast.splat329 = shufflevector <4 x i32> %broadcast.splatinsert328, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec317, %i.ql
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.e, %.preheader.lr.ph.split.us.us
  %.3157.us.us = phi i32 [ %.098.lcssa, %.preheader.lr.ph.split.us.us ], [ %.lcssa272, %bb.e ] ; 2 uses
  %.1102156.us.us = phi i32 [ 0, %.preheader.lr.ph.split.us.us ], [ %i.rp, %bb.e ]
  %.lcssa142145155.us.us = phi ptr [ %ref2_line.promoted144.us, %.preheader.lr.ph.split.us.us ], [ %i.rn, %bb.e ] ; 4 uses
  %.lcssa141148154.us.us = phi ptr [ %i.mi, %.preheader.lr.ph.split.us.us ], [ %i.ro, %bb.e ] ; 4 uses
  %.lcssa143152153.us.us = phi ptr [ %src_line.promoted150.us, %.preheader.lr.ph.split.us.us ], [ %scevgep218, %bb.e ] ; 4 uses
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %.preheader.us.us
  %i.qo = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.qn
  %i.qp = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.qn
  %i.qq = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.qn
  %i.qr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3157.us.us, i64 0
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph315
  %index331 = phi i64 [ 0, %vector.ph315 ], [ %index.next343, %vector.body330 ] ; 2 uses
  %vec.phi332 = phi <4 x i32> [ %i.qr, %vector.ph315 ], [ %i.rk, %vector.body330 ]
  %i.qs = shl i64 %index331, 2                    ; 3 uses
  %next.gep333 = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.qs
  %next.gep334 = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.qs
  %next.gep335 = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.qs
  %wide.vec = load <8 x i16>, ptr %next.gep333, align 2, !tbaa !40 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec336 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %18 = zext <4 x i16> %strided.vec to <4 x i32>
  %i.qt = mul nsw <4 x i32> %broadcast.splat319, %18
  %wide.vec337 = load <8 x i16>, ptr %next.gep334, align 2, !tbaa !40 ; 2 uses
  %strided.vec338 = shufflevector <8 x i16> %wide.vec337, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec339 = shufflevector <8 x i16> %wide.vec337, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %19 = zext <4 x i16> %strided.vec338 to <4 x i32>
  %i.qu = mul nsw <4 x i32> %broadcast.splat321, %19
  %i.qv = add <4 x i32> %i.qt, %broadcast.splat323
  %i.qw = add <4 x i32> %i.qv, %i.qu
  %i.qx = ashr <4 x i32> %i.qw, %broadcast.splat325
  %i.qy = add nsw <4 x i32> %i.qx, %broadcast.splat327
  %i.qz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qy, <4 x i32> zeroinitializer)
  %i.ra = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qz, <4 x i32> %broadcast.splat329)
  %wide.vec340 = load <8 x i16>, ptr %next.gep335, align 2, !tbaa !40 ; 2 uses
  %strided.vec341 = shufflevector <8 x i16> %wide.vec340, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec342 = shufflevector <8 x i16> %wide.vec340, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %20 = zext <4 x i16> %strided.vec341 to <4 x i32>
  %21 = sub nsw <4 x i32> %20, %i.ra              ; 2 uses
  %22 = mul nsw <4 x i32> %21, %21
  %23 = add <4 x i32> %22, %vec.phi332
  %24 = zext <4 x i16> %strided.vec336 to <4 x i32>
  %25 = mul nsw <4 x i32> %broadcast.splat319, %24
  %26 = zext <4 x i16> %strided.vec339 to <4 x i32>
  %i.rb = mul nsw <4 x i32> %broadcast.splat321, %26
  %i.rc = add <4 x i32> %25, %broadcast.splat323
  %i.rd = add <4 x i32> %i.rc, %i.rb
  %i.re = ashr <4 x i32> %i.rd, %broadcast.splat325
  %i.rf = add nsw <4 x i32> %i.re, %broadcast.splat327
  %i.rg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rf, <4 x i32> zeroinitializer)
  %i.rh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rg, <4 x i32> %broadcast.splat329)
  %27 = zext <4 x i16> %strided.vec342 to <4 x i32>
  %i.ri = sub nsw <4 x i32> %27, %i.rh            ; 2 uses
  %i.rj = mul nsw <4 x i32> %i.ri, %i.ri
  %i.rk = add <4 x i32> %23, %i.rj                ; 2 uses
  %index.next343 = add nuw i64 %index331, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next343, %n.vec317
  br i1 %i.rl, label %middle.block344, label %vector.body330, !llvm.loop !97

middle.block344:                                  ; preds = %vector.body330
  %i.rm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.rk) ; 2 uses
  br i1 %cmp.n345, label %._crit_edge.us160.us, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %.preheader.us.us, %middle.block344
  %.4140.us.us.ph = phi i32 [ %.3157.us.us, %.preheader.us.us ], [ %i.rm, %middle.block344 ]
  %.1104139.us.us.ph = phi i32 [ 0, %.preheader.us.us ], [ %i.qm, %middle.block344 ]
  %.ph401 = phi ptr [ %.lcssa141148154.us.us, %.preheader.us.us ], [ %i.qo, %middle.block344 ]
  %.ph402 = phi ptr [ %.lcssa142145155.us.us, %.preheader.us.us ], [ %i.qp, %middle.block344 ]
  %.ph403 = phi ptr [ %.lcssa143152153.us.us, %.preheader.us.us ], [ %i.qq, %middle.block344 ]
  br label %scalar.ph313

bb.e:                                             ; preds = %._crit_edge.us160.us
  %i.rn = getelementptr inbounds [2 x i8], ptr %scevgep217, i64 %i.kh ; 2 uses
  %i.ro = getelementptr inbounds [2 x i8], ptr %scevgep216, i64 %i.kh ; 2 uses
  %i.rp = add nuw nsw i32 %.1102156.us.us, 1      ; 2 uses
  %exitcond220.not = icmp eq i32 %i.rp, %.fr185
  br i1 %exitcond220.not, label %._crit_edge158.us, label %.preheader.us.us, !llvm.loop !96

scalar.ph313:                                     ; preds = %scalar.ph313.preheader, %scalar.ph313
  %.4140.us.us = phi i32 [ %i.tg, %scalar.ph313 ], [ %.4140.us.us.ph, %scalar.ph313.preheader ]
  %.1104139.us.us = phi i32 [ %i.th, %scalar.ph313 ], [ %.1104139.us.us.ph, %scalar.ph313.preheader ]
  %i.rq = phi ptr [ %i.sn, %scalar.ph313 ], [ %.ph401, %scalar.ph313.preheader ] ; 3 uses
  %i.rr = phi ptr [ %i.sr, %scalar.ph313 ], [ %.ph402, %scalar.ph313.preheader ] ; 3 uses
  %i.rs = phi ptr [ %i.tb, %scalar.ph313 ], [ %.ph403, %scalar.ph313.preheader ] ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 2
  %i.ru = load i16, ptr %i.rq, align 2, !tbaa !40
  %i.rv = zext i16 %i.ru to i32
  %i.rw = mul nsw i32 %i.rv, %i.qf
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 2
  %i.ry = load i16, ptr %i.rr, align 2, !tbaa !40
  %i.rz = zext i16 %i.ry to i32
  %i.sa = mul nsw i32 %i.rz, %i.qh
  %i.sb = add i32 %i.rw, %i.d
  %i.sc = add i32 %i.sb, %i.sa
  %i.sd = ashr i32 %i.sc, %i.b
  %i.se = add nsw i32 %i.sd, %i.qk
  %i.sf = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.se, i32 0)
  %i.sg = tail call noundef i32 @llvm.smin.i32(i32 %i.sf, i32 %i.qi)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rs, i64 2
  %i.si = load i16, ptr %i.rs, align 2, !tbaa !40
  %i.sj = zext i16 %i.si to i32
  %i.sk = sub nsw i32 %i.sj, %i.sg                ; 2 uses
  %i.sl = mul nsw i32 %i.sk, %i.sk
  %i.sm = add nsw i32 %i.sl, %.4140.us.us
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.so = load i16, ptr %i.rt, align 2, !tbaa !40
  %i.sp = zext i16 %i.so to i32
  %i.sq = mul nsw i32 %i.sp, %i.qf
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.ss = load i16, ptr %i.rx, align 2, !tbaa !40
  %i.st = zext i16 %i.ss to i32
  %i.su = mul nsw i32 %i.st, %i.qh
  %i.sv = add i32 %i.sq, %i.d
  %i.sw = add i32 %i.sv, %i.su
  %i.sx = ashr i32 %i.sw, %i.b
  %i.sy = add nsw i32 %i.sx, %i.qk
  %i.sz = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.sy, i32 0)
  %i.ta = tail call noundef i32 @llvm.smin.i32(i32 %i.sz, i32 %i.qi)
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.tc = load i16, ptr %i.sh, align 2, !tbaa !40
  %i.td = zext i16 %i.tc to i32
  %i.te = sub nsw i32 %i.td, %i.ta                ; 2 uses
  %i.tf = mul nsw i32 %i.te, %i.te
  %i.tg = add nsw i32 %i.sm, %i.tf                ; 2 uses
  %i.th = add nuw nsw i32 %.1104139.us.us, 1      ; 2 uses
  %exitcond219.not = icmp eq i32 %i.th, %i.ka
  br i1 %exitcond219.not, label %._crit_edge.us160.us, label %scalar.ph313, !llvm.loop !98

._crit_edge.us160.us:                             ; preds = %scalar.ph313, %middle.block344
  %.lcssa272 = phi i32 [ %i.rm, %middle.block344 ], [ %i.tg, %scalar.ph313 ] ; 4 uses
  %scevgep216 = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.lv ; 2 uses
  %scevgep217 = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.lv ; 2 uses
  %scevgep218 = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.lv ; 2 uses
  %.not106.us.us = icmp slt i32 %.lcssa272, %3
  br i1 %.not106.us.us, label %bb.e, label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %._crit_edge.us160.us, %._crit_edge.us160.us.1
  %.lcssa196.lcssa = phi ptr [ %scevgep216.1, %._crit_edge.us160.us.1 ], [ %scevgep216, %._crit_edge.us160.us ]
  %.lcssa194.lcssa = phi ptr [ %scevgep217.1, %._crit_edge.us160.us.1 ], [ %scevgep217, %._crit_edge.us160.us ]
  %.lcssa192.lcssa = phi ptr [ %scevgep218.1, %._crit_edge.us160.us.1 ], [ %scevgep218, %._crit_edge.us160.us ]
  %.lcssa190.lcssa = phi i32 [ %.lcssa, %._crit_edge.us160.us.1 ], [ %.lcssa272, %._crit_edge.us160.us ]
  store ptr %.lcssa194.lcssa, ptr @ref2_line, align 8, !tbaa !33
  store ptr %.lcssa196.lcssa, ptr @ref1_line, align 8, !tbaa !33
  store ptr %.lcssa192.lcssa, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.lr.ph.split.us176, %._crit_edge158.split.us.us.1, %.preheader.us171.preheader.1, %.split.preheader, %.loopexit110.split.us, %.preheader109.lr.ph.split, %.loopexit.split.us, %._crit_edge132
  %.1 = phi i32 [ %.098.lcssa, %._crit_edge132 ], [ %.lcssa279, %.loopexit110.split.us ], [ %.098.lcssa, %.split.preheader ], [ %.lcssa190.lcssa, %.loopexit.split.us ], [ 0, %.preheader109.lr.ph.split ], [ %.lcssa, %._crit_edge158.split.us.us.1 ], [ %.098.lcssa, %.preheader.lr.ph.split.us176 ], [ %.us-phi163.us, %.preheader.us171.preheader.1 ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i32> @llvm.abs.v64i32(<64 x i32>, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v64i32(<64 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 5792}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !12, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!17, !13, i64 14232}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !18, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !19, i64 128, !19, i64 136, !5, i64 144, !21, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !23, i64 14160, !21, i64 14168, !21, i64 14176, !21, i64 14184, !23, i64 14192, !23, i64 14200, !9, i64 14208, !9, i64 14216, !25, i64 14224, !13, i64 14232, !13, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !12, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !26, i64 14376, !26, i64 14384, !26, i64 14392, !26, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !29, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !30, i64 15480, !31, i64 15488, !21, i64 15496, !30, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !32, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!18 = !{!"float", !6, i64 0}
!19 = !{!"p2 omnipotent char", !20, i64 0}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!"p3 int", !22, i64 0}
!22 = !{!"any p3 pointer", !20, i64 0}
!23 = !{!"p4 int", !24, i64 0}
!24 = !{!"any p4 pointer", !22, i64 0}
!25 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!26 = !{!"p6 short", !27, i64 0}
!27 = !{!"any p6 pointer", !28, i64 0}
!28 = !{!"any p5 pointer", !24, i64 0}
!29 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!30 = !{!"p2 double", !20, i64 0}
!31 = !{!"p3 double", !22, i64 0}
!32 = !{!"short", !6, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 short", !9, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !6, i64 8}
!37 = !{!"p4 short", !24, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!32, !32, i64 0}
!41 = distinct !{!41, !39}
!42 = !{!37, !37, i64 0}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = !{!17, !5, i64 15520}
!46 = distinct !{!46, !39}
!47 = distinct !{!47, !39}
!48 = !{!17, !5, i64 15524}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = distinct !{!64, !39}
!65 = distinct !{!65, !39}
end_hunk_0
