Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optflowgf?download=true
inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  %i.sg = icmp sgt i32 %i.jg, 0
  br i1 %i.sg, label %.lr.ph272.i, label %._crit_edge273.i

.lr.ph272.i:                                      ; preds = %.preheader238.i
  %i.sh = load ptr, ptr %i.gc, align 8, !tbaa !59 ; 6 uses
  %i.si = load i64, ptr %i.gd, align 8, !tbaa !44 ; 5 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !59
  %i.sl = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 128
  %i.sm = load i64, ptr %i.sl, align 16, !tbaa !44
  %i.sn = icmp sgt i32 %i.jf, 0                   ; 2 uses
  %.not246.i = icmp slt i32 %i.it, 1              ; 2 uses
  %i.so = add nsw i32 %i.jg, -1
  %i.sp = icmp eq i32 %i.jf, 0
  %i.sq = icmp sgt i32 %i.it, 0
  %i.sr = mul nsw i32 %i.jf, 3
  %i.ss = add nuw i32 %i.it, 1
  %i.st = sext i32 %i.sr to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.kg, i32 1) ; 2 uses
  %wide.trip.count314.i = zext nneg i32 %i.jg to i64 ; 2 uses
  %wide.trip.count.i = zext i32 %i.jf to i64      ; 13 uses
  %brmerge.i = select i1 %.not246.i, i1 true, i1 %i.sp
  %wide.trip.count294.i = zext i32 %i.ss to i64   ; 2 uses
  %wide.trip.count299.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ki, i64 %i.st ; 3 uses
  %i.su = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep592 = getelementptr i8, ptr %i.sh, i64 %i.su ; 2 uses
  %i.sv = mul nuw nsw i64 %wide.trip.count.i, 12
  %i.sw = shl nsw i64 %i.kh, 2
  %i.sx = getelementptr i8, ptr %i.jx, i64 %i.sv
  %scevgep593 = getelementptr i8, ptr %i.sx, i64 %i.sw ; 2 uses
  %i.sy = add nsw i64 %wide.trip.count314.i, -1
  %i.sz = mul i64 %i.si, %i.sy
  %i.ta = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.tb = getelementptr i8, ptr %i.sh, i64 %i.sz
  %scevgep626 = getelementptr i8, ptr %i.tb, i64 %i.ta
  %i.tc = mul nuw nsw i64 %wide.trip.count.i, 12
  %i.td = shl nsw i64 %i.kh, 2
  %i.te = getelementptr i8, ptr %i.jx, i64 %i.tc
  %scevgep627 = getelementptr i8, ptr %i.te, i64 %i.td
  %min.iters.check629 = icmp ult i32 %i.jf, 4
  %bound0631 = icmp ult ptr %i.ki, %scevgep626
  %bound1632 = icmp ult ptr %i.sh, %scevgep627
  %found.conflict633 = and i1 %bound0631, %bound1632
  %stride.check = icmp slt i64 %i.si, 0
  %i.tf = or i1 %found.conflict633, %stride.check
  %n.vec635 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n644 = icmp eq i64 %n.vec635, %wide.trip.count.i
  %xtraiter722 = and i64 %wide.trip.count.i, 1
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  %i.tg = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check595 = icmp ult i32 %i.jf, 4
  %n.vec605 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n619 = icmp eq i64 %n.vec605, %wide.trip.count.i
  %xtraiter724 = and i64 %wide.trip.count299.i, 1
  %i.th = icmp slt i32 %i.kg, 2
  %unroll_iter728 = and i64 %wide.trip.count299.i, 2147483646
  %lcmp.mod726.not = icmp eq i64 %xtraiter724, 0
  %lcmp.mod727 = trunc i32 %smax.i to i1
  %i.ti = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.tj = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tk = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.tl = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tm = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.tn = shufflevector <2 x double> %i.tm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge269.i, %.lr.ph272.i
  %indvars.iv311.i = phi i64 [ 0, %.lr.ph272.i ], [ %indvars.iv.next312.i, %._crit_edge269.i ] ; 5 uses
  %i.to = load float, ptr %i.ka, align 4, !tbaa !58 ; 4 uses
  %i.tp = mul i64 %indvars.iv311.i, %i.si
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.tp ; 4 uses
  %i.tr = mul i64 %indvars.iv311.i, %i.sm
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.tr
  br i1 %i.sn, label %.lr.ph.i.preheader, label %.preheader236.i

.lr.ph.i.preheader:                               ; preds = %bb.cz
  %brmerge = select i1 %min.iters.check629, i1 true, i1 %i.tf
  br i1 %brmerge, label %.lr.ph.i.preheader703, label %vector.ph634

vector.ph634:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert636 = insertelement <4 x float> poison, float %i.to, i64 0
  %broadcast.splat637 = shufflevector <4 x float> %broadcast.splatinsert636, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph634
  %index639 = phi i64 [ 0, %vector.ph634 ], [ %index.next642, %vector.body638 ] ; 3 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %index639
  %wide.load640 = load <4 x float>, ptr %i.tt, align 4, !tbaa !58, !alias.scope !188
  %i.tu = fmul <4 x float> %broadcast.splat637, %wide.load640
  %i.tv = mul nuw nsw i64 %index639, 12
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.tv
  %i.tx = shufflevector <4 x float> %i.tu, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec641 = shufflevector <8 x float> %i.tx, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec641, ptr %i.tw, align 4, !tbaa !58, !alias.scope !189, !noalias !188
  %index.next642 = add nuw i64 %index639, 4       ; 2 uses
  %i.ty = icmp eq i64 %index.next642, %n.vec635
  br i1 %i.ty, label %middle.block643, label %vector.body638, !llvm.loop !108

middle.block643:                                  ; preds = %vector.body638
  br i1 %cmp.n644, label %.preheader237.i, label %.lr.ph.i.preheader703

.lr.ph.i.preheader703:                            ; preds = %.lr.ph.i.preheader, %middle.block643
  %indvars.iv.i.ph = phi i64 [ %n.vec635, %middle.block643 ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  br i1 %lcmp.mod723.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader703
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.i.ph
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !58
  %i.ub = fmul float %i.to, %i.ua
  %.idx.i.prol = mul nuw nsw i64 %indvars.iv.i.ph, 12
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i.prol ; 2 uses
  store float %i.ub, ptr %i.uc, align 4, !tbaa !58
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store <2 x float> zeroinitializer, ptr %i.ud, align 4, !tbaa !58
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader703
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader703 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ue = icmp eq i64 %indvars.iv.i.ph, %i.tg
  br i1 %i.ue, label %.preheader237.i, label %.lr.ph.i

.preheader237.i:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block643
  br i1 %brmerge.i, label %.preheader236.i, label %.lr.ph245.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.i
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !58
  %i.uh = fmul float %i.to, %i.ug
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i ; 2 uses
  store float %i.uh, ptr %i.ui, align 4, !tbaa !58
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store <2 x float> zeroinitializer, ptr %i.uj, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.next.i
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !58
  %i.um = fmul float %i.to, %i.ul
  %.idx.i.1 = mul nuw nsw i64 %indvars.iv.next.i, 12
  %i.un = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i.1 ; 2 uses
  store float %i.um, ptr %i.un, align 4, !tbaa !58
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  store <2 x float> zeroinitializer, ptr %i.uo, align 4, !tbaa !58
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader237.i, label %.lr.ph.i, !llvm.loop !109

bb.da:                                            ; preds = %bb.cg
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

bb.db:                                            ; preds = %_ZN2cv4Mat_IdEaSEONS_3MatE.exit, %._crit_edge136.i.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.db, %bb.cy
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.uq, %bb.db ], [ %.pn89.pn.i.i, %bb.cy ] ; 2 uses
  %i.ur = load ptr, ptr %19, align 8, !tbaa !177  ; 3 uses
  %.not.i.i211.i = icmp eq ptr %i.ur, %i.fo
  %i.us = icmp eq ptr %i.ur, null
  %or.cond.i.i = or i1 %.not.i.i211.i, %i.us
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %.body.i
  call void @_ZdaPv(ptr noundef nonnull %i.ur) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

.preheader236.i:                                  ; preds = %._crit_edge.i, %.preheader237.i, %bb.cz
  br i1 %i.sq, label %.lr.ph250.i.preheader, label %.preheader.i

.lr.ph250.i.preheader:                            ; preds = %.preheader236.i
  br i1 %i.th, label %.lr.ph250.i.epil.preheader, label %.lr.ph250.i

.lr.ph245.i:                                      ; preds = %.preheader237.i, %._crit_edge.i
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %._crit_edge.i ], [ 1, %.preheader237.i ] ; 6 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv291.i
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !58 ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv291.i
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !58 ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv291.i
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !58 ; 2 uses
  %i.uz = sub nsw i64 %indvars.iv311.i, %indvars.iv291.i
  %i.va = trunc nsw i64 %i.uz to i32
  %.sroa.speculated225.i = call i32 @llvm.smax.i32(i32 %i.va, i32 0)
  %i.vb = zext nneg i32 %.sroa.speculated225.i to i64
  %i.vc = mul i64 %i.si, %i.vb                    ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.vc ; 3 uses
  %i.ve = add nuw nsw i64 %indvars.iv291.i, %indvars.iv311.i
  %i.vf = trunc nuw nsw i64 %i.ve to i32
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.so, i32 %i.vf)
  %i.vg = sext i32 %.sroa.speculated.i to i64
  %i.vh = mul i64 %i.si, %i.vg                    ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.vh ; 3 uses
  br i1 %min.iters.check595, label %scalar.ph594.preheader, label %vector.memcheck596

vector.memcheck596:                               ; preds = %.lr.ph245.i
  %i.vj = getelementptr i8, ptr %scevgep592, i64 %i.vh
  %i.vk = getelementptr i8, ptr %scevgep592, i64 %i.vc
  %bound0597 = icmp ult ptr %i.ki, %i.vj
  %bound1598 = icmp ult ptr %i.vi, %scevgep593
  %found.conflict599 = and i1 %bound0597, %bound1598
  %bound0600 = icmp ult ptr %i.ki, %i.vk
  %bound1601 = icmp ult ptr %i.vd, %scevgep593
  %found.conflict602 = and i1 %bound0600, %bound1601
  %conflict.rdx603 = or i1 %found.conflict599, %found.conflict602
  br i1 %conflict.rdx603, label %scalar.ph594.preheader, label %vector.ph604

vector.ph604:                                     ; preds = %vector.memcheck596
  %broadcast.splatinsert606 = insertelement <4 x float> poison, float %i.uu, i64 0
  %broadcast.splatinsert608 = insertelement <4 x float> poison, float %i.uw, i64 0
  %broadcast.splatinsert610 = insertelement <4 x float> poison, float %i.uy, i64 0
  %broadcast.splat611 = shufflevector <4 x float> %broadcast.splatinsert610, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vl = shufflevector <4 x float> %broadcast.splatinsert606, <4 x float> %broadcast.splatinsert608, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph604
  %index613 = phi i64 [ 0, %vector.ph604 ], [ %index.next617, %vector.body612 ] ; 7 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %index613
  %wide.load614 = load <4 x float>, ptr %i.vm, align 4, !tbaa !58, !alias.scope !190 ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %index613
  %wide.load615 = load <4 x float>, ptr %i.vn, align 4, !tbaa !58, !alias.scope !191 ; 2 uses
  %i.vo = fadd <4 x float> %wide.load614, %wide.load615 ; 2 uses
  %i.vp = mul nuw nsw i64 %index613, 12
  %i.vq = mul nuw i64 %index613, 12
  %i.vr = mul nuw i64 %index613, 12
  %i.vs = mul nuw i64 %index613, 12
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.vp ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.vq ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 12
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.vr ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.vs ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 36
  %i.wa = load float, ptr %i.vt, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wb = load float, ptr %i.vv, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wc = load float, ptr %i.vx, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wd = load float, ptr %i.vz, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.we = insertelement <4 x float> poison, float %i.wa, i64 0
  %i.wf = insertelement <4 x float> %i.we, float %i.wb, i64 1
  %i.wg = insertelement <4 x float> %i.wf, float %i.wc, i64 2
  %i.wh = insertelement <4 x float> %i.wg, float %i.wd, i64 3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vw, i64 28
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vy, i64 40
  %i.wm = load float, ptr %i.wi, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wn = load float, ptr %i.wj, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wo = load float, ptr %i.wk, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wp = load float, ptr %i.wl, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.wq = insertelement <4 x float> poison, float %i.wm, i64 0
  %i.wr = insertelement <4 x float> %i.wq, float %i.wn, i64 1
  %i.ws = insertelement <4 x float> %i.wr, float %i.wo, i64 2
  %i.wt = insertelement <4 x float> %i.ws, float %i.wp, i64 3
  %i.wu = fsub <4 x float> %wide.load615, %wide.load614
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vu, i64 20
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vy, i64 44
  %i.wz = load float, ptr %i.wv, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.xa = load float, ptr %i.ww, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.xb = load float, ptr %i.wx, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.xc = load float, ptr %i.wy, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %i.xd = insertelement <4 x float> poison, float %i.wz, i64 0
  %i.xe = insertelement <4 x float> %i.xd, float %i.xa, i64 1
  %i.xf = insertelement <4 x float> %i.xe, float %i.xb, i64 2
  %i.xg = insertelement <4 x float> %i.xf, float %i.xc, i64 3
  %i.xh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat611, <4 x float> %i.vo, <4 x float> %i.xg)
  %i.xi = shufflevector <4 x float> %i.vo, <4 x float> %i.wu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xj = shufflevector <4 x float> %i.wh, <4 x float> %i.wt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vl, <8 x float> %i.xi, <8 x float> %i.xj)
  %i.xl = shufflevector <4 x float> %i.xh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec616 = shufflevector <8 x float> %i.xk, <8 x float> %i.xl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec616, ptr %i.vt, align 4, !tbaa !58, !alias.scope !192, !noalias !193
  %index.next617 = add nuw i64 %index613, 4       ; 2 uses
  %i.xm = icmp eq i64 %index.next617, %n.vec605
  br i1 %i.xm, label %middle.block618, label %vector.body612, !llvm.loop !114

middle.block618:                                  ; preds = %vector.body612
  br i1 %cmp.n619, label %._crit_edge.i, label %scalar.ph594.preheader

scalar.ph594.preheader:                           ; preds = %vector.memcheck596, %.lr.ph245.i, %middle.block618
  %indvars.iv286.i.ph = phi i64 [ 0, %vector.memcheck596 ], [ 0, %.lr.ph245.i ], [ %n.vec605, %middle.block618 ]
  %i.xn = insertelement <2 x float> poison, float %i.uu, i64 0
  %i.xo = insertelement <2 x float> %i.xn, float %i.uw, i64 1
  br label %scalar.ph594

scalar.ph594:                                     ; preds = %scalar.ph594.preheader, %scalar.ph594
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %scalar.ph594 ], [ %indvars.iv286.i.ph, %scalar.ph594.preheader ] ; 4 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv286.i
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !58 ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv286.i
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !58 ; 2 uses
  %.idx328.i = mul nuw nsw i64 %indvars.iv286.i, 12
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx328.i ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8 ; 2 uses
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !58
  %i.xw = fadd float %i.xq, %i.xs                 ; 2 uses
  %i.xx = load <2 x float>, ptr %i.xt, align 4, !tbaa !58
  %i.xy = fsub float %i.xs, %i.xq
  %i.xz = insertelement <2 x float> poison, float %i.xw, i64 0
  %i.ya = insertelement <2 x float> %i.xz, float %i.xy, i64 1
  %i.yb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> %i.ya, <2 x float> %i.xx)
  %i.yc = call float @llvm.fmuladd.f32(float %i.uy, float %i.xw, float %i.xv)
  store <2 x float> %i.yb, ptr %i.xt, align 4, !tbaa !58
  store float %i.yc, ptr %i.xu, align 4, !tbaa !58
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %exitcond290.not.i = icmp eq i64 %indvars.iv.next287.i, %wide.trip.count.i
  br i1 %exitcond290.not.i, label %._crit_edge.i, label %scalar.ph594, !llvm.loop !115

._crit_edge.i:                                    ; preds = %scalar.ph594, %middle.block618
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count294.i
  br i1 %exitcond295.not.i, label %.preheader236.i, label %.lr.ph245.i, !llvm.loop !116

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph250.i
  br i1 %lcmp.mod726.not, label %.preheader.i, label %.lr.ph250.i.epil.preheader

.lr.ph250.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph250.i.preheader
  %indvars.iv296.i.epil.init = phi i64 [ 0, %.lr.ph250.i.preheader ], [ %indvars.iv.next297.i.1, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod727)
  %i.yd = sub nsw i64 2, %indvars.iv296.i.epil.init
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.yd
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !58
  %i.yg = xor i64 %indvars.iv296.i.epil.init, -1
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.yg
  store float %i.yf, ptr %i.yh, align 4, !tbaa !58
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i.epil.init ; 2 uses
  %i.yi = getelementptr i8, ptr %gep.i.epil, i64 -12
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !58
  store float %i.yj, ptr %gep.i.epil, align 4, !tbaa !58
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph250.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %.preheader236.i
  br i1 %i.sn, label %.lr.ph268.i, label %._crit_edge269.i

.lr.ph250.i:                                      ; preds = %.lr.ph250.i.preheader, %.lr.ph250.i
  %indvars.iv296.i = phi i64 [ %indvars.iv.next297.i.1, %.lr.ph250.i ], [ 0, %.lr.ph250.i.preheader ] ; 7 uses
  %niter729 = phi i64 [ %niter729.next.1, %.lr.ph250.i ], [ 0, %.lr.ph250.i.preheader ]
  %i.yk = sub nsw i64 2, %indvars.iv296.i
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !58
  %i.yn = xor i64 %indvars.iv296.i, -1
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.yn
  store float %i.ym, ptr %i.yo, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i ; 2 uses
  %i.yp = getelementptr i8, ptr %gep.i, i64 -12
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !58
  store float %i.yq, ptr %gep.i, align 4, !tbaa !58
  %i.yr = sub nsw i64 1, %indvars.iv296.i
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.yr
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !58
  %i.yu = xor i64 %indvars.iv296.i, -2
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.yu
  store float %i.yt, ptr %i.yv, align 4, !tbaa !58
  %i.yw = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i ; 2 uses
  %gep.i.1 = getelementptr i8, ptr %i.yw, i64 4
  %i.yx = getelementptr i8, ptr %i.yw, i64 -8
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !58
  store float %i.yy, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next297.i.1 = add nuw nsw i64 %indvars.iv296.i, 2 ; 2 uses
  %niter729.next.1 = add i64 %niter729, 2         ; 2 uses
  %niter729.ncmp.1 = icmp eq i64 %niter729.next.1, %unroll_iter728
  br i1 %niter729.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph250.i, !llvm.loop !117

.lr.ph268.i:                                      ; preds = %.preheader.i, %._crit_edge261.i
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i, %._crit_edge261.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.yz = load float, ptr %i.ka, align 4, !tbaa !58 ; 2 uses
  %.idx329.i = mul nuw nsw i64 %indvars.iv306.i, 12
  %i.za = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx329.i ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !58
  %i.zc = fmul float %i.yz, %i.zb
  %i.zd = fpext float %i.zc to double             ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %i.zf = load <2 x float>, ptr %i.ze, align 4, !tbaa !58
  %i.zg = insertelement <2 x float> poison, float %i.yz, i64 0
  %i.zh = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zi = fmul <2 x float> %i.zh, %i.zf
  %i.zj = fpext <2 x float> %i.zi to <2 x double> ; 2 uses
  br i1 %.not246.i, label %._crit_edge261.i, label %.lr.ph260.i.preheader

.lr.ph260.i.preheader:                            ; preds = %.lr.ph268.i
  %i.zk = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.zd, i64 0
  br label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %.lr.ph260.i.preheader, %.lr.ph260.i
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.lr.ph260.i ], [ 1, %.lr.ph260.i.preheader ] ; 6 uses
  %i.zl = phi <2 x double> [ %i.aay, %.lr.ph260.i ], [ %i.zj, %.lr.ph260.i.preheader ]
  %i.zm = phi <2 x double> [ %i.aax, %.lr.ph260.i ], [ zeroinitializer, %.lr.ph260.i.preheader ]
  %i.zn = phi <2 x double> [ %i.aaf, %.lr.ph260.i ], [ %i.zk, %.lr.ph260.i.preheader ]
  %i.zo = add nuw nsw i64 %indvars.iv301.i, %indvars.iv306.i
  %.idx330.i = mul nuw nsw i64 %i.zo, 12
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx330.i ; 2 uses
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !58 ; 2 uses
  %i.zr = sub nsw i64 %indvars.iv306.i, %indvars.iv301.i
  %.idx331.i = mul nsw i64 %i.zr, 12
  %i.zs = getelementptr inbounds i8, ptr %i.ki, i64 %.idx331.i ; 2 uses
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !58 ; 2 uses
  %i.zu = fadd float %i.zq, %i.zt
  %i.zv = fpext float %i.zu to double
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv301.i
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !58
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv301.i
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !58
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v8f32
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!9 = !{!8, !5, i64 8}
!10 = !{!8, !5, i64 12}
!11 = !{!"vtable pointer", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN2cv9AlgorithmE"}
!14 = !{!"_ZTSN2cv16DenseOpticalFlowE", !13, i64 0}
!15 = !{!"_ZTSN2cv20FarnebackOpticalFlowE", !14, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!"bool", !4, i64 0}
!18 = !{!"_ZTSN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplE", !15, i64 0, !5, i64 8, !16, i64 16, !17, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !16, i64 40, !5, i64 48}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !16, i64 16}
!21 = !{!18, !17, i64 24}
!22 = !{!18, !5, i64 28}
!23 = !{!18, !5, i64 32}
!24 = !{!18, !5, i64 36}
!25 = !{!18, !16, i64 40}
!26 = !{!18, !5, i64 48}
!27 = !{!"any pointer", !4, i64 0}
!28 = !{!"p1 _ZTSN2cv20FarnebackOpticalFlowE", !27, i64 0}
!29 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!30 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN2cv20FarnebackOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !30, i64 8}
!32 = !{!31, !28, i64 0}
!33 = !{!4, !4, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!30, !29, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !27, i64 0}
!38 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !37, i64 0, !5, i64 8}
!39 = !{!38, !5, i64 8}
!40 = !{!"p1 omnipotent char", !27, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"long", !4, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !43, i64 8, !4, i64 16}
!46 = !{!45, !40, i64 0}
!47 = !{!45, !43, i64 8}
!48 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!49 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !48, i64 4, !5, i64 8, !4, i64 12}
!50 = !{!"p1 _ZTSN2cv12MatAllocatorE", !27, i64 0}
!51 = !{!"p1 _ZTSN2cv8UMatDataE", !27, i64 0}
!52 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!53 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !50, i64 56, !51, i64 64, !49, i64 72, !52, i64 128}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!53, !5, i64 12}
!56 = !{!53, !5, i64 8}
!57 = !{!"float", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!53, !40, i64 24}
!60 = distinct !{!60, i1 true, !"_ZN2cvL7makePtrINS_12_GLOBAL__N_124FarnebackOpticalFlowImplEJidbiiidiEEENS_3PtrIT_EEDpRKT0_"}
!61 = distinct !{!61, !60, !"_ZN2cvL7makePtrINS_12_GLOBAL__N_124FarnebackOpticalFlowImplEJidbiiidiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZSt11make_sharedIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplEJRKiRKdRKbS4_S4_S4_S6_S4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!63 = distinct !{!63, !62, !"_ZSt11make_sharedIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplEJRKiRKdRKbS4_S4_S4_S6_S4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!65 = distinct !{!65, !64, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!66 = distinct !{null, null, null, null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv20FarnebackOpticalFlowELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!69 = !{!65, !63, !61}
!70 = !{!63, !61}
!71 = distinct !{null, null}
!72 = distinct !{!72, i1 true, !"_ZN2cvL7makePtrINS_12_GLOBAL__N_124FarnebackOpticalFlowImplEJidbiiidiEEENS_3PtrIT_EEDpRKT0_"}
!73 = distinct !{!73, !72, !"_ZN2cvL7makePtrINS_12_GLOBAL__N_124FarnebackOpticalFlowImplEJidbiiidiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZSt11make_sharedIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplEJRKiRKdRKbS4_S4_S4_S6_S4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!75 = distinct !{!75, !74, !"_ZSt11make_sharedIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplEJRKiRKdRKbS4_S4_S4_S6_S4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!77 = distinct !{!77, !76, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv12_GLOBAL__N_124FarnebackOpticalFlowImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!78 = !{!77, !75, !73}
!79 = !{!75, !73}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = !{!"_ZTSSt9type_info", !40, i64 8}
!83 = !{!82, !40, i64 8}
!84 = distinct !{!84, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!85 = distinct !{!85, !84, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!87 = distinct !{!87, !86, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!89 = distinct !{!89, !88, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!90 = distinct !{!90, !54}
!91 = distinct !{!91, !54}
!92 = distinct !{!92, !165}
!93 = distinct !{null}
!94 = distinct !{!94, i1 false, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !94}
!98 = distinct !{!98, !54, !183, !184}
!99 = distinct !{!99, !54}
!100 = distinct !{!100, !54, !183}
!101 = distinct !{!101, !54}
!102 = distinct !{!102, !54}
!103 = distinct !{!103, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!104 = distinct !{!104, !103, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!105 = distinct !{!105, i1 false, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !54, !183, !184}
!109 = distinct !{!109, !54, !183}
!110 = distinct !{!110, i1 false, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !110}
!114 = distinct !{!114, !54, !183, !184}
!115 = distinct !{!115, !54, !183}
!116 = distinct !{!116, !54}
!117 = distinct !{!117, !54}
!118 = distinct !{!118, !54}
!119 = distinct !{!119, !54}
!120 = distinct !{!120, !54}
!121 = distinct !{!121, !54}
!122 = distinct !{!122, !54}
!123 = distinct !{!123, !54, !183, !184}
!124 = distinct !{!124, !54, !184, !183}
!125 = distinct !{!125, i1 false, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !125}
!129 = distinct !{!129, !54, !183, !184}
!130 = distinct !{!130, !165}
!131 = distinct !{!131, !54, !183}
!132 = distinct !{!132, !54}
!133 = distinct !{!133, !54}
!134 = distinct !{!134, !54}
!135 = distinct !{!135, !54}
!136 = distinct !{!136, !54}
!137 = distinct !{!137, !54}
!138 = distinct !{!138, i1 false, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !54, !183, !184}
!142 = distinct !{!142, !54, !183}
!143 = distinct !{!143, !54}
!144 = distinct !{!144, !54, !183, !184}
!145 = distinct !{!145, !54, !184, !183}
!146 = distinct !{!146, !54, !183, !184}
!147 = distinct !{!147, !54, !184, !183}
!148 = distinct !{!148, !54}
!149 = distinct !{!149, !54, !183, !184}
!150 = distinct !{!150, !54, !184, !183}
!151 = distinct !{!151, !54}
!152 = distinct !{!152, !54}
!153 = distinct !{!153, !54}
!154 = distinct !{!154, !54}
!155 = distinct !{!155, !54}
!156 = distinct !{!156, !54}
!157 = !{!85}
!158 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!159 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !27, i64 8, !158, i64 16}
!160 = !{!159, !27, i64 8}
!161 = !{!87}
!162 = !{!49, !5, i64 0}
!163 = !{!53, !5, i64 0}
!164 = !{!89}
!165 = !{!"llvm.loop.unroll.disable"}
!166 = !{!158, !5, i64 0}
!167 = !{!158, !5, i64 4}
!168 = !{!159, !5, i64 0}
!169 = !{!"p1 _ZTSN2cv5MatOpE", !27, i64 0}
!170 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !4, i64 0}
!171 = !{!"_ZTSN2cv3VecIdLi4EEE", !170, i64 0}
!172 = !{!"_ZTSN2cv7Scalar_IdEE", !171, i64 0}
!173 = !{!"_ZTSN2cv7MatExprE", !169, i64 0, !5, i64 8, !53, i64 16, !53, i64 224, !53, i64 432, !16, i64 640, !16, i64 648, !172, i64 656}
!174 = !{!173, !169, i64 0}
!175 = !{!"p1 float", !27, i64 0}
!176 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !175, i64 0, !43, i64 8, !4, i64 16}
!177 = !{!176, !175, i64 0}
!178 = !{!176, !43, i64 8}
!179 = !{!95}
!180 = !{!97, !96}
!181 = !{!97}
!182 = !{!96}
!183 = !{!"llvm.loop.isvectorized", i32 1}
!184 = !{!"llvm.loop.unroll.runtime.disable"}
!185 = !{!16, !16, i64 0}
!186 = !{!104}
!187 = !{!53, !5, i64 4}
!188 = !{!106}
!189 = !{!107}
!190 = !{!111}
!191 = !{!112}
!192 = !{!113}
!193 = !{!112, !111}
!194 = !{!"any p2 pointer", !27, i64 0}
!195 = !{!"p2 float", !194, i64 0}
!196 = !{!"_ZTSN2cv10AutoBufferIPKfLm136EEE", !195, i64 0, !43, i64 8, !4, i64 16}
!197 = !{!196, !195, i64 0}
!198 = !{!196, !43, i64 8}
!199 = !{!175, !175, i64 0}
!200 = !{!126}
!201 = !{!127}
!202 = !{!128}
!203 = !{!127, !126}
!204 = !{!139}
!205 = !{!140}
!206 = !{!"p1 double", !27, i64 0}
!207 = !{!"_ZTSN2cv10AutoBufferIdLm136EEE", !206, i64 0, !43, i64 8, !4, i64 16}
!208 = !{!207, !206, i64 0}
!209 = !{!207, !43, i64 8}
!210 = !{i8 0, i8 2}
!211 = !{}
!212 = distinct !{!212, !54}
!213 = distinct !{!213, !54}
end_hunk_1
