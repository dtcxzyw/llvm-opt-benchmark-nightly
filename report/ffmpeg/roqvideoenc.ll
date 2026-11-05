Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/roqvideoenc?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumUnrolled: 106
begin_hunk_0_@roq_encode_frame:bb.a
  %i.rn = trunc i32 %i.rm to i8
  %i.ro = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 8
  store i8 %i.rn, ptr %i.ro, align 1, !tbaa !56
  %i.rp = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 40
  %i.rq = load i32, ptr %i.rl, align 4, !tbaa !42
  %i.rr = trunc i32 %i.rq to i8
  %i.rs = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 9
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !56
  %i.rt = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 44
  %i.ru = load i32, ptr %i.rp, align 4, !tbaa !42
  %i.rv = trunc i32 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 10
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !99
  %i.rx = getelementptr inbounds nuw i8, ptr %.048.i58.i.i, i64 48
  %i.ry = load i32, ptr %i.rt, align 4, !tbaa !42
  %i.rz = trunc i32 %i.ry to i8
  %i.sa = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 11
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !100
  %i.sb = getelementptr inbounds nuw i8, ptr %.03546.i60.i.i, i64 12
  %i.sc = add nuw nsw i32 %.03347.i59.i.i, 2      ; 2 uses
  %exitcond52.not.i67.i.i.1 = icmp eq i32 %i.sc, 256
  br i1 %exitcond52.not.i67.i.i.1, label %generate_codebook.exit69.i.i, label %.preheader38.i57.i.i, !llvm.loop !74

generate_codebook.exit69.i.i:                     ; preds = %.preheader38.i57.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.c, i64 10120 ; 2 uses
  store i32 256, ptr %i.sd, align 8, !tbaa !101
  %i.se = getelementptr inbounds nuw i8, ptr %i.c, i64 12172 ; 7 uses
  br label %bb.i

.preheader77.i.i:                                 ; preds = %bb.i
  %i.sf = load i32, ptr %i.bn, align 4, !tbaa !96
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %.preheader.lr.ph.i.i, label %generate_new_codebooks.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader77.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 1576
  %i.si = getelementptr inbounds nuw i8, ptr %i.c, i64 15244
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 27532
  br label %.preheader.i.i

bb.i:                                             ; preds = %bb.i, %generate_codebook.exit69.i.i
  %indvars.iv.i.i = phi i64 [ 0, %generate_codebook.exit69.i.i ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 4 uses
  %i.sk = getelementptr inbounds nuw [6 x i8], ptr %i.qc, i64 %indvars.iv.i.i ; 3 uses
  %i.sl = mul nuw nsw i64 %indvars.iv.i.i, 12
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sl ; 3 uses
  %i.sn = load i32, ptr %i.sk, align 1
  store i32 %i.sn, ptr %i.sm, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.so, i8 %i.sq, i64 4, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sk, i64 5
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.sr, i8 %i.st, i64 4, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.su = getelementptr inbounds nuw [6 x i8], ptr %i.qc, i64 %indvars.iv.next.i.i ; 3 uses
  %i.sv = mul nuw nsw i64 %indvars.iv.next.i.i, 12
  %i.sw = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sv ; 3 uses
  %i.sx = load i32, ptr %i.su, align 1
  store i32 %i.sx, ptr %i.sw, align 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.sy, i8 %i.ta, i64 4, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 5
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.tb, i8 %i.td, i64 4, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %.preheader77.i.i, label %bb.i, !llvm.loop !75

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.lr.ph.i.i
  %indvars.iv98.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next99.i.i, %bb.k ] ; 5 uses
  %i.te = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %indvars.iv98.i.i ; 5 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv98.i.i, 24
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx.i.i
  br label %bb.j

bb.j:                                             ; preds = %index_mb.exit.i.i, %.preheader.i.i
  %indvars.iv94.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next95.i.i, %index_mb.exit.i.i ] ; 3 uses
  %i.tf = load i32, ptr %i.sd, align 8, !tbaa !101 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv94.i.i
  %i.th = icmp sgt i32 %i.tf, 0
  br i1 %i.th, label %.lr.ph.i.i.i, label %index_mb.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %gep.i.i = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv94.i.i ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 4
  %i.tj = load <2 x i8>, ptr %i.ti, align 1, !tbaa !56
  %i.tk = load <4 x i8>, ptr %gep.i.i, align 1
  %wide.trip.count.i.i.i = zext nneg i32 %i.tf to i64
  %i.tl = zext <2 x i8> %i.tj to <2 x i32>
  %i.tm = shufflevector <2 x i32> %i.tl, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.tn = zext <4 x i8> %i.tk to <4 x i32>
  br label %eval_sse.exit.i.i.i.i

eval_sse.exit.i.i.i.i:                            ; preds = %eval_sse.exit.i.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i71.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i72.i.i, %eval_sse.exit.i.i.i.i ] ; 3 uses
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select19.i.i.i, %eval_sse.exit.i.i.i.i ]
  %.01523.i.i.i = phi i32 [ 2147483647, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %eval_sse.exit.i.i.i.i ] ; 2 uses
  %i.to = mul nuw nsw i64 %indvars.iv.i71.i.i, 12
  %i.tp = and i64 %i.to, 4294967292
  %i.tq = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.tp ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.ts = load <8 x i8>, ptr %i.tr, align 1, !tbaa !56
  %i.tt = zext <8 x i8> %i.ts to <8 x i32>
  %i.tu = sub nsw <8 x i32> %i.tt, %i.tm          ; 2 uses
  %i.tv = mul nsw <8 x i32> %i.tu, %i.tu
  %i.tw = load <4 x i8>, ptr %i.tq, align 1, !tbaa !56
  %i.tx = zext <4 x i8> %i.tw to <4 x i32>
  %i.ty = sub nsw <4 x i32> %i.tx, %i.tn          ; 2 uses
  %i.tz = mul nsw <4 x i32> %i.ty, %i.ty
  %i.ua = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.tz)
  %i.ub = trunc nuw nsw i64 %indvars.iv.i71.i.i to i32
  %i.uc = shl nuw nsw i32 %i.ua, 2
  %i.ud = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.tv)
  %op.rdx = add i32 %i.ud, %i.uc                  ; 2 uses
  %i.ue = icmp slt i32 %op.rdx, %.01523.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %op.rdx, i32 %.01523.i.i.i)
  %spec.select19.i.i.i = select i1 %i.ue, i32 %i.ub, i32 %.024.i.i.i ; 2 uses
  %indvars.iv.next.i72.i.i = add nuw nsw i64 %indvars.iv.i71.i.i, 1 ; 2 uses
  %exitcond.not.i73.i.i = icmp eq i64 %indvars.iv.next.i72.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i73.i.i, label %index_mb.exit.i.i, label %eval_sse.exit.i.i.i.i, !llvm.loop !0

index_mb.exit.i.i:                                ; preds = %eval_sse.exit.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.j ], [ %spec.select19.i.i.i, %eval_sse.exit.i.i.i.i ]
  store i32 %.0.lcssa.i.i.i, ptr %i.tg, align 4, !tbaa !42
  %indvars.iv.next95.i.i = add nuw nsw i64 %indvars.iv94.i.i, 1 ; 2 uses
  %exitcond97.not.i.i = icmp eq i64 %indvars.iv.next95.i.i, 4
  br i1 %exitcond97.not.i.i, label %bb.k, label %bb.j, !llvm.loop !76

bb.k:                                             ; preds = %index_mb.exit.i.i
  %i.uf = mul nuw nsw i64 %indvars.iv98.i.i, 48
  %i.ug = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.uf ; 26 uses
  %i.uh = load i32, ptr %i.te, align 4, !tbaa !42
  %i.ui = mul nsw i32 %i.uh, 12
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds i8, ptr %i.se, i64 %i.uj ; 10 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 1
  %i.um = getelementptr i8, ptr %i.ug, i64 1
  %i.un = getelementptr i8, ptr %i.uk, i64 2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  %i.uq = getelementptr i8, ptr %i.ug, i64 6
  %i.ur = getelementptr i8, ptr %i.ug, i64 7
  %i.us = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uu = getelementptr i8, ptr %i.ug, i64 9
  %i.uv = getelementptr i8, ptr %i.ug, i64 12
  %i.uw = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ug, i64 10
  %i.uy = getelementptr i8, ptr %i.ug, i64 11
  %i.uz = getelementptr i8, ptr %i.uk, i64 4      ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.ug, i64 16 ; 2 uses
  %i.vb = getelementptr i8, ptr %i.uk, i64 5
  %i.vc = getelementptr i8, ptr %i.ug, i64 17
  %i.vd = getelementptr i8, ptr %i.uk, i64 6
  %i.ve = getelementptr i8, ptr %i.ug, i64 20
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ug, i64 18
  %i.vg = getelementptr i8, ptr %i.ug, i64 19
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ug, i64 24 ; 2 uses
  %i.vi = getelementptr i8, ptr %i.ug, i64 28     ; 2 uses
  %i.vj = getelementptr i8, ptr %i.uk, i64 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ug, i64 32 ; 2 uses
  %i.vl = getelementptr i8, ptr %i.uk, i64 9
  %i.vm = getelementptr i8, ptr %i.ug, i64 33     ; 2 uses
  %i.vn = getelementptr i8, ptr %i.uk, i64 10
  %i.vo = getelementptr i8, ptr %i.ug, i64 36
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ug, i64 34 ; 2 uses
  %i.vq = getelementptr i8, ptr %i.ug, i64 35
  %i.vr = getelementptr i8, ptr %i.ug, i64 38
  %i.vs = getelementptr i8, ptr %i.ug, i64 39     ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ug, i64 40 ; 2 uses
  %i.vu = getelementptr i8, ptr %i.ug, i64 44     ; 2 uses
  %i.vv = mul nuw nsw i64 %indvars.iv98.i.i, 192
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.vv ; 28 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vy = load <2 x i8>, ptr %i.uk, align 1, !tbaa !56
  %i.vz = load i8, ptr %i.ul, align 1, !tbaa !56
  %i.wa = load i8, ptr %i.uk, align 1, !tbaa !56
  store i8 %i.wa, ptr %i.ug, align 1, !tbaa !56
  store i8 %i.vz, ptr %i.um, align 1, !tbaa !56
  %i.wb = load i32, ptr %i.uo, align 4, !tbaa !42
  %i.wc = mul nsw i32 %i.wb, 12
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds i8, ptr %i.se, i64 %i.wd ; 10 uses
  %i.wf = load <2 x i8>, ptr %i.we, align 1, !tbaa !56
  %i.wg = getelementptr i8, ptr %i.we, i64 2      ; 2 uses
  %i.wh = getelementptr i8, ptr %i.we, i64 3
  %i.wi = getelementptr i8, ptr %i.we, i64 4      ; 2 uses
  %i.wj = getelementptr i8, ptr %i.we, i64 5
  %i.wk = getelementptr i8, ptr %i.we, i64 6
  %i.wl = getelementptr i8, ptr %i.we, i64 8
  %i.wm = getelementptr i8, ptr %i.we, i64 10
  %i.wn = getelementptr i8, ptr %i.we, i64 11
  %i.wo = shufflevector <2 x i8> %i.vy, <2 x i8> %i.wf, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.wq = load <2 x i8>, ptr %i.un, align 1, !tbaa !56 ; 2 uses
  %5 = load <2 x i8>, ptr %i.we, align 1, !tbaa !56
  %6 = shufflevector <2 x i8> %5, <2 x i8> %i.wq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %6, ptr %i.up, align 1, !tbaa !56
  %i.wr = load <2 x i8>, ptr %i.wg, align 1, !tbaa !56
  %i.ws = load i8, ptr %i.wh, align 1, !tbaa !56
  %i.wt = load i8, ptr %i.wg, align 1, !tbaa !56
  store i8 %i.wt, ptr %i.uq, align 1, !tbaa !56
  store i8 %i.ws, ptr %i.ur, align 1, !tbaa !56
  %i.wu = load i32, ptr %i.us, align 4, !tbaa !42
  %i.wv = mul nsw i32 %i.wu, 12
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds i8, ptr %i.se, i64 %i.ww ; 8 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 1
  %i.wz = getelementptr i8, ptr %i.wx, i64 2
  %i.xa = getelementptr i8, ptr %i.wx, i64 4
  %i.xb = getelementptr i8, ptr %i.wx, i64 6
  %i.xc = getelementptr i8, ptr %i.wx, i64 8
  %i.xd = getelementptr i8, ptr %i.wx, i64 10
  %i.xe = shufflevector <2 x i8> %i.wq, <2 x i8> %i.wr, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vw, i64 48
  %i.xg = load <2 x i8>, ptr %i.wx, align 1, !tbaa !56
  %i.xh = load i8, ptr %i.wy, align 1, !tbaa !56
  %i.xi = load i8, ptr %i.wx, align 1, !tbaa !56
  store i8 %i.xi, ptr %i.ut, align 1, !tbaa !56
  store i8 %i.xh, ptr %i.uu, align 1, !tbaa !56
  %i.xj = load i32, ptr %i.uw, align 4, !tbaa !42
  %i.xk = mul nsw i32 %i.xj, 12
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds i8, ptr %i.se, i64 %i.xl ; 8 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 1
  %i.xo = getelementptr i8, ptr %i.xm, i64 2
  %i.xp = getelementptr i8, ptr %i.xm, i64 4
  %i.xq = getelementptr i8, ptr %i.xm, i64 6
  %i.xr = getelementptr i8, ptr %i.xm, i64 8
  %i.xs = getelementptr i8, ptr %i.xm, i64 10
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vw, i64 64
  %i.xu = load <2 x i8>, ptr %i.wz, align 1, !tbaa !56 ; 2 uses
  %i.xv = load <2 x i8>, ptr %i.xo, align 1, !tbaa !56 ; 2 uses
  %7 = shufflevector <2 x i8> %i.xu, <2 x i8> %i.xv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %7, ptr %i.uv, align 1, !tbaa !56
  %i.xw = load <2 x i8>, ptr %i.xm, align 1, !tbaa !56
  %i.xx = load i8, ptr %i.xn, align 1, !tbaa !56
  %i.xy = load i8, ptr %i.xm, align 1, !tbaa !56
  store i8 %i.xy, ptr %i.ux, align 1, !tbaa !56
  store i8 %i.xx, ptr %i.uy, align 1, !tbaa !56
  %i.xz = shufflevector <2 x i8> %i.xg, <2 x i8> %i.xw, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ya = shufflevector <2 x i8> %i.xu, <2 x i8> %i.xv, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vw, i64 72
  %i.yc = load <2 x i8>, ptr %i.uz, align 1, !tbaa !56
  %i.yd = load i8, ptr %i.vb, align 1, !tbaa !56
  %i.ye = load i8, ptr %i.uz, align 1, !tbaa !56
  store i8 %i.ye, ptr %i.va, align 1, !tbaa !56
  store i8 %i.yd, ptr %i.vc, align 1, !tbaa !56
  %i.yf = load <2 x i8>, ptr %i.wi, align 1, !tbaa !56
  %i.yg = load i8, ptr %i.wj, align 1, !tbaa !56
  %i.yh = load i8, ptr %i.wi, align 1, !tbaa !56
  %8 = load <2 x i8>, ptr %i.vd, align 1, !tbaa !56
  store i8 %i.yh, ptr %i.vf, align 1, !tbaa !56
  store i8 %i.yg, ptr %i.vg, align 1, !tbaa !56
  %9 = load <2 x i8>, ptr %i.wk, align 1, !tbaa !56
  %10 = shufflevector <2 x i8> %8, <2 x i8> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %10, ptr %i.ve, align 1, !tbaa !56
  %i.yi = load i8, ptr %i.vj, align 1, !tbaa !56
  store i8 %i.yi, ptr %i.vk, align 1, !tbaa !56
  %i.yj = load i8, ptr %i.vl, align 1, !tbaa !56
  store i8 %i.yj, ptr %i.vm, align 1, !tbaa !56
  %11 = load <2 x i8>, ptr %i.xa, align 1, !tbaa !56
  %12 = load <2 x i8>, ptr %i.xb, align 1, !tbaa !56
  %13 = load <2 x i8>, ptr %i.xq, align 1, !tbaa !56
  %14 = shufflevector <2 x i8> %12, <2 x i8> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %14, ptr %i.vi, align 1, !tbaa !56
  %15 = load <2 x i8>, ptr %i.xp, align 1, !tbaa !56
  %16 = shufflevector <2 x i8> %11, <2 x i8> %15, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %16, ptr %i.vh, align 1, !tbaa !56
  %17 = load <2 x i8>, ptr %i.wl, align 1, !tbaa !56
  %18 = load <2 x i8>, ptr %i.vn, align 1, !tbaa !56
  %19 = shufflevector <2 x i8> %17, <2 x i8> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %19, ptr %i.vp, align 1, !tbaa !56
  %i.yk = load i8, ptr %i.wm, align 1, !tbaa !56
  store i8 %i.yk, ptr %i.vr, align 1, !tbaa !56
  %i.yl = load i8, ptr %i.wn, align 1, !tbaa !56
  store i8 %i.yl, ptr %i.vs, align 1, !tbaa !56
  %20 = load <2 x i8>, ptr %i.xc, align 1, !tbaa !56
  %21 = load <2 x i8>, ptr %i.xd, align 1, !tbaa !56
  %22 = load <2 x i8>, ptr %i.xs, align 1, !tbaa !56
  %23 = shufflevector <2 x i8> %21, <2 x i8> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %23, ptr %i.vu, align 1, !tbaa !56
  %24 = load <2 x i8>, ptr %i.xr, align 1, !tbaa !56
  %25 = shufflevector <2 x i8> %20, <2 x i8> %24, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %25, ptr %i.vt, align 1, !tbaa !56
  store <16 x i8> %i.wo, ptr %i.vw, align 1, !tbaa !56
  store <16 x i8> %i.xe, ptr %i.vx, align 1, !tbaa !56
  store <16 x i8> %i.xz, ptr %i.wp, align 1, !tbaa !56
  store <16 x i8> %i.ya, ptr %i.xf, align 1, !tbaa !56
  %i.ym = shufflevector <2 x i8> %i.yc, <2 x i8> %i.yf, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %i.ym, ptr %i.xt, align 1, !tbaa !56
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vw, i64 88
  %i.yo = load <8 x i8>, ptr %i.va, align 1, !tbaa !56 ; 2 uses
  %i.yp = shufflevector <8 x i8> %i.yo, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.yp, ptr %i.yb, align 1, !tbaa !56
  %i.yq = getelementptr inbounds nuw i8, ptr %i.vw, i64 96
  %i.yr = shufflevector <8 x i8> %i.yo, <8 x i8> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <8 x i8> %i.yr, ptr %i.yn, align 1, !tbaa !56
  %i.ys = getelementptr inbounds nuw i8, ptr %i.vw, i64 112
  %i.yt = load <4 x i8>, ptr %i.vh, align 1, !tbaa !56
  %i.yu = shufflevector <4 x i8> %i.yt, <4 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.yu, ptr %i.yq, align 1, !tbaa !56
  %i.yv = getelementptr inbounds nuw i8, ptr %i.vw, i64 128
  %i.yw = load <4 x i8>, ptr %i.vi, align 1, !tbaa !56
  %i.yx = shufflevector <4 x i8> %i.yw, <4 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.yx, ptr %i.ys, align 1, !tbaa !56
  %i.yy = load i8, ptr %i.vk, align 1, !tbaa !56  ; 4 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.vw, i64 129
  store i8 %i.yy, ptr %i.yv, align 1, !tbaa !56
  %i.za = getelementptr inbounds nuw i8, ptr %i.vw, i64 130
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !56
  %i.zb = load i8, ptr %i.vm, align 1, !tbaa !56  ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.vw, i64 131
  store i8 %i.zb, ptr %i.za, align 1, !tbaa !56
  %i.zd = getelementptr inbounds nuw i8, ptr %i.vw, i64 132
  store i8 %i.zb, ptr %i.zc, align 1, !tbaa !56
  %i.ze = load i8, ptr %i.vp, align 1, !tbaa !56  ; 4 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.vw, i64 133
  store i8 %i.ze, ptr %i.zd, align 1, !tbaa !56
  %i.zg = getelementptr inbounds nuw i8, ptr %i.vw, i64 134
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !56
  %i.zh = getelementptr inbounds nuw i8, ptr %i.vw, i64 135
  %i.zi = getelementptr inbounds nuw i8, ptr %i.vw, i64 136
  %i.zj = getelementptr inbounds nuw i8, ptr %i.vw, i64 137
  store i8 %i.yy, ptr %i.zi, align 1, !tbaa !56
  %i.zk = getelementptr inbounds nuw i8, ptr %i.vw, i64 138
  store i8 %i.yy, ptr %i.zj, align 1, !tbaa !56
  %i.zl = getelementptr inbounds nuw i8, ptr %i.vw, i64 139
  store i8 %i.zb, ptr %i.zk, align 1, !tbaa !56
  %i.zm = getelementptr inbounds nuw i8, ptr %i.vw, i64 140
  store i8 %i.zb, ptr %i.zl, align 1, !tbaa !56
  %i.zn = getelementptr inbounds nuw i8, ptr %i.vw, i64 141
  store i8 %i.ze, ptr %i.zm, align 1, !tbaa !56
  %i.zo = getelementptr inbounds nuw i8, ptr %i.vw, i64 142
  store i8 %i.ze, ptr %i.zn, align 1, !tbaa !56
  %i.zp = getelementptr inbounds nuw i8, ptr %i.vw, i64 158
  %i.zq = load i8, ptr %i.vq, align 1, !tbaa !56  ; 3 uses
  store i8 %i.zq, ptr %i.zg, align 1, !tbaa !56
  store i8 %i.zq, ptr %i.zh, align 1, !tbaa !56
  %i.zr = load <4 x i8>, ptr %i.vo, align 1, !tbaa !56
  %i.zs = load i8, ptr %i.vs, align 1, !tbaa !56  ; 2 uses
  %i.zt = shufflevector <4 x i8> %i.zr, <4 x i8> poison, <5 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.zu = insertelement <5 x i8> %i.zt, i8 %i.zq, i64 0
  %i.zv = shufflevector <5 x i8> %i.zu, <5 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.zv, ptr %i.zo, align 1, !tbaa !56
  %i.zw = getelementptr inbounds nuw i8, ptr %i.vw, i64 159
  store i8 %i.zs, ptr %i.zp, align 1, !tbaa !56
  %i.zx = getelementptr inbounds nuw i8, ptr %i.vw, i64 160
  store i8 %i.zs, ptr %i.zw, align 1, !tbaa !56
  %i.zy = getelementptr inbounds nuw i8, ptr %i.vw, i64 176
  %i.zz = load <4 x i8>, ptr %i.vt, align 1, !tbaa !56
  %i.aaa = shufflevector <4 x i8> %i.zz, <4 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.aaa, ptr %i.zx, align 1, !tbaa !56
  %i.aab = load <4 x i8>, ptr %i.vu, align 1, !tbaa !56
  %i.aac = shufflevector <4 x i8> %i.aab, <4 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <16 x i8> %i.aac, ptr %i.zy, align 1, !tbaa !56
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %i.aad = load i32, ptr %i.bn, align 4, !tbaa !96
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = icmp slt i64 %indvars.iv.next99.i.i, %i.aae
  br i1 %i.aaf, label %.preheader.i.i, label %generate_new_codebooks.exit.i, !llvm.loop !77

generate_new_codebooks.exit.i:                    ; preds = %bb.k, %.preheader77.i.i
  %i.aag = load i32, ptr %i.y, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.aag, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %generate_new_codebooks.exit.i
  tail call fastcc void @motion_search(ptr noundef nonnull %i.c, i32 noundef 8)
  tail call fastcc void @motion_search(ptr noundef nonnull %i.c, i32 noundef 4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %generate_new_codebooks.exit.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.c, i64 107424 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.c, i64 5968 ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aal = getelementptr inbounds nuw i8, ptr %i.c, i64 27532
  %i.aam = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aan = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 76684 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 10104 ; 7 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.c, i64 11148 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.c, i64 10124 ; 19 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.af, %bb.m
  %i.aau = load i32, ptr %i.i, align 8, !tbaa !47 ; 2 uses
  %i.aav = load i32, ptr %i.k, align 4, !tbaa !48
  %i.aaw = mul nsw i32 %i.aav, %i.aau
  %i.aax = icmp sgt i32 %i.aaw, 63
  br i1 %i.aax, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %gather_data_for_cel.exit.i, %bb.n
  %i.aay = load i32, ptr %i.aaq, align 8, !tbaa !102 ; 2 uses
  %i.aaz = lshr i32 %i.aay, 3
  %i.aba = icmp sgt i32 %i.aay, 524287
  br i1 %i.aba, label %bb.ac, label %bb.ag

.lr.ph.i:                                         ; preds = %bb.n, %gather_data_for_cel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %gather_data_for_cel.exit.i ], [ 0, %bb.n ] ; 2 uses
  %i.abb = phi i32 [ %i.daz, %gather_data_for_cel.exit.i ], [ %i.aau, %bb.n ]
  %i.abc = load ptr, ptr %i.aah, align 8, !tbaa !58
  %i.abd = getelementptr inbounds nuw [248 x i8], ptr %i.abc, i64 %indvars.iv.i ; 38 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 244 ; 4 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !61 ; 6 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 240 ; 4 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !62 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.gather_data_for_cel.bitsUsed, i64 16, i1 false)
  %i.abi = load i32, ptr %i.y, align 8, !tbaa !41
  %.not.i54.i = icmp eq i32 %i.abi, 0
  br i1 %.not.i54.i, label %eval_motion_dist.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.abj = mul nsw i32 %i.abf, %i.abb
  %i.abk = sdiv i32 %i.abj, 64
  %i.abl = sdiv i32 %i.abh, 8
  %i.abm = add nsw i32 %i.abk, %i.abl
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abd, i64 228
  %i.abo = load ptr, ptr %i.aai, align 8, !tbaa !50
  %i.abp = sext i32 %i.abm to i64                 ; 2 uses
  %i.abq = getelementptr inbounds [8 x i8], ptr %i.abo, i64 %i.abp
  %i.abr = load i64, ptr %i.abq, align 4, !tbaa !56
  store i64 %i.abr, ptr %i.abn, align 4, !tbaa !56
  %i.abs = load ptr, ptr %i.aai, align 8, !tbaa !50
  %i.abt = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.abp
  %i.abu = load i64, ptr %i.abt, align 4          ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.abu to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %i.abu, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.abv = add i32 %.sroa.0.0.extract.trunc.i.i.i, -8
  %or.cond.i.i.i = icmp ult i32 %i.abv, -15
  %i.abw = add i32 %.sroa.2.0.extract.trunc.i.i.i, -8
  %or.cond3.i.i.i = icmp ult i32 %i.abw, -15
  %or.cond29.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %or.cond3.i.i.i
  br i1 %or.cond29.i.i.i, label %eval_motion_dist.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.abx = add nsw i32 %i.abh, %.sroa.0.0.extract.trunc.i.i.i ; 2 uses
  %i.aby = add nsw i32 %i.abf, %.sroa.2.0.extract.trunc.i.i.i ; 2 uses
  %i.abz = load i32, ptr %i.i, align 8, !tbaa !47
  %i.aca = add nsw i32 %i.abz, -8
  %i.acb = icmp ugt i32 %i.abx, %i.aca
  br i1 %i.acb, label %eval_motion_dist.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.acc = load i32, ptr %i.k, align 4, !tbaa !48
  %i.acd = add nsw i32 %i.acc, -8
  %i.ace = icmp ugt i32 %i.aby, %i.acd
  br i1 %i.ace, label %eval_motion_dist.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.acf = load ptr, ptr %i.d, align 8, !tbaa !53 ; 2 uses
  %i.acg = load ptr, ptr %i.aaj, align 8, !tbaa !45 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 64
  %i.acj = tail call fastcc i32 @block_sse(ptr noundef %i.acf, ptr noundef %i.acg, i32 noundef %i.abh, i32 noundef %i.abf, i32 noundef %i.abx, i32 noundef %i.aby, ptr noundef nonnull %i.ach, ptr noundef nonnull %i.aci, i32 noundef 8)
  br label %eval_motion_dist.exit.i.i

eval_motion_dist.exit.i.i:                        ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %.lr.ph.i
  %.sink.i.i = phi i32 [ 2147483647, %bb.q ], [ %i.acj, %bb.r ], [ 2147483647, %bb.o ], [ 2147483647, %bb.p ], [ 2147483647, %.lr.ph.i ]
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abd, i64 4 ; 2 uses
  store i32 %.sink.i.i, ptr %i.ack, align 4, !tbaa !42
  %i.acl = load i32, ptr %i.y, align 8, !tbaa !41
  %i.acm = icmp ugt i32 %i.acl, 1
  %i.acn = load ptr, ptr %i.d, align 8, !tbaa !53 ; 43 uses
  %.pre.i = load ptr, ptr %i.acn, align 8, !tbaa !55 ; 2 uses
  br i1 %i.acm, label %vector.scevcheck171, label %eval_motion_dist.exit.i..preheader.i.i_crit_edge.i

eval_motion_dist.exit.i..preheader.i.i_crit_edge.i: ; preds = %eval_motion_dist.exit.i.i
  %.pre115.i = sext i32 %i.abf to i64
  %.pre116.i = sext i32 %i.abh to i64
  br label %.preheader.i.i.i

vector.scevcheck171:                              ; preds = %eval_motion_dist.exit.i.i
  %i.aco = load ptr, ptr %i.aak, align 8, !tbaa !46 ; 6 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 64
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 64
  %i.acr = sext i32 %i.abh to i64                 ; 8 uses
  %i.acs = sext i32 %i.abf to i64                 ; 38 uses
  %i.act = load i32, ptr %i.acp, align 8, !tbaa !42 ; 2 uses
  %invariant.gep.i85.i = getelementptr i8, ptr %.pre.i, i64 %i.acr ; 10 uses
end_hunk_0
