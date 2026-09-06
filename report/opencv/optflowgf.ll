Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optflowgf?download=true
inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  %scevgep577 = getelementptr i8, ptr %i.st, i64 %i.ss ; 2 uses
  %i.su = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep578 = getelementptr i8, ptr %i.se, i64 %i.su
  %scevgep580 = getelementptr i8, ptr %i.se, i64 %i.su
  %i.sv = mul nuw nsw i64 %wide.trip.count.i, 12
  %i.sw = shl nsw i64 %i.kr, 2
  %i.sx = getelementptr i8, ptr %i.kh, i64 %i.sv
  %scevgep609 = getelementptr i8, ptr %i.sx, i64 %i.sw
  %i.sy = add nsw i64 %wide.trip.count314.i, -1
  %i.sz = mul i64 %i.sf, %i.sy
  %i.ta = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.tb = getelementptr i8, ptr %i.se, i64 %i.sz
  %scevgep610 = getelementptr i8, ptr %i.tb, i64 %i.ta
  %min.iters.check615 = icmp ult i32 %i.jp, 4
  %bound0611 = icmp ult ptr %i.ks, %scevgep610
  %bound1612 = icmp ult ptr %i.se, %scevgep609
  %found.conflict613 = and i1 %bound0611, %bound1612
  %stride.check = icmp slt i64 %i.sf, 0
  %i.tc = or i1 %found.conflict613, %stride.check
  %n.vec617 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n626 = icmp eq i64 %n.vec617, %wide.trip.count.i
  %xtraiter692 = and i64 %wide.trip.count.i, 1
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  %i.td = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check590 = icmp ult i32 %i.jp, 4
  %n.vec592 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n606 = icmp eq i64 %n.vec592, %wide.trip.count.i
  %xtraiter694 = and i64 %wide.trip.count299.i, 1
  %i.te = icmp slt i32 %i.kq, 2
  %unroll_iter698 = and i64 %wide.trip.count299.i, 2147483646
  %lcmp.mod696.not = icmp eq i64 %xtraiter694, 0
  %lcmp.mod697 = trunc i32 %smax.i to i1
  %i.tf = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.tg = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.th = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.ti = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tj = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.tk = shufflevector <2 x double> %i.tj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge269.i, %.lr.ph272.i
  %indvars.iv311.i = phi i64 [ 0, %.lr.ph272.i ], [ %indvars.iv.next312.i, %._crit_edge269.i ] ; 7 uses
  %i.tl = trunc i64 %indvars.iv311.i to i32
  %i.tm = add i32 %i.tl, 1
  %i.tn = trunc i64 %indvars.iv311.i to i32
  %i.to = load float, ptr %i.kk, align 4, !tbaa !58 ; 4 uses
  %i.tp = mul i64 %indvars.iv311.i, %i.sf
  %i.tq = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.tp ; 4 uses
  %i.tr = mul i64 %indvars.iv311.i, %i.sj
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.tr
  br i1 %i.sk, label %.lr.ph.i.preheader, label %.preheader236.i

.lr.ph.i.preheader:                               ; preds = %bb.dj
  %brmerge = select i1 %min.iters.check615, i1 true, i1 %i.tc
  br i1 %brmerge, label %.lr.ph.i.preheader673, label %vector.ph616

vector.ph616:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert618 = insertelement <4 x float> poison, float %i.to, i64 0
  %broadcast.splat619 = shufflevector <4 x float> %broadcast.splatinsert618, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph616
  %index621 = phi i64 [ 0, %vector.ph616 ], [ %index.next624, %vector.body620 ] ; 3 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %index621
  %wide.load622 = load <4 x float>, ptr %i.tt, align 4, !tbaa !58, !alias.scope !182
  %i.tu = fmul <4 x float> %broadcast.splat619, %wide.load622
  %i.tv = mul nuw nsw i64 %index621, 12
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.tv
  %i.tx = shufflevector <4 x float> %i.tu, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec623 = shufflevector <8 x float> %i.tx, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec623, ptr %i.tw, align 4, !tbaa !58, !alias.scope !183, !noalias !182
  %index.next624 = add nuw i64 %index621, 4       ; 2 uses
  %i.ty = icmp eq i64 %index.next624, %n.vec617
  br i1 %i.ty, label %middle.block625, label %vector.body620, !llvm.loop !102

middle.block625:                                  ; preds = %vector.body620
  br i1 %cmp.n626, label %.preheader237.i, label %.lr.ph.i.preheader673

.lr.ph.i.preheader673:                            ; preds = %.lr.ph.i.preheader, %middle.block625
  %indvars.iv.i.ph = phi i64 [ %n.vec617, %middle.block625 ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  br i1 %lcmp.mod693.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader673
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.i.ph
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !58
  %i.ub = fmul float %i.to, %i.ua
  %.idx.i.prol = mul nuw nsw i64 %indvars.iv.i.ph, 12
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i.prol ; 2 uses
  store float %i.ub, ptr %i.uc, align 4, !tbaa !58
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store <2 x float> zeroinitializer, ptr %i.ud, align 4, !tbaa !58
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader673
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader673 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ue = icmp eq i64 %indvars.iv.i.ph, %i.td
  br i1 %i.ue, label %.preheader237.i, label %.lr.ph.i

.preheader237.i:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block625
  br i1 %brmerge.i, label %.preheader236.i, label %.lr.ph245.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.i
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !58
  %i.uh = fmul float %i.to, %i.ug
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i ; 2 uses
  store float %i.uh, ptr %i.ui, align 4, !tbaa !58
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store <2 x float> zeroinitializer, ptr %i.uj, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv.next.i
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !58
  %i.um = fmul float %i.to, %i.ul
  %.idx.i.1 = mul nuw nsw i64 %indvars.iv.next.i, 12
  %i.un = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i.1 ; 2 uses
  store float %i.um, ptr %i.un, align 4, !tbaa !58
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  store <2 x float> zeroinitializer, ptr %i.uo, align 4, !tbaa !58
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader237.i, label %.lr.ph.i, !llvm.loop !103

bb.dk:                                            ; preds = %bb.co
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

bb.dl:                                            ; preds = %_ZN2cv4Mat_IdEaSEONS_3MatE.exit, %._crit_edge136.i.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dl, %bb.di
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.uq, %bb.dl ], [ %.pn89.pn.i.i, %bb.di ] ; 2 uses
  %i.ur = load ptr, ptr %19, align 8, !tbaa !171  ; 3 uses
  %.not.i.i211.i = icmp eq ptr %i.ur, %i.fx
  %i.us = icmp eq ptr %i.ur, null
  %or.cond.i.i = or i1 %.not.i.i211.i, %i.us
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %.body.i
  call void @_ZdaPv(ptr noundef nonnull %i.ur) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

.preheader236.i:                                  ; preds = %._crit_edge.i, %.preheader237.i, %bb.dj
  br i1 %i.sn, label %.lr.ph250.i.preheader, label %.preheader.i

.lr.ph250.i.preheader:                            ; preds = %.preheader236.i
  br i1 %i.te, label %.lr.ph250.i.epil.preheader, label %.lr.ph250.i

.lr.ph245.i:                                      ; preds = %.preheader237.i, %._crit_edge.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader237.i ] ; 3 uses
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %._crit_edge.i ], [ 1, %.preheader237.i ] ; 6 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv291.i
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !58 ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv291.i
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !58 ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv291.i
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !58 ; 2 uses
  %i.uz = sub nsw i64 %indvars.iv311.i, %indvars.iv291.i
  %i.va = trunc nsw i64 %i.uz to i32
  %.sroa.speculated225.i = call i32 @llvm.smax.i32(i32 %i.va, i32 0)
  %i.vb = zext nneg i32 %.sroa.speculated225.i to i64
  %i.vc = mul i64 %i.sf, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.vc ; 3 uses
  %i.ve = add nuw nsw i64 %indvars.iv291.i, %indvars.iv311.i
  %i.vf = trunc nuw nsw i64 %i.ve to i32
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.sl, i32 %i.vf)
  %i.vg = sext i32 %.sroa.speculated.i to i64
  %i.vh = mul i64 %i.sf, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.vh ; 3 uses
  br i1 %min.iters.check590, label %scalar.ph589.preheader, label %vector.memcheck576

vector.memcheck576:                               ; preds = %.lr.ph245.i
  %i.vj = xor i32 %indvar, -1
  %i.vk = add i32 %i.vj, %i.tn
  %smax = call i32 @llvm.smax.i32(i32 %i.vk, i32 0)
  %i.vl = zext nneg i32 %smax to i64
  %i.vm = mul i64 %i.sf, %i.vl
  %scevgep581 = getelementptr i8, ptr %scevgep580, i64 %i.vm
  %i.vn = add i32 %i.tm, %indvar
  %i.vo = call i32 @llvm.smin.i32(i32 %i.vn, i32 %i.sl)
  %smin = sext i32 %i.vo to i64
  %i.vp = mul i64 %i.sf, %smin
  %scevgep579 = getelementptr i8, ptr %scevgep578, i64 %i.vp
  %bound0582 = icmp ult ptr %i.ks, %scevgep579
  %bound1583 = icmp ult ptr %i.vi, %scevgep577
  %found.conflict584 = and i1 %bound0582, %bound1583
  %bound0585 = icmp ult ptr %i.ks, %scevgep581
  %bound1586 = icmp ult ptr %i.vd, %scevgep577
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx588 = or i1 %found.conflict584, %found.conflict587
  br i1 %conflict.rdx588, label %scalar.ph589.preheader, label %vector.ph591

vector.ph591:                                     ; preds = %vector.memcheck576
  %broadcast.splatinsert593 = insertelement <4 x float> poison, float %i.uu, i64 0
  %broadcast.splatinsert595 = insertelement <4 x float> poison, float %i.uw, i64 0
  %52 = shufflevector <4 x float> %broadcast.splatinsert593, <4 x float> %broadcast.splatinsert595, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splatinsert597 = insertelement <4 x float> poison, float %i.uy, i64 0
  %broadcast.splat598 = shufflevector <4 x float> %broadcast.splatinsert597, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph591
  %index600 = phi i64 [ 0, %vector.ph591 ], [ %index.next604, %vector.body599 ] ; 7 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %index600
  %wide.load601 = load <4 x float>, ptr %i.vq, align 4, !tbaa !58, !alias.scope !184 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %index600
  %wide.load602 = load <4 x float>, ptr %i.vr, align 4, !tbaa !58, !alias.scope !185 ; 2 uses
  %i.vs = fadd <4 x float> %wide.load601, %wide.load602 ; 2 uses
  %i.vt = mul nuw nsw i64 %index600, 12
  %i.vu = mul nuw i64 %index600, 12
  %i.vv = mul nuw i64 %index600, 12
  %i.vw = mul nuw i64 %index600, 12
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.vt ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.vu ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.vv ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.vw ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 36
  %i.we = load float, ptr %i.vx, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wf = load float, ptr %i.vz, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wg = load float, ptr %i.wb, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wh = load float, ptr %i.wd, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wi = insertelement <4 x float> poison, float %i.we, i64 0
  %i.wj = insertelement <4 x float> %i.wi, float %i.wf, i64 1
  %i.wk = insertelement <4 x float> %i.wj, float %i.wg, i64 2
  %i.wl = insertelement <4 x float> %i.wk, float %i.wh, i64 3
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wa, i64 28
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 40
  %i.wq = load float, ptr %i.wm, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wr = load float, ptr %i.wn, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.ws = load float, ptr %i.wo, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wt = load float, ptr %i.wp, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.wu = insertelement <4 x float> poison, float %i.wq, i64 0
  %i.wv = insertelement <4 x float> %i.wu, float %i.wr, i64 1
  %i.ww = insertelement <4 x float> %i.wv, float %i.ws, i64 2
  %i.wx = insertelement <4 x float> %i.ww, float %i.wt, i64 3
  %53 = shufflevector <4 x float> %i.wl, <4 x float> %i.wx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wy = fsub <4 x float> %wide.load602, %wide.load601
  %54 = shufflevector <4 x float> %i.vs, <4 x float> %i.wy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vy, i64 20
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wc, i64 44
  %i.xd = load float, ptr %i.wz, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.xe = load float, ptr %i.xa, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.xf = load float, ptr %i.xb, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.xg = load float, ptr %i.xc, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %i.xh = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.xi = insertelement <4 x float> %i.xh, float %i.xe, i64 1
  %i.xj = insertelement <4 x float> %i.xi, float %i.xf, i64 2
  %i.xk = insertelement <4 x float> %i.xj, float %i.xg, i64 3
  %i.xl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat598, <4 x float> %i.vs, <4 x float> %i.xk)
  %i.xm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %52, <8 x float> %54, <8 x float> %53)
  %i.xn = shufflevector <4 x float> %i.xl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec603 = shufflevector <8 x float> %i.xm, <8 x float> %i.xn, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec603, ptr %i.vx, align 4, !tbaa !58, !alias.scope !186, !noalias !187
  %index.next604 = add nuw i64 %index600, 4       ; 2 uses
  %i.xo = icmp eq i64 %index.next604, %n.vec592
  br i1 %i.xo, label %middle.block605, label %vector.body599, !llvm.loop !108

middle.block605:                                  ; preds = %vector.body599
  br i1 %cmp.n606, label %._crit_edge.i, label %scalar.ph589.preheader

scalar.ph589.preheader:                           ; preds = %vector.memcheck576, %.lr.ph245.i, %middle.block605
  %indvars.iv286.i.ph = phi i64 [ 0, %vector.memcheck576 ], [ 0, %.lr.ph245.i ], [ %n.vec592, %middle.block605 ]
  %i.xp = insertelement <2 x float> poison, float %i.uu, i64 0
  %i.xq = insertelement <2 x float> %i.xp, float %i.uw, i64 1
  br label %scalar.ph589

scalar.ph589:                                     ; preds = %scalar.ph589.preheader, %scalar.ph589
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %scalar.ph589 ], [ %indvars.iv286.i.ph, %scalar.ph589.preheader ] ; 4 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv286.i
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !58 ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv286.i
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !58 ; 2 uses
  %.idx328.i = mul nuw nsw i64 %indvars.iv286.i, 12
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx328.i ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !58
  %i.xy = load <2 x float>, ptr %i.xv, align 4, !tbaa !58
  %i.xz = fsub float %i.xu, %i.xs
  %i.ya = fadd float %i.xs, %i.xu                 ; 2 uses
  %i.yb = insertelement <2 x float> poison, float %i.ya, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %i.xz, i64 1
  %i.yd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> %i.yc, <2 x float> %i.xy)
  %i.ye = call float @llvm.fmuladd.f32(float %i.uy, float %i.ya, float %i.xx)
  store <2 x float> %i.yd, ptr %i.xv, align 4, !tbaa !58
  store float %i.ye, ptr %i.xw, align 4, !tbaa !58
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %exitcond290.not.i = icmp eq i64 %indvars.iv.next287.i, %wide.trip.count.i
  br i1 %exitcond290.not.i, label %._crit_edge.i, label %scalar.ph589, !llvm.loop !109

._crit_edge.i:                                    ; preds = %scalar.ph589, %middle.block605
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count294.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond295.not.i, label %.preheader236.i, label %.lr.ph245.i, !llvm.loop !110

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph250.i
  br i1 %lcmp.mod696.not, label %.preheader.i, label %.lr.ph250.i.epil.preheader

.lr.ph250.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph250.i.preheader
  %indvars.iv296.i.epil.init = phi i64 [ 0, %.lr.ph250.i.preheader ], [ %indvars.iv.next297.i.1, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod697)
  %i.yf = sub nsw i64 2, %indvars.iv296.i.epil.init
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.yf
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !58
  %i.yi = xor i64 %indvars.iv296.i.epil.init, -1
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.yi
  store float %i.yh, ptr %i.yj, align 4, !tbaa !58
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i.epil.init ; 2 uses
  %i.yk = getelementptr i8, ptr %gep.i.epil, i64 -12
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !58
  store float %i.yl, ptr %gep.i.epil, align 4, !tbaa !58
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph250.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %.preheader236.i
  br i1 %i.sk, label %.lr.ph268.i, label %._crit_edge269.i

.lr.ph250.i:                                      ; preds = %.lr.ph250.i.preheader, %.lr.ph250.i
  %indvars.iv296.i = phi i64 [ %indvars.iv.next297.i.1, %.lr.ph250.i ], [ 0, %.lr.ph250.i.preheader ] ; 7 uses
  %niter699 = phi i64 [ %niter699.next.1, %.lr.ph250.i ], [ 0, %.lr.ph250.i.preheader ]
  %i.ym = sub nsw i64 2, %indvars.iv296.i
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.ym
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !58
  %i.yp = xor i64 %indvars.iv296.i, -1
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.yp
  store float %i.yo, ptr %i.yq, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i ; 2 uses
  %i.yr = getelementptr i8, ptr %gep.i, i64 -12
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !58
  store float %i.ys, ptr %gep.i, align 4, !tbaa !58
  %i.yt = sub nsw i64 1, %indvars.iv296.i
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.yt
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !58
  %i.yw = xor i64 %indvars.iv296.i, -2
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.yw
  store float %i.yv, ptr %i.yx, align 4, !tbaa !58
  %i.yy = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i ; 2 uses
  %gep.i.1 = getelementptr i8, ptr %i.yy, i64 4
  %i.yz = getelementptr i8, ptr %i.yy, i64 -8
  %i.za = load float, ptr %i.yz, align 4, !tbaa !58
  store float %i.za, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next297.i.1 = add nuw nsw i64 %indvars.iv296.i, 2 ; 2 uses
  %niter699.next.1 = add i64 %niter699, 2         ; 2 uses
  %niter699.ncmp.1 = icmp eq i64 %niter699.next.1, %unroll_iter698
  br i1 %niter699.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph250.i, !llvm.loop !111

.lr.ph268.i:                                      ; preds = %.preheader.i, %._crit_edge261.i
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i, %._crit_edge261.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.zb = load float, ptr %i.kk, align 4, !tbaa !58 ; 2 uses
  %.idx329.i = mul nuw nsw i64 %indvars.iv306.i, 12
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx329.i ; 2 uses
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !58
  %i.ze = fmul float %i.zb, %i.zd
  %i.zf = fpext float %i.ze to double             ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 4
  %i.zh = load <2 x float>, ptr %i.zg, align 4, !tbaa !58
  %i.zi = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.zj = shufflevector <2 x float> %i.zi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zk = fmul <2 x float> %i.zj, %i.zh
  %i.zl = fpext <2 x float> %i.zk to <2 x double> ; 2 uses
  br i1 %.not246.i, label %._crit_edge261.i, label %.lr.ph260.i.preheader

.lr.ph260.i.preheader:                            ; preds = %.lr.ph268.i
  %i.zm = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.zf, i64 0
  br label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %.lr.ph260.i.preheader, %.lr.ph260.i
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.lr.ph260.i ], [ 1, %.lr.ph260.i.preheader ] ; 6 uses
  %i.zn = phi <2 x double> [ %i.aba, %.lr.ph260.i ], [ %i.zl, %.lr.ph260.i.preheader ]
  %i.zo = phi <2 x double> [ %i.aaz, %.lr.ph260.i ], [ zeroinitializer, %.lr.ph260.i.preheader ]
  %i.zp = phi <2 x double> [ %i.aah, %.lr.ph260.i ], [ %i.zm, %.lr.ph260.i.preheader ]
  %i.zq = add nuw nsw i64 %indvars.iv301.i, %indvars.iv306.i
  %.idx330.i = mul nuw nsw i64 %i.zq, 12
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx330.i ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !58 ; 2 uses
  %i.zt = sub nsw i64 %indvars.iv306.i, %indvars.iv301.i
  %.idx331.i = mul nsw i64 %i.zt, 12
  %i.zu = getelementptr inbounds i8, ptr %i.ks, i64 %.idx331.i ; 2 uses
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !58 ; 2 uses
  %i.zw = fadd float %i.zs, %i.zv
  %i.zx = fpext float %i.zw to double
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv301.i
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !58
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv301.i
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !58
  %i.aac = insertelement <2 x float> poison, float %i.zz, i64 0 ; 2 uses
  %i.aad = insertelement <2 x float> %i.aac, float %i.aab, i64 1
  %i.aae = fpext <2 x float> %i.aad to <2 x double>
  %i.aaf = insertelement <2 x double> poison, double %i.zx, i64 0
  %i.aag = shufflevector <2 x double> %i.aaf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aah = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aag, <2 x double> %i.aae, <2 x double> %i.zp) ; 3 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv301.i
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !58
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.aal = getelementptr i8, ptr %i.zu, i64 4
  %i.aam = load <2 x float>, ptr %i.aak, align 4, !tbaa !58 ; 2 uses
  %i.aan = load <2 x float>, ptr %i.aal, align 4, !tbaa !58 ; 2 uses
  %i.aao = fadd <2 x float> %i.aam, %i.aan
  %i.aap = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = fmul <2 x float> %i.aap, %i.aao
  %i.aar = fpext <2 x float> %i.aaq to <2 x double>
  %foldExtExtBinop = fsub <2 x float> %i.aam, %i.aan
  %i.aas = fsub float %i.zs, %i.zv
  %i.aat = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.aau = shufflevector <2 x float> %i.aat, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.aav = insertelement <2 x float> poison, float %i.aaj, i64 0
  %i.aaw = shufflevector <2 x float> %i.aav, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aax = fmul <2 x float> %i.aau, %i.aaw
  %i.aay = fpext <2 x float> %i.aax to <2 x double>
  %i.aaz = fadd <2 x double> %i.zo, %i.aay        ; 2 uses
  %i.aba = fadd <2 x double> %i.zn, %i.aar        ; 2 uses
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count294.i
  br i1 %exitcond305.not.i, label %._crit_edge261.i.loopexit, label %.lr.ph260.i, !llvm.loop !112

._crit_edge261.i.loopexit:                        ; preds = %.lr.ph260.i
  %i.abb = extractelement <2 x double> %i.aah, i64 1
  %i.abc = extractelement <2 x double> %i.aah, i64 0
  br label %._crit_edge261.i

._crit_edge261.i:                                 ; preds = %._crit_edge261.i.loopexit, %.lr.ph268.i
  %.0190.lcssa.i = phi double [ %i.zf, %.lr.ph268.i ], [ %i.abc, %._crit_edge261.i.loopexit ]
  %.0187.lcssa.i = phi double [ 0.000000e+00, %.lr.ph268.i ], [ %i.abb, %._crit_edge261.i.loopexit ]
  %i.abd = phi <2 x double> [ %i.zl, %.lr.ph268.i ], [ %i.aba, %._crit_edge261.i.loopexit ] ; 2 uses
  %i.abe = phi <2 x double> [ zeroinitializer, %.lr.ph268.i ], [ %i.aaz, %._crit_edge261.i.loopexit ] ; 2 uses
  %.idx332.i = mul nuw nsw i64 %indvars.iv306.i, 20
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx332.i ; 2 uses
  %i.abg = shufflevector <2 x double> %i.abd, <2 x double> %i.abe, <2 x i32> <i32 0, i32 2>
  %i.abh = fmul <2 x double> %i.tg, %i.abg
  %i.abi = shufflevector <2 x double> %i.abd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abj = insertelement <2 x double> %i.abi, double %.0187.lcssa.i, i64 1
  %i.abk = fmul <2 x double> %i.ti, %i.abj
  %i.abl = insertelement <2 x double> poison, double %.0190.lcssa.i, i64 0
  %i.abm = shufflevector <2 x double> %i.abl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abm, <2 x double> %i.tk, <2 x double> %i.abk)
  %i.abo = shufflevector <2 x double> %i.abh, <2 x double> %i.abn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abp = fptrunc <4 x double> %i.abo to <4 x float>
  store <4 x float> %i.abp, ptr %i.abf, align 4, !tbaa !58
  %i.abq = extractelement <2 x double> %i.abe, i64 1
  %i.abr = fmul double %i.sc, %i.abq
  %i.abs = fptrunc double %i.abr to float
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  store float %i.abs, ptr %i.abt, align 4, !tbaa !58
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 1 ; 2 uses
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next307.i, %wide.trip.count.i
  br i1 %exitcond310.not.i, label %._crit_edge269.i, label %.lr.ph268.i, !llvm.loop !113

._crit_edge269.i:                                 ; preds = %._crit_edge261.i, %.preheader.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %exitcond315.not.i = icmp eq i64 %indvars.iv.next312.i, %wide.trip.count314.i
  br i1 %exitcond315.not.i, label %._crit_edge273.i, label %bb.dj, !llvm.loop !114
end_hunk_0
