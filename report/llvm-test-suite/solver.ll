inline.NumInlined: 10
begin_hunk_0_@two_way_transport_sweep:bb.a
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !8
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv89.i
  %i.km = load float, ptr %i.kl, align 4, !tbaa !8
  %i.kn = fdiv float %i.kk, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.072.i, i64 %indvars.iv89.i ; 3 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !8
  %i.kq = fsub float %i.kp, %i.kn
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv89.i
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !8
  %i.kt = fmul float %i.kq, %i.ks                 ; 2 uses
  %i.ku = fmul float %i.ht, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv89.i
  store float %i.ku, ptr %i.kv, align 4, !tbaa !8
  %i.kw = load float, ptr %i.ko, align 4, !tbaa !8
  %i.kx = fsub float %i.kw, %i.kt
  store float %i.kx, ptr %i.ko, align 4, !tbaa !8
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %exitcond93.not.i = icmp eq i64 %indvars.iv.next90.i, %wide.trip.count.i
  br i1 %exitcond93.not.i, label %.lr.ph81.i.preheader, label %scalar.ph633, !llvm.loop !191

.lr.ph81.i.preheader:                             ; preds = %scalar.ph633, %middle.block648
  %min.iters.check583 = icmp ult i32 %i.hy, 8
  br i1 %min.iters.check583, label %.lr.ph81.i.preheader672, label %vector.memcheck575

vector.memcheck575:                               ; preds = %.lr.ph81.i.preheader
  %i.ky = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep576 = getelementptr i8, ptr %i.hx, i64 %i.ky
  %scevgep578 = getelementptr i8, ptr %scevgep577, i64 %i.ky
  %bound0579 = icmp ult ptr %i.hx, %scevgep578
  %bound1580 = icmp ult ptr %i.ap, %scevgep576
  %found.conflict581 = and i1 %bound0579, %bound1580
  br i1 %found.conflict581, label %.lr.ph81.i.preheader672, label %vector.ph584

vector.ph584:                                     ; preds = %vector.memcheck575
  %n.vec586 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body587

vector.body587:                                   ; preds = %vector.body587, %vector.ph584
  %index588 = phi i64 [ 0, %vector.ph584 ], [ %index.next593, %vector.body587 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index588 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load589 = load <4 x float>, ptr %i.kz, align 4, !tbaa !8, !alias.scope !192
  %wide.load590 = load <4 x float>, ptr %i.la, align 4, !tbaa !8, !alias.scope !192
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index588 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %wide.load591 = load <4 x float>, ptr %i.lb, align 4, !tbaa !8, !alias.scope !195, !noalias !192
  %wide.load592 = load <4 x float>, ptr %i.lc, align 4, !tbaa !8, !alias.scope !195, !noalias !192
  %i.ld = fadd <4 x float> %wide.load589, %wide.load591
  %i.le = fadd <4 x float> %wide.load590, %wide.load592
  store <4 x float> %i.ld, ptr %i.lb, align 4, !tbaa !8, !alias.scope !195, !noalias !192
  store <4 x float> %i.le, ptr %i.lc, align 4, !tbaa !8, !alias.scope !195, !noalias !192
  %index.next593 = add nuw i64 %index588, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next593, %n.vec586
  br i1 %i.lf, label %middle.block594, label %vector.body587, !llvm.loop !197

middle.block594:                                  ; preds = %vector.body587
  %cmp.n595 = icmp eq i64 %n.vec586, %wide.trip.count.i
  br i1 %cmp.n595, label %attenuate_FSR_fluxes.exit, label %.lr.ph81.i.preheader672

.lr.ph81.i.preheader672:                          ; preds = %vector.memcheck575, %.lr.ph81.i.preheader, %middle.block594
  %indvars.iv94.i.ph = phi i64 [ 0, %vector.memcheck575 ], [ 0, %.lr.ph81.i.preheader ], [ %n.vec586, %middle.block594 ] ; 3 uses
  %xtraiter679 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod680.not = icmp eq i64 %xtraiter679, 0
  br i1 %lcmp.mod680.not, label %.lr.ph81.i.prol.loopexit, label %.lr.ph81.i.prol

.lr.ph81.i.prol:                                  ; preds = %.lr.ph81.i.preheader672, %.lr.ph81.i.prol
  %indvars.iv94.i.prol = phi i64 [ %indvars.iv.next95.i.prol, %.lr.ph81.i.prol ], [ %indvars.iv94.i.ph, %.lr.ph81.i.preheader672 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph81.i.prol ], [ 0, %.lr.ph81.i.preheader672 ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv94.i.prol
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !8
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv94.i.prol ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !8
  %i.lk = fadd float %i.lh, %i.lj
  store float %i.lk, ptr %i.li, align 4, !tbaa !8
  %indvars.iv.next95.i.prol = add nuw nsw i64 %indvars.iv94.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter679
  br i1 %prol.iter.cmp.not, label %.lr.ph81.i.prol.loopexit, label %.lr.ph81.i.prol, !llvm.loop !198

.lr.ph81.i.prol.loopexit:                         ; preds = %.lr.ph81.i.prol, %.lr.ph81.i.preheader672
  %indvars.iv94.i.unr = phi i64 [ %indvars.iv94.i.ph, %.lr.ph81.i.preheader672 ], [ %indvars.iv.next95.i.prol, %.lr.ph81.i.prol ]
  %i.ll = sub nsw i64 %indvars.iv94.i.ph, %wide.trip.count.i
  %i.lm = icmp ugt i64 %i.ll, -4
  br i1 %i.lm, label %attenuate_FSR_fluxes.exit, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.prol.loopexit, %.lr.ph81.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i.3, %.lr.ph81.i ], [ %indvars.iv94.i.unr, %.lr.ph81.i.prol.loopexit ] ; 6 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv94.i
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !8
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv94.i ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !8
  %i.lr = fadd float %i.lo, %i.lq
  store float %i.lr, ptr %i.lp, align 4, !tbaa !8
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next95.i
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !8
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next95.i ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !8
  %i.lw = fadd float %i.lt, %i.lv
  store float %i.lw, ptr %i.lu, align 4, !tbaa !8
  %indvars.iv.next95.i.1 = add nuw nsw i64 %indvars.iv94.i, 2 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next95.i.1
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !8
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next95.i.1 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !8
  %i.mb = fadd float %i.ly, %i.ma
  store float %i.mb, ptr %i.lz, align 4, !tbaa !8
  %indvars.iv.next95.i.2 = add nuw nsw i64 %indvars.iv94.i, 3 ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next95.i.2
  %i.md = load float, ptr %i.mc, align 4, !tbaa !8
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next95.i.2 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !8
  %i.mg = fadd float %i.md, %i.mf
  store float %i.mg, ptr %i.me, align 4, !tbaa !8
  %indvars.iv.next95.i.3 = add nuw nsw i64 %indvars.iv94.i, 4 ; 2 uses
  %exitcond98.not.i.3 = icmp eq i64 %indvars.iv.next95.i.3, %wide.trip.count.i
  br i1 %exitcond98.not.i.3, label %attenuate_FSR_fluxes.exit, label %.lr.ph81.i, !llvm.loop !199

bb.t:                                             ; preds = %bb.p
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %puts313 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

attenuate_FSR_fluxes.exit:                        ; preds = %.lr.ph81.i.prol.loopexit, %.lr.ph81.i, %middle.block594, %bb.r, %bb.q
  %i.mi = phi ptr [ %.pre, %bb.q ], [ %i.ha, %bb.r ], [ %i.ha, %middle.block594 ], [ %i.ha, %.lr.ph81.i ], [ %i.ha, %.lr.ph81.i.prol.loopexit ]
  %.5 = phi i64 [ %i.gz, %bb.q ], [ %.4368, %bb.r ], [ %.4368, %middle.block594 ], [ %.4368, %.lr.ph81.i ], [ %.4368, %.lr.ph81.i.prol.loopexit ] ; 3 uses
  store float %.0285, ptr %i.fm, align 4, !tbaa !28
  %i.mj = fpext float %.0286 to double
  %i.mk = load ptr, ptr %i.ga, align 8, !tbaa !173 ; 2 uses
  %i.ml = load i32, ptr %i.gb, align 4, !tbaa !4  ; 2 uses
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.mm
  store double %i.mj, ptr %i.mn, align 8, !tbaa !200
  %i.mo = getelementptr inbounds [48 x i8], ptr %i.mi, i64 %i.gs
  %i.mp = load ptr, ptr %i.gc, align 8, !tbaa !115 ; 2 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.mm
  store ptr %i.mo, ptr %i.mq, align 8, !tbaa !116
  %i.mr = add nsw i32 %i.ml, 1                    ; 2 uses
  store i32 %i.mr, ptr %i.gb, align 4, !tbaa !4
  %i.ms = load i32, ptr %i.gd, align 4, !tbaa !4  ; 2 uses
  %.not314 = icmp slt i32 %i.mr, %i.ms
  br i1 %.not314, label %bb.v, label %bb.u

bb.u:                                             ; preds = %attenuate_FSR_fluxes.exit
  %i.mt = shl nsw i32 %i.ms, 1                    ; 2 uses
  store i32 %i.mt, ptr %i.gd, align 4, !tbaa !4
  %i.mu = sext i32 %i.mt to i64
  %i.mv = shl nsw i64 %i.mu, 3                    ; 2 uses
  %i.mw = tail call ptr @realloc(ptr noundef nonnull %i.mk, i64 noundef %i.mv) #19
  store ptr %i.mw, ptr %i.ga, align 8, !tbaa !173
  %i.mx = tail call ptr @realloc(ptr noundef nonnull %i.mp, i64 noundef %i.mv) #19
  store ptr %i.mx, ptr %i.gc, align 8, !tbaa !115
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %attenuate_FSR_fluxes.exit
  br i1 %or.cond315.not, label %bb.w, label %bb.m

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.my = trunc nuw i64 %indvars.iv.next420 to i32
  %i.mz = icmp sgt i32 %.0301375, %i.my
  br i1 %i.mz, label %.lr.ph372, label %._crit_edge.loopexit

.preheader:                                       ; preds = %._crit_edge385
  %i.na = icmp sgt i32 %i.ol, 0
  br i1 %i.na, label %.lr.ph393, label %._crit_edge394

.lr.ph393:                                        ; preds = %.preheader
  %i.nb = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0278403
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !115
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv439
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !116 ; 10 uses
  %i.ng = trunc nuw i8 %spec.select to i1
  %i.nh = load float, ptr %i.bl, align 8, !tbaa !146 ; 4 uses
  %wide.trip.count437 = zext nneg i32 %i.ol to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ol, 4        ; 2 uses
  br i1 %i.ng, label %.lr.ph393.split.us.preheader, label %.lr.ph393.split.preheader

.lr.ph393.split.preheader:                        ; preds = %.lr.ph393
  br i1 %min.iters.check, label %.lr.ph393.split.preheader675, label %vector.ph473

vector.ph473:                                     ; preds = %.lr.ph393.split.preheader
  %n.vec475 = and i64 %wide.trip.count437, 2147483644 ; 3 uses
  %broadcast.splatinsert476 = insertelement <4 x float> poison, float %i.nh, i64 0
  %broadcast.splat477 = shufflevector <4 x float> %broadcast.splatinsert476, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph473
  %index479 = phi i64 [ 0, %vector.ph473 ], [ %index.next481, %vector.body478 ] ; 5 uses
  %vec.ind480 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph473 ], [ %vec.ind.next482, %vector.body478 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index479
  %i.nj = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index479
  %i.nk = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index479
  %i.nl = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index479
  %i.nm = trunc <4 x i64> %vec.ind480 to <4 x i32>
  %i.nn = add <4 x i32> %i.nm, splat (i32 1)
  %i.no = uitofp nneg <4 x i32> %i.nn to <4 x float>
  %i.np = fmul <4 x float> %broadcast.splat477, %i.no ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %5 = getelementptr inbounds nuw i8, ptr %i.nk, i64 84
  %6 = getelementptr inbounds nuw i8, ptr %i.nl, i64 124
  %7 = extractelement <4 x float> %i.np, i64 0
  store float %7, ptr %3, align 4, !tbaa !28
  %8 = extractelement <4 x float> %i.np, i64 1
  store float %8, ptr %4, align 4, !tbaa !28
  %9 = extractelement <4 x float> %i.np, i64 2
  store float %9, ptr %5, align 4, !tbaa !28
  %10 = extractelement <4 x float> %i.np, i64 3
  store float %10, ptr %6, align 4, !tbaa !28
  %index.next481 = add nuw i64 %index479, 4       ; 2 uses
  %vec.ind.next482 = add nuw nsw <4 x i64> %vec.ind480, splat (i64 4)
  %i.nq = icmp eq i64 %index.next481, %n.vec475
  br i1 %i.nq, label %middle.block483, label %vector.body478, !llvm.loop !202

middle.block483:                                  ; preds = %vector.body478
  %cmp.n484 = icmp eq i64 %n.vec475, %wide.trip.count437
  br i1 %cmp.n484, label %._crit_edge394, label %.lr.ph393.split.preheader675

.lr.ph393.split.preheader675:                     ; preds = %.lr.ph393.split.preheader, %middle.block483
  %indvars.iv431.ph = phi i64 [ 0, %.lr.ph393.split.preheader ], [ %n.vec475, %middle.block483 ]
  br label %.lr.ph393.split

.lr.ph393.split.us.preheader:                     ; preds = %.lr.ph393
  br i1 %min.iters.check, label %.lr.ph393.split.us.preheader674, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph393.split.us.preheader
  %n.vec = and i64 %wide.trip.count437, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.nh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index
  %i.ns = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index
  %i.nt = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index
  %i.nu = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %index
  %i.nv = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.nw = fmul <4 x float> %broadcast.splat, %i.nv ; 4 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %i.ns, i64 44
  %13 = getelementptr inbounds nuw i8, ptr %i.nt, i64 84
  %14 = getelementptr inbounds nuw i8, ptr %i.nu, i64 124
  %15 = extractelement <4 x float> %i.nw, i64 0
  store float %15, ptr %11, align 4, !tbaa !28
  %16 = extractelement <4 x float> %i.nw, i64 1
  store float %16, ptr %12, align 4, !tbaa !28
  %17 = extractelement <4 x float> %i.nw, i64 2
  store float %17, ptr %13, align 4, !tbaa !28
  %18 = extractelement <4 x float> %i.nw, i64 3
  store float %18, ptr %14, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nx = icmp eq i64 %index.next, %n.vec
  br i1 %i.nx, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count437
  br i1 %cmp.n, label %._crit_edge394, label %.lr.ph393.split.us.preheader674

.lr.ph393.split.us.preheader674:                  ; preds = %.lr.ph393.split.us.preheader, %middle.block
  %indvars.iv434.ph = phi i64 [ 0, %.lr.ph393.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph393.split.us

.lr.ph393.split.us:                               ; preds = %.lr.ph393.split.us.preheader674, %.lr.ph393.split.us
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %.lr.ph393.split.us ], [ %indvars.iv434.ph, %.lr.ph393.split.us.preheader674 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %indvars.iv434
  %i.nz = trunc nuw nsw i64 %indvars.iv434 to i32
  %i.oa = uitofp nneg i32 %i.nz to float
  %i.ob = fmul float %i.nh, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store float %i.ob, ptr %i.oc, align 4, !tbaa !28
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %._crit_edge394, label %.lr.ph393.split.us, !llvm.loop !204

bb.x:                                             ; preds = %.lr.ph389, %._crit_edge385
  %i.od = phi i32 [ %i.ek, %.lr.ph389 ], [ %i.ol, %._crit_edge385 ]
  %indvars.iv428 = phi i64 [ 0, %.lr.ph389 ], [ %indvars.iv.next429, %._crit_edge385 ] ; 5 uses
  %.6388 = phi i64 [ %.2.lcssa, %.lr.ph389 ], [ %.7.lcssa, %._crit_edge385 ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv428
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !4  ; 2 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %bb.x
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv428
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !173
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv428 ; 2 uses
  %i.ok = zext nneg i32 %i.of to i64
  br label %bb.y

._crit_edge385.loopexit:                          ; preds = %attenuate_FSR_fluxes.exit348
  %.pre446 = load i32, ptr %i.bd, align 8, !tbaa !109
  br label %._crit_edge385

._crit_edge385:                                   ; preds = %._crit_edge385.loopexit, %bb.x
  %i.ol = phi i32 [ %i.od, %bb.x ], [ %.pre446, %._crit_edge385.loopexit ] ; 10 uses
  %.7.lcssa = phi i64 [ %.6388, %bb.x ], [ %.8, %._crit_edge385.loopexit ] ; 6 uses
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = icmp slt i64 %indvars.iv.next429, %i.om
  br i1 %i.on, label %bb.x, label %.preheader

bb.y:                                             ; preds = %.lr.ph384, %attenuate_FSR_fluxes.exit348
  %indvars.iv425 = phi i64 [ %i.ok, %.lr.ph384 ], [ %indvars.iv.next426, %attenuate_FSR_fluxes.exit348 ] ; 2 uses
  %.7381 = phi i64 [ %.6388, %.lr.ph384 ], [ %.8, %attenuate_FSR_fluxes.exit348 ] ; 6 uses
  %indvars.iv.next426 = add nsw i64 %indvars.iv425, -1 ; 4 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.next426
  %i.op = load double, ptr %i.oo, align 8, !tbaa !200
  %i.oq = fptrunc double %i.op to float           ; 6 uses
  %i.or = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %.0278403
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !115
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv439
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !116
  %i.ow = getelementptr inbounds nuw [40 x i8], ptr %i.ov, i64 %indvars.iv428 ; 5 uses
  %i.ox = load i32, ptr %i.bj, align 8, !tbaa !118
  switch i32 %i.ox, label %attenuate_FSR_fluxes.exit348 [
    i32 2, label %bb.z
    i32 0, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.oy = load ptr, ptr %i.oj, align 8, !tbaa !115
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv.next426
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !116
  %i.pb = load ptr, ptr %0, align 8, !tbaa !100
  %i.pc = getelementptr inbounds nuw [32 x i8], ptr %i.pb, i64 %.0278403
  %i.pd = load float, ptr %i.pc, align 8, !tbaa !120
  call void @attenuate_fluxes(ptr noundef %i.ow, i1 noundef zeroext false, ptr noundef %i.pa, ptr noundef nonnull %1, ptr noundef nonnull %0, float noundef %i.oq, float noundef %i.em, float noundef %i.pd, ptr noundef nonnull %2)
  %i.pe = add nsw i64 %.7381, 1
  br label %attenuate_FSR_fluxes.exit348

bb.aa:                                            ; preds = %bb.y
  %i.pf = load ptr, ptr %i.oj, align 8, !tbaa !115
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.next426
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !116 ; 3 uses
  %i.pi = load ptr, ptr %0, align 8, !tbaa !100
  %i.pj = getelementptr inbounds nuw [32 x i8], ptr %i.pi, i64 %.0278403
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !120
  %.sroa.3.0.copyload.i317 = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !10
  %.sroa.4.0.copyload.i319 = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !8 ; 2 uses
  %.sroa.5.0.copyload.i321 = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !8
  %i.pl = load float, ptr %i.d, align 4, !tbaa !93
  %i.pm = load i32, ptr %i.m, align 4, !tbaa !96  ; 2 uses
  %i.pn = load i32, ptr %i.f, align 4, !tbaa !94
  %i.po = mul nsw i32 %i.pn, %i.pm
  %i.pp = load i32, ptr %i.k, align 8, !tbaa !95
  %i.pq = mul nsw i32 %i.po, %i.pp
  %i.pr = sitofp i32 %i.pq to float
  %i.ps = fdiv float %i.pl, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !28
  %i.pv = fdiv float %i.pu, %i.ps
  %i.pw = fptosi float %i.pv to i32
  %i.px = srem i32 %i.pw, %i.pm
  %i.py = load float, ptr %i.ow, align 8, !tbaa !31
  %i.pz = fmul float %i.pk, %i.py
  %i.qa = fmul float %i.pz, %i.em                 ; 2 uses
  %i.qb = load ptr, ptr %i.ph, align 8, !tbaa !32
  %i.qc = sext i32 %i.px to i64                   ; 2 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !10 ; 8 uses
  %i.qf = load i32, ptr %i.r, align 4, !tbaa !97  ; 5 uses
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.lr.ph.i322, label %attenuate_FSR_fluxes.exit348

.lr.ph.i322:                                      ; preds = %bb.aa
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !45 ; 5 uses
  %wide.trip.count.i323 = zext nneg i32 %i.qf to i64 ; 16 uses
  %min.iters.check561 = icmp ult i32 %i.qf, 8
  br i1 %min.iters.check561, label %scalar.ph560.preheader, label %vector.memcheck555

vector.memcheck555:                               ; preds = %.lr.ph.i322
  %i.qj = ptrtoaddr ptr %i.qi to i64              ; 2 uses
  %i.qk = sub i64 %i.bp, %i.qj
  %diff.check556 = icmp ult i64 %i.qk, 32
  %conflict.rdx557 = or i1 %diff.check, %diff.check556
  %i.ql = sub i64 %i.br, %i.qj
  %diff.check558 = icmp ult i64 %i.ql, 32
  %conflict.rdx559 = or i1 %conflict.rdx557, %diff.check558
  br i1 %conflict.rdx559, label %scalar.ph560.preheader, label %vector.ph562

vector.ph562:                                     ; preds = %vector.memcheck555
  %n.vec564 = and i64 %wide.trip.count.i323, 2147483640 ; 3 uses
  %broadcast.splatinsert565 = insertelement <4 x float> poison, float %i.oq, i64 0
  %broadcast.splat566 = shufflevector <4 x float> %broadcast.splatinsert565, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph562
  %index568 = phi i64 [ 0, %vector.ph562 ], [ %index.next571, %vector.body567 ] ; 4 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %index568 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %wide.load569 = load <4 x float>, ptr %i.qm, align 4, !tbaa !8 ; 2 uses
  %wide.load570 = load <4 x float>, ptr %i.qn, align 4, !tbaa !8 ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index568 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store <4 x float> %wide.load569, ptr %i.qo, align 4, !tbaa !8
  store <4 x float> %wide.load570, ptr %i.qp, align 4, !tbaa !8
  %i.qq = fmul <4 x float> %wide.load569, %broadcast.splat566
  %i.qr = fmul <4 x float> %wide.load570, %broadcast.splat566
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index568 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <4 x float> %i.qq, ptr %i.qs, align 4, !tbaa !8
  store <4 x float> %i.qr, ptr %i.qt, align 4, !tbaa !8
  %index.next571 = add nuw i64 %index568, 8       ; 2 uses
  %i.qu = icmp eq i64 %index.next571, %n.vec564
  br i1 %i.qu, label %middle.block572, label %vector.body567, !llvm.loop !205

middle.block572:                                  ; preds = %vector.body567
  %cmp.n573 = icmp eq i64 %n.vec564, %wide.trip.count.i323
  br i1 %cmp.n573, label %.lr.ph76.i329.preheader, label %scalar.ph560.preheader

scalar.ph560.preheader:                           ; preds = %vector.memcheck555, %.lr.ph.i322, %middle.block572
  %indvars.iv.i324.ph = phi i64 [ 0, %vector.memcheck555 ], [ 0, %.lr.ph.i322 ], [ %n.vec564, %middle.block572 ] ; 6 uses
  %xtraiter681 = and i64 %wide.trip.count.i323, 1
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %scalar.ph560.prol.loopexit, label %scalar.ph560.prol

scalar.ph560.prol:                                ; preds = %scalar.ph560.preheader
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %indvars.iv.i324.ph
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !8 ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i324.ph
  store float %i.qw, ptr %i.qx, align 4, !tbaa !8
  %i.qy = fmul float %i.qw, %i.oq
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i324.ph
  store float %i.qy, ptr %i.qz, align 4, !tbaa !8
  %indvars.iv.next.i325.prol = or disjoint i64 %indvars.iv.i324.ph, 1
  br label %scalar.ph560.prol.loopexit

scalar.ph560.prol.loopexit:                       ; preds = %scalar.ph560.prol, %scalar.ph560.preheader
  %indvars.iv.i324.unr = phi i64 [ %indvars.iv.i324.ph, %scalar.ph560.preheader ], [ %indvars.iv.next.i325.prol, %scalar.ph560.prol ]
  %i.ra = add nsw i64 %wide.trip.count.i323, -1
  %i.rb = icmp eq i64 %indvars.iv.i324.ph, %i.ra
  br i1 %i.rb, label %.lr.ph76.i329.preheader, label %scalar.ph560

.lr.ph76.i329.preheader:                          ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560, %middle.block572
  br label %.lr.ph76.i329

scalar.ph560:                                     ; preds = %scalar.ph560.prol.loopexit, %scalar.ph560
  %indvars.iv.i324 = phi i64 [ %indvars.iv.next.i325.1, %scalar.ph560 ], [ %indvars.iv.i324.unr, %scalar.ph560.prol.loopexit ] ; 5 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %indvars.iv.i324
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !8 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i324
  store float %i.rd, ptr %i.re, align 4, !tbaa !8
  %i.rf = fmul float %i.rd, %i.oq
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i324
  store float %i.rf, ptr %i.rg, align 4, !tbaa !8
  %indvars.iv.next.i325 = add nuw nsw i64 %indvars.iv.i324, 1 ; 3 uses
end_hunk_0
