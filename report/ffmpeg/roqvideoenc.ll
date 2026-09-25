Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/roqvideoenc?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 103
begin_hunk_0_@roq_encode_frame:bb.a
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !55
  %i.sc = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 60
  %i.sd = load i32, ptr %i.ry, align 4, !tbaa !56
  %i.se = trunc i32 %i.sd to i8
  %i.sf = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 14
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !55
  %i.sg = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 64
  %i.sh = load i32, ptr %i.sc, align 4, !tbaa !56
  %i.si = trunc i32 %i.sh to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 15
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !55
  %i.sk = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 68
  %i.sl = load i32, ptr %i.sg, align 4, !tbaa !56
  %i.sm = trunc i32 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 16
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !98
  %i.so = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 72
  %i.sp = load i32, ptr %i.sk, align 4, !tbaa !56
  %i.sq = trunc i32 %i.sp to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 17
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !99
  %i.ss = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 18
  %i.st = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 76
  %i.su = load i32, ptr %i.so, align 4, !tbaa !56
  %i.sv = trunc i32 %i.su to i8
  store i8 %i.sv, ptr %i.ss, align 1, !tbaa !55
  %i.sw = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 80
  %i.sx = load i32, ptr %i.st, align 4, !tbaa !56
  %i.sy = trunc i32 %i.sx to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 19
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !55
  %i.ta = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 84
  %i.tb = load i32, ptr %i.sw, align 4, !tbaa !56
  %i.tc = trunc i32 %i.tb to i8
  %i.td = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 20
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !55
  %i.te = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 88
  %i.tf = load i32, ptr %i.ta, align 4, !tbaa !56
  %i.tg = trunc i32 %i.tf to i8
  %i.th = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 21
  store i8 %i.tg, ptr %i.th, align 1, !tbaa !55
  %i.ti = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 92
  %i.tj = load i32, ptr %i.te, align 4, !tbaa !56
  %i.tk = trunc i32 %i.tj to i8
  %i.tl = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 22
  store i8 %i.tk, ptr %i.tl, align 1, !tbaa !98
  %i.tm = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 96
  %i.tn = load i32, ptr %i.ti, align 4, !tbaa !56
  %i.to = trunc i32 %i.tn to i8
  %i.tp = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 23
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !99
  %i.tq = getelementptr inbounds nuw i8, ptr %.03546.i.i.i, i64 24
  %i.tr = add nuw nsw i32 %.03347.i.i.i, 1        ; 2 uses
  %exitcond52.not.i.i.i = icmp eq i32 %i.tr, %i.pq
  br i1 %exitcond52.not.i.i.i, label %generate_codebook.exit.i.i, label %.preheader38.i.i.i, !llvm.loop !74

generate_codebook.exit.i.i:                       ; preds = %.preheader38.i.i.i
  %i.ts = shl nsw i32 %i.br, 2
  %i.tt = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 18 uses
  %i.tu = load ptr, ptr %i.pt, align 8, !tbaa !50
  %i.tv = tail call i32 @avpriv_elbg_do(ptr noundef nonnull %i.pv, ptr noundef %i.bt, i32 noundef 6, i32 noundef range(i32 -536870912, 536870909) %i.ts, ptr noundef nonnull %i.ps, i32 noundef 256, i32 noundef 1, ptr noundef %i.tu, ptr noundef nonnull %i.pw, i64 noundef 0) #9 ; 2 uses
  %i.tw = icmp slt i32 %i.tv, 0
  br i1 %i.tw, label %roq_encode_video.exit.thread, label %.preheader38.i57.i.i

.preheader38.i57.i.i:                             ; preds = %generate_codebook.exit.i.i, %.preheader38.i57.i.i
  %.048.i58.i.i = phi ptr [ %i.uv, %.preheader38.i57.i.i ], [ %i.ps, %generate_codebook.exit.i.i ] ; 13 uses
  %.03347.i59.i.i = phi i32 [ %i.vt, %.preheader38.i57.i.i ], [ 0, %generate_codebook.exit.i.i ]
  %.03546.i60.i.i = phi ptr [ %i.uw, %.preheader38.i57.i.i ], [ %i.tt, %generate_codebook.exit.i.i ] ; 13 uses
  %i.tx = getelementptr i8, ptr %.048.i58.i.i, i64 24
  %i.ty = getelementptr i8, ptr %.03546.i60.i.i, i64 6
  %i.tz = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 4
  %i.ua = load i32, ptr %.048.i58.i.i, align 4, !tbaa !56
  %i.ub = trunc i32 %i.ua to i8
  store i8 %i.ub, ptr %.03546.i60.i.i, align 1, !tbaa !55
  %i.uc = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 8
  %i.ud = load i32, ptr %i.tz, align 4, !tbaa !56
  %i.ue = trunc i32 %i.ud to i8
  %i.uf = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 1
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !55
  %i.ug = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 12
  %i.uh = load i32, ptr %i.uc, align 4, !tbaa !56
  %i.ui = trunc i32 %i.uh to i8
  %i.uj = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 2
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !55
  %i.uk = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 16
  %i.ul = load i32, ptr %i.ug, align 4, !tbaa !56
  %i.um = trunc i32 %i.ul to i8
  %i.un = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 3
  store i8 %i.um, ptr %i.un, align 1, !tbaa !55
  %i.uo = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 20
  %i.up = load i32, ptr %i.uk, align 4, !tbaa !56
  %i.uq = trunc i32 %i.up to i8
  %i.ur = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 4
  store i8 %i.uq, ptr %i.ur, align 1, !tbaa !98
  %i.us = load i32, ptr %i.uo, align 4, !tbaa !56
  %i.ut = trunc i32 %i.us to i8
  %i.uu = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 5
  store i8 %i.ut, ptr %i.uu, align 1, !tbaa !99
  %i.uv = getelementptr i8, ptr %.048.i58.i.i, i64 48
  %i.uw = getelementptr i8, ptr %.03546.i60.i.i, i64 12
  %i.ux = getelementptr i8, ptr %.048.i58.i.i, i64 28
  %i.uy = load i32, ptr %i.tx, align 4, !tbaa !56
  %i.uz = trunc i32 %i.uy to i8
  store i8 %i.uz, ptr %i.ty, align 1, !tbaa !55
  %i.va = getelementptr i8, ptr %.048.i58.i.i, i64 32
  %i.vb = load i32, ptr %i.ux, align 4, !tbaa !56
  %i.vc = trunc i32 %i.vb to i8
  %i.vd = getelementptr i8, ptr %.03546.i60.i.i, i64 7
  store i8 %i.vc, ptr %i.vd, align 1, !tbaa !55
  %i.ve = getelementptr i8, ptr %.048.i58.i.i, i64 36
  %i.vf = load i32, ptr %i.va, align 4, !tbaa !56
  %i.vg = trunc i32 %i.vf to i8
  %i.vh = getelementptr i8, ptr %.03546.i60.i.i, i64 8
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !55
  %i.vi = getelementptr i8, ptr %.048.i58.i.i, i64 40
  %i.vj = load i32, ptr %i.ve, align 4, !tbaa !56
  %i.vk = trunc i32 %i.vj to i8
  %i.vl = getelementptr i8, ptr %.03546.i60.i.i, i64 9
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !55
  %i.vm = getelementptr i8, ptr %.048.i58.i.i, i64 44
  %i.vn = load i32, ptr %i.vi, align 4, !tbaa !56
  %i.vo = trunc i32 %i.vn to i8
  %i.vp = getelementptr i8, ptr %.03546.i60.i.i, i64 10
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !98
  %i.vq = load i32, ptr %i.vm, align 4, !tbaa !56
  %i.vr = trunc i32 %i.vq to i8
  %i.vs = getelementptr i8, ptr %.03546.i60.i.i, i64 11
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !99
  %i.vt = add nuw nsw i32 %.03347.i59.i.i, 2      ; 2 uses
  %exitcond52.not.i67.i.i.1 = icmp eq i32 %i.vt, 256
  br i1 %exitcond52.not.i67.i.i.1, label %generate_codebook.exit69.i.i, label %.preheader38.i57.i.i, !llvm.loop !74

generate_codebook.exit69.i.i:                     ; preds = %.preheader38.i57.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.c, i64 10120 ; 2 uses
  store i32 256, ptr %i.vu, align 8, !tbaa !100
  %i.vv = getelementptr inbounds nuw i8, ptr %i.c, i64 12172 ; 7 uses
  br label %bb.i

.preheader77.i.i:                                 ; preds = %bb.i
  %i.vw = load i32, ptr %i.bn, align 4, !tbaa !96
  %i.vx = icmp sgt i32 %i.vw, 0
  br i1 %i.vx, label %.preheader.lr.ph.i.i, label %generate_new_codebooks.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader77.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.c, i64 1576
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 15244
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 27532
  br label %.preheader.i.i

bb.i:                                             ; preds = %bb.i, %generate_codebook.exit69.i.i
  %indvars.iv.i.i = phi i64 [ 0, %generate_codebook.exit69.i.i ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 4 uses
  %i.wb = getelementptr inbounds nuw [6 x i8], ptr %i.tt, i64 %indvars.iv.i.i ; 3 uses
  %i.wc = mul nuw nsw i64 %indvars.iv.i.i, 12
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.wc ; 3 uses
  %i.we = load i32, ptr %i.wb, align 1
  store i32 %i.we, ptr %i.wd, align 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.wf, i8 %i.wh, i64 4, i1 false)
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 5
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.wi, i8 %i.wk, i64 4, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.wl = getelementptr inbounds nuw [6 x i8], ptr %i.tt, i64 %indvars.iv.next.i.i ; 3 uses
  %i.wm = mul nuw nsw i64 %indvars.iv.next.i.i, 12
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.wm ; 3 uses
  %i.wo = load i32, ptr %i.wl, align 1
  store i32 %i.wo, ptr %i.wn, align 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.wp, i8 %i.wr, i64 4, i1 false)
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wl, i64 5
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ws, i8 %i.wu, i64 4, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %.preheader77.i.i, label %bb.i, !llvm.loop !75

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.lr.ph.i.i
  %indvars.iv100.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next101.i.i, %bb.k ] ; 5 uses
  %i.wv = getelementptr inbounds nuw [16 x i8], ptr %i.vy, i64 %indvars.iv100.i.i ; 5 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv100.i.i, 24
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx.i.i
  br label %bb.j

bb.j:                                             ; preds = %index_mb.exit.i.i, %.preheader.i.i
  %indvars.iv96.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next97.i.i, %index_mb.exit.i.i ] ; 3 uses
  %i.ww = load i32, ptr %i.vu, align 8, !tbaa !100 ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv96.i.i
  %i.wy = icmp sgt i32 %i.ww, 0
  br i1 %i.wy, label %.lr.ph.i.i.i, label %index_mb.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %gep.i.i = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv96.i.i ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 4
  %i.xa = load <2 x i8>, ptr %i.wz, align 1, !tbaa !55
  %5 = load <4 x i8>, ptr %gep.i.i, align 1
  %wide.trip.count.i.i.i = zext nneg i32 %i.ww to i64
  %i.xb = zext <2 x i8> %i.xa to <2 x i32>
  %i.xc = shufflevector <2 x i32> %i.xb, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %6 = zext <4 x i8> %5 to <4 x i32>
  br label %eval_sse.exit.i.i.i.i

eval_sse.exit.i.i.i.i:                            ; preds = %eval_sse.exit.i.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i71.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i72.i.i, %eval_sse.exit.i.i.i.i ] ; 3 uses
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select19.i.i.i, %eval_sse.exit.i.i.i.i ]
  %.01523.i.i.i = phi i32 [ 2147483647, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %eval_sse.exit.i.i.i.i ] ; 2 uses
  %i.xd = mul nuw nsw i64 %indvars.iv.i71.i.i, 12
  %i.xe = and i64 %i.xd, 4294967292
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.xe ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xh = load <8 x i8>, ptr %i.xg, align 1, !tbaa !55
  %i.xi = zext <8 x i8> %i.xh to <8 x i32>
  %i.xj = sub nsw <8 x i32> %i.xi, %i.xc          ; 2 uses
  %i.xk = mul nsw <8 x i32> %i.xj, %i.xj
  %7 = load <4 x i8>, ptr %i.xf, align 1, !tbaa !55
  %8 = zext <4 x i8> %7 to <4 x i32>
  %9 = sub nsw <4 x i32> %8, %6                   ; 2 uses
  %10 = mul nsw <4 x i32> %9, %9
  %11 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %i.xl = trunc nuw nsw i64 %indvars.iv.i71.i.i to i32
  %i.xm = shl nuw nsw i32 %11, 2
  %i.xn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.xk)
  %op.rdx123 = add i32 %i.xn, %i.xm               ; 2 uses
  %i.xo = icmp slt i32 %op.rdx123, %.01523.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %op.rdx123, i32 %.01523.i.i.i)
  %spec.select19.i.i.i = select i1 %i.xo, i32 %i.xl, i32 %.024.i.i.i ; 2 uses
  %indvars.iv.next.i72.i.i = add nuw nsw i64 %indvars.iv.i71.i.i, 1 ; 2 uses
  %exitcond.not.i73.i.i = icmp eq i64 %indvars.iv.next.i72.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i73.i.i, label %index_mb.exit.i.i, label %eval_sse.exit.i.i.i.i, !llvm.loop !0

index_mb.exit.i.i:                                ; preds = %eval_sse.exit.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.j ], [ %spec.select19.i.i.i, %eval_sse.exit.i.i.i.i ]
  store i32 %.0.lcssa.i.i.i, ptr %i.wx, align 4, !tbaa !56
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond99.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, 4
  br i1 %exitcond99.not.i.i, label %bb.k, label %bb.j, !llvm.loop !76

bb.k:                                             ; preds = %index_mb.exit.i.i
  %i.xp = mul nuw nsw i64 %indvars.iv100.i.i, 48
  %i.xq = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.xp ; 26 uses
  %i.xr = load i32, ptr %i.wv, align 4, !tbaa !56
  %i.xs = mul nsw i32 %i.xr, 12
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds i8, ptr %i.vv, i64 %i.xt ; 10 uses
  %i.xv = getelementptr i8, ptr %i.xu, i64 1
  %i.xw = getelementptr i8, ptr %i.xq, i64 1
  %i.xx = getelementptr i8, ptr %i.xu, i64 2
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xq, i64 2
  %i.ya = getelementptr i8, ptr %i.xq, i64 6
  %i.yb = getelementptr i8, ptr %i.xq, i64 7
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.ye = getelementptr i8, ptr %i.xq, i64 9
  %i.yf = getelementptr i8, ptr %i.xq, i64 12
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xq, i64 10
  %i.yi = getelementptr i8, ptr %i.xq, i64 11
  %i.yj = getelementptr i8, ptr %i.xu, i64 4      ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xq, i64 16 ; 2 uses
  %i.yl = getelementptr i8, ptr %i.xu, i64 5
  %i.ym = getelementptr i8, ptr %i.xq, i64 17
  %i.yn = getelementptr i8, ptr %i.xu, i64 6
  %i.yo = getelementptr i8, ptr %i.xq, i64 20
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xq, i64 18
  %i.yq = getelementptr i8, ptr %i.xq, i64 19
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xq, i64 24 ; 2 uses
  %i.ys = getelementptr i8, ptr %i.xq, i64 28     ; 2 uses
  %i.yt = getelementptr i8, ptr %i.xu, i64 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xq, i64 32 ; 2 uses
  %i.yv = getelementptr i8, ptr %i.xu, i64 9
  %i.yw = getelementptr i8, ptr %i.xq, i64 33     ; 2 uses
  %i.yx = getelementptr i8, ptr %i.xu, i64 10
  %i.yy = getelementptr i8, ptr %i.xq, i64 36
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xq, i64 34 ; 2 uses
  %i.za = getelementptr i8, ptr %i.xq, i64 35
  %i.zb = getelementptr i8, ptr %i.xq, i64 38
  %i.zc = getelementptr i8, ptr %i.xq, i64 39     ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xq, i64 40 ; 2 uses
  %i.ze = getelementptr i8, ptr %i.xq, i64 44     ; 2 uses
  %i.zf = mul nuw nsw i64 %indvars.iv100.i.i, 192
  %i.zg = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.zf ; 28 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = load <2 x i8>, ptr %i.xu, align 1, !tbaa !55
  %i.zj = load i8, ptr %i.xv, align 1, !tbaa !55
  %i.zk = load i8, ptr %i.xu, align 1, !tbaa !55
  store i8 %i.zk, ptr %i.xq, align 1, !tbaa !55
  store i8 %i.zj, ptr %i.xw, align 1, !tbaa !55
  %i.zl = load i32, ptr %i.xy, align 4, !tbaa !56
  %i.zm = mul nsw i32 %i.zl, 12
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds i8, ptr %i.vv, i64 %i.zn ; 10 uses
  %i.zp = load <2 x i8>, ptr %i.zo, align 1, !tbaa !55
  %i.zq = getelementptr i8, ptr %i.zo, i64 2      ; 2 uses
  %i.zr = getelementptr i8, ptr %i.zo, i64 3
  %i.zs = getelementptr i8, ptr %i.zo, i64 4      ; 2 uses
  %i.zt = getelementptr i8, ptr %i.zo, i64 5
  %i.zu = getelementptr i8, ptr %i.zo, i64 6
  %i.zv = getelementptr i8, ptr %i.zo, i64 8
  %i.zw = getelementptr i8, ptr %i.zo, i64 10
  %i.zx = getelementptr i8, ptr %i.zo, i64 11
  %i.zy = shufflevector <2 x i8> %i.zi, <2 x i8> %i.zp, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.aaa = load <2 x i8>, ptr %i.xx, align 1, !tbaa !55 ; 2 uses
  %i.aab = load <2 x i8>, ptr %i.zo, align 1, !tbaa !55
  %i.aac = shufflevector <2 x i8> %i.aab, <2 x i8> %i.aaa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aac, ptr %i.xz, align 1, !tbaa !55
  %i.aad = load <2 x i8>, ptr %i.zq, align 1, !tbaa !55
  %i.aae = load i8, ptr %i.zr, align 1, !tbaa !55
  %i.aaf = load i8, ptr %i.zq, align 1, !tbaa !55
  store i8 %i.aaf, ptr %i.ya, align 1, !tbaa !55
  store i8 %i.aae, ptr %i.yb, align 1, !tbaa !55
  %i.aag = load i32, ptr %i.yc, align 4, !tbaa !56
  %i.aah = mul nsw i32 %i.aag, 12
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds i8, ptr %i.vv, i64 %i.aai ; 8 uses
  %i.aak = getelementptr i8, ptr %i.aaj, i64 1
  %i.aal = getelementptr i8, ptr %i.aaj, i64 2
  %i.aam = getelementptr i8, ptr %i.aaj, i64 4
  %i.aan = getelementptr i8, ptr %i.aaj, i64 6
  %i.aao = getelementptr i8, ptr %i.aaj, i64 8
  %i.aap = getelementptr i8, ptr %i.aaj, i64 10
  %i.aaq = shufflevector <2 x i8> %i.aaa, <2 x i8> %i.aad, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.aas = load <2 x i8>, ptr %i.aaj, align 1, !tbaa !55
  %i.aat = load i8, ptr %i.aak, align 1, !tbaa !55
  %i.aau = load i8, ptr %i.aaj, align 1, !tbaa !55
  store i8 %i.aau, ptr %i.yd, align 1, !tbaa !55
  store i8 %i.aat, ptr %i.ye, align 1, !tbaa !55
  %i.aav = load i32, ptr %i.yg, align 4, !tbaa !56
  %i.aaw = mul nsw i32 %i.aav, 12
  %i.aax = sext i32 %i.aaw to i64
  %i.aay = getelementptr inbounds i8, ptr %i.vv, i64 %i.aax ; 8 uses
  %i.aaz = getelementptr i8, ptr %i.aay, i64 1
  %i.aba = getelementptr i8, ptr %i.aay, i64 2
  %i.abb = getelementptr i8, ptr %i.aay, i64 4
  %i.abc = getelementptr i8, ptr %i.aay, i64 6
  %i.abd = getelementptr i8, ptr %i.aay, i64 8
  %i.abe = getelementptr i8, ptr %i.aay, i64 10
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zg, i64 64
  %i.abg = load <2 x i8>, ptr %i.aal, align 1, !tbaa !55 ; 2 uses
  %i.abh = load <2 x i8>, ptr %i.aba, align 1, !tbaa !55 ; 2 uses
  %i.abi = shufflevector <2 x i8> %i.abg, <2 x i8> %i.abh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.abi, ptr %i.yf, align 1, !tbaa !55
  %i.abj = load <2 x i8>, ptr %i.aay, align 1, !tbaa !55
  %i.abk = load i8, ptr %i.aaz, align 1, !tbaa !55
  %i.abl = load i8, ptr %i.aay, align 1, !tbaa !55
  store i8 %i.abl, ptr %i.yh, align 1, !tbaa !55
  store i8 %i.abk, ptr %i.yi, align 1, !tbaa !55
  %i.abm = shufflevector <2 x i8> %i.aas, <2 x i8> %i.abj, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.abn = shufflevector <2 x i8> %i.abg, <2 x i8> %i.abh, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zg, i64 72
  %i.abp = load <2 x i8>, ptr %i.yj, align 1, !tbaa !55
  %i.abq = load i8, ptr %i.yl, align 1, !tbaa !55
  %i.abr = load i8, ptr %i.yj, align 1, !tbaa !55
  store i8 %i.abr, ptr %i.yk, align 1, !tbaa !55
  store i8 %i.abq, ptr %i.ym, align 1, !tbaa !55
  %i.abs = load <2 x i8>, ptr %i.zs, align 1, !tbaa !55
  %i.abt = load i8, ptr %i.zt, align 1, !tbaa !55
  %i.abu = load i8, ptr %i.zs, align 1, !tbaa !55
  %i.abv = load <2 x i8>, ptr %i.yn, align 1, !tbaa !55
  store i8 %i.abu, ptr %i.yp, align 1, !tbaa !55
  store i8 %i.abt, ptr %i.yq, align 1, !tbaa !55
  %i.abw = load <2 x i8>, ptr %i.zu, align 1, !tbaa !55
  %i.abx = shufflevector <2 x i8> %i.abv, <2 x i8> %i.abw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.abx, ptr %i.yo, align 1, !tbaa !55
  %i.aby = load i8, ptr %i.yt, align 1, !tbaa !55
  store i8 %i.aby, ptr %i.yu, align 1, !tbaa !55
  %i.abz = load i8, ptr %i.yv, align 1, !tbaa !55
  store i8 %i.abz, ptr %i.yw, align 1, !tbaa !55
  %i.aca = load <2 x i8>, ptr %i.aam, align 1, !tbaa !55
  %i.acb = load <2 x i8>, ptr %i.aan, align 1, !tbaa !55
  %i.acc = load <2 x i8>, ptr %i.abc, align 1, !tbaa !55
  %i.acd = shufflevector <2 x i8> %i.acb, <2 x i8> %i.acc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.acd, ptr %i.ys, align 1, !tbaa !55
  %i.ace = load <2 x i8>, ptr %i.abb, align 1, !tbaa !55
  %i.acf = shufflevector <2 x i8> %i.aca, <2 x i8> %i.ace, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.acf, ptr %i.yr, align 1, !tbaa !55
  %i.acg = load <2 x i8>, ptr %i.zv, align 1, !tbaa !55
  %i.ach = load <2 x i8>, ptr %i.yx, align 1, !tbaa !55
  %i.aci = shufflevector <2 x i8> %i.acg, <2 x i8> %i.ach, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aci, ptr %i.yz, align 1, !tbaa !55
  %i.acj = load i8, ptr %i.zw, align 1, !tbaa !55
  store i8 %i.acj, ptr %i.zb, align 1, !tbaa !55
  %i.ack = load i8, ptr %i.zx, align 1, !tbaa !55
  store i8 %i.ack, ptr %i.zc, align 1, !tbaa !55
  %i.acl = load <2 x i8>, ptr %i.aao, align 1, !tbaa !55
  %i.acm = load <2 x i8>, ptr %i.aap, align 1, !tbaa !55
  %i.acn = load <2 x i8>, ptr %i.abe, align 1, !tbaa !55
  %i.aco = shufflevector <2 x i8> %i.acm, <2 x i8> %i.acn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aco, ptr %i.ze, align 1, !tbaa !55
  %i.acp = load <2 x i8>, ptr %i.abd, align 1, !tbaa !55
  %i.acq = shufflevector <2 x i8> %i.acl, <2 x i8> %i.acp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.acq, ptr %i.zd, align 1, !tbaa !55
  store <16 x i8> %i.zy, ptr %i.zg, align 1, !tbaa !55
  store <16 x i8> %i.aaq, ptr %i.zh, align 1, !tbaa !55
  store <16 x i8> %i.abm, ptr %i.zz, align 1, !tbaa !55
  store <16 x i8> %i.abn, ptr %i.aar, align 1, !tbaa !55
  %i.acr = shufflevector <2 x i8> %i.abp, <2 x i8> %i.abs, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %i.acr, ptr %i.abf, align 1, !tbaa !55
  %i.acs = getelementptr inbounds nuw i8, ptr %i.zg, i64 88
  %i.act = load <8 x i8>, ptr %i.yk, align 1, !tbaa !55 ; 2 uses
  %i.acu = shufflevector <8 x i8> %i.act, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.acu, ptr %i.abo, align 1, !tbaa !55
  %i.acv = getelementptr inbounds nuw i8, ptr %i.zg, i64 96
  %i.acw = shufflevector <8 x i8> %i.act, <8 x i8> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <8 x i8> %i.acw, ptr %i.acs, align 1, !tbaa !55
  %i.acx = getelementptr inbounds nuw i8, ptr %i.zg, i64 112
  %i.acy = load <4 x i8>, ptr %i.yr, align 1, !tbaa !55
  %i.acz = shufflevector <4 x i8> %i.acy, <4 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.acz, ptr %i.acv, align 1, !tbaa !55
  %i.ada = getelementptr inbounds nuw i8, ptr %i.zg, i64 128
  %i.adb = load <4 x i8>, ptr %i.ys, align 1, !tbaa !55
  %i.adc = shufflevector <4 x i8> %i.adb, <4 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.adc, ptr %i.acx, align 1, !tbaa !55
  %i.add = load i8, ptr %i.yu, align 1, !tbaa !55 ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.zg, i64 129
  store i8 %i.add, ptr %i.ada, align 1, !tbaa !55
  %i.adf = getelementptr inbounds nuw i8, ptr %i.zg, i64 130
  store i8 %i.add, ptr %i.ade, align 1, !tbaa !55
  %i.adg = load i8, ptr %i.yw, align 1, !tbaa !55 ; 4 uses
end_hunk_0
