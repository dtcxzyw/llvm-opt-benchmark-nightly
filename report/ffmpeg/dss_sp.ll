Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dss_sp?download=true
inline.NumInlined: 35
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dss_sp_decode_frame:bb.a
  %.1114.i.i = phi i32 [ 0, %bb.u ], [ %i.px, %bb.t ]
  %i.qa = trunc nuw nsw i32 %.1114.i.i to i16     ; 2 uses
  %i.qb = icmp ugt i16 %.0112.in181.i.i, 162
  br i1 %i.qb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %narrow.i.i = add nsw i16 %.0112.in181.i.i, -23
  %i.qc = tail call i16 @llvm.umax.i16(i16 %narrow.i.i, i16 36)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink246.i.i = phi i16 [ %i.qc, %bb.w ], [ 139, %bb.v ]
  %i.qd = load i16, ptr %i.pt, align 2, !tbaa !68
  %i.qe = add i16 %i.qd, %.sink246.i.i            ; 3 uses
  store i16 %i.qe, ptr %i.pt, align 2, !tbaa !68
  %i.qf = icmp ugt i16 %i.qe, 162
  br i1 %i.qf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %narrow.1.i.i = add nsw i16 %i.qe, -23
  %i.qg = tail call i16 @llvm.umax.i16(i16 %narrow.1.i.i, i16 36)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink247.i.i = phi i16 [ %i.qg, %bb.y ], [ 139, %bb.x ]
  %i.qh = load i16, ptr %i.pw, align 4, !tbaa !68
  %i.qi = add i16 %i.qh, %.sink247.i.i            ; 3 uses
  store i16 %i.qi, ptr %i.pw, align 4, !tbaa !68
  %i.qj = icmp ugt i16 %i.qi, 162
  br i1 %i.qj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %narrow.2.i.i = add nsw i16 %i.qi, -23
  %i.qk = tail call i16 @llvm.umax.i16(i16 %narrow.2.i.i, i16 36)
  %i.ql = add i16 %i.qk, %i.qa
  br label %dss_sp_unpack_coeffs.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.qm = add nuw nsw i16 %i.qa, 139
  br label %dss_sp_unpack_coeffs.exit.i

dss_sp_unpack_coeffs.exit.i:                      ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i16 [ %i.qm, %bb.ab ], [ %i.ql, %bb.aa ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.d, i64 1974
  store i16 %.sink.i, ptr %i.qn, align 2, !tbaa !68
  %i.qo = getelementptr inbounds nuw i8, ptr %i.d, i64 3392 ; 3 uses
  %i.qp = load i16, ptr %i.ei, align 4, !tbaa !68
  %i.qq = sext i16 %i.qp to i64
  %i.qr = getelementptr inbounds [2 x i8], ptr @dss_sp_filter_cb, i64 %i.qq
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !68
  %i.qt = sext i16 %i.qs to i32
  store i32 %i.qt, ptr %i.qo, align 4, !tbaa !29
  %i.qu = load i16, ptr %i.ek, align 2, !tbaa !68
  %i.qv = sext i16 %i.qu to i64
  %i.qw = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 64), i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !68
  %i.qy = sext i16 %i.qx to i32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.d, i64 3396
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !29
  %i.ra = load i16, ptr %i.em, align 4, !tbaa !68
  %i.rb = sext i16 %i.ra to i64
  %i.rc = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 128), i64 %i.rb
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !68
  %i.re = sext i16 %i.rd to i32
  %i.rf = getelementptr inbounds nuw i8, ptr %i.d, i64 3400
  store i32 %i.re, ptr %i.rf, align 4, !tbaa !29
  %i.rg = load i16, ptr %i.en, align 2, !tbaa !68
  %i.rh = sext i16 %i.rg to i64
  %i.ri = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 192), i64 %i.rh
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !68
  %i.rk = sext i16 %i.rj to i32
  %i.rl = getelementptr inbounds nuw i8, ptr %i.d, i64 3404
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !29
  %i.rm = load i16, ptr %i.ep, align 4, !tbaa !68
  %i.rn = sext i16 %i.rm to i64
  %i.ro = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 256), i64 %i.rn
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !68
  %i.rq = sext i16 %i.rp to i32
  %i.rr = getelementptr inbounds nuw i8, ptr %i.d, i64 3408
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !29
  %i.rs = load i16, ptr %i.eq, align 2, !tbaa !68
  %i.rt = sext i16 %i.rs to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 320), i64 %i.rt
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !68
  %i.rw = sext i16 %i.rv to i32
  %i.rx = getelementptr inbounds nuw i8, ptr %i.d, i64 3412
  store i32 %i.rw, ptr %i.rx, align 4, !tbaa !29
  %i.ry = load i16, ptr %i.es, align 4, !tbaa !68
  %i.rz = sext i16 %i.ry to i64
  %i.sa = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 384), i64 %i.rz
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !68
  %i.sc = sext i16 %i.sb to i32
  %i.sd = getelementptr inbounds nuw i8, ptr %i.d, i64 3416
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !29
  %i.se = load i16, ptr %i.et, align 2, !tbaa !68
  %i.sf = sext i16 %i.se to i64
  %i.sg = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 448), i64 %i.sf
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !68
  %i.si = sext i16 %i.sh to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %i.d, i64 3420
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !29
  %i.sk = load i16, ptr %i.fy, align 4, !tbaa !68
  %i.sl = sext i16 %i.sk to i64
  %i.sm = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 512), i64 %i.sl
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !68
  %i.so = sext i16 %i.sn to i32
  %i.sp = getelementptr inbounds nuw i8, ptr %i.d, i64 3424
  store i32 %i.so, ptr %i.sp, align 4, !tbaa !29
  %i.sq = load i16, ptr %i.fz, align 2, !tbaa !68
  %i.sr = sext i16 %i.sq to i64
  %i.ss = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 576), i64 %i.sr
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !68
  %i.su = sext i16 %i.st to i32
  %i.sv = getelementptr inbounds nuw i8, ptr %i.d, i64 3428
  store i32 %i.su, ptr %i.sv, align 4, !tbaa !29
  %i.sw = load i16, ptr %i.gb, align 4, !tbaa !68
  %i.sx = sext i16 %i.sw to i64
  %i.sy = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 640), i64 %i.sx
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !68
  %i.ta = sext i16 %i.sz to i32
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 3432
  store i32 %i.ta, ptr %i.tb, align 4, !tbaa !29
  %i.tc = load i16, ptr %i.gc, align 2, !tbaa !68
  %i.td = sext i16 %i.tc to i64
  %i.te = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 704), i64 %i.td
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !68
  %i.tg = sext i16 %i.tf to i32
  %i.th = getelementptr inbounds nuw i8, ptr %i.d, i64 3436
  store i32 %i.tg, ptr %i.th, align 4, !tbaa !29
  %i.ti = load i16, ptr %i.gv, align 4, !tbaa !68
  %i.tj = sext i16 %i.ti to i64
  %i.tk = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 768), i64 %i.tj
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !68
  %i.tm = sext i16 %i.tl to i32
  %i.tn = getelementptr inbounds nuw i8, ptr %i.d, i64 3440
  store i32 %i.tm, ptr %i.tn, align 4, !tbaa !29
  %i.to = load i16, ptr %i.ha, align 2, !tbaa !68
  %i.tp = sext i16 %i.to to i64
  %i.tq = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @dss_sp_filter_cb, i64 832), i64 %i.tp
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !68
  %i.ts = sext i16 %i.tr to i32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.d, i64 3444
  store i32 %i.ts, ptr %i.tt, align 4, !tbaa !29
  %i.tu = getelementptr inbounds nuw i8, ptr %i.d, i64 3448 ; 5 uses
  store i32 8192, ptr %i.tu, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i40.i, %dss_sp_unpack_coeffs.exit.i
  %indvars.iv41.i.i = phi i64 [ 0, %dss_sp_unpack_coeffs.exit.i ], [ %indvars.iv.next42.i.i, %.loopexit.i40.i ] ; 3 uses
  %indvars.iv39.i.i = phi i32 [ 1, %dss_sp_unpack_coeffs.exit.i ], [ %indvars.iv.next40.i.i, %.loopexit.i40.i ] ; 2 uses
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 4 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv41.i.i ; 3 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !29
  %i.tx = ashr i32 %i.tw, 2
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.next42.i.i
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !29
  %.not.i35.i = icmp eq i64 %indvars.iv41.i.i, 0
  br i1 %.not.i35.i, label %.loopexit.i40.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ac
  %i.tz = lshr i32 %indvars.iv39.i.i, 1
  %i.ua = add nuw nsw i32 %i.tz, 1
  %wide.trip.count.i36.i = zext nneg i32 %i.ua to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %indvars.iv.i37.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ %indvars.iv.next.i38.i, %.preheader.i.i ] ; 3 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.i37.i ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !29 ; 2 uses
  %i.ud = sub nuw nsw i64 %indvars.iv.next42.i.i, %indvars.iv.i37.i
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ud ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !29 ; 2 uses
  %i.ug = shl nsw i32 %i.uc, 15
  %i.uh = load i32, ptr %i.tv, align 4, !tbaa !29
  %i.ui = mul i32 %i.uh, %i.uf
  %i.uj = or disjoint i32 %i.ug, 16384
  %i.uk = add i32 %i.uj, %i.ui
  %i.ul = ashr i32 %i.uk, 15
  %i.um = tail call i32 @llvm.smax.i32(i32 %i.ul, i32 -32768)
  %i.un = tail call i32 @llvm.smin.i32(i32 %i.um, i32 32767)
  store i32 %i.un, ptr %i.ub, align 4, !tbaa !29
  %i.uo = shl nsw i32 %i.uf, 15
  %i.up = load i32, ptr %i.tv, align 4, !tbaa !29
  %i.uq = mul i32 %i.up, %i.uc
  %i.ur = or disjoint i32 %i.uo, 16384
  %i.us = add i32 %i.ur, %i.uq
  %i.ut = ashr i32 %i.us, 15
  %i.uu = tail call i32 @llvm.smax.i32(i32 %i.ut, i32 -32768)
  %i.uv = tail call i32 @llvm.smin.i32(i32 %i.uu, i32 32767)
  store i32 %i.uv, ptr %i.ue, align 4, !tbaa !29
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i39.i = icmp eq i64 %indvars.iv.next.i38.i, %wide.trip.count.i36.i
  br i1 %exitcond.not.i39.i, label %.loopexit.i40.i, label %.preheader.i.i, !llvm.loop !43

.loopexit.i40.i:                                  ; preds = %.preheader.i.i, %bb.ac
  %indvars.iv.next40.i.i = add nuw nsw i32 %indvars.iv39.i.i, 1
  %exitcond44.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, 14
  br i1 %exitcond44.not.i.i, label %dss_sp_convert_coeffs.exit.preheader.i, label %bb.ac, !llvm.loop !44

dss_sp_convert_coeffs.exit.preheader.i:           ; preds = %.loopexit.i40.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.d, i64 3508 ; 40 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.d, i64 1184 ; 14 uses
  %scevgep.i.i = getelementptr nuw i8, ptr %i.d, i64 1476
  %scevgep13.i.i = getelementptr nuw i8, ptr %i.d, i64 1188
  %i.uy = getelementptr inbounds nuw i8, ptr %i.d, i64 3800
  %i.uz = getelementptr i8, ptr %i.d, i64 3804    ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.d, i64 3856
  %i.vb = getelementptr inbounds nuw i8, ptr %i.d, i64 3504 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.d, i64 3852
  %i.vd = getelementptr inbounds nuw i8, ptr %i.d, i64 3500
  %i.ve = getelementptr inbounds nuw i8, ptr %i.d, i64 3848
  %i.vf = getelementptr inbounds nuw i8, ptr %i.d, i64 3496
  %i.vg = getelementptr inbounds nuw i8, ptr %i.d, i64 3844
  %i.vh = getelementptr inbounds nuw i8, ptr %i.d, i64 3492
  %i.vi = getelementptr inbounds nuw i8, ptr %i.d, i64 3840
  %i.vj = getelementptr inbounds nuw i8, ptr %i.d, i64 3488 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.d, i64 3836
  %i.vl = getelementptr inbounds nuw i8, ptr %i.d, i64 3484
  %i.vm = getelementptr inbounds nuw i8, ptr %i.d, i64 3832
  %i.vn = getelementptr inbounds nuw i8, ptr %i.d, i64 3480
  %i.vo = getelementptr inbounds nuw i8, ptr %i.d, i64 3828
  %i.vp = getelementptr inbounds nuw i8, ptr %i.d, i64 3476
  %i.vq = getelementptr inbounds nuw i8, ptr %i.d, i64 3824
  %i.vr = getelementptr inbounds nuw i8, ptr %i.d, i64 3472 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.d, i64 3820
  %i.vt = getelementptr inbounds nuw i8, ptr %i.d, i64 3468 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.d, i64 3816
  %i.vv = getelementptr inbounds nuw i8, ptr %i.d, i64 3464 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.d, i64 3812
  %i.vx = getelementptr inbounds nuw i8, ptr %i.d, i64 3460
  %i.vy = getelementptr inbounds nuw i8, ptr %i.d, i64 3808
  %i.vz = getelementptr inbounds nuw i8, ptr %i.d, i64 3456 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.d, i64 3452
  %i.wb = getelementptr i8, ptr %i.d, i64 2120    ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.d, i64 3272 ; 6 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.d, i64 3276 ; 6 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.d, i64 3280
  %i.wf = getelementptr inbounds nuw i8, ptr %i.d, i64 3284
  %i.wg = getelementptr inbounds nuw i8, ptr %i.d, i64 3288 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.d, i64 3292 ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.d, i64 3296
  %i.wj = getelementptr inbounds nuw i8, ptr %i.d, i64 3300
  %i.wk = getelementptr inbounds nuw i8, ptr %i.d, i64 3304 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.d, i64 3308 ; 5 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.d, i64 3312
  %i.wn = getelementptr inbounds nuw i8, ptr %i.d, i64 3316
  %i.wo = getelementptr inbounds nuw i8, ptr %i.d, i64 3320 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.d, i64 3324 ; 5 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.d, i64 3328 ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.d, i64 3332 ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.d, i64 3336 ; 6 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.d, i64 3340 ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.d, i64 3352 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.d, i64 3356 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.d, i64 3368 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.d, i64 3372 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.d, i64 3384 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.d, i64 3388 ; 6 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.d, i64 3796 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  %i.xc = getelementptr inbounds nuw i8, ptr %i.d, i64 3780
  %i.xd = getelementptr inbounds nuw i8, ptr %i.d, i64 3748
  %i.xe = getelementptr inbounds nuw i8, ptr %i.d, i64 3716
  %i.xf = getelementptr inbounds nuw i8, ptr %i.d, i64 3684
  %i.xg = getelementptr inbounds nuw i8, ptr %i.d, i64 3652
  %i.xh = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.xi = getelementptr inbounds nuw i8, ptr %i.d, i64 3588
  %i.xj = getelementptr inbounds nuw i8, ptr %i.d, i64 3556
  %i.xk = getelementptr inbounds nuw i8, ptr %i.d, i64 3524
  %i.xl = getelementptr inbounds nuw i8, ptr %i.d, i64 3764
  %i.xm = getelementptr inbounds nuw i8, ptr %i.d, i64 3732
  %i.xn = getelementptr inbounds nuw i8, ptr %i.d, i64 3700
  %i.xo = getelementptr inbounds nuw i8, ptr %i.d, i64 3668
  %i.xp = getelementptr inbounds nuw i8, ptr %i.d, i64 3636
  %i.xq = getelementptr inbounds nuw i8, ptr %i.d, i64 3604
  %i.xr = getelementptr inbounds nuw i8, ptr %i.d, i64 3572
  %i.xs = getelementptr inbounds nuw i8, ptr %i.d, i64 3540
  %i.xt = getelementptr inbounds nuw i8, ptr %i.d, i64 3524
  %i.xu = getelementptr inbounds nuw i8, ptr %i.d, i64 3540
  %i.xv = getelementptr inbounds nuw i8, ptr %i.d, i64 3556
  %i.xw = getelementptr inbounds nuw i8, ptr %i.d, i64 3572
  %i.xx = getelementptr inbounds nuw i8, ptr %i.d, i64 3588
  %i.xy = getelementptr inbounds nuw i8, ptr %i.d, i64 3604
  %i.xz = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.ya = getelementptr inbounds nuw i8, ptr %i.d, i64 3636
  %i.yb = getelementptr inbounds nuw i8, ptr %i.d, i64 3652
  %i.yc = getelementptr inbounds nuw i8, ptr %i.d, i64 3668
  %i.yd = getelementptr inbounds nuw i8, ptr %i.d, i64 3684
  %i.ye = getelementptr inbounds nuw i8, ptr %i.d, i64 3700
  %i.yf = getelementptr inbounds nuw i8, ptr %i.d, i64 3716
  %i.yg = getelementptr inbounds nuw i8, ptr %i.d, i64 3732
  %i.yh = getelementptr inbounds nuw i8, ptr %i.d, i64 3748
  %i.yi = getelementptr inbounds nuw i8, ptr %i.d, i64 3764
  %i.yj = getelementptr inbounds nuw i8, ptr %i.d, i64 3780
  %i.yk = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.d, i64 3520 ; 2 uses
  %i.zt = getelementptr i8, ptr %i.d, i64 3516
  %i.zu = getelementptr inbounds nuw i8, ptr %i.d, i64 3516 ; 2 uses
  %i.zv = getelementptr i8, ptr %i.d, i64 3512
  %i.zw = getelementptr inbounds nuw i8, ptr %i.d, i64 3512 ; 2 uses
  %i.zx = getelementptr i8, ptr %i.d, i64 3508
  %i.zy = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.d, i64 3524 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.d, i64 3540 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.d, i64 3556 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.d, i64 3572 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.d, i64 3588 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.d, i64 3604 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.d, i64 3620 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.d, i64 3636 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.d, i64 3652 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.d, i64 3668 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.d, i64 3684 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.d, i64 3700 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.d, i64 3716 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.d, i64 3732 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.d, i64 3748 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.d, i64 3764 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.d, i64 3780 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.d, i64 3524
  %i.abh = getelementptr inbounds nuw i8, ptr %i.d, i64 3540
  %i.abi = getelementptr inbounds nuw i8, ptr %i.d, i64 3556
  %i.abj = getelementptr inbounds nuw i8, ptr %i.d, i64 3572
  %i.abk = getelementptr inbounds nuw i8, ptr %i.d, i64 3588
  %i.abl = getelementptr inbounds nuw i8, ptr %i.d, i64 3604
  %i.abm = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.abn = getelementptr inbounds nuw i8, ptr %i.d, i64 3636
  %i.abo = getelementptr inbounds nuw i8, ptr %i.d, i64 3652
  %i.abp = getelementptr inbounds nuw i8, ptr %i.d, i64 3668
  %i.abq = getelementptr inbounds nuw i8, ptr %i.d, i64 3684
  %i.abr = getelementptr inbounds nuw i8, ptr %i.d, i64 3700
  %i.abs = getelementptr inbounds nuw i8, ptr %i.d, i64 3716
  %i.abt = getelementptr inbounds nuw i8, ptr %i.d, i64 3732
  %i.abu = getelementptr inbounds nuw i8, ptr %i.d, i64 3748
  %i.abv = getelementptr inbounds nuw i8, ptr %i.d, i64 3764
  %i.abw = getelementptr inbounds nuw i8, ptr %i.d, i64 3780
  br label %bb.ad

bb.ad:                                            ; preds = %dss_sp_sf_synthesis.exit.i, %dss_sp_convert_coeffs.exit.preheader.i
  %indvars.iv151.i = phi i64 [ 0, %dss_sp_convert_coeffs.exit.preheader.i ], [ %indvars.iv.next152.i, %dss_sp_sf_synthesis.exit.i ] ; 5 uses
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.pp, i64 %indvars.iv151.i
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !68 ; 2 uses
  %i.abz = sext i16 %i.aby to i32                 ; 5 uses
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %indvars.iv151.i
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !68
  %i.acc = sext i16 %i.acb to i64
  %i.acd = getelementptr inbounds [2 x i8], ptr @dss_sp_adaptive_gain, i64 %i.acc
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !68
  %i.acf = zext i16 %i.ace to i32
  %i.acg = icmp slt i16 %i.aby, 72
  br i1 %i.acg, label %.preheader.i45.i, label %.preheader25.preheader.i.i

.preheader25.preheader.i.i:                       ; preds = %bb.ad
  %i.ach = zext nneg i32 %i.abz to i64            ; 4 uses
  br label %.preheader25.i.i

.preheader.i45.i:                                 ; preds = %bb.ad, %.preheader.i45.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i.1.a, %.preheader.i45.i ], [ 0, %bb.ad ] ; 4 uses
  %i.aci = trunc nuw nsw i64 %indvars.iv32.i.i to i32
  %i.acj = srem i32 %i.aci, %i.abz
  %i.ack = sub nsw i32 %i.abz, %i.acj
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.acl
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !29
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv32.i.i
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !29
  %indvars.iv.next33.i.i = or disjoint i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.acp = trunc nuw nsw i64 %indvars.iv.next33.i.i to i32
  %i.acq = srem i32 %i.acp, %i.abz
  %i.acr = sub nsw i32 %i.abz, %i.acq
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !29
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next33.i.i
  store i32 %i.acu, ptr %i.acv, align 4, !tbaa !29
  %indvars.iv.next33.i.i.1.a = add nuw nsw i64 %indvars.iv32.i.i, 2 ; 2 uses
  %exitcond35.not.i.i.1 = icmp eq i64 %indvars.iv.next33.i.i.1.a, 72
  br i1 %exitcond35.not.i.i.1, label %vector.ph196, label %.preheader.i45.i, !llvm.loop !45

.preheader25.i.i:                                 ; preds = %.preheader25.i.i, %.preheader25.preheader.i.i
  %indvars.iv.i41.i = phi i64 [ 0, %.preheader25.preheader.i.i ], [ %indvars.iv.next.i42.i.3, %.preheader25.i.i ] ; 6 uses
  %i.acw = sub nuw nsw i64 %i.ach, %indvars.iv.i41.i
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !29
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i41.i
  store i32 %i.acy, ptr %i.acz, align 4, !tbaa !29
  %indvars.iv.next.i42.i = or disjoint i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.ada = sub nuw nsw i64 %i.ach, %indvars.iv.next.i42.i
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !29
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next.i42.i
  store i32 %i.adc, ptr %i.add, align 4, !tbaa !29
  %indvars.iv.next.i42.i.1 = or disjoint i64 %indvars.iv.i41.i, 2 ; 2 uses
  %i.ade = sub nuw nsw i64 %i.ach, %indvars.iv.next.i42.i.1
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !29
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next.i42.i.1
  store i32 %i.adg, ptr %i.adh, align 4, !tbaa !29
  %indvars.iv.next.i42.i.2 = or disjoint i64 %indvars.iv.i41.i, 3 ; 2 uses
  %i.adi = sub nuw nsw i64 %i.ach, %indvars.iv.next.i42.i.2
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !29
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next.i42.i.2
  store i32 %i.adk, ptr %i.adl, align 4, !tbaa !29
  %indvars.iv.next.i42.i.3 = add nuw nsw i64 %indvars.iv.i41.i, 4 ; 2 uses
  %exitcond.not.i43.i.3 = icmp eq i64 %indvars.iv.next.i42.i.3, 72
  br i1 %exitcond.not.i43.i.3, label %vector.ph196, label %.preheader25.i.i, !llvm.loop !46

vector.ph196:                                     ; preds = %.preheader25.i.i, %.preheader.i45.i
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %i.acf, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph196
  %index200 = phi i64 [ 0, %vector.ph196 ], [ %index.next203, %vector.body199 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %index200 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16 ; 2 uses
  %wide.load201 = load <4 x i32>, ptr %i.adm, align 4, !tbaa !29
  %wide.load202 = load <4 x i32>, ptr %i.adn, align 4, !tbaa !29
  %i.ado = mul nsw <4 x i32> %wide.load201, %broadcast.splat198
  %i.adp = mul nsw <4 x i32> %wide.load202, %broadcast.splat198
  %i.adq = ashr <4 x i32> %i.ado, splat (i32 11)
  %i.adr = ashr <4 x i32> %i.adp, splat (i32 11)
  %i.ads = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.adq, <4 x i32> splat (i32 -32768))
  %i.adt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.adr, <4 x i32> splat (i32 -32768))
  %i.adu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ads, <4 x i32> splat (i32 32767))
  %i.adv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.adt, <4 x i32> splat (i32 32767))
  store <4 x i32> %i.adu, ptr %i.adm, align 4, !tbaa !29
  store <4 x i32> %i.adv, ptr %i.adn, align 4, !tbaa !29
  %index.next203 = add nuw i64 %index200, 8       ; 2 uses
  %i.adw = icmp eq i64 %index.next203, 72
  br i1 %i.adw, label %dss_sp_gen_exc.exit.i, label %vector.body199, !llvm.loop !47

dss_sp_gen_exc.exit.i:                            ; preds = %vector.body199
  %i.adx = getelementptr inbounds nuw [36 x i8], ptr %i.hc, i64 %indvars.iv151.i ; 15 uses
  %i.ady = load i16, ptr %i.adx, align 4, !tbaa !71
  %i.adz = sext i16 %i.ady to i64
  %i.aea = getelementptr inbounds [2 x i8], ptr @dss_sp_fixed_cb_gain, i64 %i.adz
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !68
  %i.aec = zext i16 %i.aeb to i32                 ; 7 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adx, i64 22
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.aef = load i16, ptr %i.aed, align 2, !tbaa !68
  %i.aeg = sext i16 %i.aef to i64
  %i.aeh = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.aeg
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !68
  %i.aej = sext i16 %i.aei to i32
  %i.aek = mul nsw i32 %i.aej, %i.aec
  %i.ael = add nsw i32 %i.aek, 16384
  %i.aem = ashr i32 %i.ael, 15
  %i.aen = load i16, ptr %i.aee, align 4, !tbaa !68
  %i.aeo = sext i16 %i.aen to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.aeo ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !29
  %i.aer = add nsw i32 %i.aem, %i.aeq
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !29
  %i.aes = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  %i.aet = load i16, ptr %i.aes, align 4, !tbaa !68
  %i.aeu = sext i16 %i.aet to i64
  %i.aev = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.aeu
  %i.aew = load i16, ptr %i.aev, align 2, !tbaa !68
  %i.aex = sext i16 %i.aew to i32
  %i.aey = mul nsw i32 %i.aex, %i.aec
  %i.aez = add nsw i32 %i.aey, 16384
  %i.afa = ashr i32 %i.aez, 15
  %i.afb = getelementptr inbounds nuw i8, ptr %i.adx, i64 10
  %i.afc = load i16, ptr %i.afb, align 2, !tbaa !68
  %i.afd = sext i16 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.afd ; 2 uses
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !29
  %i.afg = add nsw i32 %i.afa, %i.aff
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !29
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adx, i64 26
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !68
  %i.afj = sext i16 %i.afi to i64
  %i.afk = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.afj
  %i.afl = load i16, ptr %i.afk, align 2, !tbaa !68
  %i.afm = sext i16 %i.afl to i32
  %i.afn = mul nsw i32 %i.afm, %i.aec
  %i.afo = add nsw i32 %i.afn, 16384
  %i.afp = ashr i32 %i.afo, 15
  %i.afq = getelementptr inbounds nuw i8, ptr %i.adx, i64 12
  %i.afr = load i16, ptr %i.afq, align 4, !tbaa !68
  %i.afs = sext i16 %i.afr to i64
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.afs ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !29
  %i.afv = add nsw i32 %i.afp, %i.afu
  store i32 %i.afv, ptr %i.aft, align 4, !tbaa !29
  %i.afw = getelementptr inbounds nuw i8, ptr %i.adx, i64 28
  %i.afx = load i16, ptr %i.afw, align 4, !tbaa !68
  %i.afy = sext i16 %i.afx to i64
  %i.afz = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.afy
  %i.aga = load i16, ptr %i.afz, align 2, !tbaa !68
  %i.agb = sext i16 %i.aga to i32
  %i.agc = mul nsw i32 %i.agb, %i.aec
  %i.agd = add nsw i32 %i.agc, 16384
  %i.age = ashr i32 %i.agd, 15
  %i.agf = getelementptr inbounds nuw i8, ptr %i.adx, i64 14
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !68
  %i.agh = sext i16 %i.agg to i64
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.agh ; 2 uses
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !29
  %i.agk = add nsw i32 %i.age, %i.agj
  store i32 %i.agk, ptr %i.agi, align 4, !tbaa !29
  %i.agl = getelementptr inbounds nuw i8, ptr %i.adx, i64 30
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !68
  %i.agn = sext i16 %i.agm to i64
  %i.ago = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.agn
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !68
  %i.agq = sext i16 %i.agp to i32
  %i.agr = mul nsw i32 %i.agq, %i.aec
  %i.ags = add nsw i32 %i.agr, 16384
  %i.agt = ashr i32 %i.ags, 15
  %i.agu = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.agv = load i16, ptr %i.agu, align 4, !tbaa !68
  %i.agw = sext i16 %i.agv to i64
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.agw ; 2 uses
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !29
  %i.agz = add nsw i32 %i.agt, %i.agy
  store i32 %i.agz, ptr %i.agx, align 4, !tbaa !29
  %i.aha = getelementptr inbounds nuw i8, ptr %i.adx, i64 32
  %i.ahb = load i16, ptr %i.aha, align 4, !tbaa !68
  %i.ahc = sext i16 %i.ahb to i64
  %i.ahd = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.ahc
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !68
  %i.ahf = sext i16 %i.ahe to i32
  %i.ahg = mul nsw i32 %i.ahf, %i.aec
  %i.ahh = add nsw i32 %i.ahg, 16384
  %i.ahi = ashr i32 %i.ahh, 15
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.adx, i64 18
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !68
  %i.ahl = sext i16 %i.ahk to i64
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.ahl ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !29
  %i.aho = add nsw i32 %i.ahi, %i.ahn
  store i32 %i.aho, ptr %i.ahm, align 4, !tbaa !29
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.adx, i64 34
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !68
  %i.ahr = sext i16 %i.ahq to i64
  %i.ahs = getelementptr inbounds [2 x i8], ptr @dss_sp_pulse_val, i64 %i.ahr
  %i.aht = load i16, ptr %i.ahs, align 2, !tbaa !68
  %i.ahu = sext i16 %i.aht to i32
  %i.ahv = mul nsw i32 %i.ahu, %i.aec
  %i.ahw = add nsw i32 %i.ahv, 16384
  %i.ahx = ashr i32 %i.ahw, 15
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.adx, i64 20
  %i.ahz = load i16, ptr %i.ahy, align 4, !tbaa !68
  %i.aia = sext i16 %i.ahz to i64
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.aia ; 2 uses
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !29
  %i.aid = add nsw i32 %i.ahx, %i.aic
  store i32 %i.aid, ptr %i.aib, align 4, !tbaa !29
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(456) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(456) %scevgep13.i.i, i64 456, i1 false), !tbaa !29
  br label %.preheader.i47.i

.preheader.i47.i:                                 ; preds = %.preheader.i47.i, %dss_sp_gen_exc.exit.i
  %indvars.iv.i48.i = phi i64 [ 0, %dss_sp_gen_exc.exit.i ], [ %indvars.iv.next.i49.i.3, %.preheader.i47.i ] ; 9 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i48.i
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !29
  %i.aig = sub nuw nsw i64 72, %indvars.iv.i48.i
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.aig
  store i32 %i.aif, ptr %i.aih, align 4, !tbaa !29
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i48.i
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 4
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !29
  %i.ail = sub nuw nsw i64 71, %indvars.iv.i48.i
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.ail
  store i32 %i.aik, ptr %i.aim, align 4, !tbaa !29
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i48.i
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !29
  %i.aiq = sub nuw nsw i64 70, %indvars.iv.i48.i
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.aiq
  store i32 %i.aip, ptr %i.air, align 4, !tbaa !29
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i48.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 12
end_hunk_0
