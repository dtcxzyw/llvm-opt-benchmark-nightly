Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exr?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dwa_uncompress:bb.a
  %i.rp = zext i1 %i.ge to i32
  %i.rq = shl nuw i32 %i.fb, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [2 x i8], ptr %i.rk, i64 %i.rr
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %indvars.iv485
  %i.ru = select i1 %i.ge, i32 3, i32 2
  %i.rv = mul nuw nsw i32 %i.ru, %i.fb
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.rw
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %indvars.iv485
  %i.rz = zext nneg i32 %spec.select to i64
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.preheader, %._crit_edge443
  %indvars.iv482 = phi i64 [ 0, %.preheader431.preheader ], [ %indvars.iv.next483, %._crit_edge443 ] ; 2 uses
  %.0332446 = phi ptr [ %i.ry, %.preheader431.preheader ], [ %i.sd, %._crit_edge443 ] ; 2 uses
  %.0333445 = phi ptr [ %i.rt, %.preheader431.preheader ], [ %i.sc, %._crit_edge443 ] ; 2 uses
  %.0334444 = phi ptr [ %i.ro, %.preheader431.preheader ], [ %i.sb, %._crit_edge443 ] ; 2 uses
  %i.sa = shl nuw nsw i64 %indvars.iv482, 3
  br label %bb.ao

._crit_edge443:                                   ; preds = %to_linear.exit384
  %i.sb = getelementptr inbounds [2 x i8], ptr %.0334444, i64 %i.rg
  %i.sc = getelementptr inbounds [2 x i8], ptr %.0333445, i64 %i.rg
  %i.sd = getelementptr inbounds [2 x i8], ptr %.0332446, i64 %i.rg
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %i.se = icmp samesign ult i64 %indvars.iv.next483, %i.fy
  br i1 %i.se, label %.preheader431, label %.loopexit, !llvm.loop !194

bb.ao:                                            ; preds = %.preheader431, %to_linear.exit384
  %indvars.iv479 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next480, %to_linear.exit384 ] ; 5 uses
  %i.sf = add nuw nsw i64 %indvars.iv479, %i.sa   ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !213 ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.sf
  %i.sj = load float, ptr %i.si, align 4, !tbaa !213 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.sf
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !213 ; 2 uses
  %i.sm = call nsz float @llvm.fmuladd.f32(float %i.sl, float 1.574700e+00, float %i.sh) ; 2 uses
  %i.sn = call nsz float @llvm.fmuladd.f32(float %i.sj, float -1.873000e-01, float %i.sh)
  %i.so = insertelement <2 x float> poison, float %i.sl, i64 0
  %i.sp = insertelement <2 x float> %i.so, float %i.sj, i64 1
  %i.sq = insertelement <2 x float> poison, float %i.sn, i64 0
  %i.sr = insertelement <2 x float> %i.sq, float %i.sh, i64 1
  %i.ss = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.sr) ; 2 uses
  %i.st = extractelement <2 x float> %i.ss, i64 1 ; 2 uses
  %i.su = call nsz float @llvm.fabs.f32(float %i.st) ; 3 uses
  %i.sv = fcmp nsz ugt float %i.su, 1.000000e+00
  br i1 %i.sv, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.sw = call nsz float @llvm.pow.f32(float %i.su, float 2.200000e+00)
  br label %to_linear.exit

bb.aq:                                            ; preds = %bb.ao
  %i.sx = fadd nsz float %i.su, -1.000000e+00
  %i.sy = call nsz float @llvm.pow.f32(float f0x41106675, float %i.sx)
  br label %to_linear.exit

to_linear.exit:                                   ; preds = %bb.ap, %bb.aq
  %.sink13.i = phi float [ %i.sy, %bb.aq ], [ %i.sw, %bb.ap ] ; 2 uses
  %i.sz = fcmp nsz ogt float %i.st, 0.000000e+00
  %i.ta = fneg nsz float %.sink13.i
  %i.tb = select nsz i1 %i.sz, float %.sink13.i, float %i.ta
  %i.tc = bitcast float %i.tb to i32              ; 2 uses
  %i.td = lshr i32 %i.tc, 23
  %i.te = zext nneg i32 %i.td to i64              ; 2 uses
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.te
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !92
  %i.th = and i32 %i.tc, 8388607
  %i.ti = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.te
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !54
  %i.tk = zext nneg i8 %i.tj to i32
  %i.tl = lshr i32 %i.th, %i.tk
  %i.tm = trunc i32 %i.tl to i16
  %i.tn = add i16 %i.tg, %i.tm
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %.0334444, i64 %indvars.iv479
  store i16 %i.tn, ptr %i.to, align 2, !tbaa !92
  %i.tp = extractelement <2 x float> %i.ss, i64 0 ; 2 uses
  %i.tq = call nsz float @llvm.fabs.f32(float %i.tp) ; 3 uses
  %i.tr = fcmp nsz ugt float %i.tq, 1.000000e+00
  br i1 %i.tr, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %to_linear.exit
  %i.ts = call nsz float @llvm.pow.f32(float %i.tq, float 2.200000e+00)
  br label %to_linear.exit382

bb.as:                                            ; preds = %to_linear.exit
  %i.tt = fadd nsz float %i.tq, -1.000000e+00
  %i.tu = call nsz float @llvm.pow.f32(float f0x41106675, float %i.tt)
  br label %to_linear.exit382

to_linear.exit382:                                ; preds = %bb.ar, %bb.as
  %.sink13.i381 = phi float [ %i.tu, %bb.as ], [ %i.ts, %bb.ar ] ; 2 uses
  %i.tv = fcmp nsz ogt float %i.tp, 0.000000e+00
  %i.tw = fneg nsz float %.sink13.i381
  %i.tx = select nsz i1 %i.tv, float %.sink13.i381, float %i.tw
  %i.ty = bitcast float %i.tx to i32              ; 2 uses
  %i.tz = lshr i32 %i.ty, 23
  %i.ua = zext nneg i32 %i.tz to i64              ; 2 uses
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.ua
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !92
  %i.ud = and i32 %i.ty, 8388607
  %i.ue = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ua
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !54
  %i.ug = zext nneg i8 %i.uf to i32
  %i.uh = lshr i32 %i.ud, %i.ug
  %i.ui = trunc i32 %i.uh to i16
  %i.uj = add i16 %i.uc, %i.ui
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %.0333445, i64 %indvars.iv479
  store i16 %i.uj, ptr %i.uk, align 2, !tbaa !92
  %i.ul = call nsz float @llvm.fabs.f32(float %i.sm) ; 3 uses
  %i.um = fcmp nsz ugt float %i.ul, 1.000000e+00
  br i1 %i.um, label %bb.au, label %bb.at

bb.at:                                            ; preds = %to_linear.exit382
  %i.un = call nsz float @llvm.pow.f32(float %i.ul, float 2.200000e+00)
  br label %to_linear.exit384

bb.au:                                            ; preds = %to_linear.exit382
  %i.uo = fadd nsz float %i.ul, -1.000000e+00
  %i.up = call nsz float @llvm.pow.f32(float f0x41106675, float %i.uo)
  br label %to_linear.exit384

to_linear.exit384:                                ; preds = %bb.at, %bb.au
  %.sink13.i383 = phi float [ %i.up, %bb.au ], [ %i.un, %bb.at ] ; 2 uses
  %i.uq = fcmp nsz ogt float %i.sm, 0.000000e+00
  %i.ur = fneg nsz float %.sink13.i383
  %i.us = select nsz i1 %i.uq, float %.sink13.i383, float %i.ur
  %i.ut = bitcast float %i.us to i32              ; 2 uses
  %i.uu = lshr i32 %i.ut, 23
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !92
  %i.uy = and i32 %i.ut, 8388607
  %i.uz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.uv
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !54
  %i.vb = zext nneg i8 %i.va to i32
  %i.vc = lshr i32 %i.uy, %i.vb
  %i.vd = trunc i32 %i.vc to i16
  %i.ve = add i16 %i.ux, %i.vd
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.0332446, i64 %indvars.iv479
  store i16 %i.ve, ptr %i.vf, align 2, !tbaa !92
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.vg = icmp samesign ult i64 %indvars.iv.next480, %i.rz
  br i1 %i.vg, label %bb.ao, label %._crit_edge443, !llvm.loop !195

bb.av:                                            ; preds = %bb.ah
  br i1 %.not543, label %.loopexit, label %.preheader432.lr.ph

.preheader432.lr.ph:                              ; preds = %bb.av
  %i.vh = load i32, ptr %i.n, align 8, !tbaa !50  ; 2 uses
  %.not544 = icmp eq i64 %indvars.iv485, %i.fp
  %i.vi = mul nsw i32 %i.vh, %i.fb
  %i.vj = sext i32 %i.vi to i64                   ; 3 uses
  br i1 %.not544, label %.loopexit, label %.preheader432.preheader

.preheader432.preheader:                          ; preds = %.preheader432.lr.ph
  %i.vk = load ptr, ptr %4, align 8, !tbaa !89
  %i.vl = sext i32 %i.vh to i64
  %i.vm = mul nsw i64 %i.fx, %i.vl
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vm ; 3 uses
  %i.vo = select i1 %i.ge, i32 %i.fb, i32 0
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv485
  %i.vs = zext i1 %i.ge to i32
  %i.vt = shl nuw i32 %i.fb, %i.vs
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vu
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %indvars.iv485
  %i.vx = select i1 %i.ge, i32 3, i32 2
  %i.vy = mul nuw nsw i32 %i.vx, %i.fb
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv485
  %i.wc = zext nneg i32 %spec.select to i64
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge
  %indvars.iv476 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next477, %._crit_edge ] ; 2 uses
  %.0327440 = phi ptr [ %i.wb, %.preheader432.preheader ], [ %i.wg, %._crit_edge ] ; 2 uses
  %.0328439 = phi ptr [ %i.vw, %.preheader432.preheader ], [ %i.wf, %._crit_edge ] ; 2 uses
  %.0329438 = phi ptr [ %i.vr, %.preheader432.preheader ], [ %i.we, %._crit_edge ] ; 2 uses
  %i.wd = shl nuw nsw i64 %indvars.iv476, 3
  br label %bb.aw

._crit_edge:                                      ; preds = %to_linear.exit390
  %i.we = getelementptr inbounds [4 x i8], ptr %.0329438, i64 %i.vj
  %i.wf = getelementptr inbounds [4 x i8], ptr %.0328439, i64 %i.vj
  %i.wg = getelementptr inbounds [4 x i8], ptr %.0327440, i64 %i.vj
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next477, %i.fy
  br i1 %i.wh, label %.preheader432, label %.loopexit, !llvm.loop !196

bb.aw:                                            ; preds = %.preheader432, %to_linear.exit390
  %indvars.iv473 = phi i64 [ 0, %.preheader432 ], [ %indvars.iv.next474, %to_linear.exit390 ] ; 5 uses
  %i.wi = add nuw nsw i64 %indvars.iv473, %i.wd   ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.wi
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.wi
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !213 ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.wi
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !213 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.0329438, i64 %indvars.iv473
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.0328439, i64 %indvars.iv473 ; 3 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.0327440, i64 %indvars.iv473 ; 3 uses
  %i.wr = load float, ptr %i.wj, align 4, !tbaa !213 ; 3 uses
  %6 = call nsz float @llvm.fmuladd.f32(float %i.wn, float 1.574700e+00, float %i.wr)
  store float %6, ptr %i.wq, align 4, !tbaa !213
  %7 = call nsz float @llvm.fmuladd.f32(float %i.wl, float -1.873000e-01, float %i.wr)
  %8 = insertelement <2 x float> poison, float %i.wn, i64 0
  %9 = insertelement <2 x float> %8, float %i.wl, i64 1
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %i.ws = insertelement <2 x float> %10, float %i.wr, i64 1
  %i.wt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.ws) ; 2 uses
  %i.wu = extractelement <2 x float> %i.wt, i64 0
  store float %i.wu, ptr %i.wp, align 4, !tbaa !213
  %i.wv = extractelement <2 x float> %i.wt, i64 1 ; 2 uses
  %i.ww = call nsz float @llvm.fabs.f32(float %i.wv) ; 3 uses
  %i.wx = fcmp nsz ugt float %i.ww, 1.000000e+00
  br i1 %i.wx, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.wy = call nsz float @llvm.pow.f32(float %i.ww, float 2.200000e+00)
  br label %to_linear.exit386

bb.ay:                                            ; preds = %bb.aw
  %i.wz = fadd nsz float %i.ww, -1.000000e+00
  %i.xa = call nsz float @llvm.pow.f32(float f0x41106675, float %i.wz)
  br label %to_linear.exit386

to_linear.exit386:                                ; preds = %bb.ax, %bb.ay
  %.sink13.i385 = phi float [ %i.xa, %bb.ay ], [ %i.wy, %bb.ax ] ; 2 uses
  %i.xb = fcmp nsz ogt float %i.wv, 0.000000e+00
  %i.xc = fneg nsz float %.sink13.i385
  %i.xd = select nsz i1 %i.xb, float %.sink13.i385, float %i.xc
  store float %i.xd, ptr %i.wo, align 4, !tbaa !213
  %i.xe = load float, ptr %i.wp, align 4, !tbaa !213 ; 2 uses
  %i.xf = call nsz float @llvm.fabs.f32(float %i.xe) ; 3 uses
  %i.xg = fcmp nsz ugt float %i.xf, 1.000000e+00
  br i1 %i.xg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %to_linear.exit386
  %i.xh = call nsz float @llvm.pow.f32(float %i.xf, float 2.200000e+00)
  br label %to_linear.exit388

bb.ba:                                            ; preds = %to_linear.exit386
  %i.xi = fadd nsz float %i.xf, -1.000000e+00
  %i.xj = call nsz float @llvm.pow.f32(float f0x41106675, float %i.xi)
  br label %to_linear.exit388

to_linear.exit388:                                ; preds = %bb.az, %bb.ba
  %.sink13.i387 = phi float [ %i.xj, %bb.ba ], [ %i.xh, %bb.az ] ; 2 uses
  %i.xk = fcmp nsz ogt float %i.xe, 0.000000e+00
  %i.xl = fneg nsz float %.sink13.i387
  %i.xm = select nsz i1 %i.xk, float %.sink13.i387, float %i.xl
  store float %i.xm, ptr %i.wp, align 4, !tbaa !213
  %i.xn = load float, ptr %i.wq, align 4, !tbaa !213 ; 2 uses
  %i.xo = call nsz float @llvm.fabs.f32(float %i.xn) ; 3 uses
  %i.xp = fcmp nsz ugt float %i.xo, 1.000000e+00
  br i1 %i.xp, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %to_linear.exit388
  %i.xq = call nsz float @llvm.pow.f32(float %i.xo, float 2.200000e+00)
  br label %to_linear.exit390

bb.bc:                                            ; preds = %to_linear.exit388
  %i.xr = fadd nsz float %i.xo, -1.000000e+00
  %i.xs = call nsz float @llvm.pow.f32(float f0x41106675, float %i.xr)
  br label %to_linear.exit390

to_linear.exit390:                                ; preds = %bb.bb, %bb.bc
  %.sink13.i389 = phi float [ %i.xs, %bb.bc ], [ %i.xq, %bb.bb ] ; 2 uses
  %i.xt = fcmp nsz ogt float %i.xn, 0.000000e+00
  %i.xu = fneg nsz float %.sink13.i389
  %i.xv = select nsz i1 %i.xt, float %.sink13.i389, float %i.xu
  store float %i.xv, ptr %i.wq, align 4, !tbaa !213
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.xw = icmp samesign ult i64 %indvars.iv.next474, %i.wc
  br i1 %i.xw, label %bb.aw, label %._crit_edge, !llvm.loop !197

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge443, %bb.av, %.preheader432.lr.ph, %bb.an, %.preheader431.lr.ph
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 8 ; 2 uses
  %i.xx = icmp samesign ult i64 %indvars.iv.next486, %i.fp
  br i1 %i.xx, label %bb.ag, label %._crit_edge450, !llvm.loop !198

bb.bd:                                            ; preds = %._crit_edge453.split
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !48
  %i.ya = icmp eq i32 %i.xz, 1
  %i.yb = and i1 %or.cond7, %i.fa                 ; 2 uses
  br i1 %i.ya, label %.preheader, label %.preheader429

.preheader429:                                    ; preds = %bb.bd
  br i1 %i.yb, label %.lr.ph459, label %bytestream2_get_le16.exit.thread

.lr.ph459:                                        ; preds = %.preheader429
  %i.yc = load ptr, ptr %4, align 8, !tbaa !89
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !212
  %i.yf = lshr i64 %i.af, 1
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 14328
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 14072
  %i.yj = load i32, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %i.yk = icmp sgt i32 %i.yj, 0
  br i1 %i.yk, label %.lr.ph459.split, label %bytestream2_get_le16.exit.thread

.preheader:                                       ; preds = %bb.bd
  br i1 %i.yb, label %.lr.ph465, label %bytestream2_get_le16.exit.thread

.lr.ph465:                                        ; preds = %.preheader
  %i.yl = load ptr, ptr %4, align 8, !tbaa !89    ; 4 uses
  %i.ym = load i32, ptr %i.d, align 8, !tbaa !86  ; 4 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !212 ; 5 uses
  %i.yp = lshr i64 %i.af, 1                       ; 3 uses
  %i.yq = icmp sgt i32 %i.ym, 0
  br i1 %i.yq, label %.lr.ph462.preheader, label %bytestream2_get_le16.exit.thread

.lr.ph462.preheader:                              ; preds = %.lr.ph465
  %i.yr = zext nneg i32 %i.ym to i64              ; 11 uses
  %i.ys = zext nneg i32 %i.fz to i64              ; 2 uses
  %wide.trip.count506 = zext nneg i32 %i.ez to i64 ; 3 uses
  %i.yt = add nuw i64 %wide.trip.count506, 9223372036854775807
  %i.yu = mul i64 %i.yt, %i.ys
  %i.yv = shl i64 %i.yu, 1
  %i.yw = add i64 %i.yv, 2
  %i.yx = mul i64 %i.yw, %i.yr
  %scevgep = getelementptr i8, ptr %i.yl, i64 %i.yx ; 2 uses
  %scevgep566 = getelementptr i8, ptr %i.yo, i64 %i.yp
  %i.yy = mul nuw nsw i64 %i.yr, %wide.trip.count506 ; 2 uses
  %i.yz = getelementptr i8, ptr %i.yo, i64 %i.yp
  %scevgep567 = getelementptr i8, ptr %i.yz, i64 %i.yy
  %scevgep568 = getelementptr i8, ptr %i.yo, i64 %i.yy
  %min.iters.check = icmp ult i32 %i.ym, 4
  %bound0 = icmp ult ptr %i.yl, %scevgep567
  %bound1 = icmp ult ptr %scevgep566, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0569 = icmp ult ptr %i.yl, %scevgep568
  %bound1570 = icmp ult ptr %i.yo, %scevgep
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx = or i1 %found.conflict, %found.conflict571
  %min.iters.check572 = icmp ult i32 %i.ym, 16
  %i.za = and i64 %i.yr, 12
  %n.vec = and i64 %i.yr, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.yr
  %min.epilog.iters.check = icmp eq i64 %i.za, 0
  %n.vec582 = and i64 %i.yr, 2147483644           ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec582, %i.yr
  %xtraiter = and i64 %i.yr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.zb = add nsw i64 %i.yr, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph462.preheader, %._crit_edge463
  %indvars.iv503 = phi i64 [ 0, %.lr.ph462.preheader ], [ %indvars.iv.next504, %._crit_edge463 ] ; 2 uses
  %i.zc = mul nuw nsw i64 %indvars.iv503, %i.yr   ; 2 uses
  %i.zd = mul nuw nsw i64 %i.zc, %i.ys
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.yl, i64 %i.zd ; 5 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.zc ; 6 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.yp ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check572, label %vec.epilog.ph, label %vector.body574

vector.body574:                                   ; preds = %vector.main.loop.iter.check, %vector.body574
  %index575 = phi i64 [ %index.next580, %vector.body574 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 %index575 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %wide.load576 = load <8 x i8>, ptr %i.zh, align 1, !tbaa !54, !alias.scope !214
  %wide.load577 = load <8 x i8>, ptr %i.zi, align 1, !tbaa !54, !alias.scope !214
  %i.zj = zext <8 x i8> %wide.load576 to <8 x i16>
  %i.zk = zext <8 x i8> %wide.load577 to <8 x i16>
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 %index575 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %wide.load578 = load <8 x i8>, ptr %i.zl, align 1, !tbaa !54, !alias.scope !215
  %wide.load579 = load <8 x i8>, ptr %i.zm, align 1, !tbaa !54, !alias.scope !215
  %i.zn = zext <8 x i8> %wide.load578 to <8 x i16>
  %i.zo = zext <8 x i8> %wide.load579 to <8 x i16>
  %i.zp = shl nuw <8 x i16> %i.zn, splat (i16 8)
  %i.zq = shl nuw <8 x i16> %i.zo, splat (i16 8)
  %i.zr = or disjoint <8 x i16> %i.zp, %i.zj
  %i.zs = or disjoint <8 x i16> %i.zq, %i.zk
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %index575 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store <8 x i16> %i.zr, ptr %i.zt, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  store <8 x i16> %i.zs, ptr %i.zu, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  %index.next580 = add nuw i64 %index575, 16      ; 2 uses
  %i.zv = icmp eq i64 %index.next580, %n.vec
  br i1 %i.zv, label %middle.block581, label %vector.body574, !llvm.loop !203

middle.block581:                                  ; preds = %vector.body574
  br i1 %cmp.n, label %._crit_edge463, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block581
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index583 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next586, %vec.epilog.vector.body ] ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zf, i64 %index583
  %wide.load584 = load <4 x i8>, ptr %i.zw, align 1, !tbaa !54, !alias.scope !214
  %i.zx = zext <4 x i8> %wide.load584 to <4 x i16>
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zg, i64 %index583
  %wide.load585 = load <4 x i8>, ptr %i.zy, align 1, !tbaa !54, !alias.scope !215
  %i.zz = zext <4 x i8> %wide.load585 to <4 x i16>
  %i.aaa = shl nuw <4 x i16> %i.zz, splat (i16 8)
  %i.aab = or disjoint <4 x i16> %i.aaa, %i.zx
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %index583
end_hunk_0
