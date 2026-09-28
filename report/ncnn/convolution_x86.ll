Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %shift144 = shufflevector <4 x float> %i.qg, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop145 = fadd fast <4 x float> %shift144, %i.ql
  %i.qn = extractelement <4 x float> %foldExtExtBinop145, i64 1
  %i.qo = fmul fast <4 x float> %i.qf, <float 1.600000e+01, float 2.000000e+00, float 1.600000e+01, float 2.000000e+00> ; 3 uses
  %i.qp = shufflevector <2 x float> %i.qa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qq = shufflevector <4 x float> %i.qi, <4 x float> %i.qp, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.qr = shufflevector <4 x float> %i.ql, <4 x float> %i.qo, <4 x i32> <i32 2, i32 3, i32 4, i32 6>
  %i.qs = fadd fast <4 x float> %i.qq, %i.qr      ; 4 uses
  %shift147 = shufflevector <4 x float> %i.qs, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop148 = fadd fast <4 x float> %i.qo, %shift147
  %i.qt = extractelement <4 x float> %foldExtExtBinop148, i64 1
  %foldExtExtBinop150 = fadd fast <4 x float> %i.qo, %i.qs
  %i.qu = extractelement <4 x float> %foldExtExtBinop150, i64 3
  %i.qv = fmul fast <2 x float> %i.pt, splat (float 3.200000e+01) ; 2 uses
  %foldExtExtBinop152 = fadd fast <2 x float> %i.qe, %i.qv
  %foldExtExtBinop154 = fadd fast <2 x float> %i.pu, %foldExtExtBinop152
  %i.qw = extractelement <2 x float> %foldExtExtBinop154, i64 0
  %i.qx = fadd fast float %i.qw, %i.pj
  %foldExtExtBinop156 = fadd fast <2 x float> %i.qe, %i.qv
  %foldExtExtBinop158 = fadd fast <2 x float> %i.pu, %foldExtExtBinop156
  %i.qy = extractelement <2 x float> %foldExtExtBinop158, i64 1
  %i.qz = fadd fast float %i.qy, %i.pl
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.0701153.us.i, i64 %i.cr ; 6 uses
  %i.rb = extractelement <2 x float> %i.qd, i64 0
  store float %i.rb, ptr %.0701153.us.i, align 4, !tbaa !53
  %i.rc = extractelement <2 x float> %i.qd, i64 1
  store float %i.rc, ptr %i.ra, align 4, !tbaa !53
  br i1 %i.os, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.rd = fmul fast <2 x float> %i.pu, splat (float 1.600000e+01)
  %i.re = fmul fast <2 x float> %i.pt, splat (float 2.000000e+00)
  %i.rf = fadd fast <2 x float> %i.qe, %i.rd
  %i.rg = fadd fast <2 x float> %i.rf, %i.re      ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 4
  %i.ri = extractelement <2 x float> %i.rg, i64 0
  store float %i.ri, ptr %i.rh, align 4, !tbaa !53
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rk = extractelement <2 x float> %i.rg, i64 1
  store float %i.rk, ptr %i.rj, align 4, !tbaa !53
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.ou, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.rl = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 8
  store float %i.qm, ptr %i.rl, align 4, !tbaa !53
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store float %i.qn, ptr %i.rm, align 4, !tbaa !53
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.ow, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rn = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 12
  %i.ro = extractelement <4 x float> %i.qs, i64 0
  store float %i.ro, ptr %i.rn, align 4, !tbaa !53
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  %i.rq = extractelement <4 x float> %i.qs, i64 1
  store float %i.rq, ptr %i.rp, align 4, !tbaa !53
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.oy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rr = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 16
  store float %i.qt, ptr %i.rr, align 4, !tbaa !53
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store float %i.qu, ptr %i.rs, align 4, !tbaa !53
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.pa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.rt = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 20
  store float %i.qx, ptr %i.rt, align 4, !tbaa !53
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ra, i64 20
  store float %i.qz, ptr %i.ru, align 4, !tbaa !53
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.rv = getelementptr inbounds [4 x i8], ptr %.0701153.us.i, i64 %i.lk
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ak
  %.1702.us.i = phi ptr [ %.0701153.us.i, %bb.ak ], [ %i.rv, %bb.av ]
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i64 %indvars.iv.next223.i, 6
  br i1 %exitcond225.not.i, label %bb.ax, label %bb.ak, !llvm.loop !955

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %._crit_edge.us164.i, label %bb.ai, !llvm.loop !956

._crit_edge.us164.i:                              ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 2 ; 3 uses
  %i.rw = icmp slt i64 %indvars.iv.next232.i, %invariant.op260.i
  br i1 %i.rw, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !957

.lr.ph160.split.i:                                ; preds = %.lr.ph160.i
  %i.rx = sub i32 %i.cd, %.0703.lcssa.i
  %i.ry = and i32 %i.rx, -2
  %i.rz = add i32 %.0703.lcssa.i, 2
  %i.sa = add i32 %i.rz, %i.ry
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us164.i
  %i.sb = trunc nsw i64 %indvars.iv.next232.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph160.split.i, %.preheader124.i
  %.1704.lcssa.i = phi i32 [ %.0703.lcssa.i, %.preheader124.i ], [ %i.sa, %.lr.ph160.split.i ], [ %i.sb, %.preheader.loopexit.i ] ; 2 uses
  %i.sc = icmp slt i32 %.1704.lcssa.i, %.sroa.speculated121
  br i1 %i.sc, label %.lr.ph188.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.sd = icmp sgt i32 %.sroa.speculated117, 0
  %i.se = sext i32 %.sroa.speculated117 to i64
  %i.sf = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = mul nuw nsw i32 %.sroa.speculated117, 3
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = mul nuw nsw i32 %.sroa.speculated117, 5
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = mul nuw nsw i32 %.sroa.speculated117, 7
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.ss = zext nneg i32 %i.sr to i64              ; 8 uses
  %i.st = sext i32 %i.cm to i64
  br i1 %i.sd, label %.lr.ph188.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.split.us.i:                             ; preds = %.lr.ph188.i
  %i.su = load i32, ptr %i.aq, align 4, !tbaa !86, !noalias !977
  %i.sv = load ptr, ptr %12, align 8, !tbaa !34, !noalias !977
  %i.sw = load i64, ptr %i.at, align 8, !tbaa !35, !noalias !977
  %i.sx = load i64, ptr %i.az, align 8, !tbaa !76, !noalias !977 ; 2 uses
  %factor.op.mul193.i = mul i64 %i.sx, %i.sw
  %i.sy = sext i32 %i.su to i64
  %factor.op.mul184.us.i = mul i64 %i.sx, %i.sy
  %i.sz = sext i32 %i.cn to i64
  %i.ta = sext i32 %.1704.lcssa.i to i64
  %wide.trip.count245.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.us191.i, %.lr.ph188.split.us.i
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i, %._crit_edge.us191.i ], [ %i.ta, %.lr.ph188.split.us.i ] ; 3 uses
  %.pre252.i = add nsw i64 %indvars.iv247.i, %i.ca ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us190.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.tb = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre252.i
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !53
  br label %.lr.ph.us190.i

.lr.ph.us190.i:                                   ; preds = %bb.az, %bb.ay
  %i.td = phi fast float [ %i.tc, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.te = trunc nsw i64 %indvars.iv247.i to i32
  %factor.op.mul181.reass.us.i = mul i32 %factor.op.mul137.i, %i.te
  %i.tf = sext i32 %factor.op.mul181.reass.us.i to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.tf
  %.reass194.i = mul i64 %factor.op.mul193.i, %.pre252.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.reass194.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bp, %.lr.ph.us190.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph.us190.i ], [ %indvars.iv.next243.i, %bb.bp ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv242.i ; 8 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.se
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sg
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.si
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sk
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sm
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.so
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sq
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %bb.bb ], [ 0, %bb.ba ] ; 7 uses
  %.0691177.us.i = phi ptr [ %i.vs, %bb.bb ], [ %i.tp, %bb.ba ] ; 2 uses
  %.0692176.us.i = phi ptr [ %i.vr, %bb.bb ], [ %i.to, %bb.ba ] ; 2 uses
  %.0693175.us.i = phi ptr [ %i.vq, %bb.bb ], [ %i.tn, %bb.ba ] ; 2 uses
  %.0694174.us.i = phi ptr [ %i.vp, %bb.bb ], [ %i.tm, %bb.ba ] ; 2 uses
  %.0695173.us.i = phi ptr [ %i.vo, %bb.bb ], [ %i.tl, %bb.ba ] ; 2 uses
  %.0696172.us.i = phi ptr [ %i.vn, %bb.bb ], [ %i.tk, %bb.ba ] ; 2 uses
  %.0697171.us.i = phi ptr [ %i.vm, %bb.bb ], [ %i.tj, %bb.ba ] ; 2 uses
  %.0698170.us.i = phi ptr [ %i.vl, %bb.bb ], [ %i.ti, %bb.ba ] ; 2 uses
  %i.tq = load float, ptr %.0697171.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tr = load float, ptr %.0696172.us.i, align 4, !tbaa !53 ; 2 uses
  %16 = fsub fast float %i.tq, %i.tr              ; 3 uses
  %i.ts = load float, ptr %.0695173.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tt = load float, ptr %.0694174.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tu = load float, ptr %.0693175.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tv = load float, ptr %.0692176.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tw = fadd fast float %i.tv, %i.tu            ; 3 uses
  %i.tx = fsub fast float %i.tu, %i.tv            ; 3 uses
  %i.ty = load float, ptr %.0698170.us.i, align 4, !tbaa !53
  %i.tz = fmul fast float %i.tw, 3.200000e+01
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv234.i
  %i.ub = fmul fast float %i.tx, 1.600000e+01
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv234.i
  %i.ud = fmul fast float %i.tw, 8.000000e+00
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv234.i
  %i.uf = fmul fast float %i.tx, 4.000000e+00
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv234.i
  %i.uh = fadd fast float %i.tr, %i.tq            ; 2 uses
  %i.ui = fadd fast float %i.tt, %i.ts            ; 2 uses
  %i.uj = fsub fast float %i.ts, %i.tt            ; 2 uses
  %i.uk = fadd fast float %i.ui, %i.uh
  %i.ul = fadd fast float %i.uk, %i.ty
  %i.um = fadd fast float %i.ul, %i.tz
  store float %i.um, ptr %i.ua, align 4, !tbaa !53
  %i.un = fadd fast float %16, %i.ub
  %i.uo = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.up = insertelement <4 x float> %i.uo, float %i.ui, i64 1
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ur = fmul fast <4 x float> %i.uq, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.us = insertelement <4 x float> poison, float %i.un, i64 0
  %i.ut = insertelement <4 x float> %i.us, float %i.uh, i64 1
  %i.uu = insertelement <4 x float> %i.ut, float %16, i64 2
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.uw = fadd fast <4 x float> %i.uv, %i.ur      ; 4 uses
  %i.ux = extractelement <4 x float> %i.uw, i64 0
  store float %i.ux, ptr %i.uc, align 4, !tbaa !53
  %i.uy = extractelement <4 x float> %i.uw, i64 1
  %i.uz = fadd fast float %i.ud, %i.uy
  store float %i.uz, ptr %i.ue, align 4, !tbaa !53
  %i.va = extractelement <4 x float> %i.uw, i64 2
  %i.vb = fadd fast float %i.uf, %i.va
  store float %i.vb, ptr %i.ug, align 4, !tbaa !53
  %factor115.us.i = fmul fast float %i.tw, 2.000000e+00
  %i.vc = extractelement <4 x float> %i.uw, i64 3
  %i.vd = fadd fast float %factor115.us.i, %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv234.i
  store float %i.vd, ptr %i.ve, align 4, !tbaa !53
  %i.vf = load float, ptr %.0691177.us.i, align 4, !tbaa !53
  %i.vg = fmul fast float %i.uj, 3.200000e+01
  %i.vh = fadd fast float %16, %i.vg
  %i.vi = fadd fast float %i.vh, %i.tx
  %i.vj = fadd fast float %i.vi, %i.vf
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv234.i
  store float %i.vj, ptr %i.vk, align 4, !tbaa !53
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.0698170.us.i, i64 %i.ss
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.0697171.us.i, i64 %i.ss
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.0696172.us.i, i64 %i.ss
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.0695173.us.i, i64 %i.ss
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.0694174.us.i, i64 %i.ss
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.0693175.us.i, i64 %i.ss
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.0692176.us.i, i64 %i.ss
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.0691177.us.i, i64 %i.ss
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next235.i, 8
  br i1 %exitcond237.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.bb, !llvm.loop !960

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bb
  %i.vt = trunc i64 %indvars.iv242.i to i32
  %i.vu = add i32 %.044131, %i.vt                 ; 2 uses
  %i.vv = sdiv i32 %i.vu, %i.ct
  %i.vw = srem i32 %i.vu, %i.ct
  %i.vx = mul nsw i32 %i.vv, 6
  %i.vy = sext i32 %i.vx to i64                   ; 2 uses
  %.reass185.us.i = mul i64 %factor.op.mul184.us.i, %i.vy
  %i.vz = getelementptr inbounds nuw i8, ptr %i.th, i64 %.reass185.us.i
  %i.wa = mul nsw i32 %i.vw, 6                    ; 6 uses
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.wb
  %i.wd = or disjoint i32 %i.wa, 1
  %i.we = icmp slt i32 %i.wd, %i.cm
  %i.wf = add nsw i32 %i.wa, 2
  %i.wg = icmp slt i32 %i.wf, %i.cm
  %i.wh = add nsw i32 %i.wa, 3
  %i.wi = icmp slt i32 %i.wh, %i.cm
  %i.wj = add nsw i32 %i.wa, 4
  %i.wk = icmp slt i32 %i.wj, %i.cm
  %i.wl = add nsw i32 %i.wa, 5
  %i.wm = icmp slt i32 %i.wl, %i.cm
  %invariant.op261.i = sub nsw i64 %i.sz, %i.vy
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bo, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %bb.bo ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.0689179.us.i = phi ptr [ %.1.us.i, %bb.bo ], [ %i.wc, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not734.us.i = icmp slt i64 %indvars.iv238.i, %invariant.op261.i
  br i1 %.not734.us.i, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.wn = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv238.i ; 8 uses
  %i.wo = load float, ptr %i.wn, align 16, !tbaa !53
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !53 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.ws = load float, ptr %i.wr, align 8, !tbaa !53 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 20
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wx = load float, ptr %i.ww, align 8, !tbaa !53 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wn, i64 28
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !53
  %i.xa = fsub fast float %i.wq, %i.ws
  %i.xb = fadd fast float %i.wq, %i.td
  %i.xc = fadd fast float %i.xb, %i.ws            ; 3 uses
  %i.xd = fadd fast float %i.xc, %i.wo
  %i.xe = fadd fast float %i.xa, %i.td            ; 2 uses
  %i.xf = load float, ptr %i.wt, align 4, !tbaa !53 ; 2 uses
  %i.xg = load float, ptr %i.wu, align 16, !tbaa !53 ; 2 uses
  %i.xh = load float, ptr %i.wv, align 4, !tbaa !53 ; 2 uses
  %i.xi = fadd fast float %i.xg, %i.xf            ; 3 uses
  %i.xj = fsub fast float %i.xf, %i.xg            ; 2 uses
  %i.xk = fadd fast float %i.wx, %i.xh            ; 3 uses
  %i.xl = fsub fast float %i.xh, %i.wx            ; 3 uses
  %i.xm = fmul fast float %i.xk, 3.200000e+01
  %i.xn = fadd fast float %i.xd, %i.xi
  %i.xo = fadd fast float %i.xn, %i.xm
  %i.xp = fmul fast float %i.xi, 4.000000e+00
  %i.xq = fadd fast float %i.xc, %i.xp
  %i.xr = fmul fast float %i.xl, 4.000000e+00
  %i.xs = insertelement <4 x float> poison, float %i.xk, i64 0
  %i.xt = insertelement <4 x float> %i.xs, float %i.xj, i64 1
  %i.xu = insertelement <4 x float> %i.xt, float %i.xi, i64 2
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.xw = fmul fast <4 x float> %i.xv, <float 8.000000e+00, float 8.000000e+00, float 1.600000e+01, float 3.200000e+01>
  %i.xx = insertelement <4 x float> poison, float %i.xq, i64 0
  %i.xy = insertelement <4 x float> %i.xx, float %i.xe, i64 1
  %i.xz = insertelement <4 x float> %i.xy, float %i.xc, i64 2
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.yb = fadd fast <4 x float> %i.xw, %i.ya      ; 4 uses
  %i.yc = extractelement <4 x float> %i.yb, i64 1
  %i.yd = fadd fast float %i.xr, %i.yc
  %factor.us.i = fmul fast float %i.xk, 2.000000e+00
  %i.ye = extractelement <4 x float> %i.yb, i64 2
  %i.yf = fadd fast float %factor.us.i, %i.ye
  %i.yg = extractelement <4 x float> %i.yb, i64 3
  %i.yh = fadd fast float %i.yg, %i.wz
  %i.yi = fadd fast float %i.yh, %i.xl
  store float %i.xo, ptr %.0689179.us.i, align 4, !tbaa !53
  br i1 %i.we, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.yj = fmul fast float %i.xl, 1.600000e+01
  %factor113.us.i = fmul fast float %i.xj, 2.000000e+00
  %i.yk = fadd fast float %i.xe, %i.yj
  %i.yl = fadd fast float %i.yk, %factor113.us.i
  %i.ym = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 4
  store float %i.yl, ptr %i.ym, align 4, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.wg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.yn = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 8
  %i.yo = extractelement <4 x float> %i.yb, i64 0
  store float %i.yo, ptr %i.yn, align 4, !tbaa !53
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.wi, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.yp = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 12
  store float %i.yd, ptr %i.yp, align 4, !tbaa !53
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.wk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.yq = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 16
  store float %i.yf, ptr %i.yq, align 4, !tbaa !53
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.wm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.yr = getelementptr inbounds nuw i8, ptr %.0689179.us.i, i64 20
  store float %i.yi, ptr %i.yr, align 4, !tbaa !53
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ys = getelementptr inbounds [4 x i8], ptr %.0689179.us.i, i64 %i.st
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bc
  %.1.us.i = phi ptr [ %.0689179.us.i, %bb.bc ], [ %i.ys, %bb.bn ]
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next239.i, 6
  br i1 %exitcond241.not.i, label %bb.bp, label %bb.bc, !llvm.loop !961

bb.bp:                                            ; preds = %bb.bo
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %exitcond246.not.i = icmp eq i64 %indvars.iv.next243.i, %wide.trip.count245.i
  br i1 %exitcond246.not.i, label %._crit_edge.us191.i, label %bb.ba, !llvm.loop !962

._crit_edge.us191.i:                              ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %exitcond251.not.i = icmp eq i64 %indvars.iv.next248.i, %i.ce
  br i1 %exitcond251.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ay, !llvm.loop !963

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.yt = phi i32 [ %i.aaq, %.noexc ], [ %.pre137, %.noexc.preheader ] ; 2 uses
  %i.yu = phi i32 [ %i.aas, %.noexc ], [ %i.ck, %.noexc.preheader ]
  %.0130 = phi i32 [ %i.aar, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.yv = sub nsw i32 %i.yu, %.0130
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.ben = trunc nuw <2 x i32> %i.bem to <2 x i16> ; 2 uses
  %i.beo = extractelement <2 x i16> %i.ben, i64 0
  store i16 %i.beo, ptr %i.bel, align 2, !tbaa !110
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bdx, i64 4
  %i.beq = extractelement <2 x i16> %i.ben, i64 1
  store i16 %i.beq, ptr %i.bep, align 2, !tbaa !110
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.avr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ber = bitcast <2 x float> %i.bdt to <2 x i32>
  %i.bes = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 6
  %i.bet = lshr <2 x i32> %i.ber, splat (i32 16)
  %i.beu = trunc nuw <2 x i32> %i.bet to <2 x i16> ; 2 uses
  %i.bev = extractelement <2 x i16> %i.beu, i64 0
  store i16 %i.bev, ptr %i.bes, align 2, !tbaa !110
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bdx, i64 6
  %i.bex = extractelement <2 x i16> %i.beu, i64 1
  store i16 %i.bex, ptr %i.bew, align 2, !tbaa !110
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.bey = getelementptr inbounds [2 x i8], ptr %.05241362.us.i, i64 %i.aoc
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.y
  %.1525.us.i = phi ptr [ %.05241362.us.i, %bb.y ], [ %i.bey, %bb.ax ]
  %indvars.iv.next1427.i = add nuw nsw i64 %indvars.iv1426.i, 1 ; 2 uses
  %exitcond1429.not.i = icmp eq i64 %indvars.iv.next1427.i, 4
  br i1 %exitcond1429.not.i, label %bb.az, label %bb.y, !llvm.loop !1770

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next1431.i = add nuw nsw i64 %indvars.iv1430.i, 1 ; 2 uses
  %exitcond1434.not.i = icmp eq i64 %indvars.iv.next1431.i, %wide.trip.count1433.i
  br i1 %exitcond1434.not.i, label %._crit_edge.us1373.i, label %_ZN4ncnn3MatD2Ev.exit559.us.i, !llvm.loop !1771

._crit_edge.us1373.i:                             ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next1436.i = add nuw nsw i64 %indvars.iv1435.i, 2 ; 3 uses
  %i.bez = icmp slt i64 %indvars.iv.next1436.i, %invariant.op.i
  br i1 %i.bez, label %bb.w, label %.preheader.loopexit.i, !llvm.loop !1772

.lr.ph1369.split.i:                               ; preds = %.lr.ph1369.i
  %i.bfa = sub i32 %i.dh, %.0526.lcssa.i
  %i.bfb = and i32 %i.bfa, -2
  %i.bfc = add i32 %.0526.lcssa.i, 2
  %i.bfd = add i32 %i.bfc, %i.bfb
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us1373.i
  %i.bfe = trunc nsw i64 %indvars.iv.next1436.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph1369.split.i, %.preheader1337.i
  %.1527.lcssa.i = phi i32 [ %.0526.lcssa.i, %.preheader1337.i ], [ %i.bfd, %.lr.ph1369.split.i ], [ %i.bfe, %.preheader.loopexit.i ] ; 2 uses
  %i.bff = icmp slt i32 %.1527.lcssa.i, %.sroa.speculated124
  br i1 %i.bff, label %.lr.ph1395.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bfg = icmp sgt i32 %.sroa.speculated120, 0
  %i.bfh = sext i32 %.sroa.speculated120 to i64
  %i.bfi = shl nuw nsw i32 %.sroa.speculated120, 1
  %i.bfj = zext nneg i32 %i.bfi to i64
  %i.bfk = mul nuw nsw i32 %.sroa.speculated120, 3
  %i.bfl = zext nneg i32 %i.bfk to i64
  %i.bfm = shl nuw nsw i32 %.sroa.speculated120, 2
  %i.bfn = zext nneg i32 %i.bfm to i64
  %i.bfo = mul nuw nsw i32 %.sroa.speculated120, 5
  %i.bfp = zext nneg i32 %i.bfo to i64
  %i.bfq = mul nuw nsw i32 %.sroa.speculated120, 6
  %i.bfr = zext nneg i32 %i.bfq to i64            ; 30 uses
  %i.bfs = sext i32 %i.dr to i64                  ; 3 uses
  br i1 %i.bfg, label %.lr.ph1395.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.split.us.i:                            ; preds = %.lr.ph1395.i
  %i.bft = load i32, ptr %i.ap, align 4, !tbaa !86, !noalias !1790
  %i.bfu = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1790
  %i.bfv = load i64, ptr %i.as, align 8, !tbaa !35, !noalias !1790
  %i.bfw = load i64, ptr %i.aw, align 8, !tbaa !76, !noalias !1790 ; 2 uses
  %factor.op.mul1400.i = mul i64 %i.bfw, %i.bfv
  %i.bfx = sext i32 %i.bft to i64
  %factor.op.mul1391.us.i = mul i64 %i.bfw, %i.bfx
  %i.bfy = sext i32 %.1527.lcssa.i to i64
  %wide.trip.count1449.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.us1398.i, %.lr.ph1395.split.us.i
  %indvars.iv1451.i = phi i64 [ %indvars.iv.next1452.i, %._crit_edge.us1398.i ], [ %i.bfy, %.lr.ph1395.split.us.i ] ; 3 uses
  %.pre1456.i = add nsw i64 %indvars.iv1451.i, %i.de ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us1397.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bfz = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre1456.i
  %i.bga = load float, ptr %i.bfz, align 4, !tbaa !53
  br label %.lr.ph.us1397.i

.lr.ph.us1397.i:                                  ; preds = %bb.bb, %bb.ba
  %i.bgb = phi fast float [ %i.bga, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  %i.bgc = trunc nsw i64 %indvars.iv1451.i to i32
  %factor.op.mul1388.reass.us.i = mul i32 %factor.op.mul1348.i, %i.bgc
  %i.bgd = sext i32 %factor.op.mul1388.reass.us.i to i64
  %i.bge = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.bgd
  %.reass1401.i = mul i64 %factor.op.mul1400.i, %.pre1456.i
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %.reass1401.i
  %i.bgg = insertelement <4 x float> poison, float %i.bgb, i64 0 ; 4 uses
  %i.bgh = insertelement <2 x float> poison, float %i.bgb, i64 0 ; 4 uses
  %i.bgi = shufflevector <2 x float> %i.bgh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgj = shufflevector <2 x float> %i.bgh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgk = shufflevector <2 x float> %i.bgh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgl = shufflevector <2 x float> %i.bgh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.du, %.lr.ph.us1397.i
  %indvars.iv1446.i = phi i64 [ 0, %.lr.ph.us1397.i ], [ %indvars.iv.next1447.i, %bb.du ] ; 3 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bge, i64 %indvars.iv1446.i ; 7 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfh ; 2 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfj ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfl ; 2 uses
  %i.bgq = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfn ; 2 uses
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfp ; 2 uses
  %i.bgs = load float, ptr %i.bgn, align 4, !tbaa !53 ; 2 uses
  %i.bgt = load float, ptr %i.bgo, align 4, !tbaa !53 ; 2 uses
  %i.bgu = load float, ptr %i.bgp, align 4, !tbaa !53 ; 2 uses
  %i.bgv = load float, ptr %i.bgq, align 4, !tbaa !53 ; 2 uses
  %i.bgw = load float, ptr %i.bgm, align 4, !tbaa !53
  %i.bgx = load float, ptr %i.bgr, align 4, !tbaa !53
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfr ; 2 uses
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %i.bfr ; 2 uses
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.bfr ; 2 uses
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.bgp, i64 %i.bfr ; 2 uses
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.bgq, i64 %i.bfr ; 2 uses
  %i.bhd = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.bfr ; 2 uses
  %i.bhe = load float, ptr %i.bgz, align 4, !tbaa !53 ; 2 uses
  %i.bhf = load float, ptr %i.bha, align 4, !tbaa !53 ; 2 uses
  %i.bhg = load float, ptr %i.bhb, align 4, !tbaa !53 ; 2 uses
  %i.bhh = load float, ptr %i.bhc, align 4, !tbaa !53 ; 2 uses
  %i.bhi = load float, ptr %i.bgy, align 4, !tbaa !53
  %i.bhj = load float, ptr %i.bhd, align 4, !tbaa !53
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bgy, i64 %i.bfr ; 2 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bgz, i64 %i.bfr ; 2 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.bfr ; 2 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %i.bfr ; 2 uses
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bhc, i64 %i.bfr ; 2 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bhd, i64 %i.bfr ; 2 uses
  %i.bhq = load float, ptr %i.bhl, align 4, !tbaa !53 ; 2 uses
  %i.bhr = load float, ptr %i.bhm, align 4, !tbaa !53 ; 2 uses
  %i.bhs = load float, ptr %i.bhn, align 4, !tbaa !53 ; 2 uses
  %i.bht = load float, ptr %i.bho, align 4, !tbaa !53 ; 2 uses
  %i.bhu = load float, ptr %i.bhk, align 4, !tbaa !53
  %i.bhv = load float, ptr %i.bhp, align 4, !tbaa !53
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %i.bfr ; 2 uses
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bfr ; 2 uses
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.bhm, i64 %i.bfr ; 2 uses
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %i.bfr ; 2 uses
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %i.bho, i64 %i.bfr ; 2 uses
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.bfr ; 2 uses
  %i.bic = load float, ptr %i.bhx, align 4, !tbaa !53 ; 2 uses
  %i.bid = load float, ptr %i.bhy, align 4, !tbaa !53 ; 2 uses
  %i.bie = load float, ptr %i.bhz, align 4, !tbaa !53 ; 2 uses
  %i.bif = load float, ptr %i.bia, align 4, !tbaa !53 ; 2 uses
  %i.big = load float, ptr %i.bhw, align 4, !tbaa !53
  %i.bih = insertelement <4 x float> poison, float %i.bgt, i64 0
  %i.bii = insertelement <4 x float> %i.bih, float %i.bhf, i64 1
  %i.bij = insertelement <4 x float> %i.bii, float %i.bhr, i64 2
  %i.bik = insertelement <4 x float> %i.bij, float %i.bid, i64 3
  %i.bil = insertelement <4 x float> poison, float %i.bgs, i64 0
  %i.bim = insertelement <4 x float> %i.bil, float %i.bhe, i64 1
  %i.bin = insertelement <4 x float> %i.bim, float %i.bhq, i64 2
  %i.bio = insertelement <4 x float> %i.bin, float %i.bic, i64 3
  %i.bip = fadd fast <4 x float> %i.bik, %i.bio   ; 3 uses
  %i.biq = insertelement <4 x float> poison, float %i.bgv, i64 0
  %i.bir = insertelement <4 x float> %i.biq, float %i.bhh, i64 1
  %i.bis = insertelement <4 x float> %i.bir, float %i.bht, i64 2
  %i.bit = insertelement <4 x float> %i.bis, float %i.bif, i64 3
  %i.biu = insertelement <4 x float> poison, float %i.bgu, i64 0
  %i.biv = insertelement <4 x float> %i.biu, float %i.bhg, i64 1
  %i.biw = insertelement <4 x float> %i.biv, float %i.bhs, i64 2
  %i.bix = insertelement <4 x float> %i.biw, float %i.bie, i64 3
  %i.biy = fadd fast <4 x float> %i.bit, %i.bix   ; 3 uses
  %i.biz = insertelement <4 x float> poison, float %i.bgw, i64 0
  %i.bja = insertelement <4 x float> %i.biz, float %i.bhi, i64 1
  %i.bjb = insertelement <4 x float> %i.bja, float %i.bhu, i64 2
  %i.bjc = insertelement <4 x float> %i.bjb, float %i.big, i64 3
  %i.bjd = fadd fast <4 x float> %i.bjc, %i.bip
  %i.bje = fadd fast <4 x float> %i.bjd, %i.biy   ; 4 uses
  %i.bjf = load float, ptr %i.bib, align 4, !tbaa !53
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bhw, i64 %i.bfr ; 2 uses
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bfr ; 2 uses
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.bhy, i64 %i.bfr ; 2 uses
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bhz, i64 %i.bfr ; 2 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.bia, i64 %i.bfr ; 2 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.bib, i64 %i.bfr ; 2 uses
  %i.bjm = load float, ptr %i.bjh, align 4, !tbaa !53 ; 2 uses
  %i.bjn = load float, ptr %i.bji, align 4, !tbaa !53 ; 2 uses
  %i.bjo = load float, ptr %i.bjj, align 4, !tbaa !53 ; 2 uses
  %i.bjp = load float, ptr %i.bjk, align 4, !tbaa !53 ; 2 uses
  %i.bjq = load float, ptr %i.bjg, align 4, !tbaa !53
  %18 = fadd fast float %i.bjn, %i.bjm            ; 2 uses
  %19 = fadd fast float %i.bjp, %i.bjo            ; 2 uses
  %20 = fadd fast float %i.bjq, %18
  %i.bjr = fadd fast float %20, %19               ; 2 uses
  %21 = insertelement <4 x float> %i.bip, float %18, i64 0
  %22 = fmul fast <4 x float> %21, splat (float 5.000000e-01)
  %i.bjs = insertelement <4 x float> %i.biy, float %19, i64 0
  %i.bjt = fmul fast <4 x float> %i.bjs, splat (float 2.000000e+00)
  %23 = fadd fast <4 x float> %i.bjt, %22         ; 4 uses
  %i.bju = load float, ptr %i.bjl, align 4, !tbaa !53
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bjg, i64 %i.bfr
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.bjh, i64 %i.bfr
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.bfr
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjj, i64 %i.bfr
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bjk, i64 %i.bfr
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.bfr
  %i.bkb = load float, ptr %i.bjw, align 4, !tbaa !53 ; 2 uses
  %i.bkc = load float, ptr %i.bjx, align 4, !tbaa !53 ; 2 uses
  %i.bkd = load float, ptr %i.bjy, align 4, !tbaa !53 ; 2 uses
  %i.bke = load float, ptr %i.bjz, align 4, !tbaa !53 ; 2 uses
  %i.bkf = load float, ptr %i.bjv, align 4, !tbaa !53
  %i.bkg = fsub fast float %i.bic, %i.bid         ; 2 uses
  %i.bkh = fsub fast float %i.bie, %i.bif         ; 2 uses
  %i.bki = fmul fast float %i.bkg, f0x3EB504F3
  %i.bkj = fadd fast float %i.bki, %i.bjf
  %i.bkk = fmul fast float %i.bkh, f0x403504F3
  %i.bkl = fadd fast float %i.bkj, %i.bkk         ; 2 uses
  %i.bkm = fsub fast float %i.bjm, %i.bjn         ; 2 uses
  %i.bkn = fsub fast float %i.bjo, %i.bjp         ; 2 uses
  %i.bko = fmul fast float %i.bkm, f0x3EB504F3
  %i.bkp = fadd fast float %i.bko, %i.bju
  %i.bkq = fmul fast float %i.bkn, f0x403504F3
  %i.bkr = fadd fast float %i.bkp, %i.bkq         ; 2 uses
  %i.bks = fsub fast float %i.bkb, %i.bkc         ; 2 uses
  %i.bkt = fsub fast float %i.bkd, %i.bke         ; 2 uses
  %i.bku = shufflevector <4 x float> %i.bip, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bkv = insertelement <4 x float> %i.bku, float %i.bkg, i64 0
  %i.bkw = insertelement <4 x float> %i.bkv, float %i.bkm, i64 1
  %i.bkx = insertelement <4 x float> %i.bkw, float %i.bks, i64 2
  %i.bky = fmul fast <4 x float> %i.bkx, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01>
  %i.bkz = shufflevector <4 x float> %i.biy, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bla = insertelement <4 x float> %i.bkz, float %i.bkh, i64 0
  %i.blb = insertelement <4 x float> %i.bla, float %i.bkn, i64 1
  %i.blc = insertelement <4 x float> %i.blb, float %i.bkt, i64 2
  %i.bld = fmul fast <4 x float> %i.blc, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00>
  %i.ble = fadd fast <4 x float> %i.bld, %i.bky   ; 4 uses
  %i.blf = insertelement <4 x float> poison, float %i.bkc, i64 0
  %i.blg = insertelement <4 x float> %i.blf, float %i.bgs, i64 1
  %i.blh = insertelement <4 x float> %i.blg, float %i.bhe, i64 2
  %i.bli = insertelement <4 x float> %i.blh, float %i.bhq, i64 3 ; 2 uses
  %i.blj = insertelement <4 x float> poison, float %i.bkb, i64 0
  %i.blk = insertelement <4 x float> %i.blj, float %i.bgt, i64 1
  %i.bll = insertelement <4 x float> %i.blk, float %i.bhf, i64 2
  %i.blm = insertelement <4 x float> %i.bll, float %i.bhr, i64 3 ; 2 uses
  %i.bln = fadd fast <4 x float> %i.bli, %i.blm   ; 2 uses
  %i.blo = fsub fast <4 x float> %i.bli, %i.blm   ; 2 uses
  %i.blp = shufflevector <4 x float> %i.bln, <4 x float> %i.blo, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.blq = insertelement <4 x float> poison, float %i.bke, i64 0
  %i.blr = insertelement <4 x float> %i.blq, float %i.bgu, i64 1
  %i.bls = insertelement <4 x float> %i.blr, float %i.bhg, i64 2
  %i.blt = insertelement <4 x float> %i.bls, float %i.bhs, i64 3 ; 2 uses
  %24 = insertelement <4 x float> poison, float %i.bkd, i64 0
  %25 = insertelement <4 x float> %24, float %i.bgv, i64 1
  %26 = insertelement <4 x float> %25, float %i.bhh, i64 2
  %27 = insertelement <4 x float> %26, float %i.bht, i64 3 ; 2 uses
  %i.blu = fadd fast <4 x float> %i.blt, %27      ; 2 uses
  %28 = fsub fast <4 x float> %i.blt, %27         ; 2 uses
  %29 = shufflevector <4 x float> %i.blu, <4 x float> %28, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %30 = shufflevector <4 x float> %i.blu, <4 x float> %i.blo, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.blv = fmul fast <4 x float> %30, <float 1.000000e+00, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3>
  %31 = extractelement <4 x float> %i.bln, i64 0
  %32 = fadd fast float %i.bkf, %31
  %i.blw = insertelement <4 x float> %28, float %32, i64 0
  %i.blx = fmul fast <4 x float> %i.blw, <float 1.000000e+00, float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3>
  %i.bly = fadd fast <4 x float> %i.blx, %i.blv   ; 4 uses
  %33 = fmul fast <4 x float> %i.blp, <float 5.000000e-01, float f0x3EB504F3, float f0x3EB504F3, float f0x3EB504F3>
  %i.blz = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bgx, i64 1
  %i.bma = insertelement <4 x float> %i.blz, float %i.bhj, i64 2
  %i.bmb = insertelement <4 x float> %i.bma, float %i.bhv, i64 3
  %34 = fadd fast <4 x float> %i.bmb, %33
  %35 = fmul fast <4 x float> %29, <float 2.000000e+00, float f0x403504F3, float f0x403504F3, float f0x403504F3>
  %i.bmc = fadd fast <4 x float> %35, %34         ; 4 uses
  %i.bmd = load float, ptr %i.bka, align 4, !tbaa !53
  %i.bme = fmul fast float %i.bks, f0x3EB504F3
  %i.bmf = fadd fast float %i.bme, %i.bmd
  %i.bmg = fmul fast float %i.bkt, f0x403504F3
  %i.bmh = fadd fast float %i.bmf, %i.bmg
  %i.bmi = trunc i64 %indvars.iv1446.i to i32
  %i.bmj = add i32 %.047134, %i.bmi               ; 2 uses
  %i.bmk = sdiv i32 %i.bmj, %i.dy
  %i.bml = srem i32 %i.bmj, %i.dy
  %i.bmm = shl nsw i32 %i.bmk, 2                  ; 5 uses
  %i.bmn = sext i32 %i.bmm to i64
  %.reass1392.us.i = mul i64 %factor.op.mul1391.us.i, %i.bmn
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bgf, i64 %.reass1392.us.i
  %i.bmp = shl nsw i32 %i.bml, 2                  ; 4 uses
  %i.bmq = sext i32 %i.bmp to i64
  %i.bmr = getelementptr inbounds [2 x i8], ptr %i.bmo, i64 %i.bmq ; 6 uses
  %i.bms = or disjoint i32 %i.bmp, 1
  %i.bmt = icmp slt i32 %i.bms, %i.dr             ; 4 uses
  %i.bmu = or disjoint i32 %i.bmp, 2
  %i.bmv = icmp slt i32 %i.bmu, %i.dr             ; 4 uses
  %i.bmw = or disjoint i32 %i.bmp, 3
  %i.bmx = icmp slt i32 %i.bmw, %i.dr             ; 4 uses
  %.not553.us.i = icmp slt i32 %i.bmm, %i.ds
  br i1 %.not553.us.i, label %bb.bc, label %bb.bt

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.bje, i64 1 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.bje, i64 2 ; 2 uses
  %i.bmy = fadd fast float %.sroa.0.8.vec.extract, %.sroa.0.4.vec.extract ; 2 uses
  %i.bmz = fsub fast float %.sroa.0.4.vec.extract, %.sroa.0.8.vec.extract ; 2 uses
  %i.bna = fmul fast float %i.bmz, f0x3EB504F3
  %i.bnb = insertelement <4 x float> %i.bje, float %i.bna, i64 1
  %i.bnc = insertelement <4 x float> poison, float %i.bmy, i64 0
  %i.bnd = insertelement <4 x float> %i.bnc, float %i.bmz, i64 1
  %i.bne = fadd fast <4 x float> %i.bnb, %i.bgi
  %i.bnf = shufflevector <4 x float> %i.bnd, <4 x float> %i.bne, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bng = fmul fast <4 x float> %i.bnf, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.bnh = insertelement <4 x float> %i.bgg, float %i.bmy, i64 2
  %i.bni = shufflevector <4 x float> %i.bnh, <4 x float> %i.bly, <4 x i32> <i32 0, i32 poison, i32 2, i32 4>
  %i.bnj = shufflevector <4 x float> %i.bni, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bnk = fadd fast <4 x float> %i.bng, %i.bnj
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.bje, i64 3 ; 2 uses
  %i.bnl = fadd fast float %i.bjr, %.sroa.0.12.vec.extract
  %i.bnm = fsub fast float %.sroa.0.12.vec.extract, %i.bjr
  %i.bnn = insertelement <2 x float> poison, float %i.bnl, i64 0
  %i.bno = insertelement <2 x float> %i.bnn, float %i.bnm, i64 1
  %i.bnp = shufflevector <2 x float> %i.bno, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bnq = fmul fast <4 x float> %i.bnp, <float 2.000000e+00, float f0x3FB504F3, float 1.000000e+00, float f0x403504F3>
  %i.bnr = fadd fast <4 x float> %i.bnk, %i.bnq   ; 18 uses
  switch i32 %i.dq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i
    i32 6, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.bns = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.bnt = load float, ptr %i.bns, align 4, !tbaa !53 ; 9 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bns, i64 4
  %i.bnv = load float, ptr %i.bnu, align 4, !tbaa !53 ; 5 uses
  %i.bnw = fneg fast float %i.bnv
  %i.bnx = fdiv fast float %i.bnw, %i.bnt         ; 8 uses
  %i.bny = extractelement <4 x float> %i.bnr, i64 2 ; 5 uses
  %i.bnz = fcmp fast olt float %i.bny, %i.bnx
  br i1 %i.bnz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.boa = fdiv fast float 1.000000e+00, %i.bnt
  %i.bob = fadd fast float %i.bnx, %i.boa
  %i.boc = fcmp fast ogt float %i.bny, %i.bob
  br i1 %i.boc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bod = fmul fast float %i.bnt, %i.bny
  %i.boe = fadd fast float %i.bod, %i.bnv
  %i.bof = fmul fast float %i.boe, %i.bny
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %.17021218.us.i = phi float [ %i.bof, %bb.bf ], [ 0.000000e+00, %bb.bd ], [ %i.bny, %bb.be ]
  %i.bog = extractelement <4 x float> %i.bnr, i64 1 ; 5 uses
  %i.boh = fcmp fast olt float %i.bog, %i.bnx
  br i1 %i.boh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i, label %bb.bg

bb.bg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i
  %i.boi = fdiv fast float 1.000000e+00, %i.bnt
  %i.boj = fadd fast float %i.bnx, %i.boi
  %i.bok = fcmp fast ogt float %i.bog, %i.boj
  br i1 %i.bok, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.bol = fmul fast float %i.bnt, %i.bog
  %i.bom = fadd fast float %i.bol, %i.bnv
  %i.bon = fmul fast float %i.bom, %i.bog
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i: ; preds = %bb.bh, %bb.bg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i
  %.17041241.us.i = phi float [ %i.bon, %bb.bh ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i ], [ %i.bog, %bb.bg ]
  %i.boo = extractelement <4 x float> %i.bnr, i64 0 ; 5 uses
  %i.bop = fcmp fast olt float %i.boo, %i.bnx
  br i1 %i.bop, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, label %bb.bi

bb.bi:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i
  %i.boq = fdiv fast float 1.000000e+00, %i.bnt
  %i.bor = fadd fast float %i.bnx, %i.boq
  %i.bos = fcmp fast ogt float %i.boo, %i.bor
  br i1 %i.bos, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bot = fmul fast float %i.bnt, %i.boo
  %i.bou = fadd fast float %i.bot, %i.bnv
  %i.bov = fmul fast float %i.bou, %i.boo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i: ; preds = %bb.bj, %bb.bi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i
  %.17061277.us.i = phi float [ %i.bov, %bb.bj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i ], [ %i.boo, %bb.bi ]
  %i.bow = extractelement <4 x float> %i.bnr, i64 3 ; 4 uses
  %i.box = fcmp fast olt float %i.bow, %i.bnx
  %i.boy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i, i64 0
  %i.boz = insertelement <4 x float> %i.boy, float %.17041241.us.i, i64 1
  %i.bpa = insertelement <4 x float> %i.boz, float %.17021218.us.i, i64 2 ; 3 uses
  br i1 %i.box, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.bk

bb.bk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i
  %i.bpb = fdiv fast float 1.000000e+00, %i.bnt
  %i.bpc = fadd fast float %i.bnx, %i.bpb
  %i.bpd = fcmp fast ogt float %i.bow, %i.bpc
  %i.bpe = shufflevector <4 x float> %i.bpa, <4 x float> %i.bnr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.bpd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bpf = fmul fast float %i.bnt, %i.bow
  %i.bpg = fadd fast float %i.bpf, %i.bnv
  %i.bph = fmul fast float %i.bpg, %i.bow
  %i.bpi = insertelement <4 x float> %i.bpa, float %i.bph, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i: ; preds = %bb.bc
  %i.bpj = extractelement <4 x float> %i.bnr, i64 2
  %i.bpk = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpj)
  %i.bpl = extractelement <4 x float> %i.bnr, i64 1
  %i.bpm = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpl)
  %i.bpn = extractelement <4 x float> %i.bnr, i64 0
  %i.bpo = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpn)
  %i.bpp = extractelement <4 x float> %i.bnr, i64 3
  %i.bpq = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpp)
  %i.bpr = fadd fast float %i.bpk, 1.000000e+00
  %i.bps = call fast float @llvm.log.f32(float %i.bpr)
  %i.bpt = call fast float @llvm.tanh.f32(float %i.bps)
  %i.bpu = fadd fast float %i.bpm, 1.000000e+00
  %i.bpv = call fast float @llvm.log.f32(float %i.bpu)
  %i.bpw = call fast float @llvm.tanh.f32(float %i.bpv)
  %i.bpx = fadd fast float %i.bpo, 1.000000e+00
  %i.bpy = call fast float @llvm.log.f32(float %i.bpx)
  %i.bpz = call fast float @llvm.tanh.f32(float %i.bpy)
  %i.bqa = fadd fast float %i.bpq, 1.000000e+00
  %i.bqb = call fast float @llvm.log.f32(float %i.bqa)
  %i.bqc = call fast float @llvm.tanh.f32(float %i.bqb)
  %i.bqd = insertelement <4 x float> poison, float %i.bpz, i64 0
  %i.bqe = insertelement <4 x float> %i.bqd, float %i.bpw, i64 1
  %i.bqf = insertelement <4 x float> %i.bqe, float %i.bpt, i64 2
  %i.bqg = insertelement <4 x float> %i.bqf, float %i.bqc, i64 3
  %i.bqh = fmul fast <4 x float> %i.bqg, %i.bnr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i: ; preds = %bb.bc
  %i.bqi = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bnr, <4 x float> splat (float f0x42B0C0A5))
  %i.bqj = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bqi, <4 x float> splat (float f0xC2B0C0A5))
  %i.bqk = fneg fast <4 x float> %i.bqj
  %i.bql = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bqk)
  %i.bqm = fadd fast <4 x float> %i.bql, splat (float 1.000000e+00)
  %i.bqn = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bqm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i: ; preds = %bb.bc
  %i.bqo = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 4
  %i.bqq = load float, ptr %i.bqo, align 4, !tbaa !53 ; 3 uses
  %i.bqr = load float, ptr %i.bqp, align 4, !tbaa !53 ; 5 uses
  %i.bqs = shufflevector <4 x float> %i.bnr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bqt = insertelement <2 x float> poison, float %i.bqq, i64 0
  %i.bqu = shufflevector <2 x float> %i.bqt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bqv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bqs, <2 x float> %i.bqu) ; 2 uses
  %i.bqw = insertelement <2 x float> poison, float %i.bqr, i64 0
  %i.bqx = shufflevector <2 x float> %i.bqw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bqy = fcmp fast ogt <2 x float> %i.bqv, %i.bqx
  %i.bqz = select <2 x i1> %i.bqy, <2 x float> %i.bqx, <2 x float> %i.bqv
  %i.bra = extractelement <4 x float> %i.bnr, i64 0
  %.0705.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bra, float %i.bqq) ; 2 uses
  %i.brb = fcmp fast ogt float %.0705.us.i, %i.bqr
  %.17061287.us.i = select i1 %i.brb, float %i.bqr, float %.0705.us.i
  %i.brc = extractelement <4 x float> %i.bnr, i64 3
  %.0707.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.brc, float %i.bqq) ; 2 uses
  %i.brd = fcmp fast ogt float %.0707.us.i, %i.bqr
  %i.bre = insertelement <4 x float> poison, float %.17061287.us.i, i64 0
  %i.brf = shufflevector <2 x float> %i.bqz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.brg = shufflevector <4 x float> %i.bre, <4 x float> %i.brf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.brh = insertelement <4 x float> %i.brg, float %.0707.us.i, i64 3 ; 2 uses
  br i1 %i.brd, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i
  %i.bri = insertelement <4 x float> %i.brh, float %i.bqr, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i: ; preds = %bb.bc
  %i.brj = load ptr, ptr %15, align 8, !tbaa !34
  %i.brk = load float, ptr %i.brj, align 4, !tbaa !53
  %i.brl = fcmp fast ogt <4 x float> %i.bnr, zeroinitializer
  %i.brm = insertelement <4 x float> poison, float %i.brk, i64 0
  %i.brn = shufflevector <4 x float> %i.brm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bro = select <4 x i1> %i.brl, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brn
  %i.brp = fmul fast <4 x float> %i.bro, %i.bnr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i: ; preds = %bb.bc
  %i.brq = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bnr, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i, %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i, %bb.bl, %bb.bk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, %bb.bc
  %i.brr = phi <4 x float> [ %i.bpa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i ], [ %i.brq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i ], [ %i.brp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i ], [ %i.bri, %bb.bm ], [ %i.brh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i ], [ %i.bqn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i ], [ %i.bqh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i ], [ %i.bpi, %bb.bl ], [ %i.bpe, %bb.bk ], [ %i.bnr, %bb.bc ] ; 4 uses
  %i.brs = bitcast <4 x float> %i.brr to <8 x i16>
  %i.brt = extractelement <8 x i16> %i.brs, i64 5
  store i16 %i.brt, ptr %i.bmr, align 2, !tbaa !110
  br i1 %i.bmt, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.bru = bitcast <4 x float> %i.brr to <8 x i16>
  %i.brv = extractelement <8 x i16> %i.bru, i64 3
  %i.brw = getelementptr inbounds nuw i8, ptr %i.bmr, i64 2
  store i16 %i.brv, ptr %i.brw, align 2, !tbaa !110
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  br i1 %i.bmv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.brx = bitcast <4 x float> %i.brr to <8 x i16>
  %i.bry = extractelement <8 x i16> %i.brx, i64 1
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bmr, i64 4
  store i16 %i.bry, ptr %i.brz, align 2, !tbaa !110
  br label %bb.bq
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  br i1 %i.bth, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bti = fdiv fast float 1.000000e+00, %i.btb
  %i.btj = fadd fast float %i.btf, %i.bti
  %i.btk = fcmp fast ogt float %i.btg, %i.btj
  br i1 %i.btk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.btl = fmul fast float %i.btb, %i.btg
  %i.btm = fadd fast float %i.btl, %i.btd
  %i.btn = fmul fast float %i.btm, %i.btg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1: ; preds = %bb.bx, %bb.bw, %bb.bv
  %.17021218.us.i.1 = phi float [ %i.btn, %bb.bx ], [ 0.000000e+00, %bb.bv ], [ %i.btg, %bb.bw ]
  %i.bto = extractelement <4 x float> %i.bsz, i64 1 ; 5 uses
  %i.btp = fcmp fast olt float %i.bto, %i.btf
  br i1 %i.btp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1, label %bb.by

bb.by:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1
  %i.btq = fdiv fast float 1.000000e+00, %i.btb
  %i.btr = fadd fast float %i.btf, %i.btq
  %i.bts = fcmp fast ogt float %i.bto, %i.btr
  br i1 %i.bts, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.btt = fmul fast float %i.btb, %i.bto
  %i.btu = fadd fast float %i.btt, %i.btd
  %i.btv = fmul fast float %i.btu, %i.bto
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1: ; preds = %bb.bz, %bb.by, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1
  %.17041241.us.i.1 = phi float [ %i.btv, %bb.bz ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1 ], [ %i.bto, %bb.by ]
  %i.btw = extractelement <4 x float> %i.bsz, i64 0 ; 5 uses
  %i.btx = fcmp fast olt float %i.btw, %i.btf
  br i1 %i.btx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1, label %bb.ca

bb.ca:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1
  %i.bty = fdiv fast float 1.000000e+00, %i.btb
  %i.btz = fadd fast float %i.btf, %i.bty
  %i.bua = fcmp fast ogt float %i.btw, %i.btz
  br i1 %i.bua, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.bub = fmul fast float %i.btb, %i.btw
  %i.buc = fadd fast float %i.bub, %i.btd
  %i.bud = fmul fast float %i.buc, %i.btw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1: ; preds = %bb.cb, %bb.ca, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1
  %.17061277.us.i.1 = phi float [ %i.bud, %bb.cb ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1 ], [ %i.btw, %bb.ca ]
  %i.bue = extractelement <4 x float> %i.bsz, i64 3 ; 4 uses
  %i.buf = fcmp fast olt float %i.bue, %i.btf
  %i.bug = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i.1, i64 0
  %i.buh = insertelement <4 x float> %i.bug, float %.17041241.us.i.1, i64 1
  %i.bui = insertelement <4 x float> %i.buh, float %.17021218.us.i.1, i64 2 ; 3 uses
  br i1 %i.buf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1, label %bb.cc

bb.cc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1
  %i.buj = fdiv fast float 1.000000e+00, %i.btb
  %i.buk = fadd fast float %i.btf, %i.buj
  %i.bul = fcmp fast ogt float %i.bue, %i.buk
  %i.bum = shufflevector <4 x float> %i.bui, <4 x float> %i.bsz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.bul, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.bun = fmul fast float %i.btb, %i.bue
  %i.buo = fadd fast float %i.bun, %i.btd
  %i.bup = fmul fast float %i.buo, %i.bue
  %i.buq = insertelement <4 x float> %i.bui, float %i.bup, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1: ; preds = %bb.bu
  %i.bur = extractelement <4 x float> %i.bsz, i64 2
  %i.bus = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bur)
  %i.but = extractelement <4 x float> %i.bsz, i64 1
  %i.buu = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.but)
  %i.buv = extractelement <4 x float> %i.bsz, i64 0
  %i.buw = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.buv)
  %i.bux = extractelement <4 x float> %i.bsz, i64 3
  %i.buy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bux)
  %i.buz = fadd fast float %i.bus, 1.000000e+00
  %i.bva = call fast float @llvm.log.f32(float %i.buz)
  %i.bvb = call fast float @llvm.tanh.f32(float %i.bva)
  %i.bvc = fadd fast float %i.buu, 1.000000e+00
  %i.bvd = call fast float @llvm.log.f32(float %i.bvc)
  %i.bve = call fast float @llvm.tanh.f32(float %i.bvd)
  %i.bvf = fadd fast float %i.buw, 1.000000e+00
  %i.bvg = call fast float @llvm.log.f32(float %i.bvf)
  %i.bvh = call fast float @llvm.tanh.f32(float %i.bvg)
  %i.bvi = fadd fast float %i.buy, 1.000000e+00
  %i.bvj = call fast float @llvm.log.f32(float %i.bvi)
  %i.bvk = call fast float @llvm.tanh.f32(float %i.bvj)
  %i.bvl = insertelement <4 x float> poison, float %i.bvh, i64 0
  %i.bvm = insertelement <4 x float> %i.bvl, float %i.bve, i64 1
  %i.bvn = insertelement <4 x float> %i.bvm, float %i.bvb, i64 2
  %i.bvo = insertelement <4 x float> %i.bvn, float %i.bvk, i64 3
  %i.bvp = fmul fast <4 x float> %i.bvo, %i.bsz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1: ; preds = %bb.bu
  %i.bvq = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bsz, <4 x float> splat (float f0x42B0C0A5))
  %i.bvr = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bvq, <4 x float> splat (float f0xC2B0C0A5))
  %i.bvs = fneg fast <4 x float> %i.bvr
  %i.bvt = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bvs)
  %i.bvu = fadd fast <4 x float> %i.bvt, splat (float 1.000000e+00)
  %i.bvv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bvu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1: ; preds = %bb.bu
  %i.bvw = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvw, i64 4
  %i.bvy = load float, ptr %i.bvw, align 4, !tbaa !53 ; 3 uses
  %i.bvz = load float, ptr %i.bvx, align 4, !tbaa !53 ; 5 uses
  %i.bwa = shufflevector <4 x float> %i.bsz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bwb = insertelement <2 x float> poison, float %i.bvy, i64 0
  %i.bwc = shufflevector <2 x float> %i.bwb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwd = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bwa, <2 x float> %i.bwc) ; 2 uses
  %i.bwe = insertelement <2 x float> poison, float %i.bvz, i64 0
  %i.bwf = shufflevector <2 x float> %i.bwe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bwg = fcmp fast ogt <2 x float> %i.bwd, %i.bwf
  %i.bwh = select <2 x i1> %i.bwg, <2 x float> %i.bwf, <2 x float> %i.bwd
  %i.bwi = extractelement <4 x float> %i.bsz, i64 0
  %.0705.us.i.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bwi, float %i.bvy) ; 2 uses
  %i.bwj = fcmp fast ogt float %.0705.us.i.1, %i.bvz
  %.17061287.us.i.1 = select i1 %i.bwj, float %i.bvz, float %.0705.us.i.1
  %i.bwk = extractelement <4 x float> %i.bsz, i64 3
  %.0707.us.i.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bwk, float %i.bvy) ; 2 uses
  %i.bwl = fcmp fast ogt float %.0707.us.i.1, %i.bvz
  %i.bwm = insertelement <4 x float> poison, float %.17061287.us.i.1, i64 0
  %i.bwn = shufflevector <2 x float> %i.bwh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bwo = shufflevector <4 x float> %i.bwm, <4 x float> %i.bwn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bwp = insertelement <4 x float> %i.bwo, float %.0707.us.i.1, i64 3 ; 2 uses
  br i1 %i.bwl, label %bb.ce, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

bb.ce:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1
  %i.bwq = insertelement <4 x float> %i.bwp, float %i.bvz, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1: ; preds = %bb.bu
  %i.bwr = load ptr, ptr %15, align 8, !tbaa !34
  %i.bws = load float, ptr %i.bwr, align 4, !tbaa !53
  %i.bwt = fcmp fast ogt <4 x float> %i.bsz, zeroinitializer
  %i.bwu = insertelement <4 x float> poison, float %i.bws, i64 0
  %i.bwv = shufflevector <4 x float> %i.bwu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bww = select <4 x i1> %i.bwt, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bwv
  %i.bwx = fmul fast <4 x float> %i.bww, %i.bsz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1: ; preds = %bb.bu
  %i.bwy = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bsz, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1, %bb.ce, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1, %bb.cd, %bb.cc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1, %bb.bu
  %i.bwz = phi <4 x float> [ %i.bui, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1 ], [ %i.bwy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1 ], [ %i.bwx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1 ], [ %i.bwq, %bb.ce ], [ %i.bwp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1 ], [ %i.bvv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1 ], [ %i.bvp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1 ], [ %i.buq, %bb.cd ], [ %i.bum, %bb.cc ], [ %i.bsz, %bb.bu ] ; 4 uses
  %i.bxa = bitcast <4 x float> %i.bwz to <8 x i16>
  %i.bxb = extractelement <8 x i16> %i.bxa, i64 5
  store i16 %i.bxb, ptr %.1.us.i, align 2, !tbaa !110
  br i1 %i.bmt, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1
  %i.bxc = bitcast <4 x float> %i.bwz to <8 x i16>
  %i.bxd = extractelement <8 x i16> %i.bxc, i64 3
  %i.bxe = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 2
  store i16 %i.bxd, ptr %i.bxe, align 2, !tbaa !110
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1
  br i1 %i.bmv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.bxf = bitcast <4 x float> %i.bwz to <8 x i16>
  %i.bxg = extractelement <8 x i16> %i.bxf, i64 1
  %i.bxh = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i16 %i.bxg, ptr %i.bxh, align 2, !tbaa !110
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.bmx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.bxi = bitcast <4 x float> %i.bwz to <8 x i16>
  %i.bxj = extractelement <8 x i16> %i.bxi, i64 7
  %i.bxk = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 6
  store i16 %i.bxj, ptr %i.bxk, align 2, !tbaa !110
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.bxl = getelementptr inbounds [2 x i8], ptr %.1.us.i, i64 %i.bfs
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bt
  %.1.us.i.1 = phi ptr [ %.1.us.i, %bb.bt ], [ %i.bxl, %bb.ck ] ; 6 uses
  %i.bxm = or disjoint i32 %i.bmm, 2
  %.not553.us.i.2 = icmp slt i32 %i.bxm, %i.ds
  br i1 %.not553.us.i.2, label %bb.cm, label %bb.dd

bb.cm:                                            ; preds = %bb.cl
  %.sroa.14.48.vec.extract = extractelement <4 x float> %i.ble, i64 3
  %.sroa.19.52.vec.extract = extractelement <4 x float> %23, i64 1 ; 2 uses
  %.sroa.19.56.vec.extract = extractelement <4 x float> %23, i64 2 ; 2 uses
  %i.bxn = fadd fast float %.sroa.19.56.vec.extract, %.sroa.19.52.vec.extract ; 2 uses
  %i.bxo = fsub fast float %.sroa.19.52.vec.extract, %.sroa.19.56.vec.extract ; 2 uses
  %i.bxp = fmul fast float %i.bxo, f0x3EB504F3
  %i.bxq = insertelement <4 x float> poison, float %.sroa.14.48.vec.extract, i64 0
  %i.bxr = insertelement <4 x float> %i.bxq, float %i.bxp, i64 1
  %i.bxs = insertelement <4 x float> poison, float %i.bxn, i64 0
  %i.bxt = insertelement <4 x float> %i.bxs, float %i.bxo, i64 1
  %i.bxu = fadd fast <4 x float> %i.bxr, %i.bgk
  %i.bxv = shufflevector <4 x float> %i.bxt, <4 x float> %i.bxu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bxw = fmul fast <4 x float> %i.bxv, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.bxx = insertelement <4 x float> %i.bgg, float %i.bxn, i64 2
  %i.bxy = shufflevector <4 x float> %i.bxx, <4 x float> %i.bmc, <4 x i32> <i32 0, i32 poison, i32 2, i32 4>
  %i.bxz = shufflevector <4 x float> %i.bxy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bya = fadd fast <4 x float> %i.bxw, %i.bxz
  %.sroa.19.60.vec.extract = extractelement <4 x float> %23, i64 3 ; 2 uses
  %.sroa.19.64.vec.extract = extractelement <4 x float> %23, i64 0 ; 2 uses
  %i.byb = fadd fast float %.sroa.19.64.vec.extract, %.sroa.19.60.vec.extract
  %i.byc = fsub fast float %.sroa.19.60.vec.extract, %.sroa.19.64.vec.extract
  %i.byd = insertelement <2 x float> poison, float %i.byb, i64 0
  %i.bye = insertelement <2 x float> %i.byd, float %i.byc, i64 1
  %i.byf = shufflevector <2 x float> %i.bye, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.byg = fmul fast <4 x float> %i.byf, <float 2.000000e+00, float f0x3FB504F3, float 1.000000e+00, float f0x403504F3>
  %i.byh = fadd fast <4 x float> %i.bya, %i.byg   ; 18 uses
  switch i32 %i.dq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2
    i32 6, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.byi = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.byj = load float, ptr %i.byi, align 4, !tbaa !53 ; 9 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byi, i64 4
  %i.byl = load float, ptr %i.byk, align 4, !tbaa !53 ; 5 uses
  %i.bym = fneg fast float %i.byl
  %i.byn = fdiv fast float %i.bym, %i.byj         ; 8 uses
  %i.byo = extractelement <4 x float> %i.byh, i64 2 ; 5 uses
  %i.byp = fcmp fast olt float %i.byo, %i.byn
  br i1 %i.byp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.byq = fdiv fast float 1.000000e+00, %i.byj
  %i.byr = fadd fast float %i.byn, %i.byq
  %i.bys = fcmp fast ogt float %i.byo, %i.byr
  br i1 %i.bys, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.byt = fmul fast float %i.byj, %i.byo
  %i.byu = fadd fast float %i.byt, %i.byl
  %i.byv = fmul fast float %i.byu, %i.byo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2: ; preds = %bb.cp, %bb.co, %bb.cn
  %.17021218.us.i.2 = phi float [ %i.byv, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.byo, %bb.co ]
  %i.byw = extractelement <4 x float> %i.byh, i64 1 ; 5 uses
  %i.byx = fcmp fast olt float %i.byw, %i.byn
  br i1 %i.byx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2
  %i.byy = fdiv fast float 1.000000e+00, %i.byj
  %i.byz = fadd fast float %i.byn, %i.byy
  %i.bza = fcmp fast ogt float %i.byw, %i.byz
  br i1 %i.bza, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bzb = fmul fast float %i.byj, %i.byw
  %i.bzc = fadd fast float %i.bzb, %i.byl
  %i.bzd = fmul fast float %i.bzc, %i.byw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2: ; preds = %bb.cr, %bb.cq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2
  %.17041241.us.i.2 = phi float [ %i.bzd, %bb.cr ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2 ], [ %i.byw, %bb.cq ]
  %i.bze = extractelement <4 x float> %i.byh, i64 0 ; 5 uses
  %i.bzf = fcmp fast olt float %i.bze, %i.byn
  br i1 %i.bzf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2, label %bb.cs

bb.cs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2
  %i.bzg = fdiv fast float 1.000000e+00, %i.byj
  %i.bzh = fadd fast float %i.byn, %i.bzg
  %i.bzi = fcmp fast ogt float %i.bze, %i.bzh
  br i1 %i.bzi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bzj = fmul fast float %i.byj, %i.bze
  %i.bzk = fadd fast float %i.bzj, %i.byl
  %i.bzl = fmul fast float %i.bzk, %i.bze
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2: ; preds = %bb.ct, %bb.cs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2
  %.17061277.us.i.2 = phi float [ %i.bzl, %bb.ct ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2 ], [ %i.bze, %bb.cs ]
  %i.bzm = extractelement <4 x float> %i.byh, i64 3 ; 4 uses
  %i.bzn = fcmp fast olt float %i.bzm, %i.byn
  %i.bzo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i.2, i64 0
  %i.bzp = insertelement <4 x float> %i.bzo, float %.17041241.us.i.2, i64 1
  %i.bzq = insertelement <4 x float> %i.bzp, float %.17021218.us.i.2, i64 2 ; 3 uses
  br i1 %i.bzn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2, label %bb.cu

bb.cu:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2
  %i.bzr = fdiv fast float 1.000000e+00, %i.byj
  %i.bzs = fadd fast float %i.byn, %i.bzr
  %i.bzt = fcmp fast ogt float %i.bzm, %i.bzs
  %i.bzu = shufflevector <4 x float> %i.bzq, <4 x float> %i.byh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.bzt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bzv = fmul fast float %i.byj, %i.bzm
  %i.bzw = fadd fast float %i.bzv, %i.byl
  %i.bzx = fmul fast float %i.bzw, %i.bzm
  %i.bzy = insertelement <4 x float> %i.bzq, float %i.bzx, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2: ; preds = %bb.cm
  %i.bzz = extractelement <4 x float> %i.byh, i64 2
  %i.caa = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bzz)
  %i.cab = extractelement <4 x float> %i.byh, i64 1
  %i.cac = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cab)
  %i.cad = extractelement <4 x float> %i.byh, i64 0
  %i.cae = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cad)
  %i.caf = extractelement <4 x float> %i.byh, i64 3
  %i.cag = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.caf)
  %i.cah = fadd fast float %i.caa, 1.000000e+00
  %i.cai = call fast float @llvm.log.f32(float %i.cah)
  %i.caj = call fast float @llvm.tanh.f32(float %i.cai)
  %i.cak = fadd fast float %i.cac, 1.000000e+00
  %i.cal = call fast float @llvm.log.f32(float %i.cak)
  %i.cam = call fast float @llvm.tanh.f32(float %i.cal)
  %i.can = fadd fast float %i.cae, 1.000000e+00
  %i.cao = call fast float @llvm.log.f32(float %i.can)
  %i.cap = call fast float @llvm.tanh.f32(float %i.cao)
  %i.caq = fadd fast float %i.cag, 1.000000e+00
  %i.car = call fast float @llvm.log.f32(float %i.caq)
  %i.cas = call fast float @llvm.tanh.f32(float %i.car)
  %i.cat = insertelement <4 x float> poison, float %i.cap, i64 0
  %i.cau = insertelement <4 x float> %i.cat, float %i.cam, i64 1
  %i.cav = insertelement <4 x float> %i.cau, float %i.caj, i64 2
  %i.caw = insertelement <4 x float> %i.cav, float %i.cas, i64 3
  %i.cax = fmul fast <4 x float> %i.caw, %i.byh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2: ; preds = %bb.cm
  %i.cay = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.byh, <4 x float> splat (float f0x42B0C0A5))
  %i.caz = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cay, <4 x float> splat (float f0xC2B0C0A5))
  %i.cba = fneg fast <4 x float> %i.caz
  %i.cbb = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cba)
  %i.cbc = fadd fast <4 x float> %i.cbb, splat (float 1.000000e+00)
  %i.cbd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cbc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2: ; preds = %bb.cm
  %i.cbe = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbe, i64 4
  %i.cbg = load float, ptr %i.cbe, align 4, !tbaa !53 ; 3 uses
  %i.cbh = load float, ptr %i.cbf, align 4, !tbaa !53 ; 5 uses
  %i.cbi = shufflevector <4 x float> %i.byh, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cbj = insertelement <2 x float> poison, float %i.cbg, i64 0
  %i.cbk = shufflevector <2 x float> %i.cbj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cbi, <2 x float> %i.cbk) ; 2 uses
  %i.cbm = insertelement <2 x float> poison, float %i.cbh, i64 0
  %i.cbn = shufflevector <2 x float> %i.cbm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cbo = fcmp fast ogt <2 x float> %i.cbl, %i.cbn
  %i.cbp = select <2 x i1> %i.cbo, <2 x float> %i.cbn, <2 x float> %i.cbl
  %i.cbq = extractelement <4 x float> %i.byh, i64 0
  %.0705.us.i.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cbq, float %i.cbg) ; 2 uses
  %i.cbr = fcmp fast ogt float %.0705.us.i.2, %i.cbh
  %.17061287.us.i.2 = select i1 %i.cbr, float %i.cbh, float %.0705.us.i.2
  %i.cbs = extractelement <4 x float> %i.byh, i64 3
  %.0707.us.i.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cbs, float %i.cbg) ; 2 uses
  %i.cbt = fcmp fast ogt float %.0707.us.i.2, %i.cbh
  %i.cbu = insertelement <4 x float> poison, float %.17061287.us.i.2, i64 0
  %i.cbv = shufflevector <2 x float> %i.cbp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cbw = shufflevector <4 x float> %i.cbu, <4 x float> %i.cbv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cbx = insertelement <4 x float> %i.cbw, float %.0707.us.i.2, i64 3 ; 2 uses
  br i1 %i.cbt, label %bb.cw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

bb.cw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2
  %i.cby = insertelement <4 x float> %i.cbx, float %i.cbh, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2: ; preds = %bb.cm
  %i.cbz = load ptr, ptr %15, align 8, !tbaa !34
  %i.cca = load float, ptr %i.cbz, align 4, !tbaa !53
  %i.ccb = fcmp fast ogt <4 x float> %i.byh, zeroinitializer
  %i.ccc = insertelement <4 x float> poison, float %i.cca, i64 0
  %i.ccd = shufflevector <4 x float> %i.ccc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cce = select <4 x i1> %i.ccb, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ccd
  %i.ccf = fmul fast <4 x float> %i.cce, %i.byh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2: ; preds = %bb.cm
  %i.ccg = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.byh, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2, %bb.cw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2, %bb.cv, %bb.cu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2, %bb.cm
  %i.cch = phi <4 x float> [ %i.bzq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2 ], [ %i.ccg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2 ], [ %i.ccf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2 ], [ %i.cby, %bb.cw ], [ %i.cbx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2 ], [ %i.cbd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2 ], [ %i.cax, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2 ], [ %i.bzy, %bb.cv ], [ %i.bzu, %bb.cu ], [ %i.byh, %bb.cm ] ; 4 uses
  %i.cci = bitcast <4 x float> %i.cch to <8 x i16>
  %i.ccj = extractelement <8 x i16> %i.cci, i64 5
  store i16 %i.ccj, ptr %.1.us.i.1, align 2, !tbaa !110
  br i1 %i.bmt, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2
  %i.cck = bitcast <4 x float> %i.cch to <8 x i16>
  %i.ccl = extractelement <8 x i16> %i.cck, i64 3
  %i.ccm = getelementptr inbounds nuw i8, ptr %.1.us.i.1, i64 2
  store i16 %i.ccl, ptr %i.ccm, align 2, !tbaa !110
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2
  br i1 %i.bmv, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ccn = bitcast <4 x float> %i.cch to <8 x i16>
  %i.cco = extractelement <8 x i16> %i.ccn, i64 1
  %i.ccp = getelementptr inbounds nuw i8, ptr %.1.us.i.1, i64 4
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.blq = phi <2 x float> [ %i.bga, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjp, %bb.bl ], [ %i.bjp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bia, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bga, %bb.bk ], [ %i.bga, %bb.bj ], [ %i.bbl, %bb.al ]
  %i.blr = getelementptr inbounds nuw [2 x i8], ptr %.07552512.us.i, i64 %i.cs ; 6 uses
  %i.bls = bitcast <2 x float> %i.blq to <2 x i32>
  %i.blt = lshr <2 x i32> %i.bls, splat (i32 16)
  %i.blu = trunc nuw <2 x i32> %i.blt to <2 x i16> ; 2 uses
  %i.blv = extractelement <2 x i16> %i.blu, i64 0
  store i16 %i.blv, ptr %.07552512.us.i, align 2, !tbaa !110
  %i.blw = extractelement <2 x i16> %i.blu, i64 1
  store i16 %i.blw, ptr %i.blr, align 2, !tbaa !110
  br i1 %i.azt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  %i.blx = bitcast <2 x float> %i.blp to <2 x i32>
  %i.bly = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 2
  %i.blz = lshr <2 x i32> %i.blx, splat (i32 16)
  %i.bma = trunc nuw <2 x i32> %i.blz to <2 x i16> ; 2 uses
  %i.bmb = extractelement <2 x i16> %i.bma, i64 0
  store i16 %i.bmb, ptr %i.bly, align 2, !tbaa !110
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blr, i64 2
  %i.bmd = extractelement <2 x i16> %i.bma, i64 1
  store i16 %i.bmd, ptr %i.bmc, align 2, !tbaa !110
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  br i1 %i.azv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.bme = bitcast <2 x float> %i.blo to <2 x i32>
  %i.bmf = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 4
  %i.bmg = lshr <2 x i32> %i.bme, splat (i32 16)
  %i.bmh = trunc nuw <2 x i32> %i.bmg to <2 x i16> ; 2 uses
  %i.bmi = extractelement <2 x i16> %i.bmh, i64 0
  store i16 %i.bmi, ptr %i.bmf, align 2, !tbaa !110
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.blr, i64 4
  %i.bmk = extractelement <2 x i16> %i.bmh, i64 1
  store i16 %i.bmk, ptr %i.bmj, align 2, !tbaa !110
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.azx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.bml = bitcast <2 x float> %i.bln to <2 x i32>
  %i.bmm = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 6
  %i.bmn = lshr <2 x i32> %i.bml, splat (i32 16)
  %i.bmo = trunc nuw <2 x i32> %i.bmn to <2 x i16> ; 2 uses
  %i.bmp = extractelement <2 x i16> %i.bmo, i64 0
  store i16 %i.bmp, ptr %i.bmm, align 2, !tbaa !110
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.blr, i64 6
  %i.bmr = extractelement <2 x i16> %i.bmo, i64 1
  store i16 %i.bmr, ptr %i.bmq, align 2, !tbaa !110
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.azz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.bms = bitcast <2 x float> %i.blm to <2 x i32>
  %i.bmt = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 8
  %i.bmu = lshr <2 x i32> %i.bms, splat (i32 16)
  %i.bmv = trunc nuw <2 x i32> %i.bmu to <2 x i16> ; 2 uses
  %i.bmw = extractelement <2 x i16> %i.bmv, i64 0
  store i16 %i.bmw, ptr %i.bmt, align 2, !tbaa !110
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.blr, i64 8
  %i.bmy = extractelement <2 x i16> %i.bmv, i64 1
  store i16 %i.bmy, ptr %i.bmx, align 2, !tbaa !110
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.bab, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.bmz = bitcast <2 x float> %i.bll to <2 x i32>
  %i.bna = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 10
  %i.bnb = lshr <2 x i32> %i.bmz, splat (i32 16)
  %i.bnc = trunc nuw <2 x i32> %i.bnb to <2 x i16> ; 2 uses
  %i.bnd = extractelement <2 x i16> %i.bnc, i64 0
  store i16 %i.bnd, ptr %i.bna, align 2, !tbaa !110
  %i.bne = getelementptr inbounds nuw i8, ptr %i.blr, i64 10
  %i.bnf = extractelement <2 x i16> %i.bnc, i64 1
  store i16 %i.bnf, ptr %i.bne, align 2, !tbaa !110
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.bng = getelementptr inbounds [2 x i8], ptr %.07552512.us.i, i64 %i.awl
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ak
  %.1756.us.i = phi ptr [ %.07552512.us.i, %bb.ak ], [ %i.bng, %bb.bv ]
  %indvars.iv.next2582.i = add nuw nsw i64 %indvars.iv2581.i, 1 ; 2 uses
  %exitcond2584.not.i = icmp eq i64 %indvars.iv.next2582.i, 6
  br i1 %exitcond2584.not.i, label %bb.bx, label %bb.ak, !llvm.loop !1834

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next2586.i = add nuw nsw i64 %indvars.iv2585.i, 1 ; 2 uses
  %exitcond2589.not.i = icmp eq i64 %indvars.iv.next2586.i, %wide.trip.count2588.i
  br i1 %exitcond2589.not.i, label %._crit_edge.us2523.i, label %bb.ai, !llvm.loop !1835

._crit_edge.us2523.i:                             ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next2591.i = add nuw nsw i64 %indvars.iv2590.i, 2 ; 3 uses
  %i.bnh = icmp slt i64 %indvars.iv.next2591.i, %invariant.op2648.i
  br i1 %i.bnh, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !1836

.lr.ph2519.split.i:                               ; preds = %.lr.ph2519.i
  %i.bni = sub i32 %i.cd, %.0757.lcssa.i
  %i.bnj = and i32 %i.bni, -2
  %i.bnk = add i32 %.0757.lcssa.i, 2
  %i.bnl = add i32 %i.bnk, %i.bnj
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us2523.i
  %i.bnm = trunc nsw i64 %indvars.iv.next2591.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph2519.split.i, %.preheader2483.i
  %.1758.lcssa.i = phi i32 [ %.0757.lcssa.i, %.preheader2483.i ], [ %i.bnl, %.lr.ph2519.split.i ], [ %i.bnm, %.preheader.loopexit.i ] ; 2 uses
  %i.bnn = icmp slt i32 %.1758.lcssa.i, %.sroa.speculated124
  br i1 %i.bnn, label %.lr.ph2547.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2547.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bno = icmp sgt i32 %.sroa.speculated120, 0
  %i.bnp = sext i32 %.sroa.speculated120 to i64
  %i.bnq = shl nuw nsw i32 %.sroa.speculated120, 1
  %i.bnr = zext nneg i32 %i.bnq to i64
  %i.bns = mul nuw nsw i32 %.sroa.speculated120, 3
  %i.bnt = zext nneg i32 %i.bns to i64
  %i.bnu = shl nuw nsw i32 %.sroa.speculated120, 2
  %i.bnv = zext nneg i32 %i.bnu to i64
  %i.bnw = mul nuw nsw i32 %.sroa.speculated120, 5
  %i.bnx = zext nneg i32 %i.bnw to i64
  %i.bny = mul nuw nsw i32 %.sroa.speculated120, 6
  %i.bnz = zext nneg i32 %i.bny to i64
  %i.boa = mul nuw nsw i32 %.sroa.speculated120, 7
  %i.bob = zext nneg i32 %i.boa to i64
  %i.boc = shl nuw nsw i32 %.sroa.speculated120, 3
  %i.bod = zext nneg i32 %i.boc to i64            ; 8 uses
  %i.boe = sext i32 %i.cn to i64
  br i1 %i.bno, label %.lr.ph2547.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2547.split.us.i:                            ; preds = %.lr.ph2547.i
  %i.bof = load i32, ptr %i.aq, align 4, !tbaa !86, !noalias !1856
  %i.bog = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1856
  %i.boh = load i64, ptr %i.at, align 8, !tbaa !35, !noalias !1856
  %i.boi = load i64, ptr %i.az, align 8, !tbaa !76, !noalias !1856 ; 2 uses
  %factor.op.mul2552.i = mul i64 %i.boi, %i.boh
  %i.boj = sext i32 %i.bof to i64
  %factor.op.mul2543.us.i = mul i64 %i.boi, %i.boj
  %i.bok = sext i32 %i.co to i64
  %i.bol = sext i32 %.1758.lcssa.i to i64
  %wide.trip.count2604.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.us2550.i, %.lr.ph2547.split.us.i
  %indvars.iv2606.i = phi i64 [ %indvars.iv.next2607.i, %._crit_edge.us2550.i ], [ %i.bol, %.lr.ph2547.split.us.i ] ; 3 uses
  %.pre2611.i = add nsw i64 %indvars.iv2606.i, %i.ca ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us2549.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.bom = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre2611.i
  %i.bon = load float, ptr %i.bom, align 4, !tbaa !53
  br label %.lr.ph.us2549.i

.lr.ph.us2549.i:                                  ; preds = %bb.bz, %bb.by
  %i.boo = phi fast float [ %i.bon, %bb.bz ], [ 0.000000e+00, %bb.by ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bop = trunc nsw i64 %indvars.iv2606.i to i32
  %factor.op.mul2540.reass.us.i = mul i32 %factor.op.mul2496.i, %i.bop
  %i.boq = sext i32 %factor.op.mul2540.reass.us.i to i64
  %i.bor = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.boq
  %.reass2553.i = mul i64 %factor.op.mul2552.i, %.pre2611.i
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bog, i64 %.reass2553.i
  %i.bot = insertelement <2 x float> poison, float %i.boo, i64 0
  br label %bb.ca

bb.ca:                                            ; preds = %bb.dd, %.lr.ph.us2549.i
  %indvars.iv2601.i = phi i64 [ 0, %.lr.ph.us2549.i ], [ %indvars.iv.next2602.i, %bb.dd ] ; 3 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.bor, i64 %indvars.iv2601.i ; 8 uses
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bnp
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bnr
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bnt
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bnv
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bnx
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bnz
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %i.bob
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %indvars.iv2593.i = phi i64 [ %indvars.iv.next2594.i, %bb.cb ], [ 0, %bb.ca ] ; 7 uses
  %.07452536.us.i = phi ptr [ %i.bre, %bb.cb ], [ %i.bpb, %bb.ca ] ; 2 uses
  %.07462535.us.i = phi ptr [ %i.brd, %bb.cb ], [ %i.bpa, %bb.ca ] ; 2 uses
  %.07472534.us.i = phi ptr [ %i.brc, %bb.cb ], [ %i.boz, %bb.ca ] ; 2 uses
  %.07482533.us.i = phi ptr [ %i.brb, %bb.cb ], [ %i.boy, %bb.ca ] ; 2 uses
  %.07492532.us.i = phi ptr [ %i.bra, %bb.cb ], [ %i.box, %bb.ca ] ; 2 uses
  %.07502531.us.i = phi ptr [ %i.bqz, %bb.cb ], [ %i.bow, %bb.ca ] ; 2 uses
  %.07512530.us.i = phi ptr [ %i.bqy, %bb.cb ], [ %i.bov, %bb.ca ] ; 2 uses
  %.07522529.us.i = phi ptr [ %i.bqx, %bb.cb ], [ %i.bou, %bb.ca ] ; 2 uses
  %i.bpc = load float, ptr %.07512530.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpd = load float, ptr %.07502531.us.i, align 4, !tbaa !53 ; 2 uses
  %18 = fsub fast float %i.bpc, %i.bpd            ; 3 uses
  %i.bpe = load float, ptr %.07492532.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpf = load float, ptr %.07482533.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpg = load float, ptr %.07472534.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bph = load float, ptr %.07462535.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpi = fadd fast float %i.bph, %i.bpg         ; 3 uses
  %i.bpj = fsub fast float %i.bpg, %i.bph         ; 3 uses
  %i.bpk = load float, ptr %.07522529.us.i, align 4, !tbaa !53
  %i.bpl = fmul fast float %i.bpi, 3.200000e+01
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2593.i
  %i.bpn = fmul fast float %i.bpj, 1.600000e+01
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv2593.i
  %i.bpp = fmul fast float %i.bpi, 8.000000e+00
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv2593.i
  %i.bpr = fmul fast float %i.bpj, 4.000000e+00
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv2593.i
  %i.bpt = fadd fast float %i.bpd, %i.bpc         ; 2 uses
  %i.bpu = fadd fast float %i.bpf, %i.bpe         ; 2 uses
  %i.bpv = fsub fast float %i.bpe, %i.bpf         ; 2 uses
  %i.bpw = fadd fast float %i.bpu, %i.bpt
  %i.bpx = fadd fast float %i.bpw, %i.bpk
  %i.bpy = fadd fast float %i.bpx, %i.bpl
  store float %i.bpy, ptr %i.bpm, align 4, !tbaa !53
  %i.bpz = fadd fast float %18, %i.bpn
  %i.bqa = insertelement <4 x float> poison, float %i.bpv, i64 0
  %i.bqb = insertelement <4 x float> %i.bqa, float %i.bpu, i64 1
  %i.bqc = shufflevector <4 x float> %i.bqb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bqd = fmul fast <4 x float> %i.bqc, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.bqe = insertelement <4 x float> poison, float %i.bpz, i64 0
  %i.bqf = insertelement <4 x float> %i.bqe, float %i.bpt, i64 1
  %i.bqg = insertelement <4 x float> %i.bqf, float %18, i64 2
  %i.bqh = shufflevector <4 x float> %i.bqg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bqi = fadd fast <4 x float> %i.bqh, %i.bqd   ; 4 uses
  %i.bqj = extractelement <4 x float> %i.bqi, i64 0
  store float %i.bqj, ptr %i.bpo, align 4, !tbaa !53
  %i.bqk = extractelement <4 x float> %i.bqi, i64 1
  %i.bql = fadd fast float %i.bpp, %i.bqk
  store float %i.bql, ptr %i.bpq, align 4, !tbaa !53
  %i.bqm = extractelement <4 x float> %i.bqi, i64 2
  %i.bqn = fadd fast float %i.bpr, %i.bqm
  store float %i.bqn, ptr %i.bps, align 4, !tbaa !53
  %factor2446.us.i = fmul fast float %i.bpi, 2.000000e+00
  %i.bqo = extractelement <4 x float> %i.bqi, i64 3
  %i.bqp = fadd fast float %factor2446.us.i, %i.bqo
  %i.bqq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv2593.i
  store float %i.bqp, ptr %i.bqq, align 4, !tbaa !53
  %i.bqr = load float, ptr %.07452536.us.i, align 4, !tbaa !53
  %i.bqs = fmul fast float %i.bpv, 3.200000e+01
  %i.bqt = fadd fast float %18, %i.bqs
  %i.bqu = fadd fast float %i.bqt, %i.bpj
  %i.bqv = fadd fast float %i.bqu, %i.bqr
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv2593.i
  store float %i.bqv, ptr %i.bqw, align 4, !tbaa !53
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %.07522529.us.i, i64 %i.bod
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.07512530.us.i, i64 %i.bod
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.07502531.us.i, i64 %i.bod
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %.07492532.us.i, i64 %i.bod
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %.07482533.us.i, i64 %i.bod
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %.07472534.us.i, i64 %i.bod
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %.07462535.us.i, i64 %i.bod
  %i.bre = getelementptr inbounds nuw [4 x i8], ptr %.07452536.us.i, i64 %i.bod
  %indvars.iv.next2594.i = add nuw nsw i64 %indvars.iv2593.i, 1 ; 2 uses
  %exitcond2596.not.i = icmp eq i64 %indvars.iv.next2594.i, 8
  br i1 %exitcond2596.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.cb, !llvm.loop !1839

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.cb
  %i.brf = trunc i64 %indvars.iv2601.i to i32
  %i.brg = add i32 %.047134, %i.brf               ; 2 uses
  %i.brh = sdiv i32 %i.brg, %i.cu
  %i.bri = srem i32 %i.brg, %i.cu
  %i.brj = mul nsw i32 %i.brh, 6
  %i.brk = sext i32 %i.brj to i64                 ; 2 uses
  %.reass2544.us.i = mul i64 %factor.op.mul2543.us.i, %i.brk
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bos, i64 %.reass2544.us.i
  %i.brm = mul nsw i32 %i.bri, 6                  ; 6 uses
  %i.brn = sext i32 %i.brm to i64
  %i.bro = getelementptr inbounds [2 x i8], ptr %i.brl, i64 %i.brn
  %i.brp = or disjoint i32 %i.brm, 1
  %i.brq = icmp slt i32 %i.brp, %i.cn
  %i.brr = add nsw i32 %i.brm, 2
  %i.brs = icmp slt i32 %i.brr, %i.cn
  %i.brt = add nsw i32 %i.brm, 3
  %i.bru = icmp slt i32 %i.brt, %i.cn
  %i.brv = add nsw i32 %i.brm, 4
  %i.brw = icmp slt i32 %i.brv, %i.cn
  %i.brx = add nsw i32 %i.brm, 5
  %i.bry = icmp slt i32 %i.brx, %i.cn
  %invariant.op2649.i = sub nsw i64 %i.bok, %i.brk
  br label %bb.cc

bb.cc:                                            ; preds = %bb.dc, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv2597.i = phi i64 [ %indvars.iv.next2598.i, %bb.dc ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.07432538.us.i = phi ptr [ %.1.us.i, %bb.dc ], [ %i.bro, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not788.us.i = icmp slt i64 %indvars.iv2597.i, %invariant.op2649.i
  br i1 %.not788.us.i, label %bb.cd, label %bb.dc

bb.cd:                                            ; preds = %bb.cc
  %i.brz = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv2597.i ; 8 uses
  %i.bsa = load float, ptr %i.brz, align 16, !tbaa !53
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brz, i64 4
  %i.bsc = load float, ptr %i.bsb, align 4, !tbaa !53 ; 2 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brz, i64 8
  %i.bse = load float, ptr %i.bsd, align 8, !tbaa !53 ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.brz, i64 12
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.brz, i64 16
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.brz, i64 20
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.brz, i64 24
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.brz, i64 28
  %i.bsk = load float, ptr %i.bsj, align 4, !tbaa !53
  %i.bsl = load float, ptr %i.bsf, align 4, !tbaa !53 ; 2 uses
  %i.bsm = load float, ptr %i.bsg, align 16, !tbaa !53 ; 2 uses
  %i.bsn = fadd fast float %i.bsm, %i.bsl         ; 2 uses
  %i.bso = fsub fast float %i.bsl, %i.bsm         ; 3 uses
  %i.bsp = insertelement <4 x float> poison, float %i.bso, i64 0
  %i.bsq = fmul fast float %i.bso, 3.200000e+01
  %i.bsr = load float, ptr %i.bsh, align 4, !tbaa !53 ; 2 uses
  %i.bss = load float, ptr %i.bsi, align 8, !tbaa !53 ; 2 uses
  %i.bst = fsub fast float %i.bsc, %i.bse
  %i.bsu = fadd fast float %i.bss, %i.bsr         ; 2 uses
  %i.bsv = fsub fast float %i.bsr, %i.bss         ; 3 uses
  %i.bsw = fmul fast float %i.bsu, 3.200000e+01
  %i.bsx = fadd fast float %i.bsc, %i.boo
  %i.bsy = insertelement <2 x float> poison, float %i.bst, i64 0
  %i.bsz = insertelement <2 x float> %i.bsy, float %i.bsx, i64 1
  %i.bta = insertelement <2 x float> %i.bot, float %i.bse, i64 1
  %i.btb = fadd fast <2 x float> %i.bsz, %i.bta   ; 2 uses
  %i.btc = insertelement <2 x float> poison, float %i.bsq, i64 0
  %i.btd = insertelement <2 x float> %i.btc, float %i.bsa, i64 1
  %i.bte = fadd fast <2 x float> %i.btb, %i.btd
  %i.btf = insertelement <2 x float> poison, float %i.bsk, i64 0
  %i.btg = insertelement <2 x float> %i.btf, float %i.bsn, i64 1
  %i.bth = fadd fast <2 x float> %i.bte, %i.btg
  %i.bti = insertelement <4 x float> poison, float %i.bsv, i64 0
  %i.btj = insertelement <4 x float> %i.bti, float %i.bsn, i64 1
  %i.btk = insertelement <4 x float> %i.btj, float %i.bso, i64 2
  %i.btl = shufflevector <4 x float> %i.btk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.btm = fmul fast <4 x float> %i.btl, <float 1.600000e+01, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.btn = shufflevector <2 x float> %i.btb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bto = fadd fast <4 x float> %i.btn, %i.btm
  %i.btp = insertelement <4 x float> %i.bsp, float %i.bsu, i64 1
  %i.btq = insertelement <4 x float> %i.btp, float %i.bsv, i64 2
  %i.btr = shufflevector <4 x float> %i.btq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bts = fmul fast <4 x float> %i.btr, <float 2.000000e+00, float 8.000000e+00, float 4.000000e+00, float 2.000000e+00>
  %i.btt = fadd fast <4 x float> %i.bto, %i.bts   ; 15 uses
  %i.btu = insertelement <2 x float> poison, float %i.bsv, i64 0
  %i.btv = insertelement <2 x float> %i.btu, float %i.bsw, i64 1
  %i.btw = fadd fast <2 x float> %i.bth, %i.btv   ; 13 uses
  switch i32 %i.cm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2217.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2220.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2214.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2223.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread2226.us.i
    i32 6, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.btx = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.bty = load float, ptr %i.btx, align 4, !tbaa !53 ; 13 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %i.btx, i64 4
  %i.bua = load float, ptr %i.btz, align 4, !tbaa !53 ; 7 uses
  %i.bub = fneg fast float %i.bua
  %i.buc = fdiv fast float %i.bub, %i.bty         ; 12 uses
  %i.bud = extractelement <2 x float> %i.btw, i64 1 ; 5 uses
  %i.bue = fcmp fast olt float %i.bud, %i.buc
  br i1 %i.bue, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.buf = fdiv fast float 1.000000e+00, %i.bty
  %i.bug = fadd fast float %i.buc, %i.buf
  %i.buh = fcmp fast ogt float %i.bud, %i.bug
  br i1 %i.buh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bui = fmul fast float %i.bty, %i.bud
  %i.buj = fadd fast float %i.bui, %i.bua
  %i.buk = fmul fast float %i.buj, %i.bud
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %.110392210.us.i = phi float [ %i.buk, %bb.cg ], [ 0.000000e+00, %bb.ce ], [ %i.bud, %bb.cf ] ; 2 uses
  %i.bul = extractelement <4 x float> %i.btt, i64 0 ; 5 uses
  %i.bum = fcmp fast olt float %i.bul, %i.buc
  br i1 %i.bum, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i, label %bb.ch

bb.ch:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i
  %i.bun = fdiv fast float 1.000000e+00, %i.bty
  %i.buo = fadd fast float %i.buc, %i.bun
  %i.bup = fcmp fast ogt float %i.bul, %i.buo
  br i1 %i.bup, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.buq = fmul fast float %i.bty, %i.bul
  %i.bur = fadd fast float %i.buq, %i.bua
  %i.bus = fmul fast float %i.bur, %i.bul
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i: ; preds = %bb.ci, %bb.ch, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i
  %.110412233.us.i = phi float [ %i.bus, %bb.ci ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit825.thread.us.i ], [ %i.bul, %bb.ch ]
  %i.but = extractelement <4 x float> %i.btt, i64 1 ; 5 uses
  %i.buu = fcmp fast olt float %i.but, %i.buc
  br i1 %i.buu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit823.thread.us.i, label %bb.cj

bb.cj:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i
  %i.buv = fdiv fast float 1.000000e+00, %i.bty
  %i.buw = fadd fast float %i.buc, %i.buv
  %i.bux = fcmp fast ogt float %i.but, %i.buw
  br i1 %i.bux, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit823.thread.us.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.buy = fmul fast float %i.bty, %i.but
  %i.buz = fadd fast float %i.buy, %i.bua
  %i.bva = fmul fast float %i.buz, %i.but
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit823.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit823.thread.us.i: ; preds = %bb.ck, %bb.cj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i
  %.110432269.us.i = phi float [ %i.bva, %bb.ck ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit824.thread.us.i ], [ %i.but, %bb.cj ]
end_hunk_3
