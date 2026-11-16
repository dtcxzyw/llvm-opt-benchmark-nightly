Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/spherical_joint?download=true
inline.NumInlined: 228
inline.NumDeleted: 35
begin_hunk_0_@b3PrepareSphericalJoint:bb.a
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.cx = ptrtoint ptr %i.bt to i64, !nosanitize !10 ; 2 uses
  %i.cy = and i64 %i.cx, 7, !nosanitize !10
  %i.cz = icmp eq i64 %i.cy, 0, !nosanitize !10
  br i1 %i.cz, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @67, i64 %i.cx) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.da = load ptr, ptr %i.bt, align 8, !tbaa !146 ; 3 uses
  %i.db = sext i32 %i.cf to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [216 x i8], ptr %i.da, i64 %i.db ; 9 uses
  %i.dd = mul nsw i64 %i.db, 216
  %i.de = ptrtoint ptr %i.da to i64, !nosanitize !10 ; 3 uses
  %i.df = add i64 %i.dd, %i.de, !nosanitize !10   ; 3 uses
  %i.dg = icmp ne ptr %i.da, null, !nosanitize !10 ; 2 uses
  %i.dh = icmp eq i64 %i.df, 0
  %i.di = xor i1 %i.dg, %i.dh
  %i.dj = icmp uge i64 %i.df, %i.de, !nosanitize !10
  %i.dk = icmp slt i32 %i.cf, 0
  %i.dl = xor i1 %i.dk, %i.dj
  %i.dm = and i1 %i.di, %i.dl, !nosanitize !10
  br i1 %i.dm, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.de, i64 %i.df) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.dn = ptrtoint ptr %i.cm to i64, !nosanitize !10 ; 2 uses
  %i.do = and i64 %i.dn, 3, !nosanitize !10
  %i.dp = icmp eq i64 %i.do, 0, !nosanitize !10
  %i.dq = and i1 %i.cq, %i.dp
  br i1 %i.dq, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @70, i64 %i.dn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 104
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !148
  store float %i.dt, ptr %i.ds, align 4, !tbaa !110
  %i.du = ptrtoint ptr %i.dc to i64, !nosanitize !10 ; 2 uses
  %i.dv = and i64 %i.du, 3, !nosanitize !10
  %i.dw = icmp eq i64 %i.dv, 0, !nosanitize !10
  %i.dx = and i1 %i.dg, %i.dw
  br i1 %i.dx, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @71, i64 %i.du) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !148
  store float %i.ea, ptr %i.dz, align 4, !tbaa !111
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cm, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.eb, ptr noundef nonnull align 4 dereferenceable(36) %i.ec, i64 36, i1 false), !tbaa.struct !149
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ed, ptr noundef nonnull align 4 dereferenceable(36) %i.ee, i64 36, i1 false), !tbaa.struct !149
  %.sroa.5444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.6445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.8447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.9448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.11450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.5462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.6463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.8465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.9466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.11468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11450.0.copyload = load float, ptr %.sroa.11450.0..sroa_idx, align 4, !tbaa !88
  %.sroa.11468.0.copyload = load float, ptr %.sroa.11468.0..sroa_idx, align 4, !tbaa !88
  %.sroa.5444.0.copyload = load float, ptr %.sroa.5444.0..sroa_idx, align 4, !tbaa !88
  %.sroa.5462.0.copyload = load float, ptr %.sroa.5462.0..sroa_idx, align 4, !tbaa !88
  %i.ef = fadd float %.sroa.5444.0.copyload, %.sroa.5462.0.copyload ; 5 uses
  %.sroa.8447.0.copyload = load float, ptr %.sroa.8447.0..sroa_idx, align 4, !tbaa !88
  %.sroa.8465.0.copyload = load float, ptr %.sroa.8465.0..sroa_idx, align 4, !tbaa !88
  %i.eg = load <2 x float>, ptr %i.eb, align 4, !tbaa !88
  %i.eh = load <2 x float>, ptr %i.ed, align 4, !tbaa !88
  %i.ei = fadd <2 x float> %i.eg, %i.eh           ; 9 uses
  %i.ej = load <2 x float>, ptr %.sroa.6445.0..sroa_idx, align 4, !tbaa !88
  %i.ek = load <2 x float>, ptr %.sroa.6463.0..sroa_idx, align 4, !tbaa !88
  %i.el = fadd <2 x float> %i.ej, %i.ek           ; 8 uses
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.en = load <2 x float>, ptr %.sroa.9448.0..sroa_idx, align 4, !tbaa !88
  %i.eo = load <2 x float>, ptr %.sroa.9466.0..sroa_idx, align 4, !tbaa !88
  %i.ep = fadd <2 x float> %i.en, %i.eo           ; 9 uses
  %i.eq = fmul <2 x float> %i.em, %i.ep           ; 2 uses
  %shift = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.eq ; 2 uses
  %i.er = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.es = insertelement <2 x float> poison, float %.sroa.11450.0.copyload, i64 0
  %i.et = insertelement <2 x float> %i.es, float %.sroa.8447.0.copyload, i64 1
  %i.eu = insertelement <2 x float> poison, float %.sroa.11468.0.copyload, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %.sroa.8465.0.copyload, i64 1
  %i.ew = fadd <2 x float> %i.et, %i.ev           ; 9 uses
  %i.ex = shufflevector <2 x float> %i.el, <2 x float> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.ey = fmul <2 x float> %i.ex, %i.ew
  %i.ez = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = shufflevector <2 x float> %i.el, <2 x float> %i.ep, <2 x i32> <i32 3, i32 0>
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = fsub <2 x float> %i.ey, %i.fb           ; 2 uses
  %i.fd = fmul <2 x float> %i.ei, %i.fc           ; 2 uses
  %shift489 = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop490 = fadd <2 x float> %i.fd, %shift489
  %i.fe = extractelement <2 x float> %foldExtExtBinop490, i64 0
  %i.ff = fmul float %i.ef, %i.er
  %i.fg = fadd float %i.ff, %i.fe                 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.fi = fcmp olt float %i.fg, f0x057A0000       ; 2 uses
  %i.fj = zext i1 %i.fi to i8
  store i8 %i.fj, ptr %i.fh, align 4, !tbaa !112
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.fm = load i32, ptr %i.az, align 8, !tbaa !137
  %i.fn = icmp eq i32 %i.fm, 2
  %i.fo = select i1 %i.fn, i32 %i.cd, i32 -1
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !113
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fq = load i32, ptr %i.bq, align 8, !tbaa !137
  %i.fr = icmp eq i32 %i.fq, 2
  %i.fs = select i1 %i.fr, i32 %i.cf, i32 -1
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !114
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fy = load <2 x float>, ptr %i.fw, align 4    ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cm, i64 20 ; 2 uses
  %i.ga = load <2 x float>, ptr %i.fz, align 4    ; 4 uses
  %i.gb = load <2 x float>, ptr %i.fx, align 4    ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.gd = load <2 x float>, ptr %i.gc, align 4    ; 4 uses
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %.sroa.0147.0.copyload = load <2 x float>, ptr %i.fv, align 4
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2148.0.copyload = load float, ptr %.sroa.2148.0..sroa_idx, align 4
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 76
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.gj, align 4    ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gn = load <2 x float>, ptr %i.gm, align 4    ; 5 uses
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.go = getelementptr inbounds nuw i8, ptr %i.dc, i64 68
  %.sroa.0127.0.copyload = load <2 x float>, ptr %i.gh, align 4
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.2128.0.copyload = load float, ptr %.sroa.2128.0..sroa_idx, align 4
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 76
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.gs = shufflevector <2 x float> %i.gb, <2 x float> %i.gd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gt = fmul <2 x float> %i.fy, %i.gs
  %i.gu = shufflevector <2 x float> %i.ga, <2 x float> %i.fy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gv = fmul <2 x float> %i.gu, %i.gb
  %i.gw = shufflevector <2 x float> %i.fy, <2 x float> %i.ga, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gx = fmul <2 x float> %i.gw, %i.gb
  %i.gy = shufflevector <2 x float> %i.gd, <2 x float> %i.gb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gz = fmul <2 x float> %i.fy, %i.gy
  %i.ha = fsub <2 x float> %i.gt, %i.gx
  %i.hb = fsub <2 x float> %i.gv, %i.gz
  %i.hc = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hd = fmul <2 x float> %i.hc, %i.gy
  %i.he = fmul <2 x float> %i.hc, %i.gs
  %i.hf = fadd <2 x float> %i.hd, %i.ha
  %i.hg = fadd <2 x float> %i.hb, %i.he
  %i.hh = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hi = fmul <2 x float> %i.gu, %i.hh
  %i.hj = fmul <2 x float> %i.gw, %i.hh
  %i.hk = fadd <2 x float> %i.hi, %i.hf           ; 9 uses
  %i.hl = fadd <2 x float> %i.hj, %i.hg           ; 8 uses
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.hn = fmul <2 x float> %i.ga, %i.gd           ; 2 uses
  %i.ho = fmul <2 x float> %i.fy, %i.gb           ; 2 uses
  %shift492 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop493 = fadd <2 x float> %i.ho, %shift492
  %foldExtExtBinop495 = fadd <2 x float> %i.hn, %foldExtExtBinop493
  store <2 x float> %i.hm, ptr %i.fu, align 4, !tbaa !88
  %i.hp = fmul <2 x float> %i.hl, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %2 = shufflevector <2 x float> %i.hk, <2 x float> %i.hp, <2 x i32> <i32 3, i32 1>
  %i.hq = fsub <2 x float> %i.hp, %2
  %i.hr = extractelement <2 x float> %i.hk, i64 1 ; 4 uses
  %i.hs = extractelement <2 x float> %i.hl, i64 0 ; 2 uses
  %i.ht = fmul float %i.hs, 0.000000e+00
  %shift497 = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop498 = fsub <2 x float> %shift497, %foldExtExtBinop495 ; 3 uses
  %i.hu = extractelement <2 x float> %foldExtExtBinop498, i64 0 ; 2 uses
  %.sroa.231.12.vec.insert.i = shufflevector <2 x float> %i.hk, <2 x float> %foldExtExtBinop498, <2 x i32> <i32 0, i32 2>
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.4154.0..sroa_idx, align 4, !tbaa !88
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.ge, align 4
  %.sroa.2146.0.copyload = load float, ptr %.sroa.2146.0..sroa_idx, align 4
  %i.hv = load <2 x float>, ptr %i.fw, align 4    ; 6 uses
  %i.hw = load <2 x float>, ptr %i.fz, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i278 = extractelement <2 x float> %i.hv, i64 0
  %i.hx = fsub <2 x float> %.sroa.0147.0.copyload, %.sroa.0145.0.copyload ; 5 uses
  %i.hy = fsub float %.sroa.2148.0.copyload, %.sroa.2146.0.copyload ; 4 uses
  %foldExtExtBinop500 = fmul <2 x float> %i.hx, %i.hw
  %i.hz = extractelement <2 x float> %foldExtExtBinop500, i64 0
  %i.ia = fmul float %i.hy, %.sroa.09.0.vec.extract.i.i278
  %i.ib = fsub float %i.hz, %i.ia
  %i.ic = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.id = insertelement <2 x float> %i.ic, float %i.hy, i64 1 ; 2 uses
  %i.ie = fmul <2 x float> %i.id, %i.hv
  %i.if = shufflevector <2 x float> %i.hv, <2 x float> %i.hw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ig = fmul <2 x float> %i.hx, %i.if
  %i.ih = fsub <2 x float> %i.ie, %i.ig           ; 2 uses
  %i.ii = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> %i.hx, <2 x i32> <i32 0, i32 2>
  %i.ik = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.il = fmul <2 x float> %i.ij, %i.ik
  %i.im = fmul <2 x float> %i.id, %i.ik
  %i.in = fadd <2 x float> %i.il, %i.ih           ; 2 uses
  %i.io = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ip = insertelement <2 x float> %i.io, float %i.ib, i64 0
  %i.iq = fadd <2 x float> %i.im, %i.ip           ; 2 uses
  %i.ir = fmul <2 x float> %i.if, %i.in
  %i.is = shufflevector <2 x float> %i.hw, <2 x float> %i.hv, <2 x i32> <i32 0, i32 2>
  %i.it = fmul <2 x float> %i.is, %i.iq
  %i.iu = fsub <2 x float> %i.ir, %i.it
  %foldExtExtBinop502 = fmul <2 x float> %i.hv, %i.iq
  %foldExtExtBinop504 = fmul <2 x float> %i.hv, %i.in
  %shift506 = shufflevector <2 x float> %foldExtExtBinop504, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop507 = fsub <2 x float> %foldExtExtBinop502, %shift506
  %i.iv = extractelement <2 x float> %foldExtExtBinop507, i64 0
  %i.iw = fmul <2 x float> %i.iu, splat (float 2.000000e+00)
  %i.ix = fadd <2 x float> %i.hx, %i.iw
  %i.iy = fmul float %i.iv, 2.000000e+00
  %i.iz = fadd float %i.hy, %i.iy
  store <2 x float> %i.ix, ptr %i.ft, align 4, !tbaa !88
  store float %i.iz, ptr %.sroa.4152.0..sroa_idx, align 4, !tbaa !88
  %i.ja = load <2 x float>, ptr %i.gi, align 4    ; 6 uses
  %i.jb = load <2 x float>, ptr %i.gk, align 4    ; 5 uses
  %shift509 = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop510 = fmul <2 x float> %shift509, %i.gn
  %shift512 = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop513 = fmul <2 x float> %i.jb, %shift512
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jd = fmul <2 x float> %i.jc, %i.gl           ; 2 uses
  %i.je = shufflevector <2 x float> %i.gn, <2 x float> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.jf = fmul <2 x float> %i.ja, %i.je           ; 2 uses
  %i.jg = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jh = shufflevector <2 x float> %foldExtExtBinop510, <2 x float> %i.jg, <2 x i32> <i32 0, i32 3>
  %i.ji = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jj = shufflevector <2 x float> %foldExtExtBinop513, <2 x float> %i.ji, <2 x i32> <i32 0, i32 3>
  %i.jk = fsub <2 x float> %i.jh, %i.jj
  %i.jl = fsub <2 x float> %i.jd, %i.jf
  %i.jm = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jn = fmul <2 x float> %i.jm, %i.gl
  %i.jo = shufflevector <2 x float> %i.gl, <2 x float> %i.gn, <2 x i32> <i32 1, i32 2>
  %i.jp = fmul <2 x float> %i.jm, %i.jo
  %i.jq = fadd <2 x float> %i.jn, %i.jk
  %i.jr = fadd <2 x float> %i.jp, %i.jl
  %i.js = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jt = fmul <2 x float> %i.ja, %i.js
  %i.ju = shufflevector <2 x float> %i.ja, <2 x float> %i.jb, <2 x i32> <i32 1, i32 2>
  %i.jv = fmul <2 x float> %i.ju, %i.js
  %i.jw = fadd <2 x float> %i.jt, %i.jq           ; 8 uses
  %i.jx = fadd <2 x float> %i.jv, %i.jr           ; 6 uses
  %i.jy = fmul <2 x float> %i.ja, %i.gl           ; 2 uses
  %shift515 = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop516 = fadd <2 x float> %i.jy, %shift515
  %i.jz = fmul <2 x float> %i.jb, %i.gn           ; 2 uses
  %foldExtExtBinop518 = fadd <2 x float> %i.jz, %foldExtExtBinop516
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> <float poison, float 1.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.kb = insertelement <2 x float> %foldExtExtBinop518, float 0.000000e+00, i64 1
  %i.kc = fsub <2 x float> %i.ka, %i.kb           ; 4 uses
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ke = shufflevector <2 x float> %i.jx, <2 x float> %i.kc, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.jw, ptr %i.gg, align 4, !tbaa !88
  store <2 x float> %i.ke, ptr %.sroa.4134.0..sroa_idx, align 4, !tbaa !88
  %.sroa.0125.0.copyload = load <2 x float>, ptr %i.go, align 4
  %.sroa.2126.0.copyload = load float, ptr %.sroa.2126.0..sroa_idx, align 4
  %i.kf = load <2 x float>, ptr %i.gi, align 4    ; 6 uses
  %i.kg = load <2 x float>, ptr %i.gk, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i305 = extractelement <2 x float> %i.kf, i64 0
  %i.kh = fsub <2 x float> %.sroa.0127.0.copyload, %.sroa.0125.0.copyload ; 5 uses
  %i.ki = fsub float %.sroa.2128.0.copyload, %.sroa.2126.0.copyload ; 4 uses
  %foldExtExtBinop520 = fmul <2 x float> %i.kh, %i.kg
  %i.kj = extractelement <2 x float> %foldExtExtBinop520, i64 0
  %i.kk = fmul float %i.ki, %.sroa.09.0.vec.extract.i.i305
  %i.kl = fsub float %i.kj, %i.kk
  %i.km = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kn = insertelement <2 x float> %i.km, float %i.ki, i64 1 ; 2 uses
  %i.ko = fmul <2 x float> %i.kn, %i.kf
  %i.kp = shufflevector <2 x float> %i.kf, <2 x float> %i.kg, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kq = fmul <2 x float> %i.kh, %i.kp
  %i.kr = fsub <2 x float> %i.ko, %i.kq           ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> %i.kh, <2 x i32> <i32 0, i32 2>
  %i.ku = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kv = fmul <2 x float> %i.kt, %i.ku
  %i.kw = fmul <2 x float> %i.kn, %i.ku
  %i.kx = fadd <2 x float> %i.kv, %i.kr           ; 2 uses
  %i.ky = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kz = insertelement <2 x float> %i.ky, float %i.kl, i64 0
  %i.la = fadd <2 x float> %i.kw, %i.kz           ; 2 uses
  %i.lb = fmul <2 x float> %i.kp, %i.kx
  %i.lc = shufflevector <2 x float> %i.kg, <2 x float> %i.kf, <2 x i32> <i32 0, i32 2>
  %i.ld = fmul <2 x float> %i.lc, %i.la
  %i.le = fsub <2 x float> %i.lb, %i.ld
  %foldExtExtBinop522 = fmul <2 x float> %i.kf, %i.la
  %foldExtExtBinop524 = fmul <2 x float> %i.kf, %i.kx
  %shift526 = shufflevector <2 x float> %foldExtExtBinop524, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop527 = fsub <2 x float> %foldExtExtBinop522, %shift526
  %i.lf = extractelement <2 x float> %foldExtExtBinop527, i64 0
  %i.lg = fmul <2 x float> %i.le, splat (float 2.000000e+00)
  %i.lh = fadd <2 x float> %i.kh, %i.lg
  %i.li = fmul float %i.lf, 2.000000e+00
  %i.lj = fadd float %i.ki, %i.li
  store <2 x float> %i.lh, ptr %i.gf, align 4, !tbaa !88
  store float %i.lj, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !88
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.gq, align 4
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 4
  %.sroa.0109.0.copyload = load <2 x float>, ptr %i.gr, align 4
  %.sroa.2110.0.copyload = load float, ptr %.sroa.2110.0..sroa_idx, align 4
  %i.lk = fsub <2 x float> %.sroa.0111.0.copyload, %.sroa.0109.0.copyload
  %i.ll = fsub float %.sroa.2112.0.copyload, %.sroa.2110.0.copyload
  store <2 x float> %i.lk, ptr %i.gp, align 4, !tbaa !88
  store float %i.ll, ptr %.sroa.4114.0..sroa_idx, align 4, !tbaa !88
  %i.lm = fmul float %i.hr, 0.000000e+00
  %i.ln = fsub float %i.lm, %i.ht
  %i.lo = fmul float %i.hu, 0.000000e+00
  %i.lp = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fadd <2 x float> %i.lq, %i.hq           ; 3 uses
  %i.ls = fadd float %i.hu, %i.ln                 ; 2 uses
  %i.lt = fmul float %i.hr, %i.ls
  %i.lu = fmul <2 x float> %i.hk, %i.lr
  %foldExtExtBinop529 = fmul <2 x float> %i.hl, %i.lr
  %i.lv = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> %foldExtExtBinop529, <2 x i32> <i32 0, i32 2>
  %i.lx = fsub <2 x float> %i.lu, %i.lw
  %i.ly = extractelement <2 x float> %i.jx, i64 1 ; 2 uses
  %i.lz = fmul float %i.ly, 0.000000e+00          ; 2 uses
  %i.ma = extractelement <2 x float> %i.jw, i64 1 ; 4 uses
  %i.mb = fsub float %i.ma, %i.lz
  %i.mc = extractelement <2 x float> %i.jw, i64 0 ; 3 uses
  %i.md = fmul float %i.mc, 0.000000e+00
  %i.me = fmul float %i.ma, 0.000000e+00
  %i.mf = fsub float %i.md, %i.me
  %i.mg = extractelement <2 x float> %i.kc, i64 0 ; 2 uses
  %i.mh = fmul float %i.mg, 0.000000e+00          ; 2 uses
  %i.mi = fadd float %i.mh, %i.mb
  %i.mj = fadd float %i.mg, %i.mf                 ; 2 uses
  %i.mk = shufflevector <2 x float> %i.jx, <2 x float> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.ml = insertelement <2 x float> poison, float %i.mi, i64 0 ; 2 uses
  %i.mm = insertelement <2 x float> %i.ml, float %i.ls, i64 1
  %i.mn = fmul <2 x float> %i.mk, %i.mm
  %i.mo = shufflevector <2 x float> %i.jw, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.mp = insertelement <2 x float> %i.lr, float %i.mj, i64 0
  %i.mq = fmul <2 x float> %i.mo, %i.mp
  %i.mr = fsub <2 x float> %i.mn, %i.mq
  %i.ms = fmul <2 x float> %i.mr, splat (float 2.000000e+00)
  %i.mt = fmul <2 x float> %i.lx, splat (float 2.000000e+00)
  %i.mu = fadd <2 x float> %i.mt, <float 0.000000e+00, float 1.000000e+00> ; 10 uses
  %i.mv = fsub float %i.lz, %i.mc
  %i.mw = fadd float %i.mh, %i.mv                 ; 2 uses
  %i.mx = insertelement <2 x float> poison, float %i.mw, i64 0
  %i.my = insertelement <2 x float> %i.mx, float %i.mj, i64 1
  %i.mz = fmul <2 x float> %i.jw, %i.my
  %i.na = insertelement <2 x float> %i.ml, float %i.mw, i64 1
  %i.nb = fmul <2 x float> %i.jx, %i.na
  %i.nc = fsub <2 x float> %i.mz, %i.nb
  %i.nd = fmul <2 x float> %i.nc, splat (float 2.000000e+00)
  %i.ne = fadd <2 x float> %i.ms, zeroinitializer ; 7 uses
  %i.nf = fadd <2 x float> %i.nd, <float 1.000000e+00, float 0.000000e+00> ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 442
  %i.nh = load i8, ptr %i.ng, align 2, !tbaa !115 ; 3 uses
  %i.ni = icmp ult i8 %i.nh, 2
  br i1 %i.ni, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.nj = zext i8 %i.nh to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @72, i64 %i.nj) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.nk = trunc nuw i8 %i.nh to i1
  br i1 %i.nk, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.nl = fmul <2 x float> %i.mu, %i.nf
  %i.nm = shufflevector <2 x float> %i.mu, <2 x float> %i.nf, <2 x i32> <i32 1, i32 2>
  %i.nn = fmul <2 x float> %i.ne, %i.nm
  %i.no = fsub <2 x float> %i.nl, %i.nn           ; 3 uses
  %shift531 = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop532 = fmul <2 x float> %shift531, %i.ne
  %shift534 = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop535 = fmul <2 x float> %i.mu, %shift534
  %foldExtExtBinop537 = fsub <2 x float> %foldExtExtBinop532, %foldExtExtBinop535 ; 3 uses
  %i.np = fmul <2 x float> %i.no, %i.no           ; 2 uses
  %shift539 = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fadd <2 x float> %i.np, %shift539
  %foldExtExtBinop542 = fmul <2 x float> %foldExtExtBinop537, %foldExtExtBinop537
  %foldExtExtBinop544 = fadd <2 x float> %foldExtExtBinop542, %foldExtExtBinop540
  %i.nq = extractelement <2 x float> %foldExtExtBinop544, i64 0 ; 2 uses
  %i.nr = fcmp ogt float %i.nq, f0x057A0000
  br i1 %i.nr, label %bb.ai, label %b3Normalize.exit265

bb.ai:                                            ; preds = %bb.ah
  %i.ns = extractelement <2 x float> %foldExtExtBinop537, i64 0
  %sqrt = tail call float @llvm.sqrt.f32(float %i.nq)
  %i.nt = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.nu = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x float> %i.no, %i.nv
  %i.nx = fmul float %i.ns, %i.nt
  br label %b3Normalize.exit265

b3Normalize.exit265:                              ; preds = %bb.ai, %bb.ah
  %.sroa.07.0.i259 = phi <2 x float> [ %i.nw, %bb.ai ], [ zeroinitializer, %bb.ah ] ; 6 uses
  %.sroa.5.0.i260 = phi float [ %i.nx, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 420
  %.sroa.0.0.vec.extract.i338 = extractelement <2 x float> %.sroa.07.0.i259, i64 0
  %i.nz = fmul float %i.ef, %.sroa.0.0.vec.extract.i338
  %foldExtExtBinop546 = fmul <2 x float> %i.ew, %.sroa.07.0.i259
  %i.oa = extractelement <2 x float> %foldExtExtBinop546, i64 1
  %i.ob = fadd float %i.nz, %i.oa
  %i.oc = extractelement <2 x float> %i.ew, i64 0
  %i.od = fmul float %i.oc, %.sroa.5.0.i260
  %i.oe = fadd float %i.od, %i.ob
  %i.of = fmul float %.sroa.5.0.i260, %i.oe
  %i.og = shufflevector <2 x float> %.sroa.07.0.i259, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = fmul <2 x float> %i.ei, %i.og
  %i.oi = shufflevector <2 x float> %.sroa.07.0.i259, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oj = fmul <2 x float> %i.el, %i.oi
  %i.ok = fadd <2 x float> %i.oh, %i.oj
  %i.ol = insertelement <2 x float> poison, float %.sroa.5.0.i260, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = fmul <2 x float> %i.ep, %i.om
  %i.oo = fadd <2 x float> %i.on, %i.ok
  %i.op = fmul <2 x float> %.sroa.07.0.i259, %i.oo ; 2 uses
  %shift548 = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549 = fadd <2 x float> %i.op, %shift548
  %i.oq = extractelement <2 x float> %foldExtExtBinop549, i64 0
  %i.or = fadd float %i.of, %i.oq                 ; 2 uses
  %i.os = fcmp ogt float %i.or, 0.000000e+00
  %i.ot = fdiv float 1.000000e+00, %i.or
  %i.ou = select i1 %i.os, float %i.ot, float 0.000000e+00
  store float %i.ou, ptr %i.ny, align 4, !tbaa !116
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 360
  store <2 x float> %.sroa.07.0.i259, ptr %i.ov, align 4, !tbaa !88
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store float %.sroa.5.0.i260, ptr %.sroa.686.0..sroa_idx, align 4, !tbaa !88
  br label %bb.aj

bb.aj:                                            ; preds = %b3Normalize.exit265, %bb.ag
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 443
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !117 ; 3 uses
  %i.oy = icmp ult i8 %i.ox, 2
  br i1 %i.oy, label %bb.al, label %bb.ak, !prof !11, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  %i.oz = zext i8 %i.ox to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @73, i64 %i.oz) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.al:                                            ; preds = %bb.aj
  %i.pa = trunc nuw i8 %i.ox to i1
  br i1 %i.pa, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.pb = extractelement <2 x float> %i.hk, i64 0
  %i.pc = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.pd = shufflevector <2 x float> %i.jw, <2 x float> %i.jx, <4 x i32> <i32 1, i32 3, i32 3, i32 0>
  %i.pe = fmul <4 x float> %i.pc, %i.pd           ; 2 uses
  %foldExtExtBinop551 = fmul <2 x float> %i.hl, %i.jw
  %i.pf = extractelement <2 x float> %foldExtExtBinop551, i64 0
  %i.pg = fmul float %i.hr, %i.mc
  %i.ph = fmul float %i.hs, %i.ma
  %i.pi = fmul float %i.pb, %i.ly
  %i.pj = fmul float %i.hr, %i.ma
  %i.pk = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.pl = insertelement <4 x float> %i.pk, float 0.000000e+00, i64 3
  %i.pm = fmul <4 x float> %i.pl, %i.kd
  %i.pn = shufflevector <2 x float> %foldExtExtBinop498, <2 x float> poison, <4 x i32> zeroinitializer
  %i.po = shufflevector <2 x float> %i.jw, <2 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.pp = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pq = shufflevector <4 x float> %i.po, <4 x float> %i.pp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.pr = fmul <4 x float> %i.pn, %i.pq
  %i.ps = fadd float %i.pg, %i.ph
  %i.pt = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.pu = insertelement <4 x float> %i.pt, float %i.pf, i64 2
  %i.pv = insertelement <4 x float> %i.pu, float %i.pi, i64 3 ; 2 uses
  %i.pw = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.px = insertelement <4 x float> %i.pw, float %i.pj, i64 2
  %i.py = insertelement <4 x float> %i.px, float %i.ps, i64 3 ; 2 uses
  %i.pz = fsub <4 x float> %i.pv, %i.py
  %i.qa = fadd <4 x float> %i.pv, %i.py
  %i.qb = shufflevector <4 x float> %i.pz, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qc = fadd <4 x float> %i.pr, %i.qb           ; 2 uses
  %i.qd = fsub <4 x float> %i.qc, %i.pm           ; 2 uses
  %3 = shufflevector <4 x float> %i.qd, <4 x float> %i.qc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qe = fmul <4 x float> %i.qd, %3              ; 2 uses
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.qg = shufflevector <4 x float> %i.qe, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qh = fadd <2 x float> %i.qf, %i.qg           ; 2 uses
  %i.qi = extractelement <2 x float> %i.qh, i64 0
  %i.qj = extractelement <2 x float> %i.qh, i64 1
  %i.qk = fdiv float %i.qi, %i.qj
  %sqrt475 = tail call float @llvm.sqrt.f32(float %i.qk) ; 3 uses
  %i.ql = extractelement <2 x float> %i.mu, i64 0
  %i.qm = fmul <2 x float> %i.mu, %i.nf
  %i.qn = shufflevector <2 x float> %i.mu, <2 x float> %i.nf, <2 x i32> <i32 1, i32 2>
  %i.qo = fmul <2 x float> %i.qn, %i.ne
  %i.qp = fsub <2 x float> %i.qm, %i.qo           ; 3 uses
  %i.qq = extractelement <2 x float> %i.ne, i64 0
  %i.qr = extractelement <2 x float> %i.ne, i64 1 ; 3 uses
  %i.qs = fmul float %i.qr, %i.qq
  %shift553 = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop554 = fmul <2 x float> %i.mu, %shift553
  %i.qt = extractelement <2 x float> %foldExtExtBinop554, i64 0
  %i.qu = fsub float %i.qs, %i.qt                 ; 3 uses
  %i.qv = fmul <2 x float> %i.qp, %i.qp           ; 2 uses
  %shift556 = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop557 = fadd <2 x float> %i.qv, %shift556
  %i.qw = extractelement <2 x float> %foldExtExtBinop557, i64 0
  %i.qx = fmul float %i.qu, %i.qu
  %i.qy = fadd float %i.qx, %i.qw                 ; 2 uses
  %i.qz = fcmp ogt float %i.qy, f0x057A0000
  br i1 %i.qz, label %bb.an, label %b3Normalize.exit

bb.an:                                            ; preds = %bb.am
  %sqrt476 = tail call float @llvm.sqrt.f32(float %i.qy)
  %i.ra = fdiv float 1.000000e+00, %sqrt476       ; 2 uses
  %i.rb = insertelement <2 x float> poison, float %i.ra, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x float> %i.qp, %i.rc
  %i.re = fmul float %i.qu, %i.ra
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.am, %bb.an
  %.sroa.07.0.i = phi <2 x float> [ %i.rd, %bb.an ], [ zeroinitializer, %bb.am ] ; 4 uses
  %.sroa.5.0.i = phi float [ %i.re, %bb.an ], [ 0.000000e+00, %bb.am ] ; 2 uses
  %i.rf = insertelement <2 x float> %.sroa.07.0.i, float %.sroa.5.0.i, i64 0
  %i.rg = fmul <2 x float> %i.mu, %i.rf           ; 2 uses
  %shift559 = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop560 = fsub <2 x float> %shift559, %i.rg
  %i.rh = extractelement <2 x float> %foldExtExtBinop560, i64 0
  %i.ri = fmul float %i.qr, %.sroa.5.0.i
  %.sroa.09.0.vec.extract.i368 = extractelement <2 x float> %.sroa.07.0.i, i64 0
  %i.rj = extractelement <2 x float> %i.mu, i64 1 ; 2 uses
  %i.rk = fmul float %i.rj, %.sroa.09.0.vec.extract.i368
  %i.rl = fsub float %i.ri, %i.rk
  %foldExtExtBinop562 = fmul <2 x float> %i.mu, %.sroa.07.0.i
  %foldExtExtBinop564 = fmul <2 x float> %i.ne, %.sroa.07.0.i
  %shift566 = shufflevector <2 x float> %foldExtExtBinop564, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop567 = fsub <2 x float> %foldExtExtBinop562, %shift566
  %i.rm = extractelement <2 x float> %foldExtExtBinop567, i64 0
  %i.rn = fmul float %sqrt475, %i.rh
  %i.ro = fadd float %i.qr, %i.rn                 ; 5 uses
  %.sroa.07.0.vec.insert.i375 = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.rp = fmul float %sqrt475, %i.rl
  %i.rq = fadd float %i.ql, %i.rp                 ; 5 uses
  %.sroa.07.4.vec.insert.i376 = insertelement <2 x float> %.sroa.07.0.vec.insert.i375, float %i.rq, i64 1
  %i.rr = fmul float %sqrt475, %i.rm
  %i.rs = fadd float %i.rj, %i.rr                 ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ru = fmul float %i.ef, %i.ro
  %i.rv = extractelement <2 x float> %i.ew, i64 1
  %i.rw = fmul float %i.rv, %i.rq
  %i.rx = fadd float %i.ru, %i.rw
  %i.ry = extractelement <2 x float> %i.ew, i64 0
  %i.rz = fmul float %i.ry, %i.rs
  %i.sa = fadd float %i.rz, %i.rx
  %i.sb = fmul float %i.rs, %i.sa
  %i.sc = extractelement <2 x float> %i.ei, i64 0
  %i.sd = fmul float %i.sc, %i.ro
  %i.se = extractelement <2 x float> %i.el, i64 0
  %i.sf = fmul float %i.se, %i.rq
  %i.sg = fadd float %i.sd, %i.sf
  %i.sh = extractelement <2 x float> %i.ep, i64 0
  %i.si = fmul float %i.sh, %i.rs
  %i.sj = fadd float %i.si, %i.sg
  %i.sk = fmul float %i.ro, %i.sj
  %i.sl = extractelement <2 x float> %i.ei, i64 1
  %i.sm = fmul float %i.sl, %i.ro
  %i.sn = extractelement <2 x float> %i.el, i64 1
  %i.so = fmul float %i.sn, %i.rq
  %i.sp = fadd float %i.sm, %i.so
  %i.sq = extractelement <2 x float> %i.ep, i64 1
  %i.sr = fmul float %i.sq, %i.rs
  %i.ss = fadd float %i.sr, %i.sp
  %i.st = fmul float %i.rq, %i.ss
  %i.su = fadd float %i.sk, %i.st
  %i.sv = fadd float %i.sb, %i.su                 ; 2 uses
  %i.sw = fcmp ogt float %i.sv, 0.000000e+00
  %i.sx = fdiv float 1.000000e+00, %i.sv
  %i.sy = select i1 %i.sw, float %i.sx, float 0.000000e+00
  store float %i.sy, ptr %i.rt, align 4, !tbaa !118
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> %.sroa.07.4.vec.insert.i376, ptr %i.sz, align 4, !tbaa !88
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 380
  store float %i.rs, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !88
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %b3Normalize.exit
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  br i1 %i.fi, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.tb = tail call float @llvm.fabs.f32(float %i.fg)
  %i.tc = fcmp ogt float %i.tb, f0x057A0000
  br i1 %i.tc, label %bb.aq, label %b3InvertMatrix.exit

bb.aq:                                            ; preds = %bb.ap
  %i.td = fdiv float 1.000000e+00, %i.fg          ; 3 uses
  %i.te = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tf = extractelement <2 x float> %i.el, i64 1
  %i.tg = fmul <2 x float> %i.te, %i.ep           ; 2 uses
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ti = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.tj = insertelement <4 x float> %i.ti, float 1.000000e+00, i64 3
  %i.tk = insertelement <4 x float> %i.tj, float %i.ef, i64 0 ; 2 uses
  %i.tl = shufflevector <2 x float> %i.ep, <2 x float> %i.ew, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.tm = shufflevector <4 x float> %i.tl, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tn = fmul <4 x float> %i.tk, %i.tm
  %i.to = shufflevector <2 x float> %i.ei, <2 x float> %i.ep, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.tp = insertelement <4 x float> %i.to, float %i.tf, i64 2
  %i.tq = shufflevector <2 x float> %i.tg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tr = shufflevector <4 x float> %i.tp, <4 x float> %i.tq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ts = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tt = shufflevector <4 x float> %i.ts, <4 x float> %i.tk, <4 x i32> <i32 0, i32 4, i32 4, i32 poison>
  %i.tu = insertelement <4 x float> %i.tt, float 1.000000e+00, i64 3
  %i.tv = fmul <4 x float> %i.tr, %i.tu
  %i.tw = fsub <4 x float> %i.tn, %i.tv           ; 3 uses
  %i.tx = extractelement <4 x float> %i.tw, i64 1
  %i.ty = fmul float %i.tx, %i.td
  %i.tz = extractelement <2 x float> %i.el, i64 0
  %i.ua = fmul float %i.ef, %i.tz
  %shift569 = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop570 = fmul <2 x float> %i.ei, %shift569
  %i.ub = extractelement <2 x float> %foldExtExtBinop570, i64 0
  %i.uc = fsub float %i.ua, %i.ub
  %i.ud = fmul <2 x float> %i.ei, %i.em           ; 2 uses
  %shift572 = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop573 = fsub <2 x float> %i.ud, %shift572
  %i.ue = shufflevector <2 x float> %foldExtExtBinop573, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.uf = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1> ; 2 uses
  %i.ug = insertelement <4 x float> %i.uf, float %i.td, i64 0 ; 2 uses
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> %i.tw, <4 x i32> <i32 0, i32 4, i32 6, i32 3>
  %i.ui = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.uj = shufflevector <4 x float> %i.uf, <4 x float> %i.ui, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.uk = fmul <4 x float> %i.uh, %i.uj
  %i.ul = insertelement <4 x float> poison, float %i.td, i64 0
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> zeroinitializer
  %i.un = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.uo = insertelement <4 x float> %i.un, float %i.uc, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> %i.tw, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ur = fmul <4 x float> %i.uq, %i.um
  br label %b3InvertMatrix.exit

b3InvertMatrix.exit:                              ; preds = %bb.ap, %bb.aq
  %.sroa.8.0 = phi float [ %i.ty, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.us = phi <4 x float> [ %i.uk, %bb.aq ], [ zeroinitializer, %bb.ap ]
  %i.ut = phi <4 x float> [ %i.ur, %bb.aq ], [ zeroinitializer, %bb.ap ]
  store <4 x float> %i.us, ptr %i.ta, align 4, !tbaa !88
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !88
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store <4 x float> %i.ut, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !88
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ta, i8 0, i64 36, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %b3InvertMatrix.exit, %bb.ar
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !150 ; 2 uses
  %i.ux = fcmp oeq float %i.uw, 0.000000e+00
  br i1 %i.ux, label %b3MakeSoft.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.va = load float, ptr %i.uz, align 4, !tbaa !151
  %i.vb = load float, ptr %i.uy, align 8, !tbaa !119
  %i.vc = fmul float %i.uw, f0x40C90FDB           ; 2 uses
  %i.vd = fmul float %i.va, 2.000000e+00
  %i.ve = fmul float %i.vc, %i.vb                 ; 2 uses
  %i.vf = fadd float %i.vd, %i.ve                 ; 2 uses
  %i.vg = fmul float %i.ve, %i.vf                 ; 2 uses
  %i.vh = fadd float %i.vg, 1.000000e+00
  %i.vi = fdiv float 1.000000e+00, %i.vh          ; 2 uses
  %i.vj = fdiv float %i.vc, %i.vf
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vk = fmul float %i.vg, %i.vi
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.vk, i64 1
  br label %b3MakeSoft.exit

b3MakeSoft.exit:                                  ; preds = %bb.as, %bb.at
end_hunk_0
begin_hunk_1_@b3SolveSphericalJoint:bb.a
  %.sroa.0725.1 = phi <2 x float> [ %i.qf, %bb.aa ], [ %.sroa.0725.0, %bb.x ] ; 4 uses
  %.sroa.22738.1 = phi float [ %i.qg, %bb.aa ], [ %.sroa.22738.0, %bb.x ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 443
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !117 ; 3 uses
  %i.qz = icmp ult i8 %i.qy, 2
  br i1 %i.qz, label %bb.ad, label %bb.ac, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.ra = zext i8 %i.qy to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @94, i64 %i.ra) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab
  %i.rb = trunc nuw i8 %i.qy to i1
  %or.cond892 = and i1 %i.gf, %i.rb
  br i1 %or.cond892, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.rc = fcmp olt float %i.fz, 0.000000e+00
  br i1 %i.rc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.rd = fneg float %i.fs
  %i.re = fneg float %i.fz
  %i.rf = call float @b3Atan2(float noundef %i.rd, float noundef %i.re) #7
  br label %b3GetTwistAngle.exit

bb.ag:                                            ; preds = %bb.ae
  %i.rg = call float @b3Atan2(float noundef %i.fs, float noundef %i.fz) #7
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.af, %bb.ag
  %i.rh = phi float [ %i.rf, %bb.af ], [ %i.rg, %bb.ag ]
  %i.ri = fmul float %i.rh, 2.000000e+00          ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 372
  %.sroa.0444.0.copyload = load <2 x float>, ptr %i.rj, align 4, !tbaa !88 ; 8 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 380
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !123
  %i.rm = fsub float %i.ri, %i.rl                 ; 3 uses
  %i.rn = fcmp ogt float %i.rm, 0.000000e+00
  br i1 %i.rn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %b3GetTwistAngle.exit
  %i.ro = icmp ne ptr %1, null, !nosanitize !10
  %i.rp = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.rq = and i64 %i.rp, 7, !nosanitize !10
  %i.rr = icmp eq i64 %i.rq, 0, !nosanitize !10
  %i.rs = and i1 %i.ro, %i.rr, !nosanitize !10
  br i1 %i.rs, label %bb.aj, label %bb.ai, !prof !11, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.rp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.aj:                                            ; preds = %bb.ah
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !160
  %i.rv = fmul float %i.rm, %i.ru
  br label %bb.am

bb.ak:                                            ; preds = %b3GetTwistAngle.exit
  br i1 %2, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !161
  %i.ry = fmul float %i.rm, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.sb = load float, ptr %i.rz, align 4, !tbaa !162
  %i.sc = load float, ptr %i.sa, align 4, !tbaa !163
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.0849 = phi float [ 0.000000e+00, %bb.aj ], [ %i.sc, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %.0848 = phi float [ 1.000000e+00, %bb.aj ], [ %i.sb, %bb.al ], [ 1.000000e+00, %bb.ak ]
  %.0 = phi float [ %i.rv, %bb.aj ], [ %i.ry, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %.sroa.0.0.vec.extract.i1078 = extractelement <2 x float> %.sroa.0725.1, i64 0
  %i.sd = fsub float %.sroa.22716.1, %.sroa.22738.1
  %i.se = fsub <2 x float> %.sroa.0703.1, %.sroa.0725.1
  %i.sf = fmul <2 x float> %i.se, %.sroa.0444.0.copyload ; 2 uses
  %shift1910 = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1911 = fadd <2 x float> %i.sf, %shift1910
  %i.sg = extractelement <2 x float> %foldExtExtBinop1911, i64 0
  %i.sh = fmul float %i.sd, %.sroa.9.0.copyload
  %i.si = fadd float %i.sh, %i.sg
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.sl = fneg float %.0848
  %i.sm = load float, ptr %i.sj, align 4, !tbaa !95 ; 3 uses
  %i.sn = load float, ptr %i.sk, align 4, !tbaa !118 ; 2 uses
  %i.so = fmul float %i.sn, %i.sl
  %i.sp = fadd float %i.si, %.0
  %i.sq = fmul float %i.sp, %i.so
  %i.sr = fmul float %.0849, %i.sm
  %i.ss = fsub float %i.sq, %i.sr
  %i.st = fadd float %i.sm, %i.ss                 ; 2 uses
  %i.su = fcmp ogt float %i.st, 0.000000e+00
  %i.sv = select i1 %i.su, float %i.st, float 0.000000e+00 ; 2 uses
  store float %i.sv, ptr %i.sj, align 4, !tbaa !95
  %foldExtExtBinop1913 = fmul <2 x float> %i.k, %.sroa.0444.0.copyload
  %shift1915 = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1916 = fmul <2 x float> %i.l, %shift1915
  %foldExtExtBinop1918 = fadd <2 x float> %foldExtExtBinop1913, %foldExtExtBinop1916
  %i.sw = extractelement <2 x float> %foldExtExtBinop1918, i64 0
  %i.sx = extractelement <2 x float> %i.m, i64 0
  %i.sy = fmul float %i.sx, %.sroa.9.0.copyload
  %i.sz = fadd float %i.sy, %i.sw                 ; 2 uses
  %.scalar1920 = fsub float %i.sv, %i.sm          ; 2 uses
  %i.ta = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1920, i64 0 ; 2 uses
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.tc = fmul float %i.sz, %.scalar1920
  %i.td = fsub float %.sroa.0.0.vec.extract.i1078, %i.tc ; 2 uses
  %i.te = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tf = insertelement <2 x float> %i.te, float %.sroa.151669.0.copyload, i64 1
  %i.tg = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = fmul <2 x float> %i.tf, %i.tg
  %i.ti = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tj = insertelement <2 x float> %i.ti, float %.sroa.331687.0.copyload, i64 1
  %i.tk = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tl = fmul <2 x float> %i.tj, %i.tk
  %i.tm = fadd <2 x float> %i.th, %i.tl
  %i.tn = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.to = insertelement <2 x float> %i.tn, float %.sroa.511705.0.copyload, i64 1
  %i.tp = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x float> %i.to, %i.tq
  %i.ts = fadd <2 x float> %i.tr, %i.tm           ; 3 uses
  %i.tt = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tu = fmul <2 x float> %i.ts, %i.tt
  %i.tv = shufflevector <2 x float> %.sroa.0725.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tw = insertelement <2 x float> %i.tv, float %.sroa.22738.1, i64 1
  %i.tx = fsub <2 x float> %i.tw, %i.tu           ; 3 uses
  %i.ty = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tz = insertelement <4 x float> %i.ty, float -0.000000e+00, i64 3
  %i.ua = insertelement <4 x float> %i.tz, float %.sroa.151621.0.copyload, i64 2
  %i.ub = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.uc = insertelement <4 x float> %i.ub, float 1.000000e+00, i64 3
  %i.ud = fmul <4 x float> %i.ua, %i.uc
  %i.ue = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uf = insertelement <4 x float> %i.ue, float -0.000000e+00, i64 3
  %i.ug = insertelement <4 x float> %i.uf, float %.sroa.33.0.copyload, i64 2
  %i.uh = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ui = insertelement <4 x float> %i.uh, float 1.000000e+00, i64 3
  %i.uj = fmul <4 x float> %i.ug, %i.ui
  %i.uk = fadd <4 x float> %i.ud, %i.uj
  %i.ul = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.um = insertelement <4 x float> %i.ul, float -0.000000e+00, i64 3
  %i.un = insertelement <4 x float> %i.um, float %.sroa.51.0.copyload, i64 2
  %i.uo = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.9.0.copyload, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.uq = fmul <4 x float> %i.un, %i.up
  %i.ur = fadd <4 x float> %i.uq, %i.uk           ; 3 uses
  %i.us = fmul <4 x float> %i.ur, %i.tb
  %i.ut = shufflevector <2 x float> %.sroa.0703.1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uu = insertelement <4 x float> %i.ut, float 0.000000e+00, i64 3
  %i.uv = insertelement <4 x float> %i.uu, float %.sroa.22716.1, i64 2
  %i.uw = fadd <4 x float> %i.uv, %i.us           ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !124
  %i.uz = fsub float %i.uy, %i.ri                 ; 3 uses
  %i.va = fcmp ogt float %i.uz, 0.000000e+00
  br i1 %i.va, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.vb = icmp ne ptr %1, null, !nosanitize !10
  %i.vc = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.vd = and i64 %i.vc, 7, !nosanitize !10
  %i.ve = icmp eq i64 %i.vd, 0, !nosanitize !10
  %i.vf = and i1 %i.vb, %i.ve, !nosanitize !10
  br i1 %i.vf, label %bb.ap, label %bb.ao, !prof !11, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @96, i64 %i.vc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ap:                                            ; preds = %bb.an
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !160
  %i.vi = fmul float %i.uz, %i.vh
  br label %bb.as

bb.aq:                                            ; preds = %bb.am
  br i1 %2, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !161
  %i.vl = fmul float %i.uz, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.vo = load float, ptr %i.vm, align 4, !tbaa !162
  %i.vp = load float, ptr %i.vn, align 4, !tbaa !163
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq
  %.0852 = phi float [ 0.000000e+00, %bb.ap ], [ %i.vp, %bb.ar ], [ 0.000000e+00, %bb.aq ]
  %.0851 = phi float [ 1.000000e+00, %bb.ap ], [ %i.vo, %bb.ar ], [ 1.000000e+00, %bb.aq ]
  %.0850 = phi float [ %i.vi, %bb.ap ], [ %i.vl, %bb.ar ], [ 0.000000e+00, %bb.aq ]
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.vr = insertelement <4 x float> poison, float %i.td, i64 0
  %i.vs = shufflevector <2 x float> %i.tx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vt = shufflevector <4 x float> %i.vr, <4 x float> %i.vs, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.vu = fsub <4 x float> %i.vt, %i.uw
  %i.vv = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.vv, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.vw = fmul <4 x float> %4, %i.vu              ; 3 uses
  %5 = extractelement <4 x float> %i.vw, i64 2
  %6 = extractelement <4 x float> %i.vw, i64 0
  %7 = extractelement <4 x float> %i.vw, i64 1
  %8 = fadd float %6, %7
  %9 = fadd float %5, %8
  %i.vx = load float, ptr %i.vq, align 4, !tbaa !94 ; 3 uses
  %i.vy = fneg float %.0851
  %i.vz = fmul float %i.sn, %i.vy
  %i.wa = fadd float %9, %.0850
  %i.wb = fmul float %i.vz, %i.wa
  %i.wc = fmul float %.0852, %i.vx
  %i.wd = fsub float %i.wb, %i.wc
  %i.we = fadd float %i.vx, %i.wd                 ; 2 uses
  %i.wf = fcmp ogt float %i.we, 0.000000e+00
  %i.wg = select i1 %i.wf, float %i.we, float 0.000000e+00 ; 2 uses
  store float %i.wg, ptr %i.vq, align 4, !tbaa !94
  %i.wh = fsub float %i.wg, %i.vx                 ; 5 uses
  %i.wi = fmul float %i.sz, %i.wh
  %i.wj = fadd float %i.td, %i.wi
  %.sroa.07.0.vec.insert.i1137 = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.wk = extractelement <2 x float> %i.ts, i64 0
  %i.wl = fmul float %i.wk, %i.wh
  %i.wm = extractelement <2 x float> %i.tx, i64 0
  %i.wn = fadd float %i.wm, %i.wl
  %.sroa.07.4.vec.insert.i1138 = insertelement <2 x float> %.sroa.07.0.vec.insert.i1137, float %i.wn, i64 1
  %i.wo = extractelement <2 x float> %i.ts, i64 1
  %i.wp = fmul float %i.wo, %i.wh
  %i.wq = extractelement <2 x float> %i.tx, i64 1
  %i.wr = fadd float %i.wq, %i.wp
  %i.ws = shufflevector <4 x float> %i.ur, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.wt = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wu = shufflevector <2 x float> %i.wt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wv = fmul <2 x float> %i.ws, %i.wu
  %i.ww = shufflevector <4 x float> %i.uw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.wx = fsub <2 x float> %i.ww, %i.wv
  %i.wy = extractelement <4 x float> %i.ur, i64 2
  %i.wz = fmul float %i.wy, %i.wh
  %i.xa = extractelement <4 x float> %i.uw, i64 2
  %i.xb = fsub float %i.xa, %i.wz
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ad
  %.sroa.0703.2 = phi <2 x float> [ %i.wx, %bb.as ], [ %.sroa.0703.1, %bb.ad ] ; 3 uses
  %.sroa.22716.2 = phi float [ %i.xb, %bb.as ], [ %.sroa.22716.1, %bb.ad ] ; 3 uses
  %.sroa.0725.2 = phi <2 x float> [ %.sroa.07.4.vec.insert.i1138, %bb.as ], [ %.sroa.0725.1, %bb.ad ] ; 3 uses
  %.sroa.22738.2 = phi float [ %i.wr, %bb.as ], [ %.sroa.22738.1, %bb.ad ] ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 442
  %i.xd = load i8, ptr %i.xc, align 2, !tbaa !115 ; 3 uses
  %i.xe = icmp ult i8 %i.xd, 2
  br i1 %i.xe, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  %i.xf = zext i8 %i.xd to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @97, i64 %i.xf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.xg = trunc nuw i8 %i.xd to i1
  %or.cond893 = and i1 %i.gf, %i.xg
  br i1 %or.cond893, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.xh = fmul float %i.fs, %i.fs
  %i.xi = fmul float %i.fz, %i.fz
  %i.xj = fadd float %i.xh, %i.xi
  %sqrt1835 = call float @llvm.sqrt.f32(float %i.xj)
  %i.xk = fmul <2 x float> %i.fq, %i.fq
  %i.xl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.xk)
  %sqrt = call float @llvm.sqrt.f32(float %i.xl)
  %i.xm = call float @b3Atan2(float noundef %sqrt, float noundef %sqrt1835) #7
  %i.xn = fmul float %i.xm, 2.000000e+00
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0313.0.copyload = load <2 x float>, ptr %i.xo, align 4, !tbaa !88 ; 5 uses
  %.sroa.6316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.6316.0.copyload = load float, ptr %.sroa.6316.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !125
  %i.xr = fsub float %i.xq, %i.xn                 ; 3 uses
  %i.xs = fcmp ogt float %i.xr, 0.000000e+00
  br i1 %i.xs, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.xt = icmp ne ptr %1, null, !nosanitize !10
  %i.xu = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.xv = and i64 %i.xu, 7, !nosanitize !10
  %i.xw = icmp eq i64 %i.xv, 0, !nosanitize !10
  %i.xx = and i1 %i.xt, %i.xw, !nosanitize !10
  br i1 %i.xx, label %bb.az, label %bb.ay, !prof !11, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %i.xu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.az:                                            ; preds = %bb.ax
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !160
  %i.ya = fmul float %i.xr, %i.xz
  br label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  br i1 %2, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !161
  %i.yd = fmul float %i.xr, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.yg = load float, ptr %i.ye, align 4, !tbaa !162
  %i.yh = load float, ptr %i.yf, align 4, !tbaa !163
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %.0855 = phi float [ 0.000000e+00, %bb.az ], [ %i.yh, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %.0854 = phi float [ 1.000000e+00, %bb.az ], [ %i.yg, %bb.bb ], [ 1.000000e+00, %bb.ba ]
  %.0853 = phi float [ %i.ya, %bb.az ], [ %i.yd, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.yi = fsub float %.sroa.22738.2, %.sroa.22716.2
  %.sroa.0.0.vec.extract.i1164 = extractelement <2 x float> %.sroa.0313.0.copyload, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i1166 = extractelement <2 x float> %.sroa.0313.0.copyload, i64 1 ; 2 uses
  %i.yj = fsub <2 x float> %.sroa.0725.2, %.sroa.0703.2
  %i.yk = fmul <2 x float> %i.yj, %.sroa.0313.0.copyload ; 2 uses
  %shift1927 = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1928 = fadd <2 x float> %i.yk, %shift1927
  %i.yl = extractelement <2 x float> %foldExtExtBinop1928, i64 0
  %i.ym = fmul float %i.yi, %.sroa.6316.0.copyload
  %i.yn = fadd float %i.ym, %i.yl
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.yq = fneg float %.0854
  %i.yr = load float, ptr %i.yo, align 4, !tbaa !93 ; 3 uses
  %i.ys = load float, ptr %i.yp, align 4, !tbaa !116
  %i.yt = fmul float %i.ys, %i.yq
  %i.yu = fadd float %i.yn, %.0853
  %i.yv = fmul float %i.yu, %i.yt
  %i.yw = fmul float %.0855, %i.yr
  %i.yx = fsub float %i.yv, %i.yw
  %i.yy = fadd float %i.yr, %i.yx                 ; 2 uses
  %i.yz = fcmp ogt float %i.yy, 0.000000e+00
  %i.za = select i1 %i.yz, float %i.yy, float 0.000000e+00 ; 2 uses
  store float %i.za, ptr %i.yo, align 4, !tbaa !93
  %i.zb = fsub float %i.za, %i.yr                 ; 3 uses
  %i.zc = fmul float %.sroa.151669.0.copyload, %.sroa.0.0.vec.extract.i1164
  %i.zd = fmul float %.sroa.331687.0.copyload, %.sroa.0.4.vec.extract.i1166
  %i.ze = fadd float %i.zc, %i.zd
  %i.zf = insertelement <2 x float> poison, float %.sroa.6316.0.copyload, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zh = fmul <2 x float> %i.m, %i.zg
  %i.zi = fmul float %.sroa.511705.0.copyload, %.sroa.6316.0.copyload
  %i.zj = fadd float %i.zi, %i.ze
  %i.zk = shufflevector <2 x float> %.sroa.0313.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zl = fmul <2 x float> %i.k, %i.zk
  %i.zm = shufflevector <2 x float> %.sroa.0313.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.zn = fmul <2 x float> %i.l, %i.zm
  %i.zo = fadd <2 x float> %i.zl, %i.zn
  %i.zp = fadd <2 x float> %i.zh, %i.zo
  %i.zq = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zs = fmul <2 x float> %i.zp, %i.zr
  %i.zt = fadd <2 x float> %.sroa.0725.2, %i.zs
  %i.zu = fmul float %i.zj, %i.zb
  %i.zv = fadd float %.sroa.22738.2, %i.zu
  %i.zw = fmul float %.sroa.151621.0.copyload, %.sroa.0.0.vec.extract.i1164
  %i.zx = fmul float %.sroa.33.0.copyload, %.sroa.0.4.vec.extract.i1166
  %i.zy = fadd float %i.zw, %i.zx
  %i.zz = fmul <2 x float> %i.q, %i.zg
  %i.aaa = fmul float %.sroa.51.0.copyload, %.sroa.6316.0.copyload
  %i.aab = fadd float %i.aaa, %i.zy
  %i.aac = fmul <2 x float> %i.o, %i.zk
  %i.aad = fmul <2 x float> %i.p, %i.zm
  %i.aae = fadd <2 x float> %i.aac, %i.aad
  %i.aaf = fadd <2 x float> %i.zz, %i.aae
  %i.aag = fmul <2 x float> %i.aaf, %i.zr
  %i.aah = fsub <2 x float> %.sroa.0703.2, %i.aag
  %i.aai = fmul float %i.aab, %i.zb
  %i.aaj = fsub float %.sroa.22716.2, %i.aai
  br label %bb.bd

bb.bd:                                            ; preds = %bb.av, %bb.bc
  %.sroa.0703.3 = phi <2 x float> [ %i.aah, %bb.bc ], [ %.sroa.0703.2, %bb.av ] ; 4 uses
  %.sroa.22716.3 = phi float [ %i.aaj, %bb.bc ], [ %.sroa.22716.2, %bb.av ] ; 3 uses
  %.sroa.0725.3 = phi <2 x float> [ %i.zt, %bb.bc ], [ %.sroa.0725.2, %bb.av ] ; 5 uses
  %.sroa.22738.3 = phi float [ %i.zv, %bb.bc ], [ %.sroa.22738.2, %bb.av ] ; 3 uses
  %i.aak = load <2 x float>, ptr %i.cd, align 4   ; 6 uses
  %i.aal = load <2 x float>, ptr %i.ch, align 4   ; 5 uses
  %.sroa.0243.0.copyload = load <2 x float>, ptr %i.ce, align 4 ; 5 uses
  %.sroa.2244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.sroa.2244.0.copyload = load float, ptr %.sroa.2244.0..sroa_idx, align 4 ; 3 uses
  %.sroa.09.4.vec.extract13.i.i1196 = extractelement <2 x float> %i.aak, i64 1
  %i.aam = load <2 x float>, ptr %i.cm, align 4   ; 5 uses
  %i.aan = load <2 x float>, ptr %i.cq, align 4   ; 5 uses
  %.sroa.0233.0.copyload = load <2 x float>, ptr %i.cn, align 4 ; 4 uses
  %.sroa.2234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.2234.0.copyload = load float, ptr %.sroa.2234.0..sroa_idx, align 4 ; 3 uses
  %i.aao = shufflevector <2 x float> %.sroa.0233.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aap = fmul <2 x float> %i.aam, %i.aao        ; 2 uses
  %shift1930 = shufflevector <2 x float> %i.aap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1931 = fsub <2 x float> %i.aap, %shift1930
  %i.aaq = extractelement <2 x float> %foldExtExtBinop1931, i64 0
  %.sroa.2.12.vec.extract.i1210 = extractelement <2 x float> %i.aan, i64 1
  %i.aar = fmul float %.sroa.2.12.vec.extract.i1210, %.sroa.2234.0.copyload
  %.sroa.09.4.vec.extract13.i = extractelement <2 x float> %.sroa.0703.3, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i1216 = extractelement <2 x float> %.sroa.0703.3, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i1235 = extractelement <2 x float> %.sroa.0725.3, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i1239 = extractelement <2 x float> %.sroa.0725.3, i64 0
  %i.aas = fmul float %.sroa.09.4.vec.extract13.i.i1196, %.sroa.2244.0.copyload
  %shift1933 = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1934 = fmul <2 x float> %i.aal, %shift1933
  %i.aat = extractelement <2 x float> %foldExtExtBinop1934, i64 0
  %i.aau = fsub float %i.aas, %i.aat
end_hunk_1
