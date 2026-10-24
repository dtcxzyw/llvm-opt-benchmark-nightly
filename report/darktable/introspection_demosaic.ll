Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
.loopexit.i.i:                                    ; preds = %._crit_edge.i.i, %._crit_edge194.i.i, %._crit_edge200.i.i, %.preheader186.lr.ph.i.i, %.preheader187.i.i, %.preheader182.i.i
  switch i32 %.fr1070, label %bb.bj [
    i32 0, label %bb.av
    i32 9, label %.preheader.i.preheader.i.i
  ]

.preheader.i.preheader.i.i:                       ; preds = %.loopexit.i.i, %.preheader183.lr.ph.i.i, %.preheader184.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 510 ; 2 uses
  %i.rz = load i8, ptr %i.x, align 16, !tbaa !133 ; 4 uses
  %i.sa = icmp eq i8 %i.rz, 1                     ; 3 uses
  br i1 %i.sa, label %bb.by, label %.preheader._crit_edge.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.sb = add nsw i32 %i.if, -4
  %i.sc = icmp sgt i32 %i.if, 8
  br i1 %i.sc, label %.preheader.lr.ph.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.av
  %i.sd = icmp sgt i32 %i.hz, 9
  %i.se = shl nuw nsw i32 %i.hz, 1
  %i.sf = zext nneg i32 %i.se to i64              ; 2 uses
  %i.sg = xor i32 %i.hz, -1
  %i.sh = sext i32 %i.sg to i64                   ; 2 uses
  %i.si = sub i32 1, %i.hz
  %i.sj = sext i32 %i.si to i64                   ; 2 uses
  br i1 %i.sd, label %.preheader.us.preheader.i.i.i, label %_calcRadiusMono.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.sk = add nsw i32 %i.hz, -4
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = zext nneg i32 %i.hz to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.sb to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv212.i.i.i = phi i64 [ 4, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next213.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0152206.us.i.i.i = phi float [ 1.000000e+00, %.preheader.us.preheader.i.i.i ], [ %.10.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.sn = mul nuw nsw i64 %indvars.iv212.i.i.i, %i.sm
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.sn
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bi, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 5, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bi ] ; 2 uses
  %.1153204.us.i.i.i = phi float [ %.0152206.us.i.i.i, %.preheader.us.i.i.i ], [ %.10.us.i.i.i, %bb.bi ] ; 5 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %indvars.iv.i.i.i ; 10 uses
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !12 ; 15 uses
  %i.sr = fcmp reassoc nsz arcp contract afn ogt float %i.sq, 5.000000e-03
  br i1 %i.sr, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.ss = getelementptr [4 x i8], ptr %i.sp, i64 %i.ik ; 2 uses
  %i.st = getelementptr i8, ptr %i.ss, i64 -4
  %i.su = load float, ptr %i.st, align 4, !tbaa !12 ; 5 uses
  %i.sv = getelementptr i8, ptr %i.ss, i64 4
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !12 ; 9 uses
  %i.sx = fcmp reassoc nsz arcp contract afn ogt float %i.sq, %i.su
  %i.sy = select reassoc nsz arcp contract afn i1 %i.sx, float %i.sq, float %i.su ; 4 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt float %i.su, 5.000000e-03
  %i.ta = fcmp reassoc nsz arcp contract afn ogt float %i.sy, f0x3C23D70A
  %or.cond.us.i.i.i = and i1 %i.sz, %i.ta
  br i1 %or.cond.us.i.i.i, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.tb = fcmp reassoc nsz arcp contract afn olt float %i.sq, %i.su
  %i.tc = select reassoc nsz arcp contract afn i1 %i.tb, float %i.sq, float %i.su ; 2 uses
  %i.td = fmul reassoc nsz arcp contract afn float %i.tc, %.1153204.us.i.i.i
  %i.te = fcmp reassoc nsz arcp contract afn ogt float %i.sy, %i.td
  br i1 %i.te, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.tf = fcmp reassoc nsz arcp contract afn oeq float %i.sy, %i.sq
  br i1 %i.tf, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.tg = getelementptr inbounds i8, ptr %i.sp, i64 -8
  %i.th = load float, ptr %i.tg, align 4, !tbaa !12 ; 2 uses
  %i.ti = fcmp reassoc nsz arcp contract afn ogt float %i.th, %i.sq
  %.183.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ti, float %i.th, float %i.sq ; 3 uses
  %i.tj = getelementptr [4 x i8], ptr %i.sp, i64 %i.sf ; 2 uses
  %i.tk = getelementptr i8, ptr %i.tj, i64 -8
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !12 ; 3 uses
  %i.tm = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tl
  %i.tn = load float, ptr %i.tj, align 4, !tbaa !12 ; 4 uses
  br i1 %i.tm, label %bb.bb, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.ba
  %i.to = fcmp reassoc nsz arcp contract afn ogt float %i.tl, %i.tn
  %spec.select200.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.to, float %i.tl, float %i.tn
  br label %.thread196.us.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.tp = fcmp reassoc nsz arcp contract afn ogt float %.183.us.i.i.i, %i.tn
  %spec.select199.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tp, float %.183.us.i.i.i, float %i.tn
  br label %.thread196.us.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.sh
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !12 ; 2 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.sj
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !12 ; 2 uses
  %i.tu = fcmp reassoc nsz arcp contract afn ogt float %i.tr, %i.tt
  %..us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tu, float %i.tr, float %i.tt ; 2 uses
  %i.tv = fcmp reassoc nsz arcp contract afn ogt float %..us.i.i.i, %i.sw
  %spec.select.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.tv, float %..us.i.i.i, float %i.sw
  br label %.thread196.us.i.i.i

.thread196.us.i.i.i:                              ; preds = %bb.bc, %bb.bb, %.thread.us.i.i.i
  %.not.in.us.i.i.i = phi float [ %spec.select.us.i.i.i, %bb.bc ], [ %spec.select199.us.i.i.i, %bb.bb ], [ %spec.select200.us.i.i.i, %.thread.us.i.i.i ]
  %.not.us.i.i.i = fcmp ult float %.not.in.us.i.i.i, f0x3F666666
  %i.tw = fdiv reassoc nsz arcp contract afn float %i.sy, %i.tc
  %spec.select188.us.i.i.i = select nsz i1 %.not.us.i.i.i, float %i.tw, float %.1153204.us.i.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %.thread196.us.i.i.i, %bb.ay, %bb.ax
  %.4.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.ax ], [ %spec.select188.us.i.i.i, %.thread196.us.i.i.i ], [ %.1153204.us.i.i.i, %bb.ay ] ; 5 uses
  %i.tx = fcmp reassoc nsz arcp contract afn ogt float %i.sq, %i.sw
  %i.ty = select reassoc nsz arcp contract afn i1 %i.tx, float %i.sq, float %i.sw ; 4 uses
  %i.tz = fcmp reassoc nsz arcp contract afn ogt float %i.sw, 5.000000e-03
  %i.ua = fcmp reassoc nsz arcp contract afn ogt float %i.ty, f0x3C23D70A
  %or.cond4.us.i.i.i = select i1 %i.tz, i1 %i.ua, i1 false
  br i1 %or.cond4.us.i.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ub = fcmp reassoc nsz arcp contract afn olt float %i.sq, %i.sw
  %i.uc = select reassoc nsz arcp contract afn i1 %i.ub, float %i.sq, float %i.sw ; 2 uses
  %i.ud = fmul reassoc nsz arcp contract afn float %.4.us.i.i.i, %i.uc
  %i.ue = fcmp reassoc nsz arcp contract afn ogt float %i.ty, %i.ud
  br i1 %i.ue, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.uf = fcmp reassoc nsz arcp contract afn oeq float %i.ty, %i.sq
  br i1 %i.uf, label %bb.bg, label %.thread198.us.i.i.i

.thread198.us.i.i.i:                              ; preds = %bb.bf
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !12 ; 2 uses
  %i.ui = fcmp reassoc nsz arcp contract afn ogt float %i.sq, %i.uh
  %.191.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ui, float %i.sq, float %i.uh ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sf ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !12 ; 2 uses
  %i.ul = fcmp reassoc nsz arcp contract afn ogt float %.191.us.i.i.i, %i.uk
  %i.um = getelementptr i8, ptr %i.uj, i64 8
  %i.un = load float, ptr %i.um, align 4, !tbaa !12 ; 2 uses
  %.191.us..i.i.i = select i1 %i.ul, float %.191.us.i.i.i, float %i.uk ; 2 uses
  %i.uo = fcmp reassoc nsz arcp contract afn ogt float %.191.us..i.i.i, %i.un
  %spec.select202.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uo, float %.191.us..i.i.i, float %i.un
  %i.up = fcmp reassoc nsz arcp contract afn ult float %spec.select202.us.i.i.i, f0x3F666666
  br i1 %i.up, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.sh
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !12 ; 2 uses
  %i.us = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.sj
  %i.ut = load float, ptr %i.us, align 4, !tbaa !12 ; 2 uses
  %i.uu = fcmp reassoc nsz arcp contract afn ogt float %i.ur, %i.ut
  %.189.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uu, float %i.ur, float %i.ut ; 2 uses
  %i.uv = fcmp reassoc nsz arcp contract afn ogt float %.189.us.i.i.i, %i.sw
  %spec.select201.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.uv, float %.189.us.i.i.i, float %i.sw
  %i.uw = fcmp reassoc nsz arcp contract afn ult float %spec.select201.us.i.i.i, f0x3F666666
  br i1 %i.uw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.thread198.us.i.i.i
  %i.ux = fdiv reassoc nsz arcp contract afn float %i.ty, %i.uc
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.thread198.us.i.i.i, %bb.be, %bb.bd, %bb.aw
  %.10.us.i.i.i = phi nsz float [ %.1153204.us.i.i.i, %bb.aw ], [ %.4.us.i.i.i, %bb.bd ], [ %.4.us.i.i.i, %bb.bg ], [ %.4.us.i.i.i, %.thread198.us.i.i.i ], [ %i.ux, %bb.bh ], [ %.4.us.i.i.i, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.uy = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.sl
  br i1 %i.uy, label %bb.aw, label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.bi
  %indvars.iv.next213.i.i.i = add nuw nsw i64 %indvars.iv212.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next213.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge208.loopexit.i.i.i, label %.preheader.us.i.i.i

._crit_edge208.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i.i.i
  %i.uz = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.10.us.i.i.i)
  br label %_calcRadiusMono.exit.i.i

_calcRadiusMono.exit.i.i:                         ; preds = %._crit_edge208.loopexit.i.i.i, %.preheader.lr.ph.i.i.i, %bb.av
  %.0152.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.av ], [ %i.uz, %._crit_edge208.loopexit.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.va = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0152.lcssa.i.i.i
  %i.vb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.va)
  br label %bb.fg

bb.bj:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.vc = and i32 %.fr1070, 3
  store i32 %i.vc, ptr %i.m, align 4, !tbaa !15
  %i.vd = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ve = lshr i32 %.fr1070, 4
  %i.vf = and i32 %i.ve, 3
  store i32 %i.vf, ptr %i.vd, align 4, !tbaa !15
  %i.vg = icmp sgt i32 %i.if, 8
  br i1 %i.vg, label %.lr.ph212.i.i.i, label %_calcRadiusBayer.exit.i.i

.lr.ph212.i.i.i:                                  ; preds = %bb.bj
  %i.vh = add nsw <2 x i32> %i.hy, splat (i32 -4) ; 2 uses
  %i.vi = add nsw i32 %i.hz, -4
  %i.vj = shl nsw i32 %i.hz, 1
  %6 = sext i32 %i.vj to i64                      ; 2 uses
  %i.vk = xor i32 %i.hz, -1
  %i.vl = sext i32 %i.vk to i64                   ; 2 uses
  %i.vm = sub i32 1, %i.hz
  %i.vn = sext i32 %i.vm to i64                   ; 2 uses
  %i.vo = extractelement <2 x i32> %i.vh, i64 1
  %i.vp = extractelement <2 x i32> %i.vh, i64 0
  %i.vq = sext i32 %i.vp to i64
  %i.vr = zext i32 %i.vo to i64
  br label %bb.bk

._crit_edge213.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %i.vs = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.1156.lcssa.i.i.i)
  br label %_calcRadiusBayer.exit.i.i

bb.bk:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph212.i.i.i
  %indvars.iv216.i.i.i = phi i64 [ 4, %.lr.ph212.i.i.i ], [ %indvars.iv.next217.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.0155209.i.i.i = phi float [ 1.000000e+00, %.lr.ph212.i.i.i ], [ %.1156.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.vt = and i64 %indvars.iv216.i.i.i, 1
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !15
  %i.vw = and i32 %i.vv, 1
  %i.vx = add nuw nsw i32 %i.vw, 5                ; 2 uses
  %i.vy = icmp slt i32 %i.vx, %i.vi
  br i1 %i.vy, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk
  %i.vz = mul nsw i64 %indvars.iv216.i.i.i, %i.ik
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.vz
  %i.wb = zext nneg i32 %i.vx to i64
  br label %bb.bl

._crit_edge.i.i.i:                                ; preds = %bb.bx, %bb.bk
  %.1156.lcssa.i.i.i = phi float [ %.0155209.i.i.i, %bb.bk ], [ %.10.i.i.i, %bb.bx ] ; 2 uses
  %indvars.iv.next217.i.i.i = add nuw nsw i64 %indvars.iv216.i.i.i, 1 ; 2 uses
  %exitcond.not.i164.i.i = icmp eq i64 %indvars.iv.next217.i.i.i, %i.vr
  br i1 %exitcond.not.i164.i.i, label %._crit_edge213.loopexit.i.i.i, label %bb.bk

bb.bl:                                            ; preds = %bb.bx, %.lr.ph.i.i.i
  %indvars.iv.i165.i.i = phi i64 [ %i.wb, %.lr.ph.i.i.i ], [ %indvars.iv.next.i166.i.i, %bb.bx ] ; 2 uses
  %.1156207.i.i.i = phi float [ %.0155209.i.i.i, %.lr.ph.i.i.i ], [ %.10.i.i.i, %bb.bx ] ; 5 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv.i165.i.i ; 10 uses
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !12 ; 15 uses
  %i.we = fcmp reassoc nsz arcp contract afn ogt float %i.wd, 5.000000e-03
  br i1 %i.we, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.wf = getelementptr [4 x i8], ptr %i.wc, i64 %i.ik ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wf, i64 -4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !12 ; 5 uses
  %i.wi = getelementptr i8, ptr %i.wf, i64 4
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !12 ; 9 uses
  %i.wk = fcmp reassoc nsz arcp contract afn ogt float %i.wd, %i.wh
  %i.wl = select reassoc nsz arcp contract afn i1 %i.wk, float %i.wd, float %i.wh ; 4 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt float %i.wh, 5.000000e-03
  %i.wn = fcmp reassoc nsz arcp contract afn ogt float %i.wl, f0x3C23D70A
  %or.cond.i.i.i = and i1 %i.wm, %i.wn
  br i1 %or.cond.i.i.i, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.wo = fcmp reassoc nsz arcp contract afn olt float %i.wd, %i.wh
  %i.wp = select reassoc nsz arcp contract afn i1 %i.wo, float %i.wd, float %i.wh ; 2 uses
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wp, %.1156207.i.i.i
  %i.wr = fcmp reassoc nsz arcp contract afn ogt float %i.wl, %i.wq
  br i1 %i.wr, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.ws = fcmp reassoc nsz arcp contract afn oeq float %i.wl, %i.wd
  br i1 %i.ws, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vl
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !12 ; 2 uses
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vn
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !12 ; 2 uses
  %i.wx = fcmp reassoc nsz arcp contract afn ogt float %i.wu, %i.ww
  %..i.i.i = select reassoc nsz arcp contract afn i1 %i.wx, float %i.wu, float %i.ww ; 2 uses
  %i.wy = fcmp reassoc nsz arcp contract afn ogt float %..i.i.i, %i.wj
  %spec.select.i.i.i = select reassoc nsz arcp contract afn i1 %i.wy, float %..i.i.i, float %i.wj
  br label %.thread199.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.wz = getelementptr inbounds i8, ptr %i.wc, i64 -8
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !12 ; 2 uses
  %i.xb = fcmp reassoc nsz arcp contract afn ogt float %i.xa, %i.wd
  %.186.i.i.i = select reassoc nsz arcp contract afn i1 %i.xb, float %i.xa, float %i.wd ; 3 uses
  %i.xc = getelementptr [4 x i8], ptr %i.wc, i64 %6 ; 2 uses
  %i.xd = getelementptr i8, ptr %i.xc, i64 -8
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !12 ; 3 uses
  %i.xf = fcmp reassoc nsz arcp contract afn ogt float %.186.i.i.i, %i.xe
  %i.xg = load float, ptr %i.xc, align 4, !tbaa !12 ; 4 uses
  br i1 %i.xf, label %bb.br, label %.thread.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.xh = fcmp reassoc nsz arcp contract afn ogt float %.186.i.i.i, %i.xg
  %spec.select202.i.i.i = select reassoc nsz arcp contract afn i1 %i.xh, float %.186.i.i.i, float %i.xg
  br label %.thread199.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bq
  %i.xi = fcmp reassoc nsz arcp contract afn ogt float %i.xe, %i.xg
  %spec.select203.i.i.i = select reassoc nsz arcp contract afn i1 %i.xi, float %i.xe, float %i.xg
  br label %.thread199.i.i.i

.thread199.i.i.i:                                 ; preds = %.thread.i.i.i, %bb.br, %bb.bp
  %.not.in.i.i.i = phi float [ %spec.select.i.i.i, %bb.bp ], [ %spec.select202.i.i.i, %bb.br ], [ %spec.select203.i.i.i, %.thread.i.i.i ]
  %.not.i.i.i = fcmp ult float %.not.in.i.i.i, f0x3F666666
  %i.xj = fdiv reassoc nsz arcp contract afn float %i.wl, %i.wp
  %spec.select191.i.i.i = select nsz i1 %.not.i.i.i, float %i.xj, float %.1156207.i.i.i
  br label %bb.bs

bb.bs:                                            ; preds = %.thread199.i.i.i, %bb.bn, %bb.bm
  %.4.i.i.i = phi nsz float [ %.1156207.i.i.i, %bb.bm ], [ %spec.select191.i.i.i, %.thread199.i.i.i ], [ %.1156207.i.i.i, %bb.bn ] ; 5 uses
  %i.xk = fcmp reassoc nsz arcp contract afn ogt float %i.wd, %i.wj
  %i.xl = select reassoc nsz arcp contract afn i1 %i.xk, float %i.wd, float %i.wj ; 4 uses
  %i.xm = fcmp reassoc nsz arcp contract afn ogt float %i.wj, 5.000000e-03
  %i.xn = fcmp reassoc nsz arcp contract afn ogt float %i.xl, f0x3C23D70A
  %or.cond4.i.i.i = select i1 %i.xm, i1 %i.xn, i1 false
  br i1 %or.cond4.i.i.i, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.xo = fcmp reassoc nsz arcp contract afn olt float %i.wd, %i.wj
  %i.xp = select reassoc nsz arcp contract afn i1 %i.xo, float %i.wd, float %i.wj ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %.4.i.i.i, %i.xp
  %i.xr = fcmp reassoc nsz arcp contract afn ogt float %i.xl, %i.xq
  br i1 %i.xr, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.xs = fcmp reassoc nsz arcp contract afn oeq float %i.xl, %i.wd
  br i1 %i.xs, label %bb.bv, label %.thread201.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vl
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !12 ; 2 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vn
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !12 ; 2 uses
  %i.xx = fcmp reassoc nsz arcp contract afn ogt float %i.xu, %i.xw
  %.192.i.i.i = select reassoc nsz arcp contract afn i1 %i.xx, float %i.xu, float %i.xw ; 2 uses
  %i.xy = fcmp reassoc nsz arcp contract afn ogt float %.192.i.i.i, %i.wj
  %spec.select204.i.i.i = select reassoc nsz arcp contract afn i1 %i.xy, float %.192.i.i.i, float %i.wj
  %i.xz = fcmp reassoc nsz arcp contract afn ult float %spec.select204.i.i.i, f0x3F666666
  br i1 %i.xz, label %bb.bw, label %bb.bx

.thread201.i.i.i:                                 ; preds = %bb.bu
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !12 ; 2 uses
  %i.yc = fcmp reassoc nsz arcp contract afn ogt float %i.wd, %i.yb
  %.194.i.i.i = select reassoc nsz arcp contract afn i1 %i.yc, float %i.wd, float %i.yb ; 2 uses
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %6 ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !12 ; 2 uses
  %i.yf = fcmp reassoc nsz arcp contract afn ogt float %.194.i.i.i, %i.ye
  %i.yg = getelementptr i8, ptr %i.yd, i64 8
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !12 ; 2 uses
  %.194..i.i.i = select i1 %i.yf, float %.194.i.i.i, float %i.ye ; 2 uses
  %i.yi = fcmp reassoc nsz arcp contract afn ogt float %.194..i.i.i, %i.yh
  %spec.select206.i.i.i = select reassoc nsz arcp contract afn i1 %i.yi, float %.194..i.i.i, float %i.yh
  %i.yj = fcmp reassoc nsz arcp contract afn ult float %spec.select206.i.i.i, f0x3F666666
  br i1 %i.yj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.thread201.i.i.i, %bb.bv
  %i.yk = fdiv reassoc nsz arcp contract afn float %i.xl, %i.xp
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.thread201.i.i.i, %bb.bv, %bb.bt, %bb.bs, %bb.bl
  %.10.i.i.i = phi nsz float [ %.1156207.i.i.i, %bb.bl ], [ %.4.i.i.i, %bb.bs ], [ %.4.i.i.i, %bb.bv ], [ %.4.i.i.i, %.thread201.i.i.i ], [ %i.yk, %bb.bw ], [ %.4.i.i.i, %bb.bt ] ; 2 uses
  %indvars.iv.next.i166.i.i = add nuw nsw i64 %indvars.iv.i165.i.i, 2 ; 2 uses
  %i.yl = icmp slt i64 %indvars.iv.next.i166.i.i, %i.vq
  br i1 %i.yl, label %bb.bl, label %._crit_edge.i.i.i

_calcRadiusBayer.exit.i.i:                        ; preds = %._crit_edge213.loopexit.i.i.i, %bb.bj
  %.0155.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.bj ], [ %i.vs, %._crit_edge213.loopexit.i.i.i ]
  %i.ym = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0155.lcssa.i.i.i
  %i.yn = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ym)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  br label %bb.fg

.preheader._crit_edge.i.i.i:                      ; preds = %.preheader.i.preheader.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 481
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !tbaa !133
  br label %bb.ca

bb.by:                                            ; preds = %.preheader.i.preheader.i.i
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 485
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !133 ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !133 ; 2 uses
  %.not317.i.i.i = icmp eq i8 %i.yp, %i.yr
  br i1 %.not317.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ys = load i8, ptr %i.ry, align 2, !tbaa !133
  %.not318.i.i.i = icmp eq i8 %i.ys, 1
  %.not319.i.i.i = icmp eq i8 %i.yp, 1
  %or.cond345.i.i.i = or i1 %.not319.i.i.i, %.not318.i.i.i
  br i1 %or.cond345.i.i.i, label %bb.ca, label %.critedge.i.i.i

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.preheader._crit_edge.i.i.i
  %i.yt = phi i8 [ %.pre.i.i.i, %.preheader._crit_edge.i.i.i ], [ %i.yr, %bb.bz ], [ %i.yp, %bb.by ] ; 3 uses
  %i.yu = icmp eq i8 %i.yt, 1                     ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 482
  %i.yw = load i8, ptr %i.yv, align 2, !tbaa !133 ; 4 uses
  br i1 %i.yu, label %bb.cb, label %._crit_edge.i167.i.i

bb.cb:                                            ; preds = %bb.ca
  %.not317.1.i.i.i = icmp eq i8 %i.rz, %i.yw
  br i1 %.not317.1.i.i.i, label %._crit_edge.i167.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 511
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !133
  %.not318.1.i.i.i = icmp eq i8 %i.yy, 1
  %or.cond345.1.i.i.i = or i1 %i.sa, %.not318.1.i.i.i
  br i1 %or.cond345.1.i.i.i, label %._crit_edge.i167.i.i, label %.critedge.i.i.i

._crit_edge.i167.i.i:                             ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.yz = phi i8 [ %i.rz, %bb.cb ], [ %i.yw, %bb.cc ], [ %i.yw, %bb.ca ] ; 3 uses
  %i.za = icmp eq i8 %i.yz, 1                     ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 483
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !133 ; 4 uses
  br i1 %i.za, label %bb.cd, label %._crit_edge372.i.i.i

bb.cd:                                            ; preds = %._crit_edge.i167.i.i
  %.not317.2.i.i.i = icmp eq i8 %i.yt, %i.zc
  br i1 %.not317.2.i.i.i, label %._crit_edge372.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.ze = load i8, ptr %i.zd, align 16, !tbaa !133
  %.not318.2.i.i.i = icmp eq i8 %i.ze, 1
  %or.cond345.2.i.i.i = or i1 %i.yu, %.not318.2.i.i.i
  br i1 %or.cond345.2.i.i.i, label %._crit_edge372.i.i.i, label %.critedge.i.i.i

._crit_edge372.i.i.i:                             ; preds = %bb.ce, %bb.cd, %._crit_edge.i167.i.i
  %i.zf = phi i8 [ %i.yt, %bb.cd ], [ %i.zc, %bb.ce ], [ %i.zc, %._crit_edge.i167.i.i ] ; 3 uses
  %i.zg = icmp eq i8 %i.zf, 1                     ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.zi = load i8, ptr %i.zh, align 4, !tbaa !133 ; 4 uses
  br i1 %i.zg, label %bb.cf, label %._crit_edge375.i.i.i

bb.cf:                                            ; preds = %._crit_edge372.i.i.i
  %.not317.3.i.i.i = icmp eq i8 %i.yz, %i.zi
  br i1 %.not317.3.i.i.i, label %._crit_edge375.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 513
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !133
  %.not318.3.i.i.i = icmp eq i8 %i.zk, 1
  %or.cond345.3.i.i.i = or i1 %i.za, %.not318.3.i.i.i
  br i1 %or.cond345.3.i.i.i, label %._crit_edge375.i.i.i, label %.critedge.i.i.i

._crit_edge375.i.i.i:                             ; preds = %bb.cg, %bb.cf, %._crit_edge372.i.i.i
  %i.zl = phi i8 [ %i.yz, %bb.cf ], [ %i.zi, %bb.cg ], [ %i.zi, %._crit_edge372.i.i.i ] ; 2 uses
  %i.zm = icmp eq i8 %i.zl, 1                     ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 485
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !133 ; 4 uses
  br i1 %i.zm, label %bb.ch, label %._crit_edge378.i.i.i

bb.ch:                                            ; preds = %._crit_edge375.i.i.i
  %.not317.4.i.i.i = icmp eq i8 %i.zf, %i.zo
  br i1 %.not317.4.i.i.i, label %._crit_edge378.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 514
  %i.zq = load i8, ptr %i.zp, align 2, !tbaa !133
  %.not318.4.i.i.i = icmp eq i8 %i.zq, 1
  %or.cond345.4.i.i.i = or i1 %i.zg, %.not318.4.i.i.i
  br i1 %or.cond345.4.i.i.i, label %._crit_edge378.i.i.i, label %.critedge.i.i.i

._crit_edge378.i.i.i:                             ; preds = %bb.ci, %bb.ch, %._crit_edge375.i.i.i
  %i.zr = phi i8 [ %i.zf, %bb.ch ], [ %i.zo, %bb.ci ], [ %i.zo, %._crit_edge375.i.i.i ]
  %i.zs = icmp ne i8 %i.zr, 1
  %.not317.5.i.i.i = icmp eq i8 %i.zl, %i.rz
  %or.cond.i168.i.i = or i1 %.not317.5.i.i.i, %i.zs
  br i1 %or.cond.i168.i.i, label %.critedge2.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge378.i.i.i
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 515
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !133
  %.not318.5.i.i.i = icmp eq i8 %i.zu, 1
  %or.cond345.5.i.i.i = or i1 %i.zm, %.not318.5.i.i.i
  br i1 %or.cond345.5.i.i.i, label %.critedge2.i.i.i, label %.critedge.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.cj, %._crit_edge378.i.i.i
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 486
  %i.zw = load i8, ptr %i.zv, align 2, !tbaa !133 ; 4 uses
  %i.zx = icmp eq i8 %i.zw, 1                     ; 3 uses
  br i1 %i.zx, label %bb.ck, label %.preheader._crit_edge.i.1.i.i

.preheader._crit_edge.i.1.i.i:                    ; preds = %.critedge2.i.i.i
  %.phi.trans.insert.i.1.i.i = getelementptr inbounds nuw i8, ptr %1, i64 487
  %.pre.i.1.i.i = load i8, ptr %.phi.trans.insert.i.1.i.i, align 1, !tbaa !133
  br label %bb.cm

bb.ck:                                            ; preds = %.critedge2.i.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 491
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !133 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 487
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !133 ; 2 uses
  %.not317.i.1.i.i = icmp eq i8 %i.zz, %i.aab
  br i1 %.not317.i.1.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.not319.i.1.i.i = icmp eq i8 %i.zz, 1
  %or.cond345.i.1.i.i = or i1 %i.sa, %.not319.i.1.i.i
  br i1 %or.cond345.i.1.i.i, label %bb.cm, label %.critedge.i.i.i

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.preheader._crit_edge.i.1.i.i
  %i.aac = phi i8 [ %.pre.i.1.i.i, %.preheader._crit_edge.i.1.i.i ], [ %i.aab, %bb.cl ], [ %i.zz, %bb.ck ] ; 3 uses
  %i.aad = icmp eq i8 %i.aac, 1                   ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.aaf = load i8, ptr %i.aae, align 8, !tbaa !133 ; 4 uses
  br i1 %i.aad, label %bb.cn, label %._crit_edge.i167.1.i.i

bb.cn:                                            ; preds = %bb.cm
  %.not317.1.i.1.i.i = icmp eq i8 %i.zw, %i.aaf
  br i1 %.not317.1.i.1.i.i, label %._crit_edge.i167.1.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %or.cond345.1.i.1.i.i = or i1 %i.yu, %i.zx
  br i1 %or.cond345.1.i.1.i.i, label %._crit_edge.i167.1.i.i, label %.critedge.i.i.i

._crit_edge.i167.1.i.i:                           ; preds = %bb.co, %bb.cn, %bb.cm
  %i.aag = phi i8 [ %i.zw, %bb.cn ], [ %i.aaf, %bb.co ], [ %i.aaf, %bb.cm ] ; 3 uses
  %i.aah = icmp eq i8 %i.aag, 1                   ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 489
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !133 ; 4 uses
  br i1 %i.aah, label %bb.cp, label %._crit_edge372.i.1.i.i

bb.cp:                                            ; preds = %._crit_edge.i167.1.i.i
  %.not317.2.i.1.i.i = icmp eq i8 %i.aac, %i.aaj
  br i1 %.not317.2.i.1.i.i, label %._crit_edge372.i.1.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not318.2.i.1.i.i = icmp eq i8 %i.yw, 1
  %or.cond345.2.i.1.i.i = or i1 %.not318.2.i.1.i.i, %i.aad
  br i1 %or.cond345.2.i.1.i.i, label %._crit_edge372.i.1.i.i, label %.critedge.i.i.i

._crit_edge372.i.1.i.i:                           ; preds = %bb.cq, %bb.cp, %._crit_edge.i167.1.i.i
  %i.aak = phi i8 [ %i.aac, %bb.cp ], [ %i.aaj, %bb.cq ], [ %i.aaj, %._crit_edge.i167.1.i.i ] ; 2 uses
  %i.aal = icmp eq i8 %i.aak, 1                   ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 490
  %i.aan = load i8, ptr %i.aam, align 2, !tbaa !133 ; 4 uses
  br i1 %i.aal, label %bb.cr, label %._crit_edge375.i.1.i.i

bb.cr:                                            ; preds = %._crit_edge372.i.1.i.i
  %.not317.3.i.1.i.i = icmp eq i8 %i.aag, %i.aan
  br i1 %.not317.3.i.1.i.i, label %._crit_edge375.i.1.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
end_hunk_0
begin_hunk_1_@demosaic_ppg:bb.a
  store float %i.ee, ptr %i.ec, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !12
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, 1.000000e+00
  store float %i.eh, ptr %i.ef, align 4, !tbaa !12
  br label %.split405.us.2

.split405.us.2:                                   ; preds = %.split.2.2, %bb.h, %.split405.us.1
  %i.ei = sext i32 %.1323 to i64                  ; 2 uses
  %i.ej = and i32 %.1323, 1
  %.tr.i = or disjoint i32 %i.ej, %i.u
  %i.ek = shl nuw nsw i32 %.tr.i, 1
  %i.el = lshr i32 %4, %i.ek
  %i.em = and i32 %i.el, 3                        ; 3 uses
  %i.en = add nsw i64 %i.v, %i.ei
  %.idx351 = shl i64 %i.en, 4                     ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %.idx351
  %i.ep = add nsw i64 %i.w, %i.ei                 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ep ; 3 uses
  %.idx350 = shl i64 %i.ep, 4                     ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.idx350
  %.not349 = icmp eq i32 %i.em, 0
  br i1 %.not349, label %bb.n, label %bb.l

bb.i:                                             ; preds = %.split.preheader
  %i.es = and i32 %i.ao, 1
  %.tr.i365 = or disjoint i32 %i.es, %i.z
  %i.et = shl nuw nsw i32 %.tr.i365, 1
  %i.eu = lshr i32 %4, %i.et
  %i.ev = and i32 %i.eu, 3
  %i.ew = getelementptr [4 x i8], ptr %i.ab, i64 %i.ap
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ey ; 3 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !12
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ex
  store float %i.fb, ptr %i.ez, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, 1.000000e+00
  store float %i.fe, ptr %i.fc, align 4, !tbaa !12
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.i
  %indvars.iv.next = add nsw i64 %i.ap, 1         ; 3 uses
  %i.ff = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.fg = or i32 %i.ff, %i.x
  %or.cond3.1 = icmp sgt i32 %i.fg, -1
  %i.fh = icmp slt i64 %indvars.iv.next, %i.g
  %or.cond354.1 = and i1 %i.fh, %or.cond3.1
  br i1 %or.cond354.1, label %bb.j, label %.split.2

bb.j:                                             ; preds = %.split.1
  %i.fi = and i32 %i.ff, 1
  %.tr.i365.1 = or disjoint i32 %i.fi, %i.z
  %i.fj = shl nuw nsw i32 %.tr.i365.1, 1
  %i.fk = lshr i32 %4, %i.fj
  %i.fl = and i32 %i.fk, 3
  %i.fm = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = zext nneg i32 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fo ; 3 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !12
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.fn
  store float %i.fr, ptr %i.fp, align 4, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, 1.000000e+00
  store float %i.fu, ptr %i.fs, align 4, !tbaa !12
  br label %.split.2

.split.2:                                         ; preds = %bb.j, %.split.1
  %indvars.iv.next.1 = add nsw i64 %i.ap, 2       ; 3 uses
  %i.fv = trunc nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  %i.fw = or i32 %i.fv, %i.x
  %or.cond3.2 = icmp sgt i32 %i.fw, -1
  %i.fx = icmp slt i64 %indvars.iv.next.1, %i.g
  %or.cond354.2 = and i1 %i.fx, %or.cond3.2
  br i1 %or.cond354.2, label %bb.k, label %.split.preheader.1

bb.k:                                             ; preds = %.split.2
  %i.fy = and i32 %i.fv, 1
  %.tr.i365.2 = or disjoint i32 %i.fy, %i.z
  %i.fz = shl nuw nsw i32 %.tr.i365.2, 1
  %i.ga = lshr i32 %4, %i.fz
  %i.gb = and i32 %i.ga, 3
  %i.gc = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !12
  %i.ge = zext nneg i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ge ; 3 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !12
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %i.gd
  store float %i.gh, ptr %i.gf, align 4, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !12
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, 1.000000e+00
  store float %i.gk, ptr %i.gi, align 4, !tbaa !12
  br label %.split.preheader.1

bb.l:                                             ; preds = %.split405.us.2
  %i.gl = load float, ptr %i.l, align 16, !tbaa !12 ; 2 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gn = load float, ptr %i.b, align 16, !tbaa !12
  %i.go = fdiv reassoc nsz arcp contract afn float %i.gn, %i.gl
  %i.gp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.go, float 0.000000e+00)
  store float %i.gp, ptr %i.eo, align 4, !tbaa !12
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %.split405.us.2
  %i.gq = load float, ptr %i.eq, align 4, !tbaa !12
  %i.gr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gq, float 0.000000e+00)
  store float %i.gr, ptr %i.er, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.not349.1 = icmp eq i32 %i.em, 1
  br i1 %.not349.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gs = load float, ptr %i.m, align 4, !tbaa !12 ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn ogt float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gu = load float, ptr %i.n, align 4, !tbaa !12
  %i.gv = fdiv reassoc nsz arcp contract afn float %i.gu, %i.gs
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.gw = load float, ptr %i.eq, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink557 = phi float [ %i.gw, %bb.r ], [ %i.gv, %bb.q ]
  %i.gx = phi i64 [ %.idx350, %bb.r ], [ %.idx351, %bb.q ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %i.gx
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink557, float 0.000000e+00)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.gz, ptr %i.ha, align 4, !tbaa !12
  %.not349.2 = icmp eq i32 %i.em, 2
  br i1 %.not349.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hb = load float, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hd = load float, ptr %i.p, align 8, !tbaa !12
  %i.he = fdiv reassoc nsz arcp contract afn float %i.hd, %i.hb
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.hf = load float, ptr %i.eq, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink560 = phi float [ %i.hf, %bb.v ], [ %i.he, %bb.u ]
  %i.hg = phi i64 [ %.idx350, %bb.v ], [ %.idx351, %bb.u ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 %i.hg
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink560, float 0.000000e+00)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %i.hi, ptr %i.hj, align 4, !tbaa !12
  %i.hk = add nsw i32 %.1323, 1                   ; 2 uses
  %i.hl = icmp slt i32 %i.hk, %2
  br i1 %i.hl, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %.._crit_edge_crit_edge
  %indvars.iv.next453.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ae, %bb.w ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next453.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge411.split, label %.preheader402

bb.x:                                             ; preds = %._crit_edge411.split
  %i.hm = sext i32 %3 to i64
  %i.hn = sext i32 %2 to i64                      ; 7 uses
  %i.ho = mul nsw i64 %i.hm, %i.hn                ; 2 uses
  %i.hp = shl i64 %i.ho, 2
  %i.hq = tail call ptr @dt_alloc_aligned(i64 noundef %i.hp) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hq, i64 64) ]
  tail call void @dt_iop_image_copy(ptr noundef %i.hq, ptr noundef %1, i64 noundef %i.ho) #27
  %i.hr = icmp sgt i32 %3, 6
  %i.hs = add nsw i32 %2, -3                      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  br i1 %i.hr, label %.preheader86.preheader.i.i, label %.preheader

.preheader86.preheader.i.i:                       ; preds = %bb.x
  %i.hu = add nsw i32 %3, -3
  %wide.trip.count.i.i = zext nneg i32 %i.hu to i64
  %.idx.i.i = mul nsw i64 %i.hn, -8
  %i.hv = xor i64 %i.hn, -1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 8 uses
  %i.hx = sub nsw i64 1, %i.hn
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 8 uses
  %.idx231.i.i = shl nsw i64 %i.hn, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 9 uses
  %i.ie = insertelement <8 x float> poison, float %5, i64 0
  %i.if = shufflevector <8 x float> %i.ie, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %._crit_edge103.i.i, %.preheader86.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 3, %.preheader86.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge103.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ig = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ih = shl i32 %i.ig, 2
  %i.ii = and i32 %i.ih, 28
  %i.ij = shl nuw nsw i32 4, %i.ii
  %i.ik = and i32 %i.ij, %4
  %.not.i.i = icmp eq i32 %i.ik, 0
  %.077.i.i = select i1 %.not.i.i, i32 4, i32 3   ; 3 uses
  %i.il = icmp slt i32 %.077.i.i, %i.hs
  br i1 %i.il, label %.preheader85.preheader.i.i, label %._crit_edge103.i.i

.preheader85.preheader.i.i:                       ; preds = %.preheader86.i.i
  %i.im = mul nsw i64 %indvars.iv.i.i, %i.hn      ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.im
  %i.io = zext nneg i32 %.077.i.i to i64          ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.im
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.io
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cm, %.preheader85.preheader.i.i
  %.075102.i.i = phi ptr [ %i.ja, %bb.cm ], [ %i.ip, %.preheader85.preheader.i.i ] ; 8 uses
  %.076101.i.i = phi ptr [ %i.nx, %bb.cm ], [ %i.ir, %.preheader85.preheader.i.i ] ; 2 uses
  %.178100.i.i = phi i32 [ %i.ny, %bb.cm ], [ %.077.i.i, %.preheader85.preheader.i.i ]
  %i.is = getelementptr inbounds i8, ptr %.075102.i.i, i64 %.idx.i.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = getelementptr inbounds [4 x i8], ptr %.075102.i.i, i64 %i.hv
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !12
  %i.iw = getelementptr inbounds [4 x i8], ptr %.075102.i.i, i64 %i.hx
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !12
  %i.iy = getelementptr inbounds i8, ptr %.075102.i.i, i64 -8
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.075102.i.i, i64 8 ; 2 uses
  %i.jb = getelementptr [4 x i8], ptr %.075102.i.i, i64 %i.hn
  %i.jc = getelementptr i8, ptr %i.jb, <2 x i64> <i64 -4, i64 4>
  %i.jd = insertelement <4 x ptr> poison, ptr %.075102.i.i, i64 0
  %i.je = insertelement <4 x ptr> %i.jd, ptr %i.ja, i64 1
  %i.jf = shufflevector <2 x ptr> %i.jc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jg = shufflevector <4 x ptr> %i.je, <4 x ptr> %i.jf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jh = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.jg, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !12 ; 3 uses
  %i.ji = insertelement <8 x float> poison, float %i.it, i64 0
  %i.jj = insertelement <8 x float> %i.ji, float %i.iv, i64 1
  %i.jk = insertelement <8 x float> %i.jj, float %i.ix, i64 2
  %i.jl = insertelement <8 x float> %i.jk, float %i.iz, i64 3
  %i.jm = shufflevector <4 x float> %i.jh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jn = shufflevector <8 x float> %i.jl, <8 x float> %i.jm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 3 uses
  %i.jo = shufflevector <4 x float> %i.jh, <4 x float> poison, <8 x i32> zeroinitializer
  %i.jp = fsub reassoc nsz arcp contract afn <8 x float> %i.jn, %i.jo
  %i.jq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jp)
  %i.jr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jq, %i.if ; 9 uses
  %i.js = extractelement <8 x i1> %i.jr, i64 0    ; 2 uses
  %spec.select263.i.i = zext i1 %i.js to i32
  %i.jt = select i1 %i.js, i32 2, i32 1
  %i.ju = extractelement <8 x i1> %i.jr, i64 1
  %.274.1.i.i = select i1 %i.ju, i32 %i.jt, i32 %spec.select263.i.i
  %i.jv = extractelement <8 x i1> %i.jr, i64 2
  %i.jw = zext i1 %i.jv to i32
  %i.jx = extractelement <8 x i1> %i.jr, i64 3
  %i.jy = zext i1 %i.jx to i32
  %i.jz = extractelement <8 x i1> %i.jr, i64 4
  %i.ka = zext i1 %i.jz to i32
  %i.kb = extractelement <8 x i1> %i.jr, i64 5
  %i.kc = zext i1 %i.kb to i32
  %i.kd = extractelement <8 x i1> %i.jr, i64 6
  %i.ke = zext i1 %i.kd to i32
  %i.kf = fadd reassoc nsz arcp contract afn <8 x float> %i.jn, splat (float 6.400000e+01)
  %i.kg = select <8 x i1> %i.jr, <8 x float> %i.jn, <8 x float> %i.kf ; 9 uses
  %i.kh = extractelement <8 x i1> %i.jr, i64 7
  %i.ki = zext i1 %i.kh to i32
  store <8 x float> %i.kg, ptr %i.a, align 16, !tbaa !12
  %i.kj = getelementptr inbounds i8, ptr %.075102.i.i, i64 %.idx231.i.i
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !12 ; 3 uses
  %i.kl = extractelement <4 x float> %i.jh, i64 0
  %i.km = fsub reassoc nsz arcp contract afn float %i.kk, %i.kl
  %i.kn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.km)
  %i.ko = fcmp reassoc nsz arcp contract afn olt float %i.kn, %5 ; 2 uses
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kk, 6.400000e+01
  %.sink129.i.i = select i1 %i.ko, float %i.kk, float %i.kp ; 4 uses
  %i.kq = zext i1 %i.ko to i32
  %.274.1.1.i.i = add nuw nsw i32 %.274.1.i.i, %i.ka
  %.274.2.i.i = add nuw nsw i32 %.274.1.1.i.i, %i.jw
  %.274.2.1.i.i = add nuw nsw i32 %.274.2.i.i, %i.jy
  %.274.2.2.i.i = add nuw nsw i32 %.274.2.1.i.i, %i.kc
  %.274.3.i.i = add nuw nsw i32 %.274.2.2.i.i, %i.ke
  %.274.3.1.i.i = add nuw nsw i32 %.274.3.i.i, %i.ki
  %.274.4.i.i = add nuw nsw i32 %.274.3.1.i.i, %i.kq ; 2 uses
  store float %.sink129.i.i, ptr %i.id, align 16, !tbaa !12
  %i.kr = extractelement <8 x float> %i.kg, i64 0 ; 4 uses
  %i.ks = extractelement <8 x float> %i.kg, i64 1 ; 4 uses
  %i.kt = fcmp reassoc nsz arcp contract afn ogt float %i.kr, %i.ks
  br i1 %i.kt, label %bb.bv, label %bb.bw

.lr.ph98.1.i.i:                                   ; preds = %bb.cj, %bb.ci
  %.sink129256.i.i = phi float [ %i.np, %bb.cj ], [ %.sink129.i.i, %bb.ci ] ; 3 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ogt float %.sink232.i.i, %.sink123233.i.i
  br i1 %i.ku, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph98.1.i.i
  store float %.sink232.i.i, ptr %i.hy, align 8, !tbaa !12
  store float %.sink123233.i.i, ptr %i.hw, align 4, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph98.1.i.i
  %.sink123234.i.i = phi float [ %.sink232.i.i, %bb.y ], [ %.sink123233.i.i, %.lr.ph98.1.i.i ] ; 4 uses
  %i.kv = phi float [ %.sink123233.i.i, %bb.y ], [ %.sink232.i.i, %.lr.ph98.1.i.i ] ; 4 uses
  %i.kw = fcmp reassoc nsz arcp contract afn ogt float %i.kv, %.sink124235.i.i
  br i1 %i.kw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store float %i.kv, ptr %i.hz, align 4, !tbaa !12
  store float %.sink124235.i.i, ptr %i.hw, align 4, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink124236.i.i = phi float [ %i.kv, %bb.aa ], [ %.sink124235.i.i, %bb.z ] ; 4 uses
  %i.kx = phi float [ %.sink124235.i.i, %bb.aa ], [ %i.kv, %bb.z ] ; 4 uses
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kx, %i.nf
  br i1 %i.ky, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store float %i.kx, ptr %i.ht, align 16, !tbaa !12
  store float %i.nf, ptr %i.hw, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.kz = phi float [ %i.kx, %bb.ac ], [ %i.nf, %bb.ab ] ; 4 uses
  %i.la = phi float [ %i.nf, %bb.ac ], [ %i.kx, %bb.ab ] ; 4 uses
  %i.lb = fcmp reassoc nsz arcp contract afn ogt float %i.la, %.sink126238.i.i
  br i1 %i.lb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store float %i.la, ptr %i.ia, align 4, !tbaa !12
  store float %.sink126238.i.i, ptr %i.hw, align 4, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink126239.i.i = phi float [ %i.la, %bb.ae ], [ %.sink126238.i.i, %bb.ad ] ; 4 uses
  %i.lc = phi float [ %.sink126238.i.i, %bb.ae ], [ %i.la, %bb.ad ] ; 4 uses
  %i.ld = fcmp reassoc nsz arcp contract afn ogt float %i.lc, %.sink127243.i.i
  br i1 %i.ld, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store float %i.lc, ptr %i.ib, align 8, !tbaa !12
  store float %.sink127243.i.i, ptr %i.hw, align 4, !tbaa !12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink127244.i.i = phi float [ %i.lc, %bb.ag ], [ %.sink127243.i.i, %bb.af ] ; 4 uses
  %i.le = phi float [ %.sink127243.i.i, %bb.ag ], [ %i.lc, %bb.af ] ; 4 uses
  %i.lf = fcmp reassoc nsz arcp contract afn ogt float %i.le, %.sink128249.i.i
  br i1 %i.lf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float %i.le, ptr %i.ic, align 4, !tbaa !12
  store float %.sink128249.i.i, ptr %i.hw, align 4, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink128250.i.i = phi float [ %i.le, %bb.ai ], [ %.sink128249.i.i, %bb.ah ] ; 4 uses
  %i.lg = phi float [ %.sink128249.i.i, %bb.ai ], [ %i.le, %bb.ah ] ; 3 uses
  %i.lh = fcmp reassoc nsz arcp contract afn ogt float %i.lg, %.sink129256.i.i
  br i1 %i.lh, label %bb.ak, label %.lr.ph98.2.i.i

bb.ak:                                            ; preds = %bb.aj
  store float %i.lg, ptr %i.id, align 16, !tbaa !12
  store float %.sink129256.i.i, ptr %i.hw, align 4, !tbaa !12
  br label %.lr.ph98.2.i.i

.lr.ph98.2.i.i:                                   ; preds = %bb.ak, %bb.aj
  %.sink129257.i.i = phi float [ %i.lg, %bb.ak ], [ %.sink129256.i.i, %bb.aj ] ; 3 uses
  %i.li = fcmp reassoc nsz arcp contract afn ogt float %.sink123234.i.i, %.sink124236.i.i
  br i1 %i.li, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph98.2.i.i
  store float %.sink123234.i.i, ptr %i.hz, align 4, !tbaa !12
  store float %.sink124236.i.i, ptr %i.hy, align 8, !tbaa !12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph98.2.i.i
  %.sink124237.i.i = phi float [ %.sink123234.i.i, %bb.al ], [ %.sink124236.i.i, %.lr.ph98.2.i.i ] ; 4 uses
  %i.lj = phi float [ %.sink124236.i.i, %bb.al ], [ %.sink123234.i.i, %.lr.ph98.2.i.i ] ; 4 uses
  %i.lk = fcmp reassoc nsz arcp contract afn ogt float %i.lj, %i.kz
  br i1 %i.lk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store float %i.lj, ptr %i.ht, align 16, !tbaa !12
  store float %i.kz, ptr %i.hy, align 8, !tbaa !12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ll = phi float [ %i.lj, %bb.an ], [ %i.kz, %bb.am ] ; 4 uses
  %i.lm = phi float [ %i.kz, %bb.an ], [ %i.lj, %bb.am ] ; 4 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ogt float %i.lm, %.sink126239.i.i
  br i1 %i.ln, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store float %i.lm, ptr %i.ia, align 4, !tbaa !12
  store float %.sink126239.i.i, ptr %i.hy, align 8, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink126240.i.i = phi float [ %i.lm, %bb.ap ], [ %.sink126239.i.i, %bb.ao ] ; 4 uses
  %i.lo = phi float [ %.sink126239.i.i, %bb.ap ], [ %i.lm, %bb.ao ] ; 4 uses
  %i.lp = fcmp reassoc nsz arcp contract afn ogt float %i.lo, %.sink127244.i.i
  br i1 %i.lp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store float %i.lo, ptr %i.ib, align 8, !tbaa !12
  store float %.sink127244.i.i, ptr %i.hy, align 8, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink127245.i.i = phi float [ %i.lo, %bb.ar ], [ %.sink127244.i.i, %bb.aq ] ; 4 uses
  %i.lq = phi float [ %.sink127244.i.i, %bb.ar ], [ %i.lo, %bb.aq ] ; 4 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt float %i.lq, %.sink128250.i.i
  br i1 %i.lr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store float %i.lq, ptr %i.ic, align 4, !tbaa !12
  store float %.sink128250.i.i, ptr %i.hy, align 8, !tbaa !12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink128251.i.i = phi float [ %i.lq, %bb.at ], [ %.sink128250.i.i, %bb.as ] ; 4 uses
  %i.ls = phi float [ %.sink128250.i.i, %bb.at ], [ %i.lq, %bb.as ] ; 3 uses
  %i.lt = fcmp reassoc nsz arcp contract afn ogt float %i.ls, %.sink129257.i.i
  br i1 %i.lt, label %bb.av, label %.lr.ph98.3.i.i

bb.av:                                            ; preds = %bb.au
  store float %i.ls, ptr %i.id, align 16, !tbaa !12
  store float %.sink129257.i.i, ptr %i.hy, align 8, !tbaa !12
  br label %.lr.ph98.3.i.i

.lr.ph98.3.i.i:                                   ; preds = %bb.av, %bb.au
  %.sink129258.i.i = phi float [ %i.ls, %bb.av ], [ %.sink129257.i.i, %bb.au ] ; 3 uses
  %i.lu = fcmp reassoc nsz arcp contract afn ogt float %.sink124237.i.i, %i.ll
  br i1 %i.lu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph98.3.i.i
  store float %.sink124237.i.i, ptr %i.ht, align 16, !tbaa !12
  store float %i.ll, ptr %i.hz, align 4, !tbaa !12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph98.3.i.i
  %i.lv = phi float [ %.sink124237.i.i, %bb.aw ], [ %i.ll, %.lr.ph98.3.i.i ] ; 4 uses
  %i.lw = phi float [ %i.ll, %bb.aw ], [ %.sink124237.i.i, %.lr.ph98.3.i.i ] ; 4 uses
  %i.lx = fcmp reassoc nsz arcp contract afn ogt float %i.lw, %.sink126240.i.i
  br i1 %i.lx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store float %i.lw, ptr %i.ia, align 4, !tbaa !12
  store float %.sink126240.i.i, ptr %i.hz, align 4, !tbaa !12
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink126241.i.i = phi float [ %i.lw, %bb.ay ], [ %.sink126240.i.i, %bb.ax ] ; 4 uses
  %i.ly = phi float [ %.sink126240.i.i, %bb.ay ], [ %i.lw, %bb.ax ] ; 4 uses
  %i.lz = fcmp reassoc nsz arcp contract afn ogt float %i.ly, %.sink127245.i.i
  br i1 %i.lz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store float %i.ly, ptr %i.ib, align 8, !tbaa !12
  store float %.sink127245.i.i, ptr %i.hz, align 4, !tbaa !12
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink127246.i.i = phi float [ %i.ly, %bb.ba ], [ %.sink127245.i.i, %bb.az ] ; 4 uses
  %i.ma = phi float [ %.sink127245.i.i, %bb.ba ], [ %i.ly, %bb.az ] ; 4 uses
  %i.mb = fcmp reassoc nsz arcp contract afn ogt float %i.ma, %.sink128251.i.i
  br i1 %i.mb, label %bb.bc, label %bb.bd

end_hunk_1
begin_hunk_2_@_vng_lininterpolate:bb.a
  %i.ks = or i64 %indvars.iv.next293.1, %indvars.iv296
  %or.cond3.us.2 = icmp sgt i64 %i.ks, -1
  %or.cond218.us.2 = and i1 %i.hp, %or.cond3.us.2
  br i1 %or.cond218.us.2, label %fcol.exit224.us.2, label %.split239.us.thread406

fcol.exit224.us.2:                                ; preds = %.split.split.us.2
  %i.kt = getelementptr inbounds i8, ptr %i.jr, i64 %i.hs
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !133
  %i.kv = getelementptr [4 x i8], ptr %i.ht, i64 %i.js
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !12
  %i.kx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kw, float 0.000000e+00)
  %i.ky = zext i8 %i.ku to i64                    ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !12
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kx
  store float %i.lb, ptr %i.kz, align 4, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ky ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !133
  %i.le = add i8 %i.ld, 1
  store i8 %i.le, ptr %i.lc, align 1, !tbaa !133
  br label %.split239.us.thread406

.split239.us:                                     ; preds = %.backedge
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next297, %indvars.iv306
  br i1 %exitcond, label %bb.w, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.split239.us, %.split239.us.thread, %.split239.us.thread406
  %indvars.iv296.be = phi i64 [ %indvars.iv.next297, %.split239.us ], [ %indvars.iv.next297404, %.split239.us.thread ], [ %indvars.iv.next297407, %.split239.us.thread406 ]
  br label %.backedge

.split239.us.thread406:                           ; preds = %.split.split.us.2, %fcol.exit224.us.2
  %indvars.iv.next297407 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond408 = icmp eq i64 %indvars.iv.next297407, %indvars.iv306
  br i1 %exitcond408, label %.thread409, label %.backedge.backedge

.split239.us.thread:                              ; preds = %.split.split.2, %fcol.exit224.2
  %indvars.iv.next297404 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond405 = icmp eq i64 %indvars.iv.next297404, %indvars.iv306
  br i1 %exitcond405, label %.thread, label %.backedge.backedge

fcol.exit224:                                     ; preds = %.split.split.preheader
  %.tr.i.i222 = or disjoint i32 %i.gx, %i.jm
  %i.lf = shl nuw nsw i32 %.tr.i.i222, 1
  %i.lg = lshr i32 %4, %i.lf
  %i.lh = and i32 %i.lg, 3
  %gep414 = getelementptr [4 x i8], ptr %invariant.gep413, i64 %i.js
  %i.li = load float, ptr %gep414, align 4, !tbaa !12
  %i.lj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.li, float 0.000000e+00)
  %i.lk = zext nneg i32 %i.lh to i64              ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lk ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !12
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lm, %i.lj
  store float %i.ln, ptr %i.ll, align 4, !tbaa !12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lk ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !133
  %i.lq = add i8 %i.lp, 1
  store i8 %i.lq, ptr %i.lo, align 1, !tbaa !133
  br label %.split.split.1

.split.split.1:                                   ; preds = %.split.split.preheader, %fcol.exit224
  %i.lr = or i32 %i.gy, %i.jk
  %or.cond3.1 = icmp sgt i32 %i.lr, -1
  %or.cond218.1 = and i1 %i.gz, %or.cond3.1
  br i1 %or.cond218.1, label %fcol.exit224.1, label %.split.split.2

fcol.exit224.1:                                   ; preds = %.split.split.1
  %.tr.i.i222.1 = or disjoint i32 %i.ha, %i.jm
  %i.ls = shl nuw nsw i32 %.tr.i.i222.1, 1
  %i.lt = lshr i32 %4, %i.ls
  %i.lu = and i32 %i.lt, 3
  %i.lv = getelementptr [4 x i8], ptr %i.hb, i64 %i.js
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !12
  %i.lx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lw, float 0.000000e+00)
  %i.ly = zext nneg i32 %i.lu to i64              ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ly ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !12
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ma, %i.lx
  store float %i.mb, ptr %i.lz, align 4, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ly ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !133
  %i.me = add i8 %i.md, 1
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !133
  br label %.split.split.2

.split.split.2:                                   ; preds = %fcol.exit224.1, %.split.split.1
  %i.mf = or i32 %i.hc, %i.jk
  %or.cond3.2 = icmp sgt i32 %i.mf, -1
  %or.cond218.2 = and i1 %i.hd, %or.cond3.2
  br i1 %or.cond218.2, label %fcol.exit224.2, label %.split239.us.thread

fcol.exit224.2:                                   ; preds = %.split.split.2
  %.tr.i.i222.2 = or disjoint i32 %i.he, %i.jm
  %i.mg = shl nuw nsw i32 %.tr.i.i222.2, 1
  %i.mh = lshr i32 %4, %i.mg
  %i.mi = and i32 %i.mh, 3
  %i.mj = getelementptr [4 x i8], ptr %i.hf, i64 %i.js
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !12
  %i.ml = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mk, float 0.000000e+00)
  %i.mm = zext nneg i32 %i.mi to i64              ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mm ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !12
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, %i.ml
  store float %i.mp, ptr %i.mn, align 4, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mm ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !133
  %i.ms = add i8 %i.mr, 1
  store i8 %i.ms, ptr %i.mq, align 1, !tbaa !133
  br label %.split239.us.thread

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ag, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.mt = add nsw i32 %.1198, 1                   ; 2 uses
  %i.mu = icmp slt i32 %i.mt, %2
  br i1 %i.mu, label %bb.v, label %._crit_edge

scalar.ph:                                        ; preds = %bb.ag, %scalar.ph.preheader.new
  %indvars.iv301 = phi i64 [ %indvars.iv301.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next302.1, %bb.ag ] ; 6 uses
  %.not214 = icmp eq i64 %indvars.iv301, %i.ij
  br i1 %.not214, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %scalar.ph
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv301
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !133 ; 2 uses
  %.not215 = icmp eq i8 %i.mw, 0
  br i1 %.not215, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  %i.my = load float, ptr %i.mx, align 4, !tbaa !12
  %i.mz = uitofp i8 %i.mw to float
  %i.na = fdiv reassoc nsz arcp contract afn float %i.my, %i.mz
  br label %scalar.ph.1

bb.ac:                                            ; preds = %bb.aa, %scalar.ph
  %i.nb = load float, ptr %i.ih, align 4, !tbaa !12
  %i.nc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nb, float 0.000000e+00)
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ab, %bb.ac
  %.sink = phi float [ %i.na, %bb.ab ], [ %i.nc, %bb.ac ]
  %gep418 = getelementptr [4 x i8], ptr %invariant.gep417.sink, i64 %indvars.iv301
  store float %.sink, ptr %gep418, align 4, !tbaa !12
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 4 uses
  %.not214.1 = icmp eq i64 %indvars.iv.next302, %i.ij
  br i1 %.not214.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next302
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !133 ; 2 uses
  %.not215.1 = icmp eq i8 %i.ne, 0
  br i1 %.not215.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next302
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !12
  %i.nh = uitofp i8 %i.ne to float
  %i.ni = fdiv reassoc nsz arcp contract afn float %i.ng, %i.nh
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %scalar.ph.1
  %i.nj = load float, ptr %i.ih, align 4, !tbaa !12
  %i.nk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nj, float 0.000000e+00)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.1 = phi float [ %i.ni, %bb.ae ], [ %i.nk, %bb.af ]
  %gep418.1 = getelementptr [4 x i8], ptr %invariant.gep417.sink.1, i64 %indvars.iv.next302
  store float %.sink.1, ptr %gep418.1, align 4, !tbaa !12
  %indvars.iv.next302.1 = add nuw nsw i64 %indvars.iv301, 2 ; 2 uses
  %exitcond305.not.1 = icmp eq i64 %indvars.iv.next302.1, %wide.trip.count304
  br i1 %exitcond305.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !722

.preheader235:                                    ; preds = %.preheader235.preheader, %.split264
  %indvars.iv327 = phi i64 [ %i.nr, %.split264 ], [ 0, %.preheader235.preheader ] ; 4 uses
  %i.nl = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %indvars.iv327
  %indvars.iv327.tr = trunc nuw nsw i64 %indvars.iv327 to i32
  %i.nm = shl nuw nsw i32 %indvars.iv327.tr, 1
  %i.nn = and i32 %i.nm, 14                       ; 3 uses
  %indvars.iv327.tr403 = trunc i64 %indvars.iv327 to i32
  %i.no = shl i32 %indvars.iv327.tr403, 1
  %i.np = add i32 %i.no, 14
  %i.nq = and i32 %i.np, 14                       ; 3 uses
  %i.nr = add nuw nsw i64 %indvars.iv327, 1       ; 3 uses
  %.tr = trunc nuw nsw i64 %i.nr to i32
  %i.ns = shl nuw nsw i32 %.tr, 1
  %i.nt = and i32 %i.ns, 14                       ; 3 uses
  br label %fcol.exit227

.preheader233:                                    ; preds = %.split264, %.split264.us.us
  %i.nu = add nsw i32 %3, -1
  %i.nv = icmp sgt i32 %3, 2
  br i1 %i.nv, label %.lr.ph284, label %._crit_edge285.split

.lr.ph284:                                        ; preds = %.preheader233
  %i.nw = add nsw i32 %2, -1
  %i.nx = icmp sgt i32 %2, 2
  %i.ny = sub nsw i32 %2, %6                      ; 3 uses
  %i.nz = sext i32 %2 to i64                      ; 2 uses
  %i.oa = shl nsw i64 %i.nz, 2
  %i.ob = shl nuw nsw i32 %i.ny, 2
  %i.oc = zext nneg i32 %i.ob to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.oc
  %i.od = sext i32 %i.ny to i64
  %invariant.gep286 = getelementptr [4 x i8], ptr %1, i64 %i.od
  %i.oe = add nsw i32 %i.f, -1
  br i1 %i.nx, label %.lr.ph280.preheader, label %._crit_edge285.split

.lr.ph280.preheader:                              ; preds = %.lr.ph284
  %i.of = sub nsw i32 %3, %6
  %i.og = shl nsw i32 %2, 2
  %i.oh = sext i32 %i.of to i64
  %i.oi = zext nneg i32 %6 to i64
  %i.oj = zext nneg i32 %i.og to i64
  %i.ok = zext nneg i32 %2 to i64
  %wide.trip.count370 = zext nneg i32 %i.nu to i64
  br label %.lr.ph280

.split264:                                        ; preds = %.epilog-lcssa
  %exitcond331.not = icmp eq i64 %i.nr, 16
  br i1 %exitcond331.not, label %.preheader233, label %.preheader235

fcol.exit227:                                     ; preds = %.preheader235, %.epilog-lcssa
  %indvars.iv322 = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next323, %.epilog-lcssa ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [128 x i8], ptr %i.nl, i64 %indvars.iv322 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.on = trunc nuw nsw i64 %indvars.iv322 to i32
  %i.oo = and i32 %i.on, 1                        ; 3 uses
  %.tr.i.i225 = or disjoint i32 %i.oo, %i.nn
  %i.op = shl nuw nsw i32 %.tr.i.i225, 1
  %i.oq = lshr i32 %4, %i.op
  %i.or = and i32 %i.oq, 3                        ; 10 uses
  %i.os = trunc i64 %indvars.iv322 to i32
  %i.ot = and i32 %i.os, 1
  %i.ou = xor i32 %i.ot, 1                        ; 3 uses
  %.tr.i.i228 = or disjoint i32 %i.ou, %i.nq
  %i.ov = shl nuw nsw i32 %.tr.i.i228, 1
  %i.ow = lshr i32 %4, %i.ov
  %i.ox = and i32 %i.ow, 3                        ; 3 uses
  %i.oy = icmp eq i32 %i.ox, %i.or
  br i1 %i.oy, label %fcol.exit230.1, label %bb.ah

bb.ah:                                            ; preds = %fcol.exit227
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store <2 x i32> %i.ad, ptr %i.om, align 4, !tbaa !15
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store i32 %i.ox, ptr %i.oz, align 4, !tbaa !15
  %i.pb = zext nneg i32 %i.ox to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pb ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !15
  %i.pe = add nsw i32 %i.pd, 1
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !15
  br label %fcol.exit230.1

fcol.exit230.1:                                   ; preds = %fcol.exit227, %bb.ah
  %.2 = phi ptr [ %i.pa, %bb.ah ], [ %i.om, %fcol.exit227 ] ; 4 uses
  %.tr.i.i228.1 = or disjoint i32 %i.oo, %i.nq
  %i.pf = shl nuw nsw i32 %.tr.i.i228.1, 1
  %i.pg = lshr i32 %4, %i.pf
  %i.ph = and i32 %i.pg, 3                        ; 3 uses
  %i.pi = icmp eq i32 %i.ph, %i.or
  br i1 %i.pi, label %fcol.exit230.2, label %bb.ai

bb.ai:                                            ; preds = %fcol.exit230.1
  %i.pj = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store <2 x i32> %i.ab, ptr %.2, align 4, !tbaa !15
  %i.pk = getelementptr inbounds nuw i8, ptr %.2, i64 12
  store i32 %i.ph, ptr %i.pj, align 4, !tbaa !15
  %i.pl = zext nneg i32 %i.ph to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pl ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !15
  %i.po = add nsw i32 %i.pn, 2
  store i32 %i.po, ptr %i.pm, align 4, !tbaa !15
  br label %fcol.exit230.2

fcol.exit230.2:                                   ; preds = %bb.ai, %fcol.exit230.1
  %.2.1 = phi ptr [ %i.pk, %bb.ai ], [ %.2, %fcol.exit230.1 ] ; 4 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.pp = trunc nuw nsw i64 %indvars.iv.next323 to i32
  %i.pq = and i32 %i.pp, 1                        ; 3 uses
  %.tr.i.i228.2 = or disjoint i32 %i.pq, %i.nq
  %i.pr = shl nuw nsw i32 %.tr.i.i228.2, 1
  %i.ps = lshr i32 %4, %i.pr
  %i.pt = and i32 %i.ps, 3                        ; 3 uses
  %i.pu = icmp eq i32 %i.pt, %i.or
  br i1 %i.pu, label %.split252, label %bb.aj

bb.aj:                                            ; preds = %fcol.exit230.2
  %i.pv = getelementptr inbounds nuw i8, ptr %.2.1, i64 8
  store <2 x i32> %i.af, ptr %.2.1, align 4, !tbaa !15
  %i.pw = getelementptr inbounds nuw i8, ptr %.2.1, i64 12
  store i32 %i.pt, ptr %i.pv, align 4, !tbaa !15
  %i.px = zext nneg i32 %i.pt to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.px ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !15
  %i.qa = add nsw i32 %i.pz, 1
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !15
  br label %.split252

.split252:                                        ; preds = %bb.aj, %fcol.exit230.2
  %.2.2 = phi ptr [ %i.pw, %bb.aj ], [ %.2.1, %fcol.exit230.2 ] ; 5 uses
  %.tr.i.i228.1312 = or disjoint i32 %i.ou, %i.nn
  %i.qb = shl nuw nsw i32 %.tr.i.i228.1312, 1
  %i.qc = lshr i32 %4, %i.qb
  %i.qd = and i32 %i.qc, 3                        ; 3 uses
  %i.qe = icmp eq i32 %i.qd, %i.or
  br i1 %i.qe, label %fcol.exit230.2.1, label %bb.ak

bb.ak:                                            ; preds = %.split252
  %i.qf = getelementptr inbounds nuw i8, ptr %.2.2, i64 4
  store i32 -1, ptr %.2.2, align 4, !tbaa !15
  %i.qg = getelementptr inbounds nuw i8, ptr %.2.2, i64 8
  store i32 2, ptr %i.qf, align 4, !tbaa !15
  %i.qh = getelementptr inbounds nuw i8, ptr %.2.2, i64 12
  store i32 %i.qd, ptr %i.qg, align 4, !tbaa !15
  %i.qi = zext nneg i32 %i.qd to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !15
  %i.ql = add nsw i32 %i.qk, 2
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !15
  br label %fcol.exit230.2.1

fcol.exit230.2.1:                                 ; preds = %.split252, %bb.ak
  %.2.1314 = phi ptr [ %i.qh, %bb.ak ], [ %.2.2, %.split252 ] ; 5 uses
  %.tr.i.i228.2.1 = or disjoint i32 %i.pq, %i.nn
  %i.qm = shl nuw nsw i32 %.tr.i.i228.2.1, 1
  %i.qn = lshr i32 %4, %i.qm
  %i.qo = and i32 %i.qn, 3                        ; 3 uses
  %i.qp = icmp eq i32 %i.qo, %i.or
  br i1 %i.qp, label %.split252.1, label %bb.al

bb.al:                                            ; preds = %fcol.exit230.2.1
  %i.qq = getelementptr inbounds nuw i8, ptr %.2.1314, i64 4
  store i32 1, ptr %.2.1314, align 4, !tbaa !15
  %i.qr = getelementptr inbounds nuw i8, ptr %.2.1314, i64 8
  store i32 2, ptr %i.qq, align 4, !tbaa !15
  %i.qs = getelementptr inbounds nuw i8, ptr %.2.1314, i64 12
  store i32 %i.qo, ptr %i.qr, align 4, !tbaa !15
  %i.qt = zext nneg i32 %i.qo to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qt ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !15
  %i.qw = add nsw i32 %i.qv, 2
  store i32 %i.qw, ptr %i.qu, align 4, !tbaa !15
  br label %.split252.1

.split252.1:                                      ; preds = %bb.al, %fcol.exit230.2.1
  %.2.2.1 = phi ptr [ %i.qs, %bb.al ], [ %.2.1314, %fcol.exit230.2.1 ] ; 4 uses
  %.tr.i.i228.2315 = or disjoint i32 %i.ou, %i.nt
  %i.qx = shl nuw nsw i32 %.tr.i.i228.2315, 1
  %i.qy = lshr i32 %4, %i.qx
  %i.qz = and i32 %i.qy, 3                        ; 3 uses
  %i.ra = icmp eq i32 %i.qz, %i.or
  br i1 %i.ra, label %fcol.exit230.1.2, label %bb.am

bb.am:                                            ; preds = %.split252.1
  %i.rb = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 8
  store <2 x i32> %i.ah, ptr %.2.2.1, align 4, !tbaa !15
  %i.rc = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 12
  store i32 %i.qz, ptr %i.rb, align 4, !tbaa !15
  %i.rd = zext nneg i32 %i.qz to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rd ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !15
  %i.rg = add nsw i32 %i.rf, 1
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !15
  br label %fcol.exit230.1.2

fcol.exit230.1.2:                                 ; preds = %bb.am, %.split252.1
  %.2.2317 = phi ptr [ %i.rc, %bb.am ], [ %.2.2.1, %.split252.1 ] ; 4 uses
  %.tr.i.i228.1.2 = or disjoint i32 %i.oo, %i.nt
  %i.rh = shl nuw nsw i32 %.tr.i.i228.1.2, 1
  %i.ri = lshr i32 %4, %i.rh
  %i.rj = and i32 %i.ri, 3                        ; 3 uses
  %i.rk = icmp eq i32 %i.rj, %i.or
  br i1 %i.rk, label %fcol.exit230.2.2, label %bb.an

bb.an:                                            ; preds = %fcol.exit230.1.2
  %i.rl = getelementptr inbounds nuw i8, ptr %.2.2317, i64 8
  store <2 x i32> %i.ak, ptr %.2.2317, align 4, !tbaa !15
  %i.rm = getelementptr inbounds nuw i8, ptr %.2.2317, i64 12
  store i32 %i.rj, ptr %i.rl, align 4, !tbaa !15
  %i.rn = zext nneg i32 %i.rj to i64
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rn ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !15
  %i.rq = add nsw i32 %i.rp, 2
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !15
  br label %fcol.exit230.2.2

fcol.exit230.2.2:                                 ; preds = %bb.an, %fcol.exit230.1.2
  %.2.1.2 = phi ptr [ %i.rm, %bb.an ], [ %.2.2317, %fcol.exit230.1.2 ] ; 4 uses
  %.tr.i.i228.2.2 = or disjoint i32 %i.pq, %i.nt
  %i.rr = shl nuw nsw i32 %.tr.i.i228.2.2, 1
  %i.rs = lshr i32 %4, %i.rr
  %i.rt = and i32 %i.rs, 3                        ; 3 uses
  %i.ru = icmp eq i32 %i.rt, %i.or
  br i1 %i.ru, label %.split252.2, label %bb.ao

bb.ao:                                            ; preds = %fcol.exit230.2.2
  %i.rv = getelementptr inbounds nuw i8, ptr %.2.1.2, i64 8
end_hunk_2
