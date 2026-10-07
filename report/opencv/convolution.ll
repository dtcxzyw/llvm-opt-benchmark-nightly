Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cv3dnn11runFastConvERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_3PtrINS0_8FastConvEEEiRKNS7_INS0_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEb:bb.a

.preheader457:                                    ; preds = %.preheader457.preheader, %._crit_edge470
  %indvars.iv494 = phi i64 [ 0, %.preheader457.preheader ], [ %indvars.iv.next495, %._crit_edge470 ] ; 3 uses
  %i.sj = mul i64 %indvars.iv494, %i.sg           ; 2 uses
  %i.sk = mul i64 %i.sj, %i.sh                    ; 3 uses
  %i.sl = trunc i64 %indvars.iv494 to i32
  %i.sm = mul i32 %i.qb, %i.sl
  %i.sn = zext i32 %i.sm to i64                   ; 3 uses
  %i.so = trunc i64 %i.sj to i32                  ; 3 uses
  br i1 %i.si, label %.epil.preheader626, label %.preheader457.new

._crit_edge470.unr-lcssa:                         ; preds = %.preheader457.new
  br i1 %lcmp.mod628.not, label %._crit_edge470, label %.epil.preheader626

.epil.preheader626:                               ; preds = %._crit_edge470.unr-lcssa, %.preheader457
  %indvars.iv489.epil.init = phi i64 [ 0, %.preheader457 ], [ %indvars.iv.next490.1, %._crit_edge470.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod629)
  %i.sp = add nuw nsw i64 %indvars.iv489.epil.init, %i.sn ; 2 uses
  %i.sq = mul i64 %indvars.iv489.epil.init, %i.sf ; 2 uses
  %.idx576.epil = mul i64 %i.sp, 12
  %i.sr = getelementptr i8, ptr %i.qg, i64 %.idx576.epil ; 2 uses
  %i.ss = getelementptr i8, ptr %i.sr, i64 4
  store i32 %i.so, ptr %i.ss, align 4, !tbaa !39
  %i.st = getelementptr i8, ptr %i.sr, i64 8
  %i.su = trunc i64 %i.sq to i32
  store i32 %i.su, ptr %i.st, align 4, !tbaa !39
  %i.sv = add i64 %i.sk, %i.sq
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0436.0, i64 %i.sp
  %i.sx = trunc i64 %i.sv to i32
  store i32 %i.sx, ptr %i.sw, align 4, !tbaa !39
  br label %._crit_edge470

._crit_edge470:                                   ; preds = %._crit_edge470.unr-lcssa, %.epil.preheader626
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %wide.trip.count497
  br i1 %exitcond498.not, label %.loopexit, label %.preheader457, !llvm.loop !163

.preheader457.new:                                ; preds = %.preheader457, %.preheader457.new
  %indvars.iv489 = phi i64 [ %indvars.iv.next490.1, %.preheader457.new ], [ 0, %.preheader457 ] ; 4 uses
  %niter631 = phi i64 [ %niter631.next.1, %.preheader457.new ], [ 0, %.preheader457 ]
  %i.sy = add nuw nsw i64 %indvars.iv489, %i.sn   ; 2 uses
  %i.sz = mul i64 %indvars.iv489, %i.sf           ; 2 uses
  %.idx576 = mul i64 %i.sy, 12
  %i.ta = getelementptr i8, ptr %i.qg, i64 %.idx576 ; 2 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 4
  store i32 %i.so, ptr %i.tb, align 4, !tbaa !39
  %i.tc = getelementptr i8, ptr %i.ta, i64 8
  %i.td = trunc i64 %i.sz to i32
  store i32 %i.td, ptr %i.tc, align 4, !tbaa !39
  %i.te = add i64 %i.sk, %i.sz
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0436.0, i64 %i.sy
  %i.tg = trunc i64 %i.te to i32
  store i32 %i.tg, ptr %i.tf, align 4, !tbaa !39
  %indvars.iv.next490 = or disjoint i64 %indvars.iv489, 1 ; 2 uses
  %i.th = add nuw nsw i64 %indvars.iv.next490, %i.sn ; 2 uses
  %i.ti = mul i64 %indvars.iv.next490, %i.sf      ; 2 uses
  %.idx576.1 = mul i64 %i.th, 12
  %i.tj = getelementptr i8, ptr %i.qg, i64 %.idx576.1 ; 2 uses
  %i.tk = getelementptr i8, ptr %i.tj, i64 4
  store i32 %i.so, ptr %i.tk, align 4, !tbaa !39
  %i.tl = getelementptr i8, ptr %i.tj, i64 8
  %i.tm = trunc i64 %i.ti to i32
  store i32 %i.tm, ptr %i.tl, align 4, !tbaa !39
  %i.tn = add i64 %i.sk, %i.ti
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0436.0, i64 %i.th
  %i.tp = trunc i64 %i.tn to i32
  store i32 %i.tp, ptr %i.to, align 4, !tbaa !39
  %indvars.iv.next490.1 = add nuw nsw i64 %indvars.iv489, 2 ; 2 uses
  %niter631.next.1 = add i64 %niter631, 2         ; 2 uses
  %niter631.ncmp.1 = icmp eq i64 %niter631.next.1, %unroll_iter630
  br i1 %niter631.ncmp.1, label %._crit_edge470.unr-lcssa, label %.preheader457.new, !llvm.loop !164

.preheader461:                                    ; preds = %.preheader461.preheader, %._crit_edge466
  %indvars.iv484 = phi i64 [ 0, %.preheader461.preheader ], [ %indvars.iv.next485, %._crit_edge466 ] ; 3 uses
  %i.tq = mul nuw nsw i64 %indvars.iv484, %i.rx
  %i.tr = mul i64 %indvars.iv484, %i.ry           ; 2 uses
  %i.ts = trunc i64 %i.tr to i32
  %i.tt = mul i32 %i.rs, %i.ts
  %i.tu = trunc i64 %i.tr to i32                  ; 3 uses
  br label %.preheader460

.preheader460:                                    ; preds = %.preheader461, %._crit_edge
  %indvars.iv479 = phi i64 [ 0, %.preheader461 ], [ %indvars.iv.next480, %._crit_edge ] ; 3 uses
  %i.tv = add nuw nsw i64 %i.tq, %indvars.iv479
  %i.tw = trunc nuw i64 %i.tv to i32
  %i.tx = mul i32 %i.qb, %i.tw
  %i.ty = trunc i64 %indvars.iv479 to i32
  %i.tz = mul i32 %i.ru, %i.ty                    ; 4 uses
  %i.ua = add i32 %i.tt, %i.tz
  %i.ub = mul i32 %i.ua, %i.rr                    ; 3 uses
  %i.uc = sext i32 %i.tx to i64                   ; 3 uses
  br i1 %i.rz, label %.epil.preheader, label %.preheader460.new

._crit_edge466:                                   ; preds = %._crit_edge
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next485, %wide.trip.count487
  br i1 %exitcond488.not, label %.loopexit, label %.preheader461, !llvm.loop !165

._crit_edge.unr-lcssa:                            ; preds = %.preheader460.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader460
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader460 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod625)
  %i.ud = add nsw i64 %indvars.iv.epil.init, %i.uc ; 2 uses
  %i.ue = mul i64 %indvars.iv.epil.init, %i.rw    ; 2 uses
  %.idx.epil = mul nsw i64 %i.ud, 12
  %i.uf = getelementptr inbounds i8, ptr %i.qg, i64 %.idx.epil ; 3 uses
  store i32 %i.tu, ptr %i.uf, align 4, !tbaa !39
  %i.ug = getelementptr i8, ptr %i.uf, i64 4
  store i32 %i.tz, ptr %i.ug, align 4, !tbaa !39
  %i.uh = getelementptr i8, ptr %i.uf, i64 8
  %i.ui = trunc i64 %i.ue to i32
  store i32 %i.ui, ptr %i.uh, align 4, !tbaa !39
  %i.uj = getelementptr inbounds [4 x i8], ptr %.sroa.0436.0, i64 %i.ud
  %i.uk = trunc i64 %i.ue to i32
  %i.ul = add i32 %i.ub, %i.uk
  store i32 %i.ul, ptr %i.uj, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond483.not = icmp eq i64 %indvars.iv.next480, %i.rx
  br i1 %exitcond483.not, label %._crit_edge466, label %.preheader460, !llvm.loop !166

.preheader460.new:                                ; preds = %.preheader460, %.preheader460.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader460.new ], [ 0, %.preheader460 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader460.new ], [ 0, %.preheader460 ]
  %i.um = add nsw i64 %indvars.iv, %i.uc          ; 2 uses
  %i.un = mul i64 %indvars.iv, %i.rw              ; 2 uses
  %.idx = mul nsw i64 %i.um, 12
  %i.uo = getelementptr inbounds i8, ptr %i.qg, i64 %.idx ; 3 uses
  store i32 %i.tu, ptr %i.uo, align 4, !tbaa !39
  %i.up = getelementptr i8, ptr %i.uo, i64 4
  store i32 %i.tz, ptr %i.up, align 4, !tbaa !39
  %i.uq = getelementptr i8, ptr %i.uo, i64 8
  %i.ur = trunc i64 %i.un to i32
  store i32 %i.ur, ptr %i.uq, align 4, !tbaa !39
  %i.us = getelementptr inbounds [4 x i8], ptr %.sroa.0436.0, i64 %i.um
  %i.ut = trunc i64 %i.un to i32
  %i.uu = add i32 %i.ub, %i.ut
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.uv = add nsw i64 %indvars.iv.next, %i.uc     ; 2 uses
  %i.uw = mul i64 %indvars.iv.next, %i.rw         ; 2 uses
  %.idx.1 = mul nsw i64 %i.uv, 12
  %i.ux = getelementptr inbounds i8, ptr %i.qg, i64 %.idx.1 ; 3 uses
  store i32 %i.tu, ptr %i.ux, align 4, !tbaa !39
  %i.uy = getelementptr i8, ptr %i.ux, i64 4
  store i32 %i.tz, ptr %i.uy, align 4, !tbaa !39
  %i.uz = getelementptr i8, ptr %i.ux, i64 8
  %i.va = trunc i64 %i.uw to i32
  store i32 %i.va, ptr %i.uz, align 4, !tbaa !39
  %i.vb = getelementptr inbounds [4 x i8], ptr %.sroa.0436.0, i64 %i.uv
  %i.vc = trunc i64 %i.uw to i32
  %i.vd = add i32 %i.ub, %i.vc
  store i32 %i.vd, ptr %i.vb, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader460.new, !llvm.loop !167

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.fg
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  br i1 %lcmp.mod634.not, label %.loopexit, label %.epil.preheader632

.epil.preheader632:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv499.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next500.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod635 = icmp ne i64 %xtraiter633, 0
  call void @llvm.assume(i1 %lcmp.mod635)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %.epil.preheader632
  %indvars.iv499.epil = phi i64 [ %indvars.iv499.epil.init, %.epil.preheader632 ], [ %indvars.iv.next500.epil, %bb.fi ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader632 ], [ %epil.iter.next, %bb.fi ]
  %.idx577.epil = mul nuw nsw i64 %indvars.iv499.epil, 12
  %i.ve = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.idx577.epil
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = trunc i64 %indvars.iv499.epil to i32
  %i.vh = mul i32 %i.ql, %i.vg                    ; 2 uses
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !39
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0436.0, i64 %indvars.iv499.epil
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !39
  %indvars.iv.next500.epil = add nuw nsw i64 %indvars.iv499.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter633
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.fi, !llvm.loop !168

.loopexit:                                        ; preds = %._crit_edge466, %._crit_edge470, %.loopexit.loopexit.unr-lcssa, %bb.fi, %.preheader461.lr.ph, %.preheader462, %.preheader458, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #23
  store i32 24, ptr %i.al, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #23
  store i32 4, ptr %i.am, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #23
  store i32 4, ptr %i.an, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #23
  %i.vj = load ptr, ptr %2, align 8, !tbaa !29
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 192 ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !71
  %i.vm = icmp eq i32 %i.vl, 3                    ; 4 uses
  %spec.select = select i1 %i.vm, i32 1, i32 3    ; 3 uses
  store i32 %spec.select, ptr %i.ao, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #23
  %i.vn = select i1 %i.vm, i32 1, i32 32
  store i32 %i.vn, ptr %i.ap, align 4, !tbaa !39
  %i.vo = load i32, ptr %i.t, align 4, !tbaa !39
  %i.vp = add nsw i32 %i.vo, 3
  %i.vq = sdiv i32 %i.vp, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #23
  %i.vr = shl nsw i32 %i.vq, 2
  store i32 %i.vr, ptr %i.aq, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #23
  %i.vs = load i64, ptr %i.v, align 8, !tbaa !38
  %i.vt = trunc i64 %i.vs to i32                  ; 2 uses
  %i.vu = add nsw i32 %i.vt, 23
  %i.vv = sdiv i32 %i.vu, 24                      ; 6 uses
  store i32 %i.vv, ptr %i.ar, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #23
  store i32 %i.vv, ptr %i.as, align 4, !tbaa !39
  %i.vw = load i32, ptr %i.a, align 4, !tbaa !39  ; 3 uses
  %i.vx = shl nsw i32 %i.vw, 2
  %i.vy = icmp slt i32 %i.vv, %i.vx
  %brmerge = select i1 %i.vy, i1 true, i1 %i.vm
  br i1 %brmerge, label %.thread605, label %bb.fj

.thread605:                                       ; preds = %.loopexit
  store i32 1, ptr %i.ao, align 4, !tbaa !39
  store i32 1, ptr %i.as, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #23
  br label %bb.fk

bb.fj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #23
  %i.vz = load i8, ptr %i.ag, align 1, !tbaa !107, !range !66, !noundef !67
  %i.wa = trunc nuw i8 %i.vz to i1
  %.off = add i32 %i.vt, -1
  %i.wb = icmp ult i32 %.off, 24
  %or.cond24 = or i1 %i.wb, %i.wa
  br i1 %or.cond24, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.thread605, %bb.fj
  %.0127609 = phi i32 [ %i.vq, %.thread605 ], [ %i.vv, %bb.fj ]
  %i.wc = phi i32 [ 1, %.thread605 ], [ %spec.select, %bb.fj ]
  %i.wd = load i32, ptr %i.vk, align 8, !tbaa !71
  %i.we = icmp ne i32 %i.wd, 3
  %i.wf = zext i1 %i.we to i8
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %.0127608 = phi i32 [ %i.vv, %bb.fj ], [ %.0127609, %bb.fk ] ; 2 uses
  %i.wg = phi i32 [ %spec.select, %bb.fj ], [ %i.wc, %bb.fk ] ; 2 uses
  %i.wh = phi i8 [ 0, %bb.fj ], [ %i.wf, %bb.fk ] ; 2 uses
  store i8 %i.wh, ptr %i.at, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #23
  store i32 %.0127608, ptr %i.au, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #23
  %i.wi = load i32, ptr %i.h, align 4, !tbaa !39
  %i.wj = load i32, ptr %i.m, align 4, !tbaa !39
  %i.wk = mul nsw i32 %i.wj, %i.wi                ; 2 uses
  %i.wl = mul nsw i32 %i.wk, %.0127608
  store i32 %i.wl, ptr %i.av, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #23
  %i.wm = mul nsw i32 %i.pz, 24
  %i.wn = load i32, ptr %i.s, align 4, !tbaa !39
  %i.wo = mul nsw i32 %i.wm, %i.wn
  %i.wp = sext i32 %i.wo to i64
  %i.wq = add nsw i64 %i.wp, 24
  %i.wr = and i64 %i.wq, -32                      ; 3 uses
  store i64 %i.wr, ptr %i.aw, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #23
  %i.ws = select i1 %i.vm, i32 24, i32 768
  %i.wt = mul nuw nsw i32 %i.wg, %i.ws
  %narrow578 = add nuw nsw i32 %i.wt, 24
  %i.wu = and i32 %narrow578, 8160
  %i.wv = zext nneg i32 %i.wu to i64              ; 3 uses
  store i64 %i.wv, ptr %i.ax, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #23
  %i.ww = shl nuw nsw i64 %i.wv, 2                ; 2 uses
  store i64 %i.ww, ptr %i.ay, align 8, !tbaa !38
  %i.wx = trunc nuw i8 %i.wh to i1
  br i1 %i.wx, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wy = zext nneg i32 %i.wg to i64
  %i.wz = mul nsw i64 %i.wr, %i.wy
  %i.xa = add nsw i64 %i.wz, %i.wv
  %i.xb = shl nsw i64 %i.xa, 2                    ; 2 uses
  store i64 %i.xb, ptr %i.ay, align 8, !tbaa !38
  %i.xc = sext i32 %i.vw to i64
  %i.xd = mul i64 %i.xb, %i.xc                    ; 2 uses
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.xe = sext i32 %i.vw to i64
  %i.xf = mul nsw i64 %i.ww, %i.xe                ; 2 uses
  %i.xg = mul nsw i32 %i.wk, %i.vv
  %i.xh = sext i32 %i.xg to i64
  %i.xi = shl nsw i64 %i.xh, 2
  %i.xj = mul i64 %i.xi, %i.wr
  %i.xk = add i64 %i.xf, %i.xj
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fn
  %i.xl = phi i64 [ %i.xf, %bb.fn ], [ %i.xd, %bb.fm ]
  %.0 = phi i64 [ %i.xk, %bb.fn ], [ %i.xd, %bb.fm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  %i.xm = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  store ptr %i.xm, ptr %54, align 8, !tbaa !202
  %i.xn = getelementptr inbounds nuw i8, ptr %54, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #23
  store ptr null, ptr %i.az, align 8, !tbaa !111
  %i.xo = add i64 %.0, 128                        ; 3 uses
  %.not.i = icmp ugt i64 %i.xo, 1032
  store i64 %i.xo, ptr %i.xn, align 8, !tbaa !203
  br i1 %.not.i, label %bb.fp, label %_ZN2cv10AutoBufferIcLm1032EE8allocateEm.exit

bb.fp:                                            ; preds = %bb.fo
  %i.xp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xo) #21
          to label %.noexc375 unwind label %bb.fz ; 2 uses

.noexc375:                                        ; preds = %bb.fp
  store ptr %i.xp, ptr %54, align 8, !tbaa !202
  br label %_ZN2cv10AutoBufferIcLm1032EE8allocateEm.exit

_ZN2cv10AutoBufferIcLm1032EE8allocateEm.exit:     ; preds = %bb.fo, %.noexc375
  %i.xq = phi ptr [ %i.xp, %.noexc375 ], [ %i.xm, %bb.fo ]
  %i.xr = ptrtoint ptr %i.xq to i64
  %i.xs = add i64 %i.xr, 127
  %i.xt = and i64 %i.xs, -128
  %i.xu = inttoptr i64 %i.xt to ptr               ; 2 uses
  store ptr %i.xu, ptr %i.az, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #23
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xl
  store ptr %i.xv, ptr %i.ba, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #23
  %i.xw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !82
  store ptr %i.xx, ptr %i.bb, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #23
  %i.xy = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !82
  store ptr %i.xz, ptr %i.bc, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #23
  %i.ya = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %37)
          to label %bb.fq unwind label %bb.ga

bb.fq:                                            ; preds = %_ZN2cv10AutoBufferIcLm1032EE8allocateEm.exit
  %i.yb = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8
  %i.yd = select i1 %i.ya, ptr null, ptr %i.yc
  store ptr %i.yd, ptr %i.bd, align 8, !tbaa !83
  %i.ye = load i8, ptr %i.at, align 1, !tbaa !107, !range !66, !noundef !67
  %i.yf = trunc nuw i8 %i.ye to i1
  br i1 %i.yf, label %bb.fr, label %bb.ge

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.yg = load i32, ptr %i.a, align 4, !tbaa !39
  store i32 0, ptr %55, align 4, !tbaa !86
  %i.yh = getelementptr inbounds nuw i8, ptr %55, i64 4
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !87
  %i.yi = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %56, i8 0, i64 32, i1 false)
  %i.yj = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #21
          to label %bb.fv unwind label %bb.fs     ; 37 uses

bb.fs:                                            ; preds = %bb.fr
  %i.yk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yl = load ptr, ptr %i.yi, align 8, !tbaa !89 ; 2 uses
  %.not.i.i376 = icmp eq ptr %i.yl, null
  br i1 %.not.i.i376, label %.body377, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ym = invoke noundef zeroext i1 %i.yl(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(32) %56, i32 noundef 3)
          to label %.body377 unwind label %bb.fu  ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  %i.yn = landingpad { ptr, i32 }
          catch ptr null
  %i.yo = extractvalue { ptr, i32 } %i.yn, 0
  call void @__clang_call_terminate(ptr %i.yo) #25
  unreachable

bb.fv:                                            ; preds = %bb.fr
  %i.yp = getelementptr inbounds nuw i8, ptr %56, i64 24
  store ptr %i.ag, ptr %i.yj, align 16, !tbaa !113
  %.sroa.5400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store ptr %i.h, ptr %.sroa.5400.0..sroa_idx, align 8, !tbaa !94
  %.sroa.6401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store ptr %i.i, ptr %.sroa.6401.0..sroa_idx, align 16, !tbaa !94
  %.sroa.7402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  store ptr %i.a, ptr %.sroa.7402.0..sroa_idx, align 8, !tbaa !94
  %.sroa.8403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  store ptr %i.s, ptr %.sroa.8403.0..sroa_idx, align 16, !tbaa !94
  %.sroa.9404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 40
  store ptr %i.bb, ptr %.sroa.9404.0..sroa_idx, align 8, !tbaa !92
  %.sroa.10405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 48
  store ptr %i.u, ptr %.sroa.10405.0..sroa_idx, align 16, !tbaa !40
  %.sroa.11406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 56
  store ptr %i.ba, ptr %.sroa.11406.0..sroa_idx, align 8, !tbaa !115
  %.sroa.12407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 64
  store ptr %i.m, ptr %.sroa.12407.0..sroa_idx, align 16, !tbaa !94
  %.sroa.13408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 72
  store ptr %i.ar, ptr %.sroa.13408.0..sroa_idx, align 8, !tbaa !94
  %.sroa.14409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 80
  store ptr %i.aw, ptr %.sroa.14409.0..sroa_idx, align 16, !tbaa !40
  %.sroa.15410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 88
  store ptr %i.al, ptr %.sroa.15410.0..sroa_idx, align 8, !tbaa !94
  %.sroa.16411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 96
  store ptr %i.an, ptr %.sroa.16411.0..sroa_idx, align 16, !tbaa !94
  %.sroa.17412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 104
  store ptr %i.ai, ptr %.sroa.17412.0..sroa_idx, align 8, !tbaa !117
  %.sroa.18413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 112
  store ptr %i.aj, ptr %.sroa.18413.0..sroa_idx, align 16, !tbaa !117
  %.sroa.19414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 120
  store ptr %i.v, ptr %.sroa.19414.0..sroa_idx, align 8, !tbaa !40
  %.sroa.20415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 128
  store ptr %i.af, ptr %.sroa.20415.0..sroa_idx, align 16, !tbaa !94
  %.sroa.21416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 136
  store ptr %i.z, ptr %.sroa.21416.0..sroa_idx, align 8, !tbaa !94
  %.sroa.22417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 144
  store ptr %i.aa, ptr %.sroa.22417.0..sroa_idx, align 16, !tbaa !94
  %.sroa.23418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 152
  store ptr %i.ab, ptr %.sroa.23418.0..sroa_idx, align 8, !tbaa !94
  %.sroa.24419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 160
  store ptr %i.w, ptr %.sroa.24419.0..sroa_idx, align 16, !tbaa !94
  %.sroa.25420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 168
  store ptr %i.x, ptr %.sroa.25420.0..sroa_idx, align 8, !tbaa !94
  %.sroa.26421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 176
  store ptr %i.y, ptr %.sroa.26421.0..sroa_idx, align 16, !tbaa !94
  %.sroa.27422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 184
  store ptr %i.n, ptr %.sroa.27422.0..sroa_idx, align 8, !tbaa !94
  %.sroa.28423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 192
  store ptr %i.o, ptr %.sroa.28423.0..sroa_idx, align 16, !tbaa !94
  %.sroa.29424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 200
  store ptr %i.p, ptr %.sroa.29424.0..sroa_idx, align 8, !tbaa !94
  %.sroa.30425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 208
  store ptr %i.ac, ptr %.sroa.30425.0..sroa_idx, align 16, !tbaa !94
  %.sroa.31426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 216
  store ptr %i.ad, ptr %.sroa.31426.0..sroa_idx, align 8, !tbaa !94
  %.sroa.32427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 224
  store ptr %i.ae, ptr %.sroa.32427.0..sroa_idx, align 16, !tbaa !94
  %.sroa.33428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 232
  store ptr %i.j, ptr %.sroa.33428.0..sroa_idx, align 8, !tbaa !94
  %.sroa.34429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 240
  store ptr %i.k, ptr %.sroa.34429.0..sroa_idx, align 16, !tbaa !94
  %.sroa.35430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 248
  store ptr %i.l, ptr %.sroa.35430.0..sroa_idx, align 8, !tbaa !94
  %.sroa.36431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yj, i64 256
  store ptr %i.q, ptr %.sroa.36431.0..sroa_idx, align 16, !tbaa !94
end_hunk_0
