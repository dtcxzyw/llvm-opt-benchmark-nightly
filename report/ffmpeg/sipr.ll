Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sipr?download=true
inline.NumInlined: 17
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@decode_frame:.preheader.preheader.i
  %i.dh = fptrunc nsz <2 x double> %i.dg to <2 x float>
  store <2 x float> %i.dh, ptr %i.cb, align 16, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dj = uitofp i8 %i.s to float
  %i.dk = fdiv nsz float 1.000000e+00, %i.dj      ; 2 uses
  %i.dl = fmul nnan nsz float %i.dk, 5.000000e-01
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.023.i = phi float [ %i.ez, %.preheader.i ], [ %i.dl, %.preheader.preheader.i ] ; 3 uses
  %.01822.i = phi i32 [ %i.fa, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %.01921.i = phi ptr [ %i.ey, %.preheader.i ], [ %i.g, %.preheader.preheader.i ] ; 2 uses
  %i.du = fsub nsz float 1.000000e+00, %.023.i
  %i.dv = load <2 x float>, ptr %i.di, align 16, !tbaa !34
  %i.dw = load <2 x float>, ptr %i.i, align 16, !tbaa !34
  %i.dx = insertelement <2 x float> poison, float %.023.i, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dz = fmul nsz <2 x float> %i.dy, %i.dw
  %i.ea = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ec = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = fpext nsz <2 x float> %i.ec to <2 x double>
  store <2 x double> %i.ed, ptr %i.f, align 16, !tbaa !76
  %i.ee = load <2 x float>, ptr %i.dm, align 8, !tbaa !34
  %i.ef = load <2 x float>, ptr %i.aw, align 8, !tbaa !34
  %i.eg = fmul nsz <2 x float> %i.dy, %i.ef
  %i.eh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eb, <2 x float> %i.eg)
  %i.ei = fpext nsz <2 x float> %i.eh to <2 x double>
  store <2 x double> %i.ei, ptr %i.dn, align 16, !tbaa !76
  %i.ej = load <2 x float>, ptr %i.do, align 16, !tbaa !34
  %i.ek = load <2 x float>, ptr %i.bk, align 16, !tbaa !34
  %i.el = fmul nsz <2 x float> %i.dy, %i.ek
  %i.em = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.eb, <2 x float> %i.el)
  %i.en = fpext nsz <2 x float> %i.em to <2 x double>
  store <2 x double> %i.en, ptr %i.dp, align 16, !tbaa !76
  %i.eo = load <2 x float>, ptr %i.dq, align 8, !tbaa !34
  %i.ep = load <2 x float>, ptr %i.bn, align 8, !tbaa !34
  %i.eq = fmul nsz <2 x float> %i.dy, %i.ep
  %i.er = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.eb, <2 x float> %i.eq)
  %i.es = fpext nsz <2 x float> %i.er to <2 x double>
  store <2 x double> %i.es, ptr %i.dr, align 16, !tbaa !76
  %i.et = load <2 x float>, ptr %i.ds, align 16, !tbaa !34
  %i.eu = load <2 x float>, ptr %i.cb, align 16, !tbaa !34
  %i.ev = fmul nsz <2 x float> %i.dy, %i.eu
  %i.ew = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.eb, <2 x float> %i.ev)
  %i.ex = fpext nsz <2 x float> %i.ew to <2 x double>
  store <2 x double> %i.ex, ptr %i.dt, align 16, !tbaa !76
  call void @ff_amrwb_lsp2lpc(ptr noundef nonnull %i.f, ptr noundef nonnull %.01921.i, i32 noundef 10) #6
  %i.ey = getelementptr inbounds nuw i8, ptr %.01921.i, i64 40
  %i.ez = fadd nsz float %i.dk, %.023.i
  %i.fa = add nuw nsw i32 %.01822.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fa, %i.t
  br i1 %exitcond.not.i, label %sipr_decode_lp.exit, label %.preheader.i, !llvm.loop !65

sipr_decode_lp.exit:                              ; preds = %.preheader.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 19 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.di, ptr noundef nonnull align 16 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.fh = load float, ptr @ff_pow_0_55, align 16
  %i.fi = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 4), align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fk = load <4 x float>, ptr @ff_pow_0_7, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 12), align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fo = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_7, i64 16), align 16
  %i.fp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 28), align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fr = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 36), align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ft = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_7, i64 32), align 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2956
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 2 uses
  %i.fy = load <4 x float>, ptr @ff_pow_0_75, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_75, i64 16), align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ge = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_75, i64 32), align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 2980 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4252 ; 2 uses
  %wide.trip.count = zext i8 %i.s to i64          ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 236 ; 2 uses
  %i.gl = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.fh, i64 1
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %sipr_decode_lp.exit, %bb.k
  %.sroa.29.0 = phi nsz float [ undef, %sipr_decode_lp.exit ], [ %.sroa.29.1, %bb.k ] ; 3 uses
  %.sroa.25.0 = phi nsz float [ undef, %sipr_decode_lp.exit ], [ %.sroa.25.1, %bb.k ]
  %.sroa.31.0 = phi nsz float [ undef, %sipr_decode_lp.exit ], [ %.sroa.31.1, %bb.k ] ; 3 uses
  %.sroa.14.0 = phi <2 x i32> [ undef, %sipr_decode_lp.exit ], [ %.sroa.14.1, %bb.k ] ; 3 uses
  %.sroa.2.0 = phi <4 x i32> [ undef, %sipr_decode_lp.exit ], [ %.sroa.2.1, %bb.k ] ; 3 uses
  %.sroa.33.0 = phi nsz float [ undef, %sipr_decode_lp.exit ], [ %.sroa.33.1, %bb.k ] ; 3 uses
  %indvars.iv116 = phi i64 [ 0, %sipr_decode_lp.exit ], [ %indvars.iv.next117, %bb.k ] ; 8 uses
  %.099112 = phi i32 [ 0, %sipr_decode_lp.exit ], [ %.1100, %bb.k ] ; 3 uses
  %.0101111 = phi ptr [ %i.fd, %sipr_decode_lp.exit ], [ %i.wt, %bb.k ] ; 19 uses
  %.idx = mul nuw nsw i64 %indvars.iv116, 40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv116
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !35
  %i.hb = load i32, ptr %0, align 16, !tbaa !30
  %i.hc = icmp eq i32 %i.hb, 3
  %i.hd = zext i1 %i.hc to i32
  %i.he = trunc nuw nsw i64 %indvars.iv116 to i32 ; 2 uses
  call void @ff_decode_pitch_lag(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef %i.ha, i32 noundef %.099112, i32 noundef %i.he, i32 noundef %i.hd, i32 noundef 6) #6
  switch i32 %i.he, label %bb.d [
    i32 0, label %bb.c
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.hf = load i32, ptr %0, align 16, !tbaa !30
  %i.hg = icmp eq i32 %i.hf, 3
  br i1 %i.hg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hh = load i32, ptr %i.k, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.1100 = phi i32 [ %i.hh, %bb.c ], [ %.099112, %bb.b ], [ %.099112, %bb.a ]
  %i.hi = load i32, ptr %i.k, align 4, !tbaa !35
  %i.hj = sext i32 %i.hi to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0101111, i64 %i.hk
  %i.hm = load i32, ptr %i.l, align 4, !tbaa !35  ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 1
  %i.ho = zext i1 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ho
  %i.hq = add nsw i32 %i.hm, 2
  %i.hr = srem i32 %i.hq, 3
  %i.hs = shl nsw i32 %i.hr, 1
  %i.ht = add nsw i32 %i.hs, 2
  call void @ff_acelp_interpolatef(ptr noundef nonnull %.0101111, ptr noundef nonnull %i.hp, ptr noundef nonnull @ff_b60_sinc, i32 noundef 6, i32 noundef %i.ht, i32 noundef 10, i32 noundef 48) #6
  %i.hu = getelementptr inbounds nuw [20 x i8], ptr %i.ff, i64 %indvars.iv116 ; 5 uses
  %i.hv = load i32, ptr %0, align 16, !tbaa !30   ; 2 uses
  switch i32 %i.hv, label %bb.e [
    i32 2, label %.preheader.i107
    i32 1, label %.preheader76.i
  ]

.preheader76.i:                                   ; preds = %bb.d
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  %i.hx = load i16, ptr %i.hu, align 2, !tbaa !39 ; 3 uses
  %i.hy = lshr i16 %i.hx, 4
  %i.hz = and i16 %i.hy, 15                       ; 2 uses
  %i.ia = and i16 %i.hx, 15                       ; 2 uses
  %i.ib = and i16 %i.hx, 256
  %.not.i106 = icmp eq i16 %i.ib, 0
  %i.ic = select i1 %.not.i106, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %.sroa.17174.44.vec.insert = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.id = icmp samesign ult i16 %i.ia, %i.hz
  %i.ie = fneg nsz float %i.ic
  %i.if = select nsz i1 %i.id, float %i.ie, float %i.ic
  %.sroa.17174.48.vec.insert = insertelement <2 x float> %.sroa.17174.44.vec.insert, float %i.if, i64 1
  %i.ig = insertelement <4 x i16> poison, i16 %i.hz, i64 0
  %i.ih = insertelement <4 x i16> %i.ig, i16 %i.ia, i64 1
  %i.ii = load <2 x i16>, ptr %i.hw, align 2, !tbaa !39 ; 4 uses
  %i.ij = extractelement <2 x i16> %i.ii, i64 0   ; 2 uses
  %i.ik = lshr i16 %i.ij, 4
  %i.il = and i16 %i.ik, 15                       ; 2 uses
  %i.im = and i16 %i.ij, 15                       ; 2 uses
  %i.in = insertelement <4 x i16> %i.ih, i16 %i.il, i64 2
  %i.io = insertelement <4 x i16> %i.in, i16 %i.im, i64 3
  %3 = trunc nuw nsw <4 x i16> %i.io to <4 x i8>
  %4 = mul nuw nsw <4 x i8> %3, splat (i8 3)
  %5 = add nuw <4 x i8> %4, <i8 0, i8 0, i8 1, i8 1>
  %i.ip = zext <4 x i8> %5 to <4 x i32>
  %i.iq = and <2 x i16> %i.ii, splat (i16 256)
  %i.ir = icmp eq <2 x i16> %i.iq, zeroinitializer
  %i.is = select <2 x i1> %i.ir, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00) ; 3 uses
  %i.it = extractelement <2 x float> %i.is, i64 0 ; 2 uses
  %i.iu = icmp samesign ult i16 %i.im, %i.il
  %i.iv = fneg nsz <2 x float> %i.is              ; 2 uses
  %i.iw = extractelement <2 x float> %i.iv, i64 0
  %i.ix = select nsz i1 %i.iu, float %i.iw, float %i.it
  %i.iy = extractelement <2 x i16> %i.ii, i64 1
  %i.iz = lshr i16 %i.iy, 4
  %i.ja = insertelement <2 x i16> %i.ii, i16 %i.iz, i64 0
  %i.jb = and <2 x i16> %i.ja, splat (i16 15)     ; 3 uses
  %6 = trunc nuw nsw <2 x i16> %i.jb to <2 x i8>
  %7 = mul nuw nsw <2 x i8> %6, splat (i8 3)
  %8 = add nuw nsw <2 x i8> %7, splat (i8 2)
  %i.jc = zext nneg <2 x i8> %8 to <2 x i32>
  %i.jd = extractelement <2 x float> %i.is, i64 1 ; 2 uses
  %i.je = extractelement <2 x i16> %i.jb, i64 0
  %i.jf = extractelement <2 x i16> %i.jb, i64 1
  %i.jg = icmp samesign ult i16 %i.jf, %i.je
  %i.jh = extractelement <2 x float> %i.iv, i64 1
  %i.ji = select nsz i1 %i.jg, float %i.jh, float %i.jd
  br label %decode_fixed_sparse.exit

.preheader.i107:                                  ; preds = %bb.d
  %i.jj = load <2 x i16>, ptr %i.hu, align 2, !tbaa !39 ; 2 uses
  %9 = trunc <2 x i16> %i.jj to <2 x i8>
  %10 = and <2 x i8> %9, splat (i8 15)
  %11 = mul nuw nsw <2 x i8> %10, splat (i8 3)
  %12 = add nuw nsw <2 x i8> %11, <i8 0, i8 1>
  %i.jk = zext nneg <2 x i8> %12 to <2 x i32>
  %.sroa.2.4.vec.expand = shufflevector <2 x i32> %i.jk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.2.4.vecblend = shufflevector <4 x i32> %.sroa.2.4.vec.expand, <4 x i32> %.sroa.2.0, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.jl = and <2 x i16> %i.jj, splat (i16 16)
  %i.jm = icmp eq <2 x i16> %i.jl, zeroinitializer
  %i.jn = select <2 x i1> %i.jm, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !39 ; 2 uses
  %i.jq = and i16 %i.jp, 15
  %narrow69.2.i = mul nuw nsw i16 %i.jq, 3
  %narrow91.i = add nuw nsw i16 %narrow69.2.i, 2
  %i.jr = zext nneg i16 %narrow91.i to i32
  %.sroa.2.12.vec.insert = insertelement <4 x i32> %.sroa.2.4.vecblend, i32 %i.jr, i64 2
  %i.js = and i16 %i.jp, 16
  %.not70.2.i = icmp eq i16 %i.js, 0
  %i.jt = select i1 %.not70.2.i, float 1.000000e+00, float -1.000000e+00
  br label %decode_fixed_sparse.exit

bb.e:                                             ; preds = %bb.d
  %i.ju = load float, ptr %i.fg, align 4, !tbaa !77
  %i.jv = fpext nsz float %i.ju to double
  %i.jw = fcmp nsz uge double %i.jv, 8.000000e-01
  %i.jx = load i16, ptr %i.hu, align 2, !tbaa !39 ; 4 uses
  %i.jy = zext i16 %i.jx to i32                   ; 5 uses
  br i1 %i.jw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jz = lshr i16 %i.jx, 8
  %i.ka = and i16 %i.jz, 2
  %i.kb = zext nneg i16 %i.ka to i32              ; 3 uses
  %i.kc = lshr i32 %i.jy, 3
  %i.kd = and i32 %i.jy, 7
  %i.ke = mul nuw nsw i32 %i.kd, 6                ; 2 uses
  %i.kf = add nuw nsw i32 %i.ke, 4
  %i.kg = add nuw nsw i32 %i.ke, %i.kb
  %.sroa.2.4.vec.insert = insertelement <4 x i32> %.sroa.2.0, i32 %i.kf, i64 0
  %i.kh = and i32 %i.kc, 7
  %i.ki = mul nuw nsw i32 %i.kh, 6
  %i.kj = add nuw nsw i32 %i.ki, 2                ; 2 uses
  %i.kk = add nuw nsw i32 %i.kj, %i.kb
  %i.kl = insertelement <2 x i32> poison, i32 %i.kg, i64 0
  %i.km = insertelement <2 x i32> %i.kl, i32 %i.kk, i64 1
  %i.kn = and <2 x i32> %i.km, splat (i32 2)
  %i.ko = sub nsw <2 x i32> splat (i32 1), %i.kn
  %i.kp = sitofp nsz <2 x i32> %i.ko to <2 x float>
  %.sroa.2.8.vec.insert = insertelement <4 x i32> %.sroa.2.4.vec.insert, i32 %i.kj, i64 1
  %i.kq = lshr i32 %i.jy, 6
  %i.kr = and i32 %i.kq, 7
  %i.ks = mul nuw nsw i32 %i.kr, 6                ; 2 uses
  %i.kt = add nuw nsw i32 %i.ks, %i.kb
  %i.ku = and i32 %i.kt, 2
  %i.kv = sub nsw i32 1, %i.ku
  %i.kw = sitofp nsz i32 %i.kv to float
  %.sroa.2.12.vec.insert173 = insertelement <4 x i32> %.sroa.2.8.vec.insert, i32 %i.ks, i64 2
  br label %decode_fixed_sparse.exit

bb.g:                                             ; preds = %bb.e
  %i.kx = lshr i32 %i.jy, 8
  %i.ky = and i32 %i.kx, 1                        ; 2 uses
  %i.kz = lshr i32 %i.jy, 4
  %i.la = and i32 %i.kz, 15
  %i.lb = mul nuw nsw i32 %i.la, 3
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %.sroa.2.4.vec.insert166 = insertelement <4 x i32> %.sroa.2.0, i32 %i.lc, i64 0
  %i.ld = and i16 %i.jx, 15
  %narrow72.i = mul nuw nsw i16 %i.ld, 3
  %narrow82.i = add nuw nsw i16 %narrow72.i, 1
  %i.le = zext nneg i16 %narrow82.i to i32
  %i.lf = add nuw nsw i32 %i.ky, %i.le
  %.sroa.2.8.vec.insert170 = insertelement <4 x i32> %.sroa.2.4.vec.insert166, i32 %i.lf, i64 1
  %i.lg = and i16 %i.jx, 512
  %.not73.i = icmp eq i16 %i.lg, 0
  %i.lh = select i1 %.not73.i, float 1.000000e+00, float -1.000000e+00 ; 2 uses
  %.sroa.17174.44.vec.insert176 = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.li = fneg nsz float %i.lh
  %.sroa.17174.48.vec.insert180 = insertelement <2 x float> %.sroa.17174.44.vec.insert176, float %i.li, i64 1
  br label %decode_fixed_sparse.exit

decode_fixed_sparse.exit:                         ; preds = %.preheader76.i, %.preheader.i107, %bb.f, %bb.g
  %.sroa.29.1 = phi nsz float [ %.sroa.29.0, %bb.g ], [ %.sroa.29.0, %bb.f ], [ %.sroa.29.0, %.preheader.i107 ], [ %i.ix, %.preheader76.i ] ; 3 uses
  %.sroa.25.1 = phi nsz float [ %.sroa.25.0, %bb.g ], [ %i.kw, %bb.f ], [ %i.jt, %.preheader.i107 ], [ %i.it, %.preheader76.i ] ; 3 uses
  %.sroa.17174.1 = phi nsz <2 x float> [ %.sroa.17174.48.vec.insert180, %bb.g ], [ %i.kp, %bb.f ], [ %i.jn, %.preheader.i107 ], [ %.sroa.17174.48.vec.insert, %.preheader76.i ] ; 4 uses
  %.sroa.31.1 = phi nsz float [ %.sroa.31.0, %bb.g ], [ %.sroa.31.0, %bb.f ], [ %.sroa.31.0, %.preheader.i107 ], [ %i.jd, %.preheader76.i ] ; 3 uses
  %.sroa.14.1 = phi <2 x i32> [ %.sroa.14.0, %bb.g ], [ %.sroa.14.0, %bb.f ], [ %.sroa.14.0, %.preheader.i107 ], [ %i.jc, %.preheader76.i ] ; 3 uses
  %.sroa.2.1 = phi <4 x i32> [ %.sroa.2.8.vec.insert170, %bb.g ], [ %.sroa.2.12.vec.insert173, %bb.f ], [ %.sroa.2.12.vec.insert, %.preheader.i107 ], [ %i.ip, %.preheader76.i ] ; 5 uses
  %.sroa.33.1 = phi nsz float [ %.sroa.33.0, %bb.g ], [ %.sroa.33.0, %bb.f ], [ %.sroa.33.0, %.preheader.i107 ], [ %i.ji, %.preheader76.i ] ; 3 uses
  %exitcond27.not.i.1 = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ false, %.preheader.i107 ], [ false, %.preheader76.i ]
  %exitcond27.not.i.2 = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %.preheader.i107 ], [ false, %.preheader76.i ]
  %i.lj = load i32, ptr %i.k, align 4, !tbaa !35  ; 5 uses
  %i.lk = zext i32 %i.hv to i64
  %i.ll = getelementptr inbounds nuw [40 x i8], ptr @modes, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.lp = load <2 x float>, ptr %i.gy, align 8, !tbaa !34 ; 2 uses
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.lr = insertelement <4 x float> %i.lq, float 1.000000e+00, i64 0
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.lt = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.lu = load <4 x float>, ptr %i.ls, align 4, !tbaa !34 ; 3 uses
  %i.lv = load <2 x float>, ptr %i.lo, align 4, !tbaa !34 ; 2 uses
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lr, <4 x float> %i.lw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ly = fmul nsz <4 x float> %i.lx, %i.gm
  store <4 x float> %i.ly, ptr %i.d, align 16, !tbaa !34
  %i.lz = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> %i.lu, <4 x i32> <i32 0, i32 poison, i32 poison, i32 4>
  %i.mb = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.mc = shufflevector <4 x float> %i.ma, <4 x float> %i.mb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.md = fmul nsz <4 x float> %i.mc, %i.fk
  store <4 x float> %i.md, ptr %i.e, align 16, !tbaa !34
  %i.me = fmul nsz <4 x float> %i.lu, %i.fm
  store <4 x float> %i.me, ptr %i.fj, align 16, !tbaa !34
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gy, i64 28
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.mh = load <2 x float>, ptr %i.mf, align 4, !tbaa !34 ; 3 uses
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mj = shufflevector <4 x float> %i.lu, <4 x float> %i.mi, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.mk = fmul nsz <4 x float> %i.mj, %i.fo
  store <4 x float> %i.mk, ptr %i.fl, align 16, !tbaa !34
  %i.ml = fmul nsz <2 x float> %i.mh, %i.fp
  store <2 x float> %i.ml, ptr %i.fn, align 16, !tbaa !34
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gy, i64 36
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !34 ; 2 uses
  %i.mo = fmul nsz float %i.mn, %i.fr
  store float %i.mo, ptr %i.fs, align 8, !tbaa !34
  %i.mp = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mq = insertelement <2 x float> %i.mp, float %i.mn, i64 1
  %i.mr = fmul nsz <2 x float> %i.mq, %i.ft
  store <2 x float> %i.mr, ptr %i.fq, align 16, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.fu, i8 0, i64 148, i1 false)
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef 48, i32 noundef 10) #6
  %i.ms = icmp slt i32 %i.lj, 48
  br i1 %i.ms, label %.lr.ph.preheader.i.i, label %.lr.ph21.i

.lr.ph.preheader.i.i:                             ; preds = %decode_fixed_sparse.exit
  %i.mt = sext i32 %i.lj to i64                   ; 8 uses
  %i.mu = add i32 %i.lj, 1
  %i.mv = zext i32 %i.mu to i64                   ; 3 uses
  %i.mw = sub nsw i64 49, %i.mv                   ; 3 uses
  %min.iters.check149 = icmp ult i64 %i.mw, 12
  br i1 %min.iters.check149, label %.lr.ph.i.i.preheader, label %vector.scevcheck142

vector.scevcheck142:                              ; preds = %.lr.ph.preheader.i.i
  %i.mx = add i32 %i.lj, 1
  %i.my = zext i32 %i.mx to i64
  %i.mz = sub nsw i64 48, %i.my                   ; 2 uses
  %i.na = trunc i64 %i.mz to i32
  %i.nb = sub i32 -2, %i.lj
  %i.nc = icmp ult i32 %i.nb, %i.na
  %i.nd = icmp ugt i64 %i.mz, 4294967295
  %i.ne = or i1 %i.nc, %i.nd
  br i1 %i.ne, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck142
  %i.nf = shl nsw i64 %i.mt, 2
  %i.ng = getelementptr i8, ptr %i.fb, i64 %i.nf
  %i.nh = sub nsw i64 %i.mt, %i.mv
  %i.ni = shl nsw i64 %i.nh, 2
  %i.nj = getelementptr i8, ptr %scevgep, i64 %i.ni
  %i.nk = mul nsw i64 %i.mv, -4
  %i.nl = getelementptr i8, ptr %scevgep, i64 %i.nk
  %bound0 = icmp ult ptr %i.ng, %i.nl
  %bound1 = icmp ult ptr %i.fb, %i.nj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck
  %n.vec151 = and i64 %i.mw, -8                   ; 3 uses
  %i.nm = add nsw i64 %n.vec151, %i.mt
  %broadcast.splatinsert152 = insertelement <4 x float> poison, float %i.ln, i64 0
  %broadcast.splat153 = shufflevector <4 x float> %broadcast.splatinsert152, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.fb, i64 %i.mt
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %index155 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load156 = load <4 x float>, ptr %i.nn, align 8, !tbaa !34, !alias.scope !79
  %wide.load157 = load <4 x float>, ptr %i.no, align 8, !tbaa !34, !alias.scope !79
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index155 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load158 = load <4 x float>, ptr %gep, align 4, !tbaa !34, !alias.scope !80, !noalias !79
  %wide.load159 = load <4 x float>, ptr %i.np, align 4, !tbaa !34, !alias.scope !80, !noalias !79
  %i.nq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat153, <4 x float> %wide.load156, <4 x float> %wide.load158)
  %i.nr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat153, <4 x float> %wide.load157, <4 x float> %wide.load159)
  store <4 x float> %i.nq, ptr %gep, align 4, !tbaa !34, !alias.scope !80, !noalias !79
  store <4 x float> %i.nr, ptr %i.np, align 4, !tbaa !34, !alias.scope !80, !noalias !79
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next160, %n.vec151
  br i1 %i.ns, label %middle.block161, label %vector.body154, !llvm.loop !69

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.mw, %n.vec151
  br i1 %cmp.n162, label %.lr.ph21.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck142, %.lr.ph.preheader.i.i, %middle.block161
  %indvars.iv.i.i.ph = phi i64 [ %i.mt, %vector.memcheck ], [ %i.mt, %vector.scevcheck142 ], [ %i.mt, %.lr.ph.preheader.i.i ], [ %i.nm, %middle.block161 ]
end_hunk_0
