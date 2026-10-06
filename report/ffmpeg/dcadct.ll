Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadct?download=true
inline.NumInlined: 62
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@imdct_half_32:.preheader74.preheader
  store i32 %i.vl, ptr %i.dj, align 4, !tbaa !9
  %i.vm = sub nsw i32 %.0.i.i.i68.7, %.0.i.i.i68.23
  %i.vn = sext i32 %i.vm to i64
  %i.vo = mul i64 %i.vn, 36028797016050407
  %i.vp = add i64 %i.vo, 4194304
  %i.vq = lshr i64 %i.vp, 23
  %i.vr = trunc i64 %i.vq to i32
  store i32 %i.vr, ptr %i.dn, align 16, !tbaa !9
  %i.vs = sub nsw i32 %.0.i.i.i68.6, %.0.i.i.i68.22
  %i.vt = sext i32 %i.vs to i64
  %i.vu = mul i64 %i.vt, 36028797015621166
  %i.vv = add i64 %i.vu, 4194304
  %i.vw = lshr i64 %i.vv, 23
  %i.vx = trunc i64 %i.vw to i32
  store i32 %i.vx, ptr %i.do, align 4, !tbaa !9
  %i.vy = sub nsw i32 %.0.i.i.i68.5, %.0.i.i.i68.21
  %i.vz = sext i32 %i.vy to i64
  %i.wa = mul i64 %i.vz, 36028797015032488
  %i.wb = add i64 %i.wa, 4194304
  %i.wc = lshr i64 %i.wb, 23
  %i.wd = trunc i64 %i.wc to i32
  store i32 %i.wd, ptr %i.dp, align 8, !tbaa !9
  %i.we = sub nsw i32 %.0.i.i.i68.4, %.0.i.i.i68.20
  %i.wf = sext i32 %i.we to i64
  %i.wg = mul i64 %i.wf, 36028797014178162
  %i.wh = add i64 %i.wg, 4194304
  %i.wi = lshr i64 %i.wh, 23
  %i.wj = trunc i64 %i.wi to i32
  store i32 %i.wj, ptr %i.dq, align 4, !tbaa !9
  %i.wk = sub nsw i32 %.0.i.i.i68.3, %.0.i.i.i68.19
  %i.wl = sext i32 %i.wk to i64
  %i.wm = mul i64 %i.wl, 36028797012830578
  %i.wn = add i64 %i.wm, 4194304
  %i.wo = lshr i64 %i.wn, 23
  %i.wp = trunc i64 %i.wo to i32
  store i32 %i.wp, ptr %i.du, align 16, !tbaa !9
  %i.wq = sub nsw i32 %.0.i.i.i68.2, %.0.i.i.i68.18
  %i.wr = sext i32 %i.wq to i64
  %i.ws = mul i64 %i.wr, 36028797010397918
  %i.wt = add i64 %i.ws, 4194304
  %i.wu = lshr i64 %i.wt, 23
  %i.wv = trunc i64 %i.wu to i32
  store i32 %i.wv, ptr %i.dv, align 4, !tbaa !9
  %i.ww = sub nsw i32 %.0.i.i.i68.1, %.0.i.i.i68.17
  %i.wx = sext i32 %i.ww to i64
  %i.wy = mul i64 %i.wx, 36028797004710148
  %i.wz = add i64 %i.wy, 4194304
  %i.xa = lshr i64 %i.wz, 23
  %i.xb = trunc i64 %i.xa to i32
  store i32 %i.xb, ptr %i.dw, align 8, !tbaa !9
  %i.xc = sub nsw i32 %.0.i.i.i68, %.0.i.i.i68.16
  %i.xd = sext i32 %i.xc to i64
  %i.xe = mul i64 %i.xd, 36028796976236848
  %i.xf = add i64 %i.xe, 4194304
  %i.xg = lshr i64 %i.xf, 23
  %i.xh = trunc i64 %i.xg to i32
  store i32 %i.xh, ptr %i.dx, align 4, !tbaa !9
  %i.xi = load <4 x i32>, ptr %i.b, align 16, !tbaa !9
  %i.xj = shl nsw <4 x i32> %i.xi, %i.ac
  %i.xk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xj, <4 x i32> splat (i32 -8388608))
  %i.xl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xk, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xl, ptr %i.b, align 16, !tbaa !9
  %i.xm = load <4 x i32>, ptr %i.ak, align 16, !tbaa !9
  %i.xn = shl nsw <4 x i32> %i.xm, %i.ac
  %i.xo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xn, <4 x i32> splat (i32 -8388608))
  %i.xp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xo, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xp, ptr %i.ak, align 16, !tbaa !9
  %i.xq = load <4 x i32>, ptr %i.ay, align 16, !tbaa !9
  %i.xr = shl nsw <4 x i32> %i.xq, %i.ac
  %i.xs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xr, <4 x i32> splat (i32 -8388608))
  %i.xt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xs, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xt, ptr %i.ay, align 16, !tbaa !9
  %i.xu = load <4 x i32>, ptr %i.bm, align 16, !tbaa !9
  %i.xv = shl nsw <4 x i32> %i.xu, %i.ac
  %i.xw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xv, <4 x i32> splat (i32 -8388608))
  %i.xx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xw, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xx, ptr %i.bm, align 16, !tbaa !9
  %i.xy = load <4 x i32>, ptr %i.cb, align 16, !tbaa !9
  %i.xz = shl nsw <4 x i32> %i.xy, %i.ac
  %i.ya = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xz, <4 x i32> splat (i32 -8388608))
  %i.yb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ya, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yb, ptr %i.cb, align 16, !tbaa !9
  %i.yc = load <4 x i32>, ptr %i.dg, align 16, !tbaa !9
  %i.yd = shl nsw <4 x i32> %i.yc, %i.ac
  %i.ye = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yd, <4 x i32> splat (i32 -8388608))
  %i.yf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ye, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yf, ptr %i.dg, align 16, !tbaa !9
  %i.yg = load i32, ptr %i.dn, align 16, !tbaa !9
  %i.yh = shl nsw i32 %i.yg, %i.j
  %i.yi = tail call i32 @llvm.smax.i32(i32 %i.yh, i32 -8388608)
  %.0.i.i.24 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.yi, i32 8388607)
  store i32 %.0.i.i.24, ptr %i.dn, align 16, !tbaa !9
  %i.yj = load i32, ptr %i.do, align 4, !tbaa !9
  %i.yk = shl nsw i32 %i.yj, %i.j
  %i.yl = tail call i32 @llvm.smax.i32(i32 %i.yk, i32 -8388608)
  %.0.i.i.25 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.yl, i32 8388607) ; 2 uses
  %i.ym = load <4 x i32>, ptr %i.du, align 16, !tbaa !9
  %i.yn = shl nsw <4 x i32> %i.ym, %i.ac
  %i.yo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yn, <4 x i32> splat (i32 -8388608))
  %i.yp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yo, <4 x i32> splat (i32 8388607)) ; 3 uses
  %i.yq = shufflevector <4 x i32> %i.yp, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.yr = load <4 x i32>, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.ys = sub nsw <4 x i32> %i.yr, %i.yq
  %i.yt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ys, <4 x i32> splat (i32 -8388608))
  %i.yu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yt, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yu, ptr %0, align 4, !tbaa !9
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.zb = load <4 x i32>, ptr %i.an, align 4, !tbaa !9 ; 3 uses
  %i.zc = load <4 x i32>, ptr %i.dh, align 4, !tbaa !9 ; 3 uses
  %i.zd = shufflevector <4 x i32> %i.zc, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ze = load <4 x i32>, ptr %i.al, align 4
  %i.zf = load i32, ptr %i.am, align 8, !tbaa !9
  %i.zg = load <2 x i32>, ptr %i.dp, align 8, !tbaa !9
  %i.zh = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.zi = shufflevector <2 x i32> %i.zh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.zj = shl nsw <2 x i32> %i.zg, %i.zi
  %i.zk = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.zj, <2 x i32> splat (i32 -8388608))
  %i.zl = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.zk, <2 x i32> splat (i32 8388607)) ; 2 uses
  %i.zm = shufflevector <2 x i32> %i.zl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.zn = load <2 x i32>, ptr %i.ak, align 16, !tbaa !9
  %i.zo = load i32, ptr %i.ak, align 16, !tbaa !9
  %i.zp = shufflevector <2 x i32> %i.zl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zq = shufflevector <4 x i32> %i.yp, <4 x i32> %i.zp, <2 x i32> <i32 0, i32 5>
  %i.zr = shufflevector <4 x i32> %i.yr, <4 x i32> poison, <2 x i32> <i32 3, i32 poison>
  %i.zs = insertelement <2 x i32> %i.zr, i32 %i.zo, i64 1
  %i.zt = add nsw <2 x i32> %i.zq, %i.zs
  %i.zu = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.zt, <2 x i32> splat (i32 -8388608))
  %i.zv = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.zu, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.zv, ptr %i.yv, align 4, !tbaa !9
  %i.zw = sub nsw <2 x i32> %i.zn, %i.zm
  %i.zx = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.zw, <2 x i32> splat (i32 -8388608))
  %i.zy = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.zx, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.zy, ptr %i.yw, align 4, !tbaa !9
  %i.zz = sub nsw i32 %i.zf, %.0.i.i.25
  %i.aaa = tail call i32 @llvm.smax.i32(i32 %i.zz, i32 -8388608)
  %.0.i.i72.6 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.aaa, i32 8388607)
  store i32 %.0.i.i72.6, ptr %i.yy, align 4, !tbaa !9
  %i.aab = shufflevector <4 x i32> %i.zc, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.aac = shufflevector <4 x i32> %i.zp, <4 x i32> %i.aab, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.aad = insertelement <4 x i32> %i.aac, i32 %.0.i.i.25, i64 1
  %i.aae = shufflevector <4 x i32> %i.zb, <4 x i32> %i.ze, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.aaf = add nsw <4 x i32> %i.aad, %i.aae
  %i.aag = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aaf, <4 x i32> splat (i32 -8388608))
  %i.aah = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aag, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aah, ptr %i.yx, align 4, !tbaa !9
  %i.aai = sub nsw <4 x i32> %i.zb, %i.zd
  %i.aaj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aai, <4 x i32> splat (i32 -8388608))
  %i.aak = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aaj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aak, ptr %i.yz, align 4, !tbaa !9
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aan = load <4 x i32>, ptr %i.bb, align 4, !tbaa !9 ; 3 uses
  %i.aao = load <4 x i32>, ptr %i.da, align 4, !tbaa !9 ; 3 uses
  %i.aap = shufflevector <4 x i32> %i.aao, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aaq = shufflevector <4 x i32> %i.zc, <4 x i32> %i.aao, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  %i.aar = shufflevector <4 x i32> %i.zb, <4 x i32> %i.aan, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aas = add nsw <4 x i32> %i.aaq, %i.aar
  %i.aat = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aas, <4 x i32> splat (i32 -8388608))
  %i.aau = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aat, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aau, ptr %i.za, align 4, !tbaa !9
  %i.aav = sub nsw <4 x i32> %i.aan, %i.aap
  %i.aaw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aav, <4 x i32> splat (i32 -8388608))
  %i.aax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aaw, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aax, ptr %i.aal, align 4, !tbaa !9
  %i.aay = shufflevector <4 x i32> %i.aao, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.aaz = shufflevector <4 x i32> %i.aan, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.aba = add nsw <2 x i32> %i.aay, %i.aaz
  %i.abb = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aba, <2 x i32> splat (i32 -8388608))
  %i.abc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.abb, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.abc, ptr %i.aam, align 4, !tbaa !9
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.abe = load <4 x i32>, ptr %i.bp, align 4     ; 2 uses
  %i.abf = load i32, ptr %i.cb, align 16, !tbaa !9
  %i.abg = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.abh = shufflevector <4 x i32> %i.yp, <4 x i32> %i.abe, <4 x i32> <i32 3, i32 2, i32 1, i32 4> ; 2 uses
  %i.abi = shufflevector <4 x i32> %i.yr, <4 x i32> %i.abe, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.abj = sub nsw <4 x i32> %i.abh, %i.abi
  %i.abk = add nsw <4 x i32> %i.abh, %i.abi
  %i.abl = shufflevector <4 x i32> %i.abj, <4 x i32> %i.abk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.abm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abl, <4 x i32> splat (i32 -8388608))
  %i.abn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abm, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.abn, ptr %i.abd, align 4, !tbaa !9
  %i.abo = add nsw i32 %i.abf, %i.abg
  %i.abp = tail call i32 @llvm.smax.i32(i32 %i.abo, i32 -8388608)
  %.0.i.i73.15 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.abp, i32 8388607)
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.0.i.i73.15, ptr %i.abq, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @imdct_half_64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
vector.ph:
  %i.a = alloca [64 x i32], align 16              ; 221 uses
  %i.b = alloca [64 x i32], align 16              ; 219 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %wide.load152 = load <4 x i32>, ptr %i.c, align 4, !tbaa !9
  %i.d = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.e = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152, i1 true)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.f, align 4, !tbaa !9
  %wide.load152.1 = load <4 x i32>, ptr %i.g, align 4, !tbaa !9
  %i.h = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.1, i1 true)
  %i.i = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.1, i1 true)
  %i.j = add nuw <4 x i32> %i.h, %i.d
  %i.k = add nuw <4 x i32> %i.i, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.l, align 4, !tbaa !9
  %wide.load152.2 = load <4 x i32>, ptr %i.m, align 4, !tbaa !9
  %i.n = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.2, i1 true)
  %i.o = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.2, i1 true)
  %i.p = add <4 x i32> %i.n, %i.j
  %i.q = add <4 x i32> %i.o, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.r, align 4, !tbaa !9
  %wide.load152.3 = load <4 x i32>, ptr %i.s, align 4, !tbaa !9
  %i.t = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.3, i1 true)
  %i.u = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.3, i1 true)
  %i.v = add <4 x i32> %i.t, %i.p
  %i.w = add <4 x i32> %i.u, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <4 x i32>, ptr %i.x, align 4, !tbaa !9
  %wide.load152.4 = load <4 x i32>, ptr %i.y, align 4, !tbaa !9
  %i.z = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.4, i1 true)
  %i.aa = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.4, i1 true)
  %i.ab = add <4 x i32> %i.z, %i.v
  %i.ac = add <4 x i32> %i.aa, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !9
  %wide.load152.5 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !9
  %i.af = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.5, i1 true)
  %i.ag = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.5, i1 true)
  %i.ah = add <4 x i32> %i.af, %i.ab
  %i.ai = add <4 x i32> %i.ag, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !9
  %wide.load152.6 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !9
  %i.al = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.6, i1 true)
  %i.am = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.6, i1 true)
  %i.an = add <4 x i32> %i.al, %i.ah
  %i.ao = add <4 x i32> %i.am, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !9
  %wide.load152.7 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !9
  %i.ar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.7, i1 true)
  %i.as = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.7, i1 true)
  %i.at = add <4 x i32> %i.ar, %i.an
  %i.au = add <4 x i32> %i.as, %i.ao
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.aw = icmp samesign ugt i32 %i.av, 4194304
  %i.ax = select i1 %i.aw, i32 2, i32 0           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load156 = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %wide.load157 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !9
  %i.az = add nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.ba = add nsw <4 x i32> %wide.load157, %broadcast.splat
  %i.bb = ashr <4 x i32> %i.az, %broadcast.splat
  %i.bc = ashr <4 x i32> %i.ba, %broadcast.splat
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.bb, ptr %i.a, align 16, !tbaa !9
  store <4 x i32> %i.bc, ptr %i.bd, align 16, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load156.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !9
  %wide.load157.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !9
  %i.bg = add nsw <4 x i32> %wide.load156.1, %broadcast.splat
  %i.bh = add nsw <4 x i32> %wide.load157.1, %broadcast.splat
  %i.bi = ashr <4 x i32> %i.bg, %broadcast.splat
  %i.bj = ashr <4 x i32> %i.bh, %broadcast.splat
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.bi, ptr %i.bk, align 16, !tbaa !9
  store <4 x i32> %i.bj, ptr %i.bl, align 16, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load156.2 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !9
  %wide.load157.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !9
  %i.bo = add nsw <4 x i32> %wide.load156.2, %broadcast.splat
  %i.bp = add nsw <4 x i32> %wide.load157.2, %broadcast.splat
  %i.bq = ashr <4 x i32> %i.bo, %broadcast.splat
  %i.br = ashr <4 x i32> %i.bp, %broadcast.splat
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> %i.bq, ptr %i.bs, align 16, !tbaa !9
  store <4 x i32> %i.br, ptr %i.bt, align 16, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load156.3 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !9
  %wide.load157.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !9
  %i.bw = add nsw <4 x i32> %wide.load156.3, %broadcast.splat
  %i.bx = add nsw <4 x i32> %wide.load157.3, %broadcast.splat
  %i.by = ashr <4 x i32> %i.bw, %broadcast.splat
  %i.bz = ashr <4 x i32> %i.bx, %broadcast.splat
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> %i.by, ptr %i.ca, align 16, !tbaa !9
  store <4 x i32> %i.bz, ptr %i.cb, align 16, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load156.4 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !9
  %wide.load157.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !9
  %i.ce = add nsw <4 x i32> %wide.load156.4, %broadcast.splat
  %i.cf = add nsw <4 x i32> %wide.load157.4, %broadcast.splat
  %i.cg = ashr <4 x i32> %i.ce, %broadcast.splat
  %i.ch = ashr <4 x i32> %i.cf, %broadcast.splat
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> %i.cg, ptr %i.ci, align 16, !tbaa !9
  store <4 x i32> %i.ch, ptr %i.cj, align 16, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load156.5 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !9
  %wide.load157.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !9
  %i.cm = add nsw <4 x i32> %wide.load156.5, %broadcast.splat
  %i.cn = add nsw <4 x i32> %wide.load157.5, %broadcast.splat
  %i.co = ashr <4 x i32> %i.cm, %broadcast.splat
  %i.cp = ashr <4 x i32> %i.cn, %broadcast.splat
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> %i.co, ptr %i.cq, align 16, !tbaa !9
  store <4 x i32> %i.cp, ptr %i.cr, align 16, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load156.6 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !9
  %wide.load157.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !9
  %i.cu = add nsw <4 x i32> %wide.load156.6, %broadcast.splat
  %i.cv = add nsw <4 x i32> %wide.load157.6, %broadcast.splat
  %i.cw = ashr <4 x i32> %i.cu, %broadcast.splat
  %i.cx = ashr <4 x i32> %i.cv, %broadcast.splat
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> %i.cw, ptr %i.cy, align 16, !tbaa !9
  store <4 x i32> %i.cx, ptr %i.cz, align 16, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load156.7 = load <4 x i32>, ptr %i.da, align 4, !tbaa !9
  %wide.load157.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !9
  %i.dc = add nsw <4 x i32> %wide.load156.7, %broadcast.splat
  %i.dd = add nsw <4 x i32> %wide.load157.7, %broadcast.splat
  %i.de = ashr <4 x i32> %i.dc, %broadcast.splat
  %i.df = ashr <4 x i32> %i.dd, %broadcast.splat
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> %i.de, ptr %i.dg, align 16, !tbaa !9
  store <4 x i32> %i.df, ptr %i.dh, align 16, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.dp = load <8 x i32>, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %i.dq = shufflevector <8 x i32> %i.dp, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dr = shufflevector <8 x i32> %i.dp, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ds = add nsw <4 x i32> %i.dq, %i.dr
  store <4 x i32> %i.ds, ptr %i.b, align 16, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.ec = load <8 x i32>, ptr %i.dt, align 16, !tbaa !9 ; 2 uses
  %i.ed = shufflevector <8 x i32> %i.ec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ee = shufflevector <8 x i32> %i.ec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ef = add nsw <4 x i32> %i.ed, %i.ee
  store <4 x i32> %i.ef, ptr %i.dv, align 16, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.eo = load <8 x i32>, ptr %i.eg, align 16, !tbaa !9 ; 2 uses
  %i.ep = shufflevector <8 x i32> %i.eo, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.eq = shufflevector <8 x i32> %i.eo, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.er = add nsw <4 x i32> %i.ep, %i.eq
  store <4 x i32> %i.er, ptr %i.eh, align 16, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.fa = load <8 x i32>, ptr %i.es, align 16, !tbaa !9 ; 2 uses
  %i.fb = shufflevector <8 x i32> %i.fa, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fc = shufflevector <8 x i32> %i.fa, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fd = add nsw <4 x i32> %i.fb, %i.fc
  store <4 x i32> %i.fd, ptr %i.et, align 16, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.fm = load <8 x i32>, ptr %i.fe, align 16, !tbaa !9 ; 2 uses
  %i.fn = shufflevector <8 x i32> %i.fm, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fo = shufflevector <8 x i32> %i.fm, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fp = add nsw <4 x i32> %i.fn, %i.fo
  store <4 x i32> %i.fp, ptr %i.ff, align 16, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.fy = load <8 x i32>, ptr %i.fq, align 16, !tbaa !9 ; 2 uses
  %i.fz = shufflevector <8 x i32> %i.fy, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ga = shufflevector <8 x i32> %i.fy, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gb = add nsw <4 x i32> %i.fz, %i.ga
  store <4 x i32> %i.gb, ptr %i.fr, align 16, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.gk = load <8 x i32>, ptr %i.gc, align 16, !tbaa !9 ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.gk, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gm = shufflevector <8 x i32> %i.gk, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gn = add nsw <4 x i32> %i.gl, %i.gm
  store <4 x i32> %i.gn, ptr %i.gd, align 16, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 2 uses
  %i.gw = load <8 x i32>, ptr %i.go, align 16, !tbaa !9 ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.gw, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gy = shufflevector <8 x i32> %i.gw, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gz = add nsw <4 x i32> %i.gx, %i.gy
  store <4 x i32> %i.gz, ptr %i.gp, align 16, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 4 uses
  %i.hb = load i32, ptr %i.a, align 16, !tbaa !9
  store i32 %i.hb, ptr %i.ha, align 16, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 132 ; 2 uses
  %i.he = load <8 x i32>, ptr %i.hc, align 4, !tbaa !9 ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.he, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hg = shufflevector <8 x i32> %i.he, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hh = add nsw <4 x i32> %i.hf, %i.hg
  store <4 x i32> %i.hh, ptr %i.hd, align 4, !tbaa !9
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.hl = load <8 x i32>, ptr %i.hi, align 4, !tbaa !9 ; 2 uses
  %i.hm = shufflevector <8 x i32> %i.hl, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hn = shufflevector <8 x i32> %i.hl, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ho = add nsw <4 x i32> %i.hm, %i.hn
  store <4 x i32> %i.ho, ptr %i.hj, align 4, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.hr = load <8 x i32>, ptr %i.hp, align 4, !tbaa !9 ; 2 uses
  %i.hs = shufflevector <8 x i32> %i.hr, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ht = shufflevector <8 x i32> %i.hr, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hu = add nsw <4 x i32> %i.hs, %i.ht
  store <4 x i32> %i.hu, ptr %i.hq, align 4, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.hx = load <8 x i32>, ptr %i.hv, align 4, !tbaa !9 ; 2 uses
  %i.hy = shufflevector <8 x i32> %i.hx, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hz = shufflevector <8 x i32> %i.hx, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ia = add nsw <4 x i32> %i.hy, %i.hz
  store <4 x i32> %i.ia, ptr %i.hw, align 4, !tbaa !9
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.id = load <8 x i32>, ptr %i.ib, align 4, !tbaa !9 ; 2 uses
  %i.ie = shufflevector <8 x i32> %i.id, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.if = shufflevector <8 x i32> %i.id, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ig = add nsw <4 x i32> %i.ie, %i.if
  store <4 x i32> %i.ig, ptr %i.ic, align 4, !tbaa !9
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.ij = load <8 x i32>, ptr %i.ih, align 4, !tbaa !9 ; 2 uses
  %i.ik = shufflevector <8 x i32> %i.ij, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.il = shufflevector <8 x i32> %i.ij, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.im = add nsw <4 x i32> %i.ik, %i.il
  store <4 x i32> %i.im, ptr %i.ii, align 4, !tbaa !9
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.ip = load <8 x i32>, ptr %i.in, align 4, !tbaa !9 ; 2 uses
  %i.iq = shufflevector <8 x i32> %i.ip, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ir = shufflevector <8 x i32> %i.ip, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.is = add nsw <4 x i32> %i.iq, %i.ir
  store <4 x i32> %i.is, ptr %i.io, align 4, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.iv = load <4 x i32>, ptr %i.it, align 4, !tbaa !9
  %i.iw = shufflevector <4 x i32> %i.iv, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %i.ix = load <2 x i32>, ptr %i.gq, align 8, !tbaa !9
  %i.iy = add nsw <2 x i32> %i.ix, %i.iw
  store <2 x i32> %i.iy, ptr %i.iu, align 4, !tbaa !9
  %i.iz = load i32, ptr %i.gu, align 8, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !9
  %i.jc = add nsw i32 %i.jb, %i.iz
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !9
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load163 = load <4 x i32>, ptr %i.b, align 16, !tbaa !9
  %wide.load164 = load <4 x i32>, ptr %i.jl, align 16, !tbaa !9
  %i.jm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163, <4 x i32> splat (i32 -8388608))
  %i.jn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164, <4 x i32> splat (i32 -8388608))
  %i.jo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jm, <4 x i32> splat (i32 8388607))
  %i.jp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jn, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.jo, ptr %i.b, align 16, !tbaa !9
  store <4 x i32> %i.jp, ptr %i.jl, align 16, !tbaa !9
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load163.1 = load <4 x i32>, ptr %i.jq, align 16, !tbaa !9
  %wide.load164.1 = load <4 x i32>, ptr %i.jr, align 16, !tbaa !9
  %i.js = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.1, <4 x i32> splat (i32 -8388608))
  %i.jt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.1, <4 x i32> splat (i32 -8388608))
  %i.ju = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.js, <4 x i32> splat (i32 8388607))
  %i.jv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jt, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ju, ptr %i.jq, align 16, !tbaa !9
  store <4 x i32> %i.jv, ptr %i.jr, align 16, !tbaa !9
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load163.2 = load <4 x i32>, ptr %i.jw, align 16, !tbaa !9
  %wide.load164.2 = load <4 x i32>, ptr %i.jx, align 16, !tbaa !9
  %i.jy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.2, <4 x i32> splat (i32 -8388608))
  %i.jz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.2, <4 x i32> splat (i32 -8388608))
  %i.ka = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jy, <4 x i32> splat (i32 8388607))
  %i.kb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jz, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ka, ptr %i.jw, align 16, !tbaa !9
  store <4 x i32> %i.kb, ptr %i.jx, align 16, !tbaa !9
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load163.3 = load <4 x i32>, ptr %i.kc, align 16, !tbaa !9
  %wide.load164.3 = load <4 x i32>, ptr %i.kd, align 16, !tbaa !9
  %i.ke = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.3, <4 x i32> splat (i32 -8388608))
  %i.kf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.3, <4 x i32> splat (i32 -8388608))
  %i.kg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ke, <4 x i32> splat (i32 8388607))
  %i.kh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kf, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.kg, ptr %i.kc, align 16, !tbaa !9
  store <4 x i32> %i.kh, ptr %i.kd, align 16, !tbaa !9
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %wide.load163.4 = load <4 x i32>, ptr %i.ki, align 16, !tbaa !9
  %wide.load164.4 = load <4 x i32>, ptr %i.kj, align 16, !tbaa !9
  %i.kk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.4, <4 x i32> splat (i32 -8388608))
  %i.kl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.4, <4 x i32> splat (i32 -8388608))
  %i.km = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kk, <4 x i32> splat (i32 8388607))
  %i.kn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kl, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.km, ptr %i.ki, align 16, !tbaa !9
  store <4 x i32> %i.kn, ptr %i.kj, align 16, !tbaa !9
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %wide.load163.5 = load <4 x i32>, ptr %i.ko, align 16, !tbaa !9
  %wide.load164.5 = load <4 x i32>, ptr %i.kp, align 16, !tbaa !9
  %i.kq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.5, <4 x i32> splat (i32 -8388608))
  %i.kr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.5, <4 x i32> splat (i32 -8388608))
  %i.ks = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kq, <4 x i32> splat (i32 8388607))
  %i.kt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kr, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ks, ptr %i.ko, align 16, !tbaa !9
  store <4 x i32> %i.kt, ptr %i.kp, align 16, !tbaa !9
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %wide.load163.6 = load <4 x i32>, ptr %i.ku, align 16, !tbaa !9
  %wide.load164.6 = load <4 x i32>, ptr %i.kv, align 16, !tbaa !9
  %i.kw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.6, <4 x i32> splat (i32 -8388608))
  %i.kx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.6, <4 x i32> splat (i32 -8388608))
  %i.ky = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kw, <4 x i32> splat (i32 8388607))
  %i.kz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kx, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ky, ptr %i.ku, align 16, !tbaa !9
  store <4 x i32> %i.kz, ptr %i.kv, align 16, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %wide.load163.7 = load <4 x i32>, ptr %i.la, align 16, !tbaa !9
  %wide.load164.7 = load <4 x i32>, ptr %i.lb, align 16, !tbaa !9
  %i.lc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163.7, <4 x i32> splat (i32 -8388608))
  %i.ld = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load164.7, <4 x i32> splat (i32 -8388608))
  %i.le = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.lc, <4 x i32> splat (i32 8388607))
  %i.lf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ld, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.le, ptr %i.la, align 16, !tbaa !9
  store <4 x i32> %i.lf, ptr %i.lb, align 16, !tbaa !9
  %i.lg = load i32, ptr %i.b, align 16, !tbaa !9  ; 2 uses
  %i.lh = load i32, ptr %i.dk, align 4, !tbaa !9  ; 2 uses
  %i.li = add nsw i32 %i.lh, %i.lg
  store i32 %i.li, ptr %i.a, align 16, !tbaa !9
  %i.lj = load i32, ptr %i.dm, align 8, !tbaa !9  ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !9  ; 2 uses
  %i.lm = add nsw i32 %i.ll, %i.lj
  store i32 %i.lm, ptr %i.di, align 4, !tbaa !9
  %i.ln = load i32, ptr %i.dv, align 16, !tbaa !9 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !9  ; 2 uses
  %i.lq = add nsw i32 %i.lp, %i.ln
  store i32 %i.lq, ptr %i.dj, align 8, !tbaa !9
  %i.lr = load i32, ptr %i.dz, align 8, !tbaa !9  ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9  ; 2 uses
  %i.lu = add nsw i32 %i.lt, %i.lr
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !9
  %i.lw = load i32, ptr %i.eh, align 16, !tbaa !9 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !9  ; 2 uses
  %i.lz = add nsw i32 %i.ly, %i.lw
  store i32 %i.lz, ptr %i.dl, align 16, !tbaa !9
  %i.ma = load i32, ptr %i.el, align 8, !tbaa !9  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9  ; 2 uses
  %i.md = add nsw i32 %i.mc, %i.ma
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  store i32 %i.md, ptr %i.me, align 4, !tbaa !9
  %i.mf = load i32, ptr %i.et, align 16, !tbaa !9 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !9  ; 2 uses
  %i.mi = add nsw i32 %i.mh, %i.mf
  store i32 %i.mi, ptr %i.dn, align 8, !tbaa !9
  %i.mj = load i32, ptr %i.ex, align 8, !tbaa !9  ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !9  ; 2 uses
  %i.mm = add nsw i32 %i.ml, %i.mj
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 3 uses
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !9
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.mu = load <8 x i32>, ptr %i.gd, align 16, !tbaa !9 ; 2 uses
  %i.mv = shufflevector <8 x i32> %i.mu, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.mw = shufflevector <8 x i32> %i.mu, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.mx = add nsw <4 x i32> %i.mv, %i.mw
  store <4 x i32> %i.mx, ptr %i.dy, align 16, !tbaa !9
  store i32 %i.lg, ptr %i.eg, align 16, !tbaa !9
  %i.my = add nsw i32 %i.lh, %i.lj
  store i32 %i.my, ptr %i.jk, align 4, !tbaa !9
  %i.mz = add nsw i32 %i.ll, %i.ln
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  store i32 %i.mz, ptr %i.na, align 8, !tbaa !9
  %i.nb = add nsw i32 %i.lp, %i.lr
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !9
  %i.nd = add nsw i32 %i.lt, %i.lw
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 %i.nd, ptr %i.ne, align 16, !tbaa !9
  %i.nf = add nsw i32 %i.ly, %i.ma
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !9
  %i.nh = add nsw i32 %i.mc, %i.mf
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %i.nh, ptr %i.ni, align 8, !tbaa !9
  %i.nj = add nsw i32 %i.mh, %i.mj
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.nn = load <8 x i32>, ptr %i.mo, align 4, !tbaa !9 ; 2 uses
  %i.no = load <4 x i32>, ptr %i.ff, align 16, !tbaa !9 ; 2 uses
  %i.np = load i32, ptr %i.ff, align 16, !tbaa !9
  %i.nq = add nsw i32 %i.ml, %i.np
  store i32 %i.nq, ptr %i.nl, align 16, !tbaa !9
  %i.nr = shufflevector <4 x i32> %i.no, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ns = shufflevector <4 x i32> %i.no, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.nt = add nsw <2 x i32> %i.nr, %i.ns
  store <2 x i32> %i.nt, ptr %i.dt, align 16, !tbaa !9
  %i.nu = load <4 x i32>, ptr %i.fr, align 16, !tbaa !9 ; 2 uses
  %i.nv = shufflevector <4 x i32> %i.nu, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.nw = shufflevector <4 x i32> %i.nu, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.nx = add nsw <2 x i32> %i.nv, %i.nw
  store <2 x i32> %i.nx, ptr %i.dw, align 8, !tbaa !9
  %i.ny = shufflevector <8 x i32> %i.nn, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nz = shufflevector <8 x i32> %i.nn, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oa = add nsw <4 x i32> %i.ny, %i.nz
  store <4 x i32> %i.oa, ptr %i.nm, align 4, !tbaa !9
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %2 = load <8 x i32>, ptr %i.mr, align 4, !tbaa !9 ; 2 uses
  %i.oc = shufflevector <8 x i32> %2, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.od = shufflevector <8 x i32> %2, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.oe = insertelement <4 x i32> %i.od, i32 0, i64 3
  %i.of = add nsw <4 x i32> %i.oc, %i.oe
  store <4 x i32> %i.of, ptr %i.ob, align 4, !tbaa !9
  %i.og = load <7 x i32>, ptr %i.ji, align 8, !tbaa !9
  %i.oh = shufflevector <7 x i32> %i.og, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %i.oh, ptr %i.jj, align 4, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.oj = load <7 x i32>, ptr %i.jh, align 8, !tbaa !9
  %i.ok = shufflevector <7 x i32> %i.oj, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %i.ok, ptr %i.oi, align 4, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.om = load <7 x i32>, ptr %i.jg, align 8, !tbaa !9
  %i.on = shufflevector <7 x i32> %i.om, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %i.on, ptr %i.ol, align 4, !tbaa !9
  %i.oo = load i32, ptr %i.jf, align 8, !tbaa !9
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !9
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.or = load <3 x i32>, ptr %i.je, align 16, !tbaa !9
  %i.os = shufflevector <3 x i32> %i.or, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.os, ptr %i.oq, align 8, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 132 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.ov = load <15 x i32>, ptr %i.ot, align 4, !tbaa !9 ; 2 uses
  %i.ow = shufflevector <15 x i32> %i.ov, <15 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ox = load i32, ptr %i.ou, align 4, !tbaa !9
  %i.oy = shufflevector <15 x i32> %i.ov, <15 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> <i32 15, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12>
  %i.oz = add nsw <8 x i32> %i.ow, %i.oy
  store <8 x i32> %i.oz, ptr %i.gc, align 16, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !9  ; 2 uses
  %i.pc = add nsw i32 %i.pb, %i.ox
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i32 %i.pc, ptr %i.pd, align 16, !tbaa !9
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !9  ; 2 uses
  %i.pg = add nsw i32 %i.pf, %i.pb
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !9
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !9  ; 2 uses
  %i.pk = add nsw i32 %i.pj, %i.pf
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  store i32 %i.pk, ptr %i.pl, align 8, !tbaa !9
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !9  ; 2 uses
  %i.po = add nsw i32 %i.pn, %i.pj
  %i.pp = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 %i.po, ptr %i.pp, align 4, !tbaa !9
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !9  ; 2 uses
  %i.ps = add nsw i32 %i.pr, %i.pn
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  store i32 %i.ps, ptr %i.pt, align 16, !tbaa !9
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !9  ; 2 uses
  %i.pw = add nsw i32 %i.pv, %i.pr
  %i.px = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store i32 %i.pw, ptr %i.px, align 4, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !9  ; 2 uses
  %i.qa = add nsw i32 %i.pz, %i.pv
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 %i.qa, ptr %i.qb, align 8, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !9
  %i.qe = add nsw i32 %i.qd, %i.pz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 %i.qe, ptr %i.qf, align 4, !tbaa !9
  %i.qg = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.qi = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.qj = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.qm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load170 = load <4 x i32>, ptr %i.a, align 16, !tbaa !9
  %wide.load171 = load <4 x i32>, ptr %i.qm, align 16, !tbaa !9
  %i.qn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170, <4 x i32> splat (i32 -8388608))
  %i.qo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171, <4 x i32> splat (i32 -8388608))
  %i.qp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qn, <4 x i32> splat (i32 8388607))
  %i.qq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qo, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.qp, ptr %i.a, align 16, !tbaa !9
  store <4 x i32> %i.qq, ptr %i.qm, align 16, !tbaa !9
  %i.qr = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load170.1 = load <4 x i32>, ptr %i.qr, align 16, !tbaa !9
  %wide.load171.1 = load <4 x i32>, ptr %i.qs, align 16, !tbaa !9
  %i.qt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.1, <4 x i32> splat (i32 -8388608))
  %i.qu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.1, <4 x i32> splat (i32 -8388608))
  %i.qv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qt, <4 x i32> splat (i32 8388607))
  %i.qw = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qu, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.qv, ptr %i.qr, align 16, !tbaa !9
  store <4 x i32> %i.qw, ptr %i.qs, align 16, !tbaa !9
  %i.qx = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load170.2 = load <4 x i32>, ptr %i.qx, align 16, !tbaa !9
  %wide.load171.2 = load <4 x i32>, ptr %i.qy, align 16, !tbaa !9
  %i.qz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.2, <4 x i32> splat (i32 -8388608))
  %i.ra = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.2, <4 x i32> splat (i32 -8388608))
  %i.rb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qz, <4 x i32> splat (i32 8388607))
  %i.rc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ra, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.rb, ptr %i.qx, align 16, !tbaa !9
  store <4 x i32> %i.rc, ptr %i.qy, align 16, !tbaa !9
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %wide.load170.3 = load <4 x i32>, ptr %i.rd, align 16, !tbaa !9
  %wide.load171.3 = load <4 x i32>, ptr %i.re, align 16, !tbaa !9
  %i.rf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.3, <4 x i32> splat (i32 -8388608))
  %i.rg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.3, <4 x i32> splat (i32 -8388608))
  %i.rh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rf, <4 x i32> splat (i32 8388607))
  %i.ri = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rg, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.rh, ptr %i.rd, align 16, !tbaa !9
  store <4 x i32> %i.ri, ptr %i.re, align 16, !tbaa !9
  %i.rj = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %wide.load170.4 = load <4 x i32>, ptr %i.rj, align 16, !tbaa !9
  %wide.load171.4 = load <4 x i32>, ptr %i.rk, align 16, !tbaa !9
  %i.rl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.4, <4 x i32> splat (i32 -8388608))
  %i.rm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.4, <4 x i32> splat (i32 -8388608))
  %i.rn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rl, <4 x i32> splat (i32 8388607))
  %i.ro = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rm, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.rn, ptr %i.rj, align 16, !tbaa !9
  store <4 x i32> %i.ro, ptr %i.rk, align 16, !tbaa !9
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %wide.load170.5 = load <4 x i32>, ptr %i.rp, align 16, !tbaa !9
  %wide.load171.5 = load <4 x i32>, ptr %i.rq, align 16, !tbaa !9
  %i.rr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.5, <4 x i32> splat (i32 -8388608))
  %i.rs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.5, <4 x i32> splat (i32 -8388608))
  %i.rt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rr, <4 x i32> splat (i32 8388607))
  %i.ru = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rs, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.rt, ptr %i.rp, align 16, !tbaa !9
  store <4 x i32> %i.ru, ptr %i.rq, align 16, !tbaa !9
  %i.rv = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %wide.load170.6 = load <4 x i32>, ptr %i.rv, align 16, !tbaa !9
  %wide.load171.6 = load <4 x i32>, ptr %i.rw, align 16, !tbaa !9
  %i.rx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.6, <4 x i32> splat (i32 -8388608))
  %i.ry = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.6, <4 x i32> splat (i32 -8388608))
  %i.rz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rx, <4 x i32> splat (i32 8388607))
  %i.sa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ry, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.rz, ptr %i.rv, align 16, !tbaa !9
  store <4 x i32> %i.sa, ptr %i.rw, align 16, !tbaa !9
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %wide.load170.7 = load <4 x i32>, ptr %i.sb, align 16, !tbaa !9
  %wide.load171.7 = load <4 x i32>, ptr %i.sc, align 16, !tbaa !9
  %i.sd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load170.7, <4 x i32> splat (i32 -8388608))
  %i.se = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load171.7, <4 x i32> splat (i32 -8388608))
  %i.sf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sd, <4 x i32> splat (i32 8388607))
  %i.sg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.se, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.sf, ptr %i.sb, align 16, !tbaa !9
  store <4 x i32> %i.sg, ptr %i.sc, align 16, !tbaa !9
  %i.sh = load <8 x i32>, ptr %i.dt, align 16, !tbaa !9 ; 2 uses
  %i.si = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sj = shufflevector <8 x i32> %i.sh, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.sk = add nsw <4 x i32> %i.si, %i.sj
  store <4 x i32> %i.sk, ptr %i.dv, align 16, !tbaa !9
  %i.sl = load <8 x i32>, ptr %i.di, align 4, !tbaa !9 ; 2 uses
  %i.sm = load <4 x i32>, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %i.sn = load i32, ptr %i.a, align 16, !tbaa !9
  store i32 %i.sn, ptr %i.eh, align 16, !tbaa !9
  %i.so = shufflevector <4 x i32> %i.sm, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.sp = shufflevector <4 x i32> %i.sm, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.sq = add nsw <2 x i32> %i.so, %i.sp
  store <2 x i32> %i.sq, ptr %i.b, align 16, !tbaa !9
  %i.sr = load <4 x i32>, ptr %i.dl, align 16, !tbaa !9 ; 2 uses
  %i.ss = shufflevector <4 x i32> %i.sr, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.st = shufflevector <4 x i32> %i.sr, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.su = add nsw <2 x i32> %i.ss, %i.st
  store <2 x i32> %i.su, ptr %i.dm, align 8, !tbaa !9
  %i.sv = shufflevector <8 x i32> %i.sl, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.sw = shufflevector <8 x i32> %i.sl, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sx = add nsw <4 x i32> %i.sv, %i.sw
  store <4 x i32> %i.sx, ptr %i.lx, align 4, !tbaa !9
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %3 = load <8 x i32>, ptr %i.du, align 4, !tbaa !9 ; 2 uses
  %i.sz = shufflevector <8 x i32> %3, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ta = shufflevector <8 x i32> %3, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.tb = insertelement <4 x i32> %i.ta, i32 0, i64 3
  %i.tc = add nsw <4 x i32> %i.sz, %i.tb
  store <4 x i32> %i.tc, ptr %i.sy, align 4, !tbaa !9
  %i.td = load <7 x i32>, ptr %i.na, align 8, !tbaa !9
  %i.te = shufflevector <7 x i32> %i.td, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %i.te, ptr %i.mo, align 4, !tbaa !9
  %i.tf = load i32, ptr %i.ql, align 8, !tbaa !9
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !9
  %i.th = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ti = load <3 x i32>, ptr %i.qk, align 16, !tbaa !9
  %i.tj = shufflevector <3 x i32> %i.ti, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.tj, ptr %i.th, align 8, !tbaa !9
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 3 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !9  ; 2 uses
  store i32 %i.tl, ptr %i.gd, align 16, !tbaa !9
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !9  ; 2 uses
  %i.to = add nsw i32 %i.tn, %i.tl
  store i32 %i.to, ptr %i.mr, align 4, !tbaa !9
  %i.tp = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !9  ; 2 uses
  %i.tr = add nsw i32 %i.tq, %i.tn
  %i.ts = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 %i.tr, ptr %i.ts, align 8, !tbaa !9
  %i.tt = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !9  ; 2 uses
  %i.tv = add nsw i32 %i.tu, %i.tq
  %i.tw = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 %i.tv, ptr %i.tw, align 4, !tbaa !9
  %i.tx = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !9  ; 2 uses
  %i.tz = add nsw i32 %i.ty, %i.tu
  %i.ua = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.tz, ptr %i.ua, align 16, !tbaa !9
  %i.ub = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.uc = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ud = load <6 x i32>, ptr %i.ub, align 4, !tbaa !9 ; 2 uses
  %i.ue = shufflevector <6 x i32> %i.ud, <6 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 5>
  %i.uf = shufflevector <6 x i32> %i.ud, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 poison, i32 0, i32 2, i32 9>
  %i.ug = insertelement <4 x i32> %i.uf, i32 %i.ty, i64 0
  %i.uh = add nsw <4 x i32> %i.ue, %i.ug
  store <4 x i32> %i.uh, ptr %i.uc, align 4, !tbaa !9
  %i.ui = load <7 x i32>, ptr %i.qj, align 8, !tbaa !9
  %i.uj = shufflevector <7 x i32> %i.ui, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %i.uj, ptr %i.hd, align 4, !tbaa !9
  %i.uk = load i32, ptr %i.qi, align 8, !tbaa !9
  store i32 %i.uk, ptr %i.hj, align 4, !tbaa !9
  %i.ul = load <3 x i32>, ptr %i.qh, align 16, !tbaa !9
  %i.um = shufflevector <3 x i32> %i.ul, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.um, ptr %i.hk, align 8, !tbaa !9
  %i.un = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 3 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !9  ; 2 uses
  store i32 %i.up, ptr %i.un, align 16, !tbaa !9
  %i.uq = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !9  ; 2 uses
  %i.us = add nsw i32 %i.ur, %i.up
  %i.ut = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  store i32 %i.us, ptr %i.ut, align 4, !tbaa !9
  %i.uu = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !9  ; 2 uses
  %i.uw = add nsw i32 %i.uv, %i.ur
  %i.ux = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i32 %i.uw, ptr %i.ux, align 8, !tbaa !9
  %i.uy = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !9  ; 2 uses
  %i.va = add nsw i32 %i.uz, %i.uv
  %i.vb = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 %i.va, ptr %i.vb, align 4, !tbaa !9
  %i.vc = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !9  ; 2 uses
  %i.ve = add nsw i32 %i.vd, %i.uz
  %i.vf = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i32 %i.ve, ptr %i.vf, align 16, !tbaa !9
  %i.vg = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.vh = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.vi = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 4 uses
  %i.vj = load <6 x i32>, ptr %i.vg, align 4, !tbaa !9 ; 2 uses
  %i.vk = shufflevector <6 x i32> %i.vj, <6 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 5>
  %i.vl = shufflevector <6 x i32> %i.vj, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 poison, i32 0, i32 2, i32 9>
  %i.vm = insertelement <4 x i32> %i.vl, i32 %i.vd, i64 0
  %i.vn = add nsw <4 x i32> %i.vk, %i.vm
  store <4 x i32> %i.vn, ptr %i.vh, align 4, !tbaa !9
  %i.vo = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.vp = load <7 x i32>, ptr %i.qg, align 8, !tbaa !9
  %i.vq = shufflevector <7 x i32> %i.vp, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %i.vq, ptr %i.vo, align 4, !tbaa !9
  %i.vr = load i32, ptr %i.pl, align 8, !tbaa !9
  %i.vs = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 %i.vr, ptr %i.vs, align 4, !tbaa !9
  %i.vt = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.vu = load <3 x i32>, ptr %i.pt, align 16, !tbaa !9
  %i.vv = shufflevector <3 x i32> %i.vu, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.vv, ptr %i.vt, align 8, !tbaa !9
  %i.vw = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 5 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 3 uses
  %i.vy = load <15 x i32>, ptr %i.vx, align 4, !tbaa !9 ; 2 uses
  %i.vz = shufflevector <15 x i32> %i.vy, <15 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.wa = shufflevector <15 x i32> %i.vy, <15 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> <i32 15, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12>
  %i.wb = add nsw <8 x i32> %i.vz, %i.wa
  store <8 x i32> %i.wb, ptr %i.vw, align 16, !tbaa !9
  %i.wc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.b, align 16, !tbaa !9
  %wide.load178 = load <4 x i32>, ptr %i.wc, align 16, !tbaa !9
  %i.wd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177, <4 x i32> splat (i32 -8388608))
  %i.we = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178, <4 x i32> splat (i32 -8388608))
  %i.wf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wd, <4 x i32> splat (i32 8388607))
  %i.wg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.we, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wf, ptr %i.b, align 16, !tbaa !9
  store <4 x i32> %i.wg, ptr %i.wc, align 16, !tbaa !9
  %i.wh = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load177.1 = load <4 x i32>, ptr %i.wh, align 16, !tbaa !9
  %wide.load178.1 = load <4 x i32>, ptr %i.wi, align 16, !tbaa !9
  %i.wj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.1, <4 x i32> splat (i32 -8388608))
  %i.wk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.1, <4 x i32> splat (i32 -8388608))
  %i.wl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wj, <4 x i32> splat (i32 8388607))
  %i.wm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wk, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wl, ptr %i.wh, align 16, !tbaa !9
  store <4 x i32> %i.wm, ptr %i.wi, align 16, !tbaa !9
  %i.wn = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load177.2 = load <4 x i32>, ptr %i.wn, align 16, !tbaa !9
  %wide.load178.2 = load <4 x i32>, ptr %i.wo, align 16, !tbaa !9
  %i.wp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.2, <4 x i32> splat (i32 -8388608))
  %i.wq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.2, <4 x i32> splat (i32 -8388608))
  %i.wr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wp, <4 x i32> splat (i32 8388607))
  %i.ws = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wq, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wr, ptr %i.wn, align 16, !tbaa !9
  store <4 x i32> %i.ws, ptr %i.wo, align 16, !tbaa !9
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load177.3 = load <4 x i32>, ptr %i.wt, align 16, !tbaa !9
  %wide.load178.3 = load <4 x i32>, ptr %i.wu, align 16, !tbaa !9
  %i.wv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.3, <4 x i32> splat (i32 -8388608))
  %i.ww = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.3, <4 x i32> splat (i32 -8388608))
  %i.wx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wv, <4 x i32> splat (i32 8388607))
  %i.wy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ww, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wx, ptr %i.wt, align 16, !tbaa !9
  store <4 x i32> %i.wy, ptr %i.wu, align 16, !tbaa !9
  %i.wz = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %wide.load177.4 = load <4 x i32>, ptr %i.wz, align 16, !tbaa !9
  %wide.load178.4 = load <4 x i32>, ptr %i.xa, align 16, !tbaa !9
  %i.xb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.4, <4 x i32> splat (i32 -8388608))
  %i.xc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.4, <4 x i32> splat (i32 -8388608))
  %i.xd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xb, <4 x i32> splat (i32 8388607))
  %i.xe = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xc, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xd, ptr %i.wz, align 16, !tbaa !9
  store <4 x i32> %i.xe, ptr %i.xa, align 16, !tbaa !9
  %i.xf = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %wide.load177.5 = load <4 x i32>, ptr %i.xf, align 16, !tbaa !9
  %wide.load178.5 = load <4 x i32>, ptr %i.xg, align 16, !tbaa !9
  %i.xh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.5, <4 x i32> splat (i32 -8388608))
  %i.xi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.5, <4 x i32> splat (i32 -8388608))
  %i.xj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xh, <4 x i32> splat (i32 8388607))
  %i.xk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xi, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xj, ptr %i.xf, align 16, !tbaa !9
  store <4 x i32> %i.xk, ptr %i.xg, align 16, !tbaa !9
  %i.xl = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %wide.load177.6 = load <4 x i32>, ptr %i.xl, align 16, !tbaa !9
  %wide.load178.6 = load <4 x i32>, ptr %i.xm, align 16, !tbaa !9
  %i.xn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.6, <4 x i32> splat (i32 -8388608))
  %i.xo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.6, <4 x i32> splat (i32 -8388608))
  %i.xp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xn, <4 x i32> splat (i32 8388607))
  %i.xq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xo, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xp, ptr %i.xl, align 16, !tbaa !9
  store <4 x i32> %i.xq, ptr %i.xm, align 16, !tbaa !9
  %i.xr = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %wide.load177.7 = load <4 x i32>, ptr %i.xr, align 16, !tbaa !9
  %wide.load178.7 = load <4 x i32>, ptr %i.xs, align 16, !tbaa !9
  %i.xt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load177.7, <4 x i32> splat (i32 -8388608))
  %i.xu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load178.7, <4 x i32> splat (i32 -8388608))
  %i.xv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xt, <4 x i32> splat (i32 8388607))
  %i.xw = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xu, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xv, ptr %i.xr, align 16, !tbaa !9
  store <4 x i32> %i.xw, ptr %i.xs, align 16, !tbaa !9
  call fastcc void @dct_a(ptr noundef %i.b, ptr noundef %i.a)
  call fastcc void @dct_b(ptr noundef %i.eh, ptr noundef %i.dt)
  call fastcc void @dct_b(ptr noundef %i.ff, ptr noundef %i.eg)
  call fastcc void @dct_b(ptr noundef %i.gd, ptr noundef %i.es)
  call fastcc void @dct_b(ptr noundef %i.ha, ptr noundef %i.fe)
  call fastcc void @dct_b(ptr noundef %i.un, ptr noundef %i.fq)
  call fastcc void @dct_b(ptr noundef %i.vi, ptr noundef %i.gc)
  call fastcc void @dct_b(ptr noundef %i.vw, ptr noundef %i.go)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load184 = load <4 x i32>, ptr %i.a, align 16, !tbaa !9
  %wide.load185 = load <4 x i32>, ptr %i.xx, align 16, !tbaa !9
  %i.xy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184, <4 x i32> splat (i32 -8388608))
  %i.xz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185, <4 x i32> splat (i32 -8388608))
  %i.ya = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xy, <4 x i32> splat (i32 8388607))
  %i.yb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xz, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ya, ptr %i.a, align 16, !tbaa !9
  store <4 x i32> %i.yb, ptr %i.xx, align 16, !tbaa !9
  %i.yc = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load184.1 = load <4 x i32>, ptr %i.yc, align 16, !tbaa !9
  %wide.load185.1 = load <4 x i32>, ptr %i.yd, align 16, !tbaa !9
  %i.ye = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.1, <4 x i32> splat (i32 -8388608))
  %i.yf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.1, <4 x i32> splat (i32 -8388608))
  %i.yg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ye, <4 x i32> splat (i32 8388607))
  %i.yh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yf, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yg, ptr %i.yc, align 16, !tbaa !9
  store <4 x i32> %i.yh, ptr %i.yd, align 16, !tbaa !9
  %i.yi = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load184.2 = load <4 x i32>, ptr %i.yi, align 16, !tbaa !9
  %wide.load185.2 = load <4 x i32>, ptr %i.yj, align 16, !tbaa !9
  %i.yk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.2, <4 x i32> splat (i32 -8388608))
  %i.yl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.2, <4 x i32> splat (i32 -8388608))
  %i.ym = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yk, <4 x i32> splat (i32 8388607))
  %i.yn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yl, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ym, ptr %i.yi, align 16, !tbaa !9
  store <4 x i32> %i.yn, ptr %i.yj, align 16, !tbaa !9
  %i.yo = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %wide.load184.3 = load <4 x i32>, ptr %i.yo, align 16, !tbaa !9
  %wide.load185.3 = load <4 x i32>, ptr %i.yp, align 16, !tbaa !9
  %i.yq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.3, <4 x i32> splat (i32 -8388608))
  %i.yr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.3, <4 x i32> splat (i32 -8388608))
  %i.ys = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yq, <4 x i32> splat (i32 8388607))
  %i.yt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yr, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ys, ptr %i.yo, align 16, !tbaa !9
  store <4 x i32> %i.yt, ptr %i.yp, align 16, !tbaa !9
  %i.yu = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %wide.load184.4 = load <4 x i32>, ptr %i.yu, align 16, !tbaa !9
  %wide.load185.4 = load <4 x i32>, ptr %i.yv, align 16, !tbaa !9
  %i.yw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.4, <4 x i32> splat (i32 -8388608))
  %i.yx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.4, <4 x i32> splat (i32 -8388608))
  %i.yy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yw, <4 x i32> splat (i32 8388607))
  %i.yz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yx, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yy, ptr %i.yu, align 16, !tbaa !9
  store <4 x i32> %i.yz, ptr %i.yv, align 16, !tbaa !9
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %wide.load184.5 = load <4 x i32>, ptr %i.za, align 16, !tbaa !9
  %wide.load185.5 = load <4 x i32>, ptr %i.zb, align 16, !tbaa !9
  %i.zc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.5, <4 x i32> splat (i32 -8388608))
  %i.zd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.5, <4 x i32> splat (i32 -8388608))
  %i.ze = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zc, <4 x i32> splat (i32 8388607))
  %i.zf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zd, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ze, ptr %i.za, align 16, !tbaa !9
  store <4 x i32> %i.zf, ptr %i.zb, align 16, !tbaa !9
  %i.zg = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %wide.load184.6 = load <4 x i32>, ptr %i.zg, align 16, !tbaa !9
  %wide.load185.6 = load <4 x i32>, ptr %i.zh, align 16, !tbaa !9
  %i.zi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.6, <4 x i32> splat (i32 -8388608))
  %i.zj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.6, <4 x i32> splat (i32 -8388608))
  %i.zk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zi, <4 x i32> splat (i32 8388607))
  %i.zl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.zk, ptr %i.zg, align 16, !tbaa !9
  store <4 x i32> %i.zl, ptr %i.zh, align 16, !tbaa !9
  %i.zm = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %wide.load184.7 = load <4 x i32>, ptr %i.zm, align 16, !tbaa !9
  %wide.load185.7 = load <4 x i32>, ptr %i.zn, align 16, !tbaa !9
  %i.zo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load184.7, <4 x i32> splat (i32 -8388608))
  %i.zp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load185.7, <4 x i32> splat (i32 -8388608))
  %i.zq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zo, <4 x i32> splat (i32 8388607))
  %i.zr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zp, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.zq, ptr %i.zm, align 16, !tbaa !9
  store <4 x i32> %i.zr, ptr %i.zn, align 16, !tbaa !9
  %i.zs = load i32, ptr %i.a, align 16, !tbaa !9  ; 2 uses
  %i.zt = load i32, ptr %i.dt, align 16, !tbaa !9 ; 2 uses
  %i.zu = add nsw i32 %i.zt, %i.zs
  %i.zv = sext i32 %i.zu to i64
  %i.zw = mul nsw i64 %i.zv, 4199362
  %i.zx = add nsw i64 %i.zw, 4194304
  %i.zy = lshr i64 %i.zx, 23
  %i.zz = trunc i64 %i.zy to i32
  store i32 %i.zz, ptr %i.b, align 16, !tbaa !9
  %i.aaa = load i32, ptr %i.di, align 4, !tbaa !9 ; 2 uses
  %i.aab = load i32, ptr %i.mp, align 4, !tbaa !9 ; 2 uses
  %i.aac = add nsw i32 %i.aab, %i.aaa
  %i.aad = sext i32 %i.aac to i64
  %i.aae = mul nsw i64 %i.aad, 4240198
  %i.aaf = add nsw i64 %i.aae, 4194304
  %i.aag = lshr i64 %i.aaf, 23
  %i.aah = trunc i64 %i.aag to i32
  store i32 %i.aah, ptr %i.dk, align 4, !tbaa !9
  %i.aai = load i32, ptr %i.dj, align 8, !tbaa !9 ; 2 uses
  %i.aaj = load i32, ptr %i.dw, align 8, !tbaa !9 ; 2 uses
  %i.aak = add nsw i32 %i.aaj, %i.aai
  %i.aal = sext i32 %i.aak to i64
  %i.aam = mul nsw i64 %i.aal, 4323885
  %i.aan = add nsw i64 %i.aam, 4194304
  %i.aao = lshr i64 %i.aan, 23
  %i.aap = trunc i64 %i.aao to i32
  store i32 %i.aap, ptr %i.dm, align 8, !tbaa !9
  %i.aaq = load i32, ptr %i.lv, align 4, !tbaa !9 ; 2 uses
  %i.aar = load i32, ptr %i.mq, align 4, !tbaa !9 ; 2 uses
  %i.aas = add nsw i32 %i.aar, %i.aaq
  %i.aat = sext i32 %i.aas to i64
  %i.aau = mul nsw i64 %i.aat, 4454708
  %i.aav = add nsw i64 %i.aau, 4194304
  %i.aaw = lshr i64 %i.aav, 23
  %i.aax = trunc i64 %i.aaw to i32
  store i32 %i.aax, ptr %i.do, align 4, !tbaa !9
  %i.aay = load i32, ptr %i.dl, align 16, !tbaa !9 ; 2 uses
  %i.aaz = load i32, ptr %i.dy, align 16, !tbaa !9 ; 2 uses
  %i.aba = add nsw i32 %i.aaz, %i.aay
  %i.abb = sext i32 %i.aba to i64
  %i.abc = mul nsw i64 %i.abb, 4639772
  %i.abd = add nsw i64 %i.abc, 4194304
  %i.abe = lshr i64 %i.abd, 23
  %i.abf = trunc i64 %i.abe to i32
  store i32 %i.abf, ptr %i.dv, align 16, !tbaa !9
  %i.abg = load i32, ptr %i.me, align 4, !tbaa !9 ; 2 uses
  %i.abh = load i32, ptr %i.ms, align 4, !tbaa !9 ; 2 uses
  %i.abi = add nsw i32 %i.abh, %i.abg
  %i.abj = sext i32 %i.abi to i64
  %i.abk = mul nsw i64 %i.abj, 4890013
  %i.abl = add nsw i64 %i.abk, 4194304
  %i.abm = lshr i64 %i.abl, 23
  %i.abn = trunc i64 %i.abm to i32
  store i32 %i.abn, ptr %i.dx, align 4, !tbaa !9
  %i.abo = load i32, ptr %i.dn, align 8, !tbaa !9 ; 2 uses
  %i.abp = load i32, ptr %i.ea, align 8, !tbaa !9 ; 2 uses
  %i.abq = add nsw i32 %i.abp, %i.abo
  %i.abr = sext i32 %i.abq to i64
  %i.abs = mul nsw i64 %i.abr, 5221943
  %i.abt = add nsw i64 %i.abs, 4194304
  %i.abu = lshr i64 %i.abt, 23
  %i.abv = trunc i64 %i.abu to i32
  store i32 %i.abv, ptr %i.dz, align 8, !tbaa !9
  %i.abw = load i32, ptr %i.mn, align 4, !tbaa !9 ; 2 uses
  %i.abx = load i32, ptr %i.mt, align 4, !tbaa !9 ; 2 uses
  %i.aby = add nsw i32 %i.abx, %i.abw
  %i.abz = sext i32 %i.aby to i64
  %i.aca = mul nsw i64 %i.abz, 5660703
  %i.acb = add nsw i64 %i.aca, 4194304
  %i.acc = lshr i64 %i.acb, 23
  %i.acd = trunc i64 %i.acc to i32
  store i32 %i.acd, ptr %i.eb, align 4, !tbaa !9
  %i.ace = sub nsw i32 %i.abw, %i.abx
  %i.acf = sext i32 %i.ace to i64
  %i.acg = mul i64 %i.acf, 36028797012718345
  %i.ach = add i64 %i.acg, 4194304
  %i.aci = lshr i64 %i.ach, 23
  %i.acj = trunc i64 %i.aci to i32
  store i32 %i.acj, ptr %i.eh, align 16, !tbaa !9
  %i.ack = sub nsw i32 %i.abo, %i.abp
  %i.acl = sext i32 %i.ack to i64
  %i.acm = mul i64 %i.acl, 36028797011922993
  %i.acn = add i64 %i.acm, 4194304
  %i.aco = lshr i64 %i.acn, 23
  %i.acp = trunc i64 %i.aco to i32
  store i32 %i.acp, ptr %i.ej, align 4, !tbaa !9
  %i.acq = sub nsw i32 %i.abg, %i.abh
  %i.acr = sext i32 %i.acq to i64
  %i.acs = mul i64 %i.acr, 36028797010805474
  %i.act = add i64 %i.acs, 4194304
  %i.acu = lshr i64 %i.act, 23
  %i.acv = trunc i64 %i.acu to i32
  store i32 %i.acv, ptr %i.el, align 8, !tbaa !9
  %i.acw = sub nsw i32 %i.aay, %i.aaz
  %i.acx = sext i32 %i.acw to i64
  %i.acy = mul i64 %i.acx, 36028797009153994
  %i.acz = add i64 %i.acy, 4194304
  %i.ada = lshr i64 %i.acz, 23
  %i.adb = trunc i64 %i.ada to i32
  store i32 %i.adb, ptr %i.en, align 4, !tbaa !9
  %i.adc = sub nsw i32 %i.aaq, %i.aar
  %i.add = sext i32 %i.adc to i64
  %i.ade = mul i64 %i.add, 36028797006513892
  %i.adf = add i64 %i.ade, 4194304
  %i.adg = lshr i64 %i.adf, 23
  %i.adh = trunc i64 %i.adg to i32
  store i32 %i.adh, ptr %i.et, align 16, !tbaa !9
  %i.adi = sub nsw i32 %i.aai, %i.aaj
  %i.adj = sext i32 %i.adi to i64
  %i.adk = mul i64 %i.adj, 36028797001702048
  %i.adl = add i64 %i.adk, 4194304
  %i.adm = lshr i64 %i.adl, 23
  %i.adn = trunc i64 %i.adm to i32
  store i32 %i.adn, ptr %i.ev, align 4, !tbaa !9
  %i.ado = sub nsw i32 %i.aaa, %i.aab
  %i.adp = sext i32 %i.ado to i64
  %i.adq = mul i64 %i.adp, 36028796990378876
  %i.adr = add i64 %i.adq, 4194304
  %i.ads = lshr i64 %i.adr, 23
  %i.adt = trunc i64 %i.ads to i32
  store i32 %i.adt, ptr %i.ex, align 8, !tbaa !9
  %i.adu = sub nsw i32 %i.zs, %i.zt
  %i.adv = sext i32 %i.adu to i64
  %i.adw = mul i64 %i.adv, 36028796933483984
  %i.adx = add i64 %i.adw, 4194304
  %i.ady = lshr i64 %i.adx, 23
  %i.adz = trunc i64 %i.ady to i32
  store i32 %i.adz, ptr %i.ez, align 4, !tbaa !9
  %i.aea = load i32, ptr %i.es, align 16, !tbaa !9
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = mul nsw i64 %i.aeb, 4214598
  %i.aed = add nsw i64 %i.aec, 4194304
  %i.aee = lshr i64 %i.aed, 23
  %i.aef = trunc i64 %i.aee to i32                ; 3 uses
  store i32 %i.aef, ptr %i.es, align 16, !tbaa !9
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 3 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !9
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = mul nsw i64 %i.aei, 4383036
  %i.aek = add nsw i64 %i.aej, 4194304
  %i.ael = lshr i64 %i.aek, 23
  %i.aem = trunc i64 %i.ael to i32                ; 3 uses
  store i32 %i.aem, ptr %i.aeg, align 4, !tbaa !9
  %i.aen = load i32, ptr %i.eu, align 8, !tbaa !9
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = mul nsw i64 %i.aeo, 4755871
  %i.aeq = add nsw i64 %i.aep, 4194304
  %i.aer = lshr i64 %i.aeq, 23
  %i.aes = trunc i64 %i.aer to i32                ; 3 uses
  store i32 %i.aes, ptr %i.eu, align 8, !tbaa !9
  %i.aet = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.a, i64 108 ; 3 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !9
  %i.aew = sext i32 %i.aev to i64
  %i.aex = mul nsw i64 %i.aew, 5425934
  %i.aey = add nsw i64 %i.aex, 4194304
  %i.aez = lshr i64 %i.aey, 23
  %i.afa = trunc i64 %i.aez to i32                ; 3 uses
  store i32 %i.afa, ptr %i.aeu, align 4, !tbaa !9
  %i.afb = load i32, ptr %i.ew, align 16, !tbaa !9
  %i.afc = sext i32 %i.afb to i64
  %i.afd = mul nsw i64 %i.afc, 6611520
  %i.afe = add nsw i64 %i.afd, 4194304
  %i.aff = lshr i64 %i.afe, 23
  %i.afg = trunc i64 %i.aff to i32                ; 3 uses
  store i32 %i.afg, ptr %i.ew, align 16, !tbaa !9
  %i.afh = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.a, i64 116 ; 3 uses
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !9
  %i.afk = sext i32 %i.afj to i64
  %i.afl = mul nsw i64 %i.afk, 8897610
  %i.afm = add nsw i64 %i.afl, 4194304
  %i.afn = lshr i64 %i.afm, 23
  %i.afo = trunc i64 %i.afn to i32                ; 3 uses
  store i32 %i.afo, ptr %i.afi, align 4, !tbaa !9
  %i.afp = load i32, ptr %i.ey, align 8, !tbaa !9
  %i.afq = sext i32 %i.afp to i64
  %i.afr = mul nsw i64 %i.afq, 14448934
  %i.afs = add nsw i64 %i.afr, 4194304
  %i.aft = lshr i64 %i.afs, 23
  %i.afu = trunc i64 %i.aft to i32                ; 3 uses
  store i32 %i.afu, ptr %i.ey, align 8, !tbaa !9
  %i.afv = getelementptr inbounds nuw i8, ptr %i.a, i64 92 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.a, i64 124 ; 3 uses
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !9
  %i.afy = sext i32 %i.afx to i64
  %i.afz = mul nsw i64 %i.afy, 42791536
  %i.aga = add nsw i64 %i.afz, 4194304
  %i.agb = lshr i64 %i.aga, 23
  %i.agc = trunc i64 %i.agb to i32                ; 3 uses
  store i32 %i.agc, ptr %i.afw, align 4, !tbaa !9
  %i.agd = load i32, ptr %i.eg, align 16, !tbaa !9 ; 2 uses
  %i.age = add nsw i32 %i.agd, %i.aef
  store i32 %i.age, ptr %i.ff, align 16, !tbaa !9
  %i.agf = load i32, ptr %i.tk, align 4, !tbaa !9 ; 2 uses
  %i.agg = add nsw i32 %i.agf, %i.aem
  store i32 %i.agg, ptr %i.fh, align 4, !tbaa !9
  %i.agh = load i32, ptr %i.ei, align 8, !tbaa !9 ; 2 uses
  %i.agi = add nsw i32 %i.agh, %i.aes
  store i32 %i.agi, ptr %i.fj, align 8, !tbaa !9
  %i.agj = load i32, ptr %i.aet, align 4, !tbaa !9 ; 2 uses
  %i.agk = add nsw i32 %i.agj, %i.afa
  store i32 %i.agk, ptr %i.fl, align 4, !tbaa !9
  %i.agl = load i32, ptr %i.ek, align 16, !tbaa !9 ; 2 uses
  %i.agm = add nsw i32 %i.agl, %i.afg
  store i32 %i.agm, ptr %i.fr, align 16, !tbaa !9
  %i.agn = load i32, ptr %i.afh, align 4, !tbaa !9 ; 2 uses
  %i.ago = add nsw i32 %i.agn, %i.afo
  store i32 %i.ago, ptr %i.ft, align 4, !tbaa !9
  %i.agp = load i32, ptr %i.em, align 8, !tbaa !9 ; 2 uses
  %i.agq = add nsw i32 %i.agp, %i.afu
  store i32 %i.agq, ptr %i.fv, align 8, !tbaa !9
  %i.agr = load i32, ptr %i.afv, align 4, !tbaa !9 ; 2 uses
  %i.ags = add nsw i32 %i.agr, %i.agc
  store i32 %i.ags, ptr %i.fx, align 4, !tbaa !9
  %i.agt = sub nsw i32 %i.agr, %i.agc
  store i32 %i.agt, ptr %i.gd, align 16, !tbaa !9
  %i.agu = sub nsw i32 %i.agp, %i.afu
  store i32 %i.agu, ptr %i.gf, align 4, !tbaa !9
  %i.agv = sub nsw i32 %i.agn, %i.afo
  store i32 %i.agv, ptr %i.gh, align 8, !tbaa !9
  %i.agw = sub nsw i32 %i.agl, %i.afg
  store i32 %i.agw, ptr %i.gj, align 4, !tbaa !9
  %i.agx = sub nsw i32 %i.agj, %i.afa
  store i32 %i.agx, ptr %i.gp, align 16, !tbaa !9
  %i.agy = sub nsw i32 %i.agh, %i.aes
  store i32 %i.agy, ptr %i.gr, align 4, !tbaa !9
  %i.agz = sub nsw i32 %i.agf, %i.aem
  store i32 %i.agz, ptr %i.gt, align 8, !tbaa !9
  %i.aha = sub nsw i32 %i.agd, %i.aef
  store i32 %i.aha, ptr %i.gv, align 4, !tbaa !9
  %i.ahb = load i32, ptr %i.fq, align 16, !tbaa !9
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = mul nsw i64 %i.ahc, 4214598
  %i.ahe = add nsw i64 %i.ahd, 4194304
  %i.ahf = lshr i64 %i.ahe, 23
  %i.ahg = trunc i64 %i.ahf to i32                ; 3 uses
  store i32 %i.ahg, ptr %i.fq, align 16, !tbaa !9
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.a, i64 164 ; 3 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !9
  %i.ahj = sext i32 %i.ahi to i64
  %i.ahk = mul nsw i64 %i.ahj, 4383036
  %i.ahl = add nsw i64 %i.ahk, 4194304
  %i.ahm = lshr i64 %i.ahl, 23
  %i.ahn = trunc i64 %i.ahm to i32                ; 3 uses
  store i32 %i.ahn, ptr %i.ahh, align 4, !tbaa !9
  %i.aho = load i32, ptr %i.fs, align 8, !tbaa !9
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = mul nsw i64 %i.ahp, 4755871
  %i.ahr = add nsw i64 %i.ahq, 4194304
  %i.ahs = lshr i64 %i.ahr, 23
  %i.aht = trunc i64 %i.ahs to i32                ; 3 uses
  store i32 %i.aht, ptr %i.fs, align 8, !tbaa !9
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.a, i64 140 ; 2 uses
end_hunk_0
begin_hunk_1_@imdct_half_64:vector.ph
  %i.alr = sext i32 %i.alq to i64
  %i.als = mul nsw i64 %i.alr, 6611520
  %i.alt = add nsw i64 %i.als, 4194304
  %i.alu = lshr i64 %i.alt, 23
  %i.alv = trunc i64 %i.alu to i32                ; 3 uses
  store i32 %i.alv, ptr %i.gs, align 16, !tbaa !9
  %i.alw = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.a, i64 244 ; 3 uses
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !9
  %i.alz = sext i32 %i.aly to i64
  %i.ama = mul nsw i64 %i.alz, 8897610
  %i.amb = add nsw i64 %i.ama, 4194304
  %i.amc = lshr i64 %i.amb, 23
  %i.amd = trunc i64 %i.amc to i32                ; 3 uses
  store i32 %i.amd, ptr %i.alx, align 4, !tbaa !9
  %i.ame = load i32, ptr %i.gu, align 8, !tbaa !9
  %i.amf = sext i32 %i.ame to i64
  %i.amg = mul nsw i64 %i.amf, 14448934
  %i.amh = add nsw i64 %i.amg, 4194304
  %i.ami = lshr i64 %i.amh, 23
  %i.amj = trunc i64 %i.ami to i32                ; 3 uses
  store i32 %i.amj, ptr %i.gu, align 8, !tbaa !9
  %i.amk = getelementptr inbounds nuw i8, ptr %i.a, i64 220 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 3 uses
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !9
  %i.amn = sext i32 %i.amm to i64
  %i.amo = mul nsw i64 %i.amn, 42791536
  %i.amp = add nsw i64 %i.amo, 4194304
  %i.amq = lshr i64 %i.amp, 23
  %i.amr = trunc i64 %i.amq to i32                ; 3 uses
  store i32 %i.amr, ptr %i.aml, align 4, !tbaa !9
  %i.ams = load i32, ptr %i.gc, align 16, !tbaa !9 ; 2 uses
  %i.amt = add nsw i32 %i.ams, %i.aku
  store i32 %i.amt, ptr %i.vi, align 16, !tbaa !9
  %i.amu = load i32, ptr %i.vx, align 4, !tbaa !9 ; 2 uses
  %i.amv = add nsw i32 %i.amu, %i.alb
  %i.amw = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  store i32 %i.amv, ptr %i.amw, align 4, !tbaa !9
  %i.amx = load i32, ptr %i.ge, align 8, !tbaa !9 ; 2 uses
  %i.amy = add nsw i32 %i.amx, %i.alh
  %i.amz = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 3 uses
  store i32 %i.amy, ptr %i.amz, align 8, !tbaa !9
  %i.ana = load i32, ptr %i.ali, align 4, !tbaa !9 ; 2 uses
  %i.anb = add nsw i32 %i.ana, %i.alp
  %i.anc = getelementptr inbounds nuw i8, ptr %i.b, i64 204 ; 3 uses
  store i32 %i.anb, ptr %i.anc, align 4, !tbaa !9
  %i.and = load i32, ptr %i.gg, align 16, !tbaa !9 ; 2 uses
  %i.ane = add nsw i32 %i.and, %i.alv
  %i.anf = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 3 uses
  store i32 %i.ane, ptr %i.anf, align 16, !tbaa !9
  %i.ang = load i32, ptr %i.alw, align 4, !tbaa !9 ; 2 uses
  %i.anh = add nsw i32 %i.ang, %i.amd
  %i.ani = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 3 uses
  store i32 %i.anh, ptr %i.ani, align 4, !tbaa !9
  %i.anj = load i32, ptr %i.gi, align 8, !tbaa !9 ; 2 uses
  %i.ank = add nsw i32 %i.anj, %i.amj
  %i.anl = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 3 uses
  store i32 %i.ank, ptr %i.anl, align 8, !tbaa !9
  %i.anm = load i32, ptr %i.amk, align 4, !tbaa !9 ; 2 uses
  %i.ann = add nsw i32 %i.anm, %i.amr
  %i.ano = getelementptr inbounds nuw i8, ptr %i.b, i64 220 ; 3 uses
  store i32 %i.ann, ptr %i.ano, align 4, !tbaa !9
  %i.anp = sub nsw i32 %i.anm, %i.amr
  store i32 %i.anp, ptr %i.vw, align 16, !tbaa !9
  %i.anq = sub nsw i32 %i.anj, %i.amj
  %i.anr = getelementptr inbounds nuw i8, ptr %i.b, i64 228 ; 3 uses
  store i32 %i.anq, ptr %i.anr, align 4, !tbaa !9
  %i.ans = sub nsw i32 %i.ang, %i.amd
  %i.ant = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 3 uses
  store i32 %i.ans, ptr %i.ant, align 8, !tbaa !9
  %i.anu = sub nsw i32 %i.and, %i.alv
  %i.anv = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 3 uses
  store i32 %i.anu, ptr %i.anv, align 4, !tbaa !9
  %i.anw = sub nsw i32 %i.ana, %i.alp
  %i.anx = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  store i32 %i.anw, ptr %i.anx, align 16, !tbaa !9
  %i.any = sub nsw i32 %i.amx, %i.alh
  %i.anz = getelementptr inbounds nuw i8, ptr %i.b, i64 244 ; 3 uses
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !9
  %i.aoa = sub nsw i32 %i.amu, %i.alb
  %i.aob = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  store i32 %i.aoa, ptr %i.aob, align 8, !tbaa !9
  %i.aoc = sub nsw i32 %i.ams, %i.aku
  %i.aod = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 3 uses
  store i32 %i.aoc, ptr %i.aod, align 4, !tbaa !9
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load191 = load <4 x i32>, ptr %i.b, align 16, !tbaa !9
  %wide.load192 = load <4 x i32>, ptr %i.aoe, align 16, !tbaa !9
  %i.aof = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191, <4 x i32> splat (i32 -8388608))
  %i.aog = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192, <4 x i32> splat (i32 -8388608))
  %i.aoh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aof, <4 x i32> splat (i32 8388607))
  %i.aoi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aog, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aoh, ptr %i.b, align 16, !tbaa !9
  store <4 x i32> %i.aoi, ptr %i.aoe, align 16, !tbaa !9
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load191.1 = load <4 x i32>, ptr %i.aoj, align 16, !tbaa !9
  %wide.load192.1 = load <4 x i32>, ptr %i.aok, align 16, !tbaa !9
  %i.aol = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.1, <4 x i32> splat (i32 -8388608))
  %i.aom = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.1, <4 x i32> splat (i32 -8388608))
  %i.aon = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aol, <4 x i32> splat (i32 8388607))
  %i.aoo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aom, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aon, ptr %i.aoj, align 16, !tbaa !9
  store <4 x i32> %i.aoo, ptr %i.aok, align 16, !tbaa !9
  %i.aop = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load191.2 = load <4 x i32>, ptr %i.aop, align 16, !tbaa !9
  %wide.load192.2 = load <4 x i32>, ptr %i.aoq, align 16, !tbaa !9
  %i.aor = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.2, <4 x i32> splat (i32 -8388608))
  %i.aos = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.2, <4 x i32> splat (i32 -8388608))
  %i.aot = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aor, <4 x i32> splat (i32 8388607))
  %i.aou = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aos, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aot, ptr %i.aop, align 16, !tbaa !9
  store <4 x i32> %i.aou, ptr %i.aoq, align 16, !tbaa !9
  %i.aov = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load191.3 = load <4 x i32>, ptr %i.aov, align 16, !tbaa !9
  %wide.load192.3 = load <4 x i32>, ptr %i.aow, align 16, !tbaa !9
  %i.aox = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.3, <4 x i32> splat (i32 -8388608))
  %i.aoy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.3, <4 x i32> splat (i32 -8388608))
  %i.aoz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aox, <4 x i32> splat (i32 8388607))
  %i.apa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aoy, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aoz, ptr %i.aov, align 16, !tbaa !9
  store <4 x i32> %i.apa, ptr %i.aow, align 16, !tbaa !9
  %i.apb = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %wide.load191.4 = load <4 x i32>, ptr %i.apb, align 16, !tbaa !9
  %wide.load192.4 = load <4 x i32>, ptr %i.apc, align 16, !tbaa !9
  %i.apd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.4, <4 x i32> splat (i32 -8388608))
  %i.ape = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.4, <4 x i32> splat (i32 -8388608))
  %i.apf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.apd, <4 x i32> splat (i32 8388607))
  %i.apg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ape, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.apf, ptr %i.apb, align 16, !tbaa !9
  store <4 x i32> %i.apg, ptr %i.apc, align 16, !tbaa !9
  %i.aph = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %wide.load191.5 = load <4 x i32>, ptr %i.aph, align 16, !tbaa !9
  %wide.load192.5 = load <4 x i32>, ptr %i.api, align 16, !tbaa !9
  %i.apj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.5, <4 x i32> splat (i32 -8388608))
  %i.apk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.5, <4 x i32> splat (i32 -8388608))
  %i.apl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.apj, <4 x i32> splat (i32 8388607))
  %i.apm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.apk, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.apl, ptr %i.aph, align 16, !tbaa !9
  store <4 x i32> %i.apm, ptr %i.api, align 16, !tbaa !9
  %i.apn = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %wide.load191.6 = load <4 x i32>, ptr %i.apn, align 16, !tbaa !9
  %wide.load192.6 = load <4 x i32>, ptr %i.apo, align 16, !tbaa !9
  %i.app = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.6, <4 x i32> splat (i32 -8388608))
  %i.apq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.6, <4 x i32> splat (i32 -8388608))
  %i.apr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.app, <4 x i32> splat (i32 8388607))
  %i.aps = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.apq, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.apr, ptr %i.apn, align 16, !tbaa !9
  store <4 x i32> %i.aps, ptr %i.apo, align 16, !tbaa !9
  %i.apt = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %wide.load191.7 = load <4 x i32>, ptr %i.apt, align 16, !tbaa !9
  %wide.load192.7 = load <4 x i32>, ptr %i.apu, align 16, !tbaa !9
  %i.apv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load191.7, <4 x i32> splat (i32 -8388608))
  %i.apw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load192.7, <4 x i32> splat (i32 -8388608))
  %i.apx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.apv, <4 x i32> splat (i32 8388607))
  %i.apy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.apw, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.apx, ptr %i.apt, align 16, !tbaa !9
  store <4 x i32> %i.apy, ptr %i.apu, align 16, !tbaa !9
  %i.apz = load i32, ptr %i.b, align 16, !tbaa !9 ; 2 uses
  %i.aqa = load i32, ptr %i.ff, align 16, !tbaa !9 ; 2 uses
  %i.aqb = add nsw i32 %i.aqa, %i.apz
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = mul nsw i64 %i.aqc, 4195568
  %i.aqe = add nsw i64 %i.aqd, 4194304
  %i.aqf = lshr i64 %i.aqe, 23
  %i.aqg = trunc i64 %i.aqf to i32
  store i32 %i.aqg, ptr %i.a, align 16, !tbaa !9
  %i.aqh = load i32, ptr %i.dk, align 4, !tbaa !9 ; 2 uses
  %i.aqi = load i32, ptr %i.fh, align 4, !tbaa !9 ; 2 uses
  %i.aqj = add nsw i32 %i.aqi, %i.aqh
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = mul nsw i64 %i.aqk, 4205700
  %i.aqm = add nsw i64 %i.aql, 4194304
  %i.aqn = lshr i64 %i.aqm, 23
  %i.aqo = trunc i64 %i.aqn to i32
  store i32 %i.aqo, ptr %i.di, align 4, !tbaa !9
  %i.aqp = load i32, ptr %i.dm, align 8, !tbaa !9 ; 2 uses
  %i.aqq = load i32, ptr %i.fj, align 8, !tbaa !9 ; 2 uses
  %i.aqr = add nsw i32 %i.aqq, %i.aqp
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = mul nsw i64 %i.aqs, 4226086
  %i.aqu = add nsw i64 %i.aqt, 4194304
  %i.aqv = lshr i64 %i.aqu, 23
  %i.aqw = trunc i64 %i.aqv to i32
  store i32 %i.aqw, ptr %i.dj, align 8, !tbaa !9
  %i.aqx = load i32, ptr %i.do, align 4, !tbaa !9 ; 2 uses
  %i.aqy = load i32, ptr %i.fl, align 4, !tbaa !9 ; 2 uses
  %i.aqz = add nsw i32 %i.aqy, %i.aqx
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = mul nsw i64 %i.ara, 4256977
  %i.arc = add nsw i64 %i.arb, 4194304
  %i.ard = lshr i64 %i.arc, 23
  %i.are = trunc i64 %i.ard to i32
  store i32 %i.are, ptr %i.lv, align 4, !tbaa !9
  %i.arf = load i32, ptr %i.dv, align 16, !tbaa !9 ; 2 uses
  %i.arg = load i32, ptr %i.fr, align 16, !tbaa !9 ; 2 uses
  %i.arh = add nsw i32 %i.arg, %i.arf
  %i.ari = sext i32 %i.arh to i64
  %i.arj = mul nsw i64 %i.ari, 4298755
  %i.ark = add nsw i64 %i.arj, 4194304
  %i.arl = lshr i64 %i.ark, 23
  %i.arm = trunc i64 %i.arl to i32
  store i32 %i.arm, ptr %i.dl, align 16, !tbaa !9
  %i.arn = load i32, ptr %i.dx, align 4, !tbaa !9 ; 2 uses
  %i.aro = load i32, ptr %i.ft, align 4, !tbaa !9 ; 2 uses
  %i.arp = add nsw i32 %i.aro, %i.arn
  %i.arq = sext i32 %i.arp to i64
  %i.arr = mul nsw i64 %i.arq, 4351949
  %i.ars = add nsw i64 %i.arr, 4194304
  %i.art = lshr i64 %i.ars, 23
  %i.aru = trunc i64 %i.art to i32
  store i32 %i.aru, ptr %i.me, align 4, !tbaa !9
  %i.arv = load i32, ptr %i.dz, align 8, !tbaa !9 ; 2 uses
  %i.arw = load i32, ptr %i.fv, align 8, !tbaa !9 ; 2 uses
  %i.arx = add nsw i32 %i.arw, %i.arv
  %i.ary = sext i32 %i.arx to i64
  %i.arz = mul nsw i64 %i.ary, 4417251
  %i.asa = add nsw i64 %i.arz, 4194304
  %i.asb = lshr i64 %i.asa, 23
  %i.asc = trunc i64 %i.asb to i32
  store i32 %i.asc, ptr %i.dn, align 8, !tbaa !9
  %i.asd = load i32, ptr %i.eb, align 4, !tbaa !9 ; 2 uses
  %i.ase = load i32, ptr %i.fx, align 4, !tbaa !9 ; 2 uses
  %i.asf = add nsw i32 %i.ase, %i.asd
  %i.asg = sext i32 %i.asf to i64
  %i.ash = mul nsw i64 %i.asg, 4495537
  %i.asi = add nsw i64 %i.ash, 4194304
  %i.asj = lshr i64 %i.asi, 23
  %i.ask = trunc i64 %i.asj to i32
  store i32 %i.ask, ptr %i.mn, align 4, !tbaa !9
  %i.asl = load i32, ptr %i.eh, align 16, !tbaa !9 ; 2 uses
  %i.asm = load i32, ptr %i.gd, align 16, !tbaa !9 ; 2 uses
  %i.asn = add nsw i32 %i.asm, %i.asl
  %i.aso = sext i32 %i.asn to i64
  %i.asp = mul nsw i64 %i.aso, 4587901
  %i.asq = add nsw i64 %i.asp, 4194304
  %i.asr = lshr i64 %i.asq, 23
  %i.ass = trunc i64 %i.asr to i32
  store i32 %i.ass, ptr %i.dt, align 16, !tbaa !9
  %i.ast = load i32, ptr %i.ej, align 4, !tbaa !9 ; 2 uses
  %i.asu = load i32, ptr %i.gf, align 4, !tbaa !9 ; 2 uses
  %i.asv = add nsw i32 %i.asu, %i.ast
  %i.asw = sext i32 %i.asv to i64
  %i.asx = mul nsw i64 %i.asw, 4695690
  %i.asy = add nsw i64 %i.asx, 4194304
  %i.asz = lshr i64 %i.asy, 23
  %i.ata = trunc i64 %i.asz to i32
  store i32 %i.ata, ptr %i.mp, align 4, !tbaa !9
  %i.atb = load i32, ptr %i.el, align 8, !tbaa !9 ; 2 uses
  %i.atc = load i32, ptr %i.gh, align 8, !tbaa !9 ; 2 uses
  %i.atd = add nsw i32 %i.atc, %i.atb
  %i.ate = sext i32 %i.atd to i64
  %i.atf = mul nsw i64 %i.ate, 4820557
  %i.atg = add nsw i64 %i.atf, 4194304
  %i.ath = lshr i64 %i.atg, 23
  %i.ati = trunc i64 %i.ath to i32
  store i32 %i.ati, ptr %i.dw, align 8, !tbaa !9
  %i.atj = load i32, ptr %i.en, align 4, !tbaa !9 ; 2 uses
  %i.atk = load i32, ptr %i.gj, align 4, !tbaa !9 ; 2 uses
  %i.atl = add nsw i32 %i.atk, %i.atj
  %i.atm = sext i32 %i.atl to i64
  %i.atn = mul nsw i64 %i.atm, 4964534
  %i.ato = add nsw i64 %i.atn, 4194304
  %i.atp = lshr i64 %i.ato, 23
  %i.atq = trunc i64 %i.atp to i32
  store i32 %i.atq, ptr %i.mq, align 4, !tbaa !9
  %i.atr = load i32, ptr %i.et, align 16, !tbaa !9 ; 2 uses
  %i.ats = load i32, ptr %i.gp, align 16, !tbaa !9 ; 2 uses
  %i.att = add nsw i32 %i.ats, %i.atr
  %i.atu = sext i32 %i.att to i64
  %i.atv = mul nsw i64 %i.atu, 5130115
  %i.atw = add nsw i64 %i.atv, 4194304
  %i.atx = lshr i64 %i.atw, 23
  %i.aty = trunc i64 %i.atx to i32
  store i32 %i.aty, ptr %i.dy, align 16, !tbaa !9
  %i.atz = load i32, ptr %i.ev, align 4, !tbaa !9 ; 2 uses
  %i.aua = load i32, ptr %i.gr, align 4, !tbaa !9 ; 2 uses
  %i.aub = add nsw i32 %i.aua, %i.atz
  %i.auc = sext i32 %i.aub to i64
  %i.aud = mul nsw i64 %i.auc, 5320382
  %i.aue = add nsw i64 %i.aud, 4194304
  %i.auf = lshr i64 %i.aue, 23
  %i.aug = trunc i64 %i.auf to i32
  store i32 %i.aug, ptr %i.ms, align 4, !tbaa !9
  %i.auh = load i32, ptr %i.ex, align 8, !tbaa !9 ; 2 uses
  %i.aui = load i32, ptr %i.gt, align 8, !tbaa !9 ; 2 uses
  %i.auj = add nsw i32 %i.aui, %i.auh
  %i.auk = sext i32 %i.auj to i64
  %i.aul = mul nsw i64 %i.auk, 5539164
  %i.aum = add nsw i64 %i.aul, 4194304
  %i.aun = lshr i64 %i.aum, 23
  %i.auo = trunc i64 %i.aun to i32
  store i32 %i.auo, ptr %i.ea, align 8, !tbaa !9
  %i.aup = load i32, ptr %i.ez, align 4, !tbaa !9 ; 2 uses
  %i.auq = load i32, ptr %i.gv, align 4, !tbaa !9 ; 2 uses
  %i.aur = add nsw i32 %i.auq, %i.aup
  %i.aus = sext i32 %i.aur to i64
  %i.aut = mul nsw i64 %i.aus, 5791261
  %i.auu = add nsw i64 %i.aut, 4194304
  %i.auv = lshr i64 %i.auu, 23
  %i.auw = trunc i64 %i.auv to i32
  store i32 %i.auw, ptr %i.mt, align 4, !tbaa !9
  %i.aux = sub nsw i32 %i.aup, %i.auq
  %i.auy = sext i32 %i.aux to i64
  %i.auz = mul i64 %i.auy, 36028797012881216
  %i.ava = add i64 %i.auz, 4194304
  %i.avb = lshr i64 %i.ava, 23
  %i.avc = trunc i64 %i.avb to i32
  store i32 %i.avc, ptr %i.eg, align 16, !tbaa !9
  %i.avd = sub nsw i32 %i.auh, %i.aui
  %i.ave = sext i32 %i.avd to i64
  %i.avf = mul i64 %i.ave, 36028797012542538
  %i.avg = add i64 %i.avf, 4194304
  %i.avh = lshr i64 %i.avg, 23
  %i.avi = trunc i64 %i.avh to i32
  store i32 %i.avi, ptr %i.tk, align 4, !tbaa !9
  %i.avj = sub nsw i32 %i.atz, %i.aua
  %i.avk = sext i32 %i.avj to i64
  %i.avl = mul i64 %i.avk, 36028797012146529
  %i.avm = add i64 %i.avl, 4194304
  %i.avn = lshr i64 %i.avm, 23
  %i.avo = trunc i64 %i.avn to i32
  store i32 %i.avo, ptr %i.ei, align 8, !tbaa !9
  %i.avp = sub nsw i32 %i.atr, %i.ats
  %i.avq = sext i32 %i.avp to i64
  %i.avr = mul i64 %i.avq, 36028797011679765
  %i.avs = add i64 %i.avr, 4194304
  %i.avt = lshr i64 %i.avs, 23
  %i.avu = trunc i64 %i.avt to i32
  store i32 %i.avu, ptr %i.aet, align 4, !tbaa !9
  %i.avv = sub nsw i32 %i.atj, %i.atk
  %i.avw = sext i32 %i.avv to i64
  %i.avx = mul i64 %i.avw, 36028797011124113
  %i.avy = add i64 %i.avx, 4194304
  %i.avz = lshr i64 %i.avy, 23
  %i.awa = trunc i64 %i.avz to i32
  store i32 %i.awa, ptr %i.ek, align 16, !tbaa !9
  %i.awb = sub nsw i32 %i.atb, %i.atc
  %i.awc = sext i32 %i.awb to i64
  %i.awd = mul i64 %i.awc, 36028797010454494
  %i.awe = add i64 %i.awd, 4194304
  %i.awf = lshr i64 %i.awe, 23
  %i.awg = trunc i64 %i.awf to i32
  store i32 %i.awg, ptr %i.afh, align 4, !tbaa !9
  %i.awh = sub nsw i32 %i.ast, %i.asu
  %i.awi = sext i32 %i.awh to i64
  %i.awj = mul i64 %i.awi, 36028797009635236
  %i.awk = add i64 %i.awj, 4194304
  %i.awl = lshr i64 %i.awk, 23
  %i.awm = trunc i64 %i.awl to i32
  store i32 %i.awm, ptr %i.em, align 8, !tbaa !9
  %i.awn = sub nsw i32 %i.asl, %i.asm
  %i.awo = sext i32 %i.awn to i64
  %i.awp = mul i64 %i.awo, 36028797008613828
  %i.awq = add i64 %i.awp, 4194304
  %i.awr = lshr i64 %i.awq, 23
  %i.aws = trunc i64 %i.awr to i32
  store i32 %i.aws, ptr %i.afv, align 4, !tbaa !9
  %i.awt = sub nsw i32 %i.asd, %i.ase
  %i.awu = sext i32 %i.awt to i64
  %i.awv = mul i64 %i.awu, 36028797007309726
  %i.aww = add i64 %i.awv, 4194304
  %i.awx = lshr i64 %i.aww, 23
  %i.awy = trunc i64 %i.awx to i32
  store i32 %i.awy, ptr %i.es, align 16, !tbaa !9
  %i.awz = sub nsw i32 %i.arv, %i.arw
  %i.axa = sext i32 %i.awz to i64
  %i.axb = mul i64 %i.axa, 36028797005592760
  %i.axc = add i64 %i.axb, 4194304
  %i.axd = lshr i64 %i.axc, 23
  %i.axe = trunc i64 %i.axd to i32
  store i32 %i.axe, ptr %i.aeg, align 4, !tbaa !9
  %i.axf = sub nsw i32 %i.arn, %i.aro
  %i.axg = sext i32 %i.axf to i64
  %i.axh = mul i64 %i.axg, 36028797003238046
  %i.axi = add i64 %i.axh, 4194304
  %i.axj = lshr i64 %i.axi, 23
  %i.axk = trunc i64 %i.axj to i32
  store i32 %i.axk, ptr %i.eu, align 8, !tbaa !9
  %i.axl = sub nsw i32 %i.arf, %i.arg
  %i.axm = sext i32 %i.axl to i64
  %i.axn = mul i64 %i.axm, 36028796999820744
  %i.axo = add i64 %i.axn, 4194304
  %i.axp = lshr i64 %i.axo, 23
  %i.axq = trunc i64 %i.axp to i32
  store i32 %i.axq, ptr %i.aeu, align 4, !tbaa !9
  %i.axr = sub nsw i32 %i.aqx, %i.aqy
  %i.axs = sext i32 %i.axr to i64
  %i.axt = mul i64 %i.axs, 36028796994430408
  %i.axu = add i64 %i.axt, 4194304
  %i.axv = lshr i64 %i.axu, 23
  %i.axw = trunc i64 %i.axv to i32
  store i32 %i.axw, ptr %i.ew, align 16, !tbaa !9
  %i.axx = sub nsw i32 %i.aqp, %i.aqq
  %i.axy = sext i32 %i.axx to i64
  %i.axz = mul i64 %i.axy, 36028796984699768
  %i.aya = add i64 %i.axz, 4194304
  %i.ayb = lshr i64 %i.aya, 23
  %i.ayc = trunc i64 %i.ayb to i32
  store i32 %i.ayc, ptr %i.afi, align 4, !tbaa !9
  %i.ayd = sub nsw i32 %i.aqh, %i.aqi
  %i.aye = sext i32 %i.ayd to i64
  %i.ayf = mul i64 %i.aye, 36028796961948688
  %i.ayg = add i64 %i.ayf, 4194304
  %i.ayh = lshr i64 %i.ayg, 23
  %i.ayi = trunc i64 %i.ayh to i32
  store i32 %i.ayi, ptr %i.ey, align 8, !tbaa !9
  %i.ayj = sub nsw i32 %i.apz, %i.aqa
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = mul i64 %i.ayk, 36028796848055488
  %i.aym = add i64 %i.ayl, 4194304
  %i.ayn = lshr i64 %i.aym, 23
  %i.ayo = trunc i64 %i.ayn to i32
  store i32 %i.ayo, ptr %i.afw, align 4, !tbaa !9
  %i.ayp = load i32, ptr %i.vi, align 16, !tbaa !9
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = mul nsw i64 %i.ayq, 4199362
  %i.ays = add nsw i64 %i.ayr, 4194304
  %i.ayt = lshr i64 %i.ays, 23
  %i.ayu = trunc i64 %i.ayt to i32                ; 3 uses
  store i32 %i.ayu, ptr %i.vi, align 16, !tbaa !9
  %i.ayv = load i32, ptr %i.amw, align 4, !tbaa !9
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = mul nsw i64 %i.ayw, 4240198
  %i.ayy = add nsw i64 %i.ayx, 4194304
  %i.ayz = lshr i64 %i.ayy, 23
  %i.aza = trunc i64 %i.ayz to i32                ; 3 uses
  store i32 %i.aza, ptr %i.amw, align 4, !tbaa !9
  %i.azb = load i32, ptr %i.amz, align 8, !tbaa !9
  %i.azc = sext i32 %i.azb to i64
  %i.azd = mul nsw i64 %i.azc, 4323885
  %i.aze = add nsw i64 %i.azd, 4194304
  %i.azf = lshr i64 %i.aze, 23
  %i.azg = trunc i64 %i.azf to i32                ; 3 uses
  store i32 %i.azg, ptr %i.amz, align 8, !tbaa !9
  %i.azh = load i32, ptr %i.anc, align 4, !tbaa !9
  %i.azi = sext i32 %i.azh to i64
  %i.azj = mul nsw i64 %i.azi, 4454708
  %i.azk = add nsw i64 %i.azj, 4194304
  %i.azl = lshr i64 %i.azk, 23
  %i.azm = trunc i64 %i.azl to i32                ; 3 uses
  store i32 %i.azm, ptr %i.anc, align 4, !tbaa !9
  %i.azn = load i32, ptr %i.anf, align 16, !tbaa !9
  %i.azo = sext i32 %i.azn to i64
  %i.azp = mul nsw i64 %i.azo, 4639772
  %i.azq = add nsw i64 %i.azp, 4194304
  %i.azr = lshr i64 %i.azq, 23
  %i.azs = trunc i64 %i.azr to i32                ; 3 uses
  store i32 %i.azs, ptr %i.anf, align 16, !tbaa !9
  %i.azt = load i32, ptr %i.ani, align 4, !tbaa !9
  %i.azu = sext i32 %i.azt to i64
  %i.azv = mul nsw i64 %i.azu, 4890013
  %i.azw = add nsw i64 %i.azv, 4194304
  %i.azx = lshr i64 %i.azw, 23
  %i.azy = trunc i64 %i.azx to i32                ; 3 uses
  store i32 %i.azy, ptr %i.ani, align 4, !tbaa !9
  %i.azz = load i32, ptr %i.anl, align 8, !tbaa !9
  %i.baa = sext i32 %i.azz to i64
  %i.bab = mul nsw i64 %i.baa, 5221943
  %i.bac = add nsw i64 %i.bab, 4194304
  %i.bad = lshr i64 %i.bac, 23
  %i.bae = trunc i64 %i.bad to i32                ; 3 uses
  store i32 %i.bae, ptr %i.anl, align 8, !tbaa !9
  %i.baf = load i32, ptr %i.ano, align 4, !tbaa !9
  %i.bag = sext i32 %i.baf to i64
  %i.bah = mul nsw i64 %i.bag, 5660703
  %i.bai = add nsw i64 %i.bah, 4194304
  %i.baj = lshr i64 %i.bai, 23
  %i.bak = trunc i64 %i.baj to i32                ; 3 uses
  store i32 %i.bak, ptr %i.ano, align 4, !tbaa !9
  %i.bal = load i32, ptr %i.vw, align 16, !tbaa !9
  %i.bam = sext i32 %i.bal to i64
  %i.ban = mul nsw i64 %i.bam, 6245623
  %i.bao = add nsw i64 %i.ban, 4194304
  %i.bap = lshr i64 %i.bao, 23
  %i.baq = trunc i64 %i.bap to i32                ; 3 uses
  store i32 %i.baq, ptr %i.vw, align 16, !tbaa !9
  %i.bar = load i32, ptr %i.anr, align 4, !tbaa !9
  %i.bas = sext i32 %i.bar to i64
  %i.bat = mul nsw i64 %i.bas, 7040975
  %i.bau = add nsw i64 %i.bat, 4194304
  %i.bav = lshr i64 %i.bau, 23
  %i.baw = trunc i64 %i.bav to i32                ; 3 uses
  store i32 %i.baw, ptr %i.anr, align 4, !tbaa !9
end_hunk_1
