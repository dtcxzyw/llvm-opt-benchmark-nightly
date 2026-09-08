Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/shape?download=true
inline.NumInlined: 319
inline.NumDeleted: 46
begin_hunk_0_@b3Shape_ApplyWind:bb.a
  %i.fa = fadd float %.sroa.2444.0.copyload, %i.ez
  %i.fb = insertelement <2 x float> poison, float %.fca.1.extract458, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %.sroa.2452.0.copyload, i64 1 ; 2 uses
  %i.fd = shufflevector <2 x float> %.sroa.0451.0.copyload, <2 x float> %.fca.0.extract457, <2 x i32> <i32 1, i32 2>
  %i.fe = fmul <2 x float> %i.fc, %i.fd
  %i.ff = shufflevector <2 x float> %.sroa.0451.0.copyload, <2 x float> %.fca.0.extract457, <2 x i32> <i32 3, i32 0>
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = fmul <2 x float> %i.ff, %i.fg
  %i.fi = fsub <2 x float> %i.fe, %i.fh
  %i.fj = fadd <2 x float> %.sroa.0443.0.copyload, %i.fi
  %i.fk = insertelement <2 x float> poison, float %3, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj
  %i.fn = fsub <2 x float> %1, %i.fm
  %i.fo = fmul float %3, %i.fa
  %i.fp = fsub float %2, %i.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.fq = call fastcc { <2 x float>, float } @b3GetLengthAndNormalize(ptr noundef %i.b, <2 x float> %i.fn, float %i.fp) ; 2 uses
  %.fca.0.extract415 = extractvalue { <2 x float>, float } %i.fq, 0 ; 3 uses
  %.fca.1.extract416 = extractvalue { <2 x float>, float } %i.fq, 1 ; 9 uses
  %i.fr = load float, ptr %i.b, align 4, !tbaa !76 ; 2 uses
  %i.fs = fcmp olt float %i.fr, %5
  %i.ft = select i1 %i.fs, float %i.fr, float %5  ; 3 uses
  store float %i.ft, ptr %i.b, align 4, !tbaa !76
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aj, i64 212
  %.sroa.0410.0.copyload = load <2 x float>, ptr %i.fv, align 4
  %.sroa.2411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 220
  %.sroa.2411.0.copyload = load float, ptr %.sroa.2411.0..sroa_idx, align 4
  %.sroa.0408.0.copyload = load <2 x float>, ptr %i.fu, align 8
  %.sroa.2409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %.sroa.2409.0.copyload = load float, ptr %.sroa.2409.0..sroa_idx, align 8
  %i.fw = fsub <2 x float> %.sroa.0410.0.copyload, %.sroa.0408.0.copyload
  %i.fx = fsub float %.sroa.2411.0.copyload, %.sroa.2409.0.copyload
  %i.fy = call fastcc { <2 x float>, float } @b3RotateVector(<2 x float> %.sroa.61077.0.copyload, <2 x float> %.sroa.71078.0.copyload, <2 x float> %i.fw, float %i.fx) ; 2 uses
  %.fca.1.extract397 = extractvalue { <2 x float>, float } %i.fy, 1 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %.fca.0.extract396 = extractvalue { <2 x float>, float } %i.fy, 0 ; 5 uses
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !88 ; 6 uses
  %i.gb = fmul float %i.ga, f0x40490FDB
  %i.gc = fmul float %i.ga, %i.gb
  %i.gd = fmul float %i.ga, 2.000000e+00
  %.sroa.09.4.vec.extract13.i742 = extractelement <2 x float> %.fca.0.extract396, i64 1 ; 2 uses
  %i.ge = fmul float %.fca.1.extract416, %.sroa.09.4.vec.extract13.i742
  %.sroa.0.4.vec.extract8.i743 = extractelement <2 x float> %.fca.0.extract415, i64 1 ; 9 uses
  %i.gf = fmul float %.sroa.0.4.vec.extract8.i743, %.fca.1.extract397
  %i.gg = fsub float %i.ge, %i.gf                 ; 2 uses
  %.sroa.0.0.vec.extract.i745 = extractelement <2 x float> %.fca.0.extract415, i64 0 ; 8 uses
  %i.gh = fmul float %.sroa.0.0.vec.extract.i745, %.fca.1.extract397
  %.sroa.09.0.vec.extract.i746 = extractelement <2 x float> %.fca.0.extract396, i64 0 ; 2 uses
  %i.gi = fmul float %.fca.1.extract416, %.sroa.09.0.vec.extract.i746
  %i.gj = fsub float %i.gh, %i.gi                 ; 2 uses
  %i.gk = fmul float %.sroa.0.4.vec.extract8.i743, %.sroa.09.0.vec.extract.i746
  %i.gl = fmul float %.sroa.0.0.vec.extract.i745, %.sroa.09.4.vec.extract13.i742
  %i.gm = fsub float %i.gk, %i.gl                 ; 2 uses
  %i.gn = fmul float %i.gg, %i.gg
  %i.go = fmul float %i.gj, %i.gj
  %i.gp = fadd float %i.gn, %i.go
  %i.gq = fmul float %i.gm, %i.gm
  %i.gr = fadd float %i.gq, %i.gp
  %sqrt.i = call float @llvm.sqrt.f32(float %i.gr)
  %i.gs = fmul float %sqrt.i, %i.gd
  %i.gt = fadd float %i.gc, %i.gs
  %i.gu = fmul <2 x float> %.fca.0.extract396, %.fca.0.extract396 ; 2 uses
  %shift2163 = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2164 = fadd <2 x float> %i.gu, %shift2163
  %i.gv = extractelement <2 x float> %foldExtExtBinop2164, i64 0
  %i.gw = fmul float %.fca.1.extract397, %.fca.1.extract397
  %i.gx = fadd float %i.gw, %i.gv                 ; 2 uses
  %i.gy = fcmp ogt float %i.gx, f0x057A0000
  br i1 %i.gy, label %bb.ac, label %b3Normalize.exit

bb.ac:                                            ; preds = %bb.ab
  %sqrt = call float @llvm.sqrt.f32(float %i.gx)
  %i.gz = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %.fca.0.extract396, %i.hb
  %i.hd = fmul float %.fca.1.extract397, %i.gz
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.ab, %bb.ac
  %.sroa.07.0.i = phi <2 x float> [ %i.hc, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.hd, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 2 uses
  %.sroa.0.0.vec.extract.i750 = extractelement <2 x float> %.sroa.07.0.i, i64 0
  %.sroa.0.4.vec.extract.i751 = extractelement <2 x float> %.sroa.07.0.i, i64 1 ; 2 uses
  %foldExtExtBinop2166 = fmul <2 x float> %.fca.0.extract415, %.sroa.07.0.i
  %i.he = extractelement <2 x float> %foldExtExtBinop2166, i64 0
  %i.hf = fmul float %.sroa.0.4.vec.extract8.i743, %.sroa.0.4.vec.extract.i751
  %i.hg = fadd float %i.he, %i.hf
  %i.hh = fmul float %.fca.1.extract416, %.sroa.5.0.i
  %i.hi = fmul float %i.cc, 5.000000e-01
  %i.hj = fmul float %i.hi, %i.gt
  %i.hk = fmul float %i.ft, %i.hj
  %i.hl = fadd float %i.hh, %i.hg                 ; 3 uses
  %i.hm = fmul float %.sroa.0.0.vec.extract.i750, %i.hl
  %i.hn = fmul float %.sroa.5.0.i, %i.hl
  %i.ho = fsub float %i.hm, %.sroa.0.0.vec.extract.i745 ; 3 uses
  %i.hp = fsub float %i.hn, %.fca.1.extract416    ; 3 uses
  %i.hq = fmul float %.sroa.0.4.vec.extract.i751, %i.hl
  %i.hr = fmul float %.sroa.0.0.vec.extract.i745, %i.hp
  %i.hs = fmul float %.fca.1.extract416, %i.ho
  %i.ht = fsub float %i.hq, %.sroa.0.4.vec.extract8.i743 ; 3 uses
  %i.hu = fsub float %i.hr, %i.hs                 ; 2 uses
  %i.hv = fmul float %.sroa.0.4.vec.extract8.i743, %i.ho
  %i.hw = fmul float %.sroa.0.0.vec.extract.i745, %i.ht
  %i.hx = fsub float %i.hv, %i.hw                 ; 2 uses
  %i.hy = fmul float %.fca.1.extract416, %i.ht
  %i.hz = fmul float %.fca.1.extract416, %i.hu
  %i.ia = fmul float %.sroa.0.4.vec.extract8.i743, %i.hp
  %i.ib = fmul float %.sroa.0.4.vec.extract8.i743, %i.hx
  %i.ic = fsub float %i.hy, %i.ia                 ; 2 uses
  %i.id = fsub float %i.hz, %i.ib
  %i.ie = fmul float %.sroa.0.0.vec.extract.i745, %i.hx
  %i.if = fmul float %.fca.1.extract416, %i.ic
  %i.ig = fsub float %i.ie, %i.if
  %i.ih = fmul float %.sroa.0.0.vec.extract.i745, %i.hu
  %i.ii = fmul float %i.ft, %i.hk                 ; 3 uses
  %i.ij = fmul float %.sroa.0.4.vec.extract8.i743, %i.ic
  %i.ik = fmul float %4, %i.id
  %i.il = fsub float %i.ij, %i.ih
  %i.im = fadd float %.sroa.0.0.vec.extract.i745, %i.ik
  %i.in = fmul float %4, %i.ig
  %i.io = fadd float %.sroa.0.4.vec.extract8.i743, %i.in
  %i.ip = fmul float %4, %i.il
  %i.iq = fmul float %i.ii, %i.im                 ; 3 uses
  %.sroa.05.0.vec.insert.i791 = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.ir = fmul float %i.ii, %i.io                 ; 3 uses
  %.sroa.05.4.vec.insert.i793 = insertelement <2 x float> %.sroa.05.0.vec.insert.i791, float %i.ir, i64 1
  %i.is = fmul float %i.ga, %i.ho
  %i.it = fadd float %.sroa.0.0.vec.extract.i713, %i.is ; 2 uses
  %i.iu = fmul float %i.ga, %i.ht
  %i.iv = fadd float %.sroa.0.4.vec.extract8.i711, %i.iu ; 2 uses
  %i.iw = fmul float %i.ga, %i.hp
  %i.ix = fadd float %.fca.1.extract458, %i.iw    ; 2 uses
  %i.iy = fmul float %i.it, %i.ir
  %i.iz = fadd float %.fca.1.extract416, %i.ip
  %i.ja = fmul float %i.iv, %i.iq
  %i.jb = fmul float %i.ii, %i.iz                 ; 3 uses
  %i.jc = fsub float %i.iy, %i.ja
  %i.jd = fmul float %i.iv, %i.jb
  %i.je = fmul float %i.ix, %i.ir
  %i.jf = fsub float %i.jd, %i.je
  %.sroa.016.0.vec.insert.i806 = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jg = fmul float %i.ix, %i.iq
  %i.jh = fmul float %i.it, %i.jb
  %i.ji = fsub float %i.jg, %i.jh
  %.sroa.016.4.vec.insert.i809 = insertelement <2 x float> %.sroa.016.0.vec.insert.i806, float %i.ji, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.jj = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.jb, i64 1
  br label %.loopexit

bb.ad:                                            ; preds = %bb.v
  %i.jl = shufflevector <2 x float> %.sroa.61077.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop2168 = fmul <2 x float> %.sroa.71078.0.copyload, %.sroa.71078.0.copyload
  %i.jm = shufflevector <2 x float> %.sroa.61077.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = shufflevector <2 x float> %.sroa.61077.0.copyload, <2 x float> %.sroa.71078.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.jo = fmul <2 x float> %i.jm, %i.jn           ; 3 uses
  %i.jp = shufflevector <2 x float> %.sroa.71078.0.copyload, <2 x float> %.sroa.61077.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.jq = fmul <2 x float> %.sroa.71078.0.copyload, %i.jp ; 3 uses
  %i.jr = fmul <2 x float> %i.jl, %.sroa.71078.0.copyload ; 2 uses
  %i.js = fmul <2 x float> %.sroa.61077.0.copyload, %.sroa.61077.0.copyload ; 3 uses
  %i.jt = shufflevector <2 x float> %foldExtExtBinop2168, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fadd <2 x float> %i.js, %i.jt
  %i.jv = fmul <2 x float> %i.ju, splat (float 2.000000e+00)
  %i.jw = extractelement <2 x float> %i.jr, i64 0 ; 2 uses
  %i.jx = extractelement <2 x float> %i.jr, i64 1 ; 2 uses
  %i.jy = fadd float %i.jw, %i.jx
  %foldExtExtBinop2170 = fadd <2 x float> %i.jo, %i.jq
  %i.jz = fsub <2 x float> %i.jo, %i.jq
  %i.ka = fmul <2 x float> %i.jz, splat (float 2.000000e+00) ; 8 uses
  %i.kb = fsub <2 x float> splat (float 1.000000e+00), %i.jv ; 8 uses
  %i.kc = insertelement <2 x float> %foldExtExtBinop2170, float %i.jy, i64 1
  %i.kd = fmul <2 x float> %i.kc, splat (float 2.000000e+00) ; 8 uses
  %i.ke = fsub float %i.jw, %i.jx
  %i.kf = shufflevector <2 x float> %i.js, <2 x float> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.kg = shufflevector <2 x float> %i.js, <2 x float> %i.jq, <2 x i32> <i32 1, i32 3>
  %i.kh = fadd <2 x float> %i.kf, %i.kg
  %i.ki = fmul <2 x float> %i.kh, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.kj = fmul float %i.ke, 2.000000e+00          ; 4 uses
  %i.kk = fsub <2 x float> <float 1.000000e+00, float poison>, %i.ki ; 3 uses
  %i.kl = fmul <2 x float> %i.ki, <float poison, float 2.000000e+00> ; 2 uses
  %i.km = shufflevector <2 x float> %i.kk, <2 x float> %i.kl, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 4 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !88 ; 4 uses
  %i.kp = icmp ne ptr %i.ko, null, !nosanitize !9
  %i.kq = ptrtoint ptr %i.ko to i64, !nosanitize !9 ; 2 uses
  %i.kr = and i64 %i.kq, 7, !nosanitize !9
  %i.ks = icmp eq i64 %i.kr, 0, !nosanitize !9
  %i.kt = and i1 %i.kp, %i.ks, !nosanitize !9
  br i1 %i.kt, label %bb.af, label %bb.ae, !prof !10, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @195, i64 %i.kq) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 120
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !375 ; 2 uses
  %i.kw = call fastcc ptr @b3GetHullPoints(ptr noundef nonnull %i.ko)
  %.fr1559 = freeze ptr %i.kw                     ; 5 uses
  %i.kx = load ptr, ptr %i.kn, align 8, !tbaa !88
  %i.ky = call fastcc ptr @b3GetHullFaces(ptr noundef %i.kx)
  %.fr1516 = freeze ptr %i.ky                     ; 5 uses
  %i.kz = load ptr, ptr %i.kn, align 8, !tbaa !88
  %i.la = call fastcc ptr @b3GetHullEdges(ptr noundef %i.kz)
  %.fr = freeze ptr %i.la                         ; 7 uses
  %i.lb = load ptr, ptr %i.kn, align 8, !tbaa !88
  %i.lc = call fastcc ptr @b3GetHullPlanes(ptr noundef %i.lb) ; 3 uses
  %i.ld = icmp ne ptr %i.bt, null, !nosanitize !9
  %i.le = ptrtoint ptr %i.bt to i64, !nosanitize !9 ; 2 uses
  %i.lf = and i64 %i.le, 3, !nosanitize !9
  %i.lg = icmp eq i64 %i.lf, 0, !nosanitize !9
  %i.lh = and i1 %i.ld, %i.lg, !nosanitize !9
  br i1 %i.lh, label %bb.ah, label %bb.ag, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @196, i64 %i.le) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %.sroa.0276.0.copyload = load <2 x float>, ptr %i.bt, align 4
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.4277.0.copyload = load float, ptr %.sroa.4277.0..sroa_idx, align 4, !tbaa !76
  %i.li = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.sroa.0274.0.copyload = load <2 x float>, ptr %i.li, align 4 ; 4 uses
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %.sroa.4275.0.copyload = load float, ptr %.sroa.4275.0..sroa_idx, align 4, !tbaa !76 ; 2 uses
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 76
  %.sroa.4273.0.copyload = load float, ptr %.sroa.4273.0..sroa_idx, align 4, !tbaa !76
  %i.lj = icmp sgt i32 %i.kv, 0
  br i1 %i.lj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ah
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bq, i64 68
  %.sroa.0272.0.copyload = load <2 x float>, ptr %i.lk, align 4
  %i.ll = ptrtoint ptr %.fr1516 to i64, !nosanitize !9 ; 3 uses
  %.not1517 = icmp eq ptr %.fr1516, null, !nosanitize !9
  %i.lm = ptrtoint ptr %.fr to i64                ; 18 uses
  %i.ln = ptrtoint ptr %.fr1559 to i64            ; 10 uses
  %.not1560 = icmp eq ptr %.fr1559, null
  %i.lo = ptrtoint ptr %i.lc to i64               ; 3 uses
  %i.lp = icmp ne ptr %i.lc, null                 ; 2 uses
  %.sroa.09.0.vec.extract.i874 = extractelement <2 x float> %.sroa.0274.0.copyload, i64 0
  %i.lq = fmul float %i.cc, 5.000000e-01
  br i1 %.not1517, label %.split1495.us, label %.lr.ph.split, !prof !86

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not1557 = icmp eq ptr %.fr, null
  br i1 %.not1557, label %.lr.ph.split.a, label %.lr.ph.split.split, !prof !86

.lr.ph.split.a:                                   ; preds = %.lr.ph.split
  %8 = load i8, ptr %.fr1516, align 1, !tbaa !377 ; 2 uses
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 2
  %.not1518 = icmp eq i8 %8, 0
  br i1 %.not1518, label %.split1513.us, label %.split1509.us, !prof !10, !nosanitize !9

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not1560, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.preheader, !prof !86

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split.split
  %wide.trip.count = zext nneg i32 %i.kv to i64
  %i.lr = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.ls = shufflevector <2 x float> %i.kd, <2 x float> %i.ka, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lt = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lu = insertelement <2 x float> %i.lt, float %i.kj, i64 0 ; 2 uses
  %i.lv = extractelement <2 x float> %i.kk, i64 0
  %i.lw = extractelement <2 x float> %i.kl, i64 1
  %i.lx = shufflevector <2 x float> %i.lr, <2 x float> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.ly = insertelement <2 x float> %i.km, float %i.kj, i64 0
  %i.lz = shufflevector <2 x float> %i.kd, <2 x float> %i.ka, <2 x i32> <i32 0, i32 2>
  %i.ma = shufflevector <2 x float> %i.kb, <2 x float> %i.ka, <2 x i32> <i32 0, i32 3>
  %i.mb = shufflevector <2 x float> %i.ka, <2 x float> %i.kb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mc = shufflevector <2 x float> %i.kb, <2 x float> %i.ka, <2 x i32> <i32 0, i32 3>
  %shift2172 = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %shift2183 = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.md = insertelement <2 x float> poison, float %4, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = insertelement <2 x float> poison, float %3, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x float> %.sroa.0274.0.copyload, float %.sroa.4275.0.copyload, i64 0
  %i.mi = shufflevector <2 x float> %.sroa.0274.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mj = insertelement <2 x float> %i.mi, float %.sroa.4275.0.copyload, i64 0
  %i.mk = shufflevector <2 x float> %i.kd, <2 x float> %i.kb, <2 x i32> <i32 0, i32 2>
  %i.ml = shufflevector <2 x float> %i.kd, <2 x float> %i.kb, <2 x i32> <i32 3, i32 1>
  %shift2196 = shufflevector <2 x float> %.sroa.0274.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph.split.split.a

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %11 = load i8, ptr %.fr1516, align 1, !tbaa !377
  %12 = zext i8 %11 to i64                        ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %12 ; 2 uses
  %14 = shl nuw nsw i64 %12, 2
  %15 = add i64 %14, %i.lm, !nosanitize !9        ; 2 uses
  %.not1562 = icmp ult i64 %15, %i.lm, !nosanitize !9
  br i1 %.not1562, label %.split1509.us, label %16, !prof !86, !nosanitize !9

16:                                               ; preds = %.lr.ph.split.split.split.us
  %17 = load i8, ptr %13, align 1, !tbaa !379
  %18 = zext i8 %17 to i64                        ; 2 uses
  %19 = shl nuw nsw i64 %18, 2
  %20 = add i64 %19, %i.lm, !nosanitize !9        ; 2 uses
  %.not1079.us = icmp ult i64 %20, %i.lm, !nosanitize !9
  br i1 %.not1079.us, label %bb.ak, label %21, !prof !86, !nosanitize !9

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %18
  %23 = load i8, ptr %22, align 1, !tbaa !379
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = add i64 %25, %i.lm, !nosanitize !9        ; 2 uses
  %.not1080.us = icmp ult i64 %26, %i.lm, !nosanitize !9
  br i1 %.not1080.us, label %bb.am, label %.lr.ph.split.split.us, !prof !86, !nosanitize !9

.lr.ph.split.split.us:                            ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.mm = load i8, ptr %27, align 1, !tbaa !380   ; 2 uses
  %i.mn = zext i8 %i.mm to i64
  %28 = mul nuw nsw i64 %i.mn, 12                 ; 2 uses
  %i.mo = icmp eq i8 %i.mm, 0
  %29 = icmp uge i64 %28, %i.ln, !nosanitize !9
  %30 = and i1 %29, %i.mo, !nosanitize !9
  br i1 %30, label %bb.aq, label %bb.ao, !prof !10, !nosanitize !9

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split.split.preheader, %bb.bk
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.bk ] ; 5 uses
  %.sroa.0561.01488 = phi <2 x float> [ zeroinitializer, %.lr.ph.split.split.preheader ], [ %.sroa.0561.2, %bb.bk ]
  %.sroa.0558.01486 = phi <2 x float> [ zeroinitializer, %.lr.ph.split.split.preheader ], [ %.sroa.0558.2, %bb.bk ]
  %i.mp = phi <2 x float> [ zeroinitializer, %.lr.ph.split.split.preheader ], [ %i.vp, %bb.bk ]
  %i.mq = add i64 %indvars.iv, %i.ll, !nosanitize !9 ; 2 uses
  %.not1816 = icmp ult i64 %i.mq, %i.ll, !nosanitize !9
  br i1 %.not1816, label %.split.us, label %bb.ai, !prof !86, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.split.a
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.ll, i64 %i.mq) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1495.us:                                    ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @199, i64 0) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %.lr.ph.split.split.a
  %i.mr = getelementptr inbounds nuw i8, ptr %.fr1516, i64 %indvars.iv
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !377 ; 2 uses
  %i.mt = zext i8 %i.ms to i64                    ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %i.mt ; 2 uses
  %i.mv = shl nuw nsw i64 %i.mt, 2
  %i.mw = add i64 %i.mv, %i.lm, !nosanitize !9    ; 2 uses
  %.not1521 = icmp ult i64 %i.mw, %i.lm, !nosanitize !9
  br i1 %.not1521, label %.split1509.us, label %bb.aj, !prof !86, !nosanitize !9

.split1509.us:                                    ; preds = %bb.ai, %.lr.ph.split.split.split.us, %.lr.ph.split.a
  %.us-phi1511 = phi i64 [ %10, %.lr.ph.split.a ], [ %15, %.lr.ph.split.split.split.us ], [ %i.mw, %bb.ai ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.lm, i64 %.us-phi1511) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1513.us:                                    ; preds = %.lr.ph.split.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 0) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.mx = load i8, ptr %i.mu, align 1, !tbaa !379
  %i.my = zext i8 %i.mx to i64                    ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %i.my ; 2 uses
  %i.na = shl nuw nsw i64 %i.my, 2
  %i.nb = add i64 %i.na, %i.lm, !nosanitize !9    ; 2 uses
  %.not1079 = icmp ult i64 %i.nb, %i.lm, !nosanitize !9
  br i1 %.not1079, label %bb.ak, label %bb.al, !prof !86, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj, %16
  %.us-phi1535 = phi i64 [ %20, %16 ], [ %i.nb, %bb.aj ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @203, i64 %i.lm, i64 %.us-phi1535) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %i.nc = load i8, ptr %i.mz, align 1, !tbaa !379
  %i.nd = zext i8 %i.nc to i64                    ; 2 uses
  %i.ne = shl nuw nsw i64 %i.nd, 2
  %i.nf = add i64 %i.ne, %i.lm, !nosanitize !9    ; 2 uses
  %.not1080 = icmp ult i64 %i.nf, %i.lm, !nosanitize !9
  br i1 %.not1080, label %bb.am, label %bb.an, !prof !86, !nosanitize !9

bb.am:                                            ; preds = %bb.al, %21
  %.us-phi1542 = phi i64 [ %26, %21 ], [ %i.nf, %bb.al ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @204, i64 %i.lm, i64 %.us-phi1542) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !380
  %i.ni = zext i8 %i.nh to i64                    ; 2 uses
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %.fr1559, i64 %i.ni ; 3 uses
  %i.nk = mul nuw nsw i64 %i.ni, 12
  %i.nl = add i64 %i.nk, %i.ln, !nosanitize !9    ; 2 uses
  %.not1566 = icmp ult i64 %i.nl, %i.ln, !nosanitize !9
  br i1 %.not1566, label %bb.ao, label %bb.ap, !prof !86, !nosanitize !9

bb.ao:                                            ; preds = %bb.an, %.lr.ph.split.split.us
  %.us-phi1550 = phi i64 [ %28, %.lr.ph.split.split.us ], [ %i.nl, %bb.an ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @205, i64 %i.ln, i64 %.us-phi1550) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %i.nm = ptrtoint ptr %i.nj to i64, !nosanitize !9 ; 2 uses
  %i.nn = and i64 %i.nm, 3, !nosanitize !9
  %i.no = icmp eq i64 %i.nn, 0, !nosanitize !9
  br i1 %i.no, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.split.split.us
  %.us-phi1553 = phi i64 [ 0, %.lr.ph.split.split.us ], [ %i.nm, %bb.ap ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @206, i64 %.us-phi1553) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %.sroa.0256.0.copyload = load <2 x float>, ptr %i.nj, align 4 ; 5 uses
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %.sroa.5258.0.copyload = load float, ptr %.sroa.5258.0..sroa_idx, align 4, !tbaa !76 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !380
  %i.nr = zext i8 %i.nq to i64                    ; 2 uses
  %i.ns = getelementptr inbounds nuw [12 x i8], ptr %.fr1559, i64 %i.nr ; 3 uses
  %i.nt = mul nuw nsw i64 %i.nr, 12
  %i.nu = add i64 %i.nt, %i.ln, !nosanitize !9    ; 2 uses
  %.not1081 = icmp ult i64 %i.nu, %i.ln, !nosanitize !9
  br i1 %.not1081, label %bb.as, label %bb.at, !prof !86, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @207, i64 %i.ln, i64 %i.nu) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %bb.ar
  %i.nv = ptrtoint ptr %i.ns to i64, !nosanitize !9 ; 2 uses
  %i.nw = and i64 %i.nv, 3, !nosanitize !9
  %i.nx = icmp eq i64 %i.nw, 0, !nosanitize !9
  br i1 %i.nx, label %bb.av, label %bb.au, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @208, i64 %i.nv) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.at
  %.sroa.0253.0.copyload = load <2 x float>, ptr %i.ns, align 4 ; 5 uses
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %.sroa.6255.0.copyload = load float, ptr %.sroa.6255.0..sroa_idx, align 4, !tbaa !76 ; 3 uses
  %i.ny = insertelement <2 x float> poison, float %.sroa.5258.0.copyload, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oa = fmul <2 x float> %i.km, %i.nz
  %i.ob = shufflevector <2 x float> %.sroa.0256.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x float> %i.mb, %i.ob
  %i.od = shufflevector <2 x float> %.sroa.0256.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oe = fmul <2 x float> %i.ls, %i.od
  %i.of = fmul <2 x float> %i.kd, %.sroa.0256.0.copyload
  %i.og = shufflevector <2 x float> %.sroa.0256.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oh = fmul <2 x float> %i.mc, %i.og
  %i.oi = fadd <2 x float> %i.oc, %i.oe
  %i.oj = fadd <2 x float> %i.oh, %i.of
  %i.ok = fmul <2 x float> %i.lu, %i.nz
  %i.ol = fadd <2 x float> %i.ok, %i.oj           ; 2 uses
  %i.om = fadd <2 x float> %i.oa, %i.oi           ; 2 uses
  %foldExtExtBinop2173 = fmul <2 x float> %shift2172, %.sroa.0253.0.copyload
  %foldExtExtBinop2175 = fmul <2 x float> %i.kd, %.sroa.0253.0.copyload
  %shift2177 = shufflevector <2 x float> %foldExtExtBinop2175, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2178 = fadd <2 x float> %foldExtExtBinop2173, %shift2177
  %i.on = extractelement <2 x float> %foldExtExtBinop2178, i64 0
  %i.oo = fmul <2 x float> %i.lz, %.sroa.0253.0.copyload
  %i.op = shufflevector <2 x float> %.sroa.0253.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oq = fmul <2 x float> %i.kb, %i.op
  %i.or = fadd <2 x float> %i.oo, %i.oq
  %i.os = insertelement <2 x float> poison, float %.sroa.6255.0.copyload, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.ly, %i.ot
  %i.ov = fadd <2 x float> %i.ou, %i.or
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ox = fmul float %i.lv, %.sroa.6255.0.copyload
  %i.oy = fadd float %i.ox, %i.on
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %indvars.iv ; 3 uses
  %i.pa = shl nuw nsw i64 %indvars.iv, 4
  %i.pb = add i64 %i.pa, %i.lo, !nosanitize !9    ; 3 uses
  %i.pc = icmp eq i64 %i.pb, 0
  %i.pd = xor i1 %i.lp, %i.pc
  %i.pe = icmp uge i64 %i.pb, %i.lo, !nosanitize !9
  %i.pf = and i1 %i.pd, %i.pe, !nosanitize !9
  br i1 %i.pf, label %bb.ax, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.lo, i64 %i.pb) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  %i.pg = ptrtoint ptr %i.oz to i64, !nosanitize !9 ; 2 uses
  %i.ph = and i64 %i.pg, 3, !nosanitize !9
  %i.pi = icmp eq i64 %i.ph, 0, !nosanitize !9
  %i.pj = and i1 %i.lp, %i.pi
  br i1 %i.pj, label %bb.az, label %bb.ay, !prof !10, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @211, i64 %i.pg) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %bb.ax
  %.sroa.0231.0.copyload = load <2 x float>, ptr %i.oz, align 4 ; 4 uses
  %.sroa.2232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %.sroa.2232.0.copyload = load float, ptr %.sroa.2232.0..sroa_idx, align 4 ; 2 uses
  %i.pk = fmul <2 x float> %i.kd, %.sroa.0231.0.copyload
  %shift2180 = shufflevector <2 x float> %.sroa.0231.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2181 = fmul <2 x float> %i.ka, %shift2180
  %i.pl = shufflevector <2 x float> %.sroa.0231.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pm = fmul <2 x float> %i.ma, %i.pl
  %foldExtExtBinop2184 = fmul <2 x float> %shift2183, %.sroa.0231.0.copyload
  %foldExtExtBinop2186 = fadd <2 x float> %foldExtExtBinop2184, %foldExtExtBinop2181
  %i.pn = extractelement <2 x float> %foldExtExtBinop2186, i64 0
  %i.po = fmul float %i.lw, %.sroa.2232.0.copyload
  %i.pp = fadd float %i.po, %i.pn                 ; 3 uses
  %i.pq = fadd <2 x float> %i.pk, %i.pm
  %i.pr = insertelement <2 x float> poison, float %.sroa.2232.0.copyload, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pt = fmul <2 x float> %i.lx, %i.ps
  %i.pu = fadd <2 x float> %i.pt, %i.pq           ; 4 uses
  %i.pv = extractelement <2 x float> %i.pu, i64 0
  %i.pw = extractelement <2 x float> %i.pu, i64 1 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bj, %bb.az
  %.sroa.0242.0 = phi <2 x float> [ %i.ow, %bb.az ], [ %i.qx, %bb.bj ]
  %.sroa.5243.0 = phi float [ %i.oy, %bb.az ], [ %i.vu, %bb.bj ] ; 2 uses
  %.sroa.0253.0 = phi <2 x float> [ %.sroa.0253.0.copyload, %bb.az ], [ %.sroa.0222.0.copyload, %bb.bj ]
  %.sroa.6255.0 = phi float [ %.sroa.6255.0.copyload, %bb.az ], [ %.sroa.6.0.copyload, %bb.bj ]
  %.pn = phi i64 [ %i.nd, %bb.az ], [ %i.vr, %bb.bj ]
  %.sroa.0558.1 = phi <2 x float> [ %.sroa.0558.01486, %bb.az ], [ %.sroa.0558.2, %bb.bj ] ; 2 uses
  %.sroa.0561.1 = phi <2 x float> [ %.sroa.0561.01488, %bb.az ], [ %.sroa.0561.2, %bb.bj ] ; 2 uses
  %i.px = phi <2 x float> [ %i.mp, %bb.az ], [ %i.vp, %bb.bj ] ; 2 uses
  %.0639 = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %.pn ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.0639, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !380
  %i.qa = zext i8 %i.pz to i64                    ; 2 uses
  %i.qb = getelementptr inbounds nuw [12 x i8], ptr %.fr1559, i64 %i.qa ; 3 uses
  %i.qc = mul nuw nsw i64 %i.qa, 12
  %i.qd = add i64 %i.qc, %i.ln, !nosanitize !9    ; 2 uses
  %.not1082 = icmp ult i64 %i.qd, %i.ln, !nosanitize !9
  br i1 %.not1082, label %bb.bb, label %bb.bc, !prof !86, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @212, i64 %i.ln, i64 %i.qd) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.bc:                                            ; preds = %bb.ba
  %i.qe = ptrtoint ptr %i.qb to i64, !nosanitize !9 ; 2 uses
  %i.qf = and i64 %i.qe, 3, !nosanitize !9
  %i.qg = icmp eq i64 %i.qf, 0, !nosanitize !9
  br i1 %i.qg, label %bb.be, label %bb.bd, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @213, i64 %i.qe) #13, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %.sroa.0222.0.copyload = load <2 x float>, ptr %i.qb, align 4 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !76 ; 3 uses
  %i.qh = shufflevector <2 x float> %.sroa.0222.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fmul <2 x float> %i.mb, %i.qh           ; 2 uses
  %i.qj = shufflevector <2 x float> %.sroa.0222.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qk = fmul <2 x float> %i.ls, %i.qj           ; 2 uses
  %i.ql = fadd <2 x float> %i.qi, %i.qk
  %foldExtExtBinop2188 = fmul <2 x float> %i.kd, %.sroa.0222.0.copyload
  %shift2190 = shufflevector <2 x float> %.sroa.0222.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2191 = fmul <2 x float> %i.kb, %shift2190
  %i.qm = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qn = shufflevector <2 x float> %foldExtExtBinop2191, <2 x float> %i.qm, <2 x i32> <i32 0, i32 3>
  %i.qo = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qp = shufflevector <2 x float> %foldExtExtBinop2188, <2 x float> %i.qo, <2 x i32> <i32 0, i32 3>
  %i.qq = fadd <2 x float> %i.qn, %i.qp
  %i.qr = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qt = fmul <2 x float> %i.km, %i.qs
  %i.qu = fmul <2 x float> %i.lu, %i.qs
  %i.qv = fadd <2 x float> %i.qt, %i.ql           ; 3 uses
  %i.qw = fadd <2 x float> %i.qu, %i.qq           ; 2 uses
  %i.qx = shufflevector <2 x float> %i.qv, <2 x float> %i.qw, <2 x i32> <i32 1, i32 2>
  %i.qy = fadd float %.sroa.6255.0, %.sroa.6.0.copyload
  %i.qz = fadd float %.sroa.5258.0.copyload, %i.qy
  %i.ra = fmul float %i.qz, 3.333330e-01
  %i.rb = fsub float %i.ra, %.sroa.4273.0.copyload ; 2 uses
  %i.rc = fmul float %i.kj, %i.rb
  %i.rd = fadd <2 x float> %.sroa.0253.0, %.sroa.0222.0.copyload
  %i.re = fadd <2 x float> %.sroa.0256.0.copyload, %i.rd
  %i.rf = fmul <2 x float> %i.re, splat (float 3.333330e-01)
  %i.rg = fsub <2 x float> %i.rf, %.sroa.0272.0.copyload ; 3 uses
  %i.rh = fmul <2 x float> %i.ml, %i.rg
  %i.ri = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rj = fmul <2 x float> %i.ka, %i.ri
  %i.rk = fadd <2 x float> %i.rh, %i.rj
  %i.rl = fmul <2 x float> %i.mk, %i.rg           ; 2 uses
  %shift2193 = shufflevector <2 x float> %i.rl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2194 = fadd <2 x float> %i.rl, %shift2193
  %i.rm = extractelement <2 x float> %foldExtExtBinop2194, i64 0
  %i.rn = fadd float %i.rc, %i.rm                 ; 4 uses
  %i.ro = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.rp = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rq = fmul <2 x float> %i.lt, %i.rp
  %i.rr = fadd <2 x float> %i.rq, %i.rk           ; 6 uses
  %i.rs = extractelement <2 x float> %i.rr, i64 0
  %i.rt = fmul float %.sroa.09.0.vec.extract.i874, %i.rn
  %foldExtExtBinop2197 = fmul <2 x float> %shift2196, %i.rr
  %i.ru = extractelement <2 x float> %foldExtExtBinop2197, i64 0
  %i.rv = fsub float %i.rt, %i.ru
  %i.rw = fadd float %.sroa.4277.0.copyload, %i.rv
  %i.rx = fmul <2 x float> %i.mh, %i.rr
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rz = insertelement <2 x float> %i.rr, float %i.rn, i64 0
  %i.sa = fmul <2 x float> %i.mj, %i.rz
  %i.sb = fsub <2 x float> %i.ry, %i.sa
  %i.sc = fadd <2 x float> %.sroa.0276.0.copyload, %i.sb
  %i.sd = fmul <2 x float> %i.mg, %i.sc
  %i.se = fsub <2 x float> %1, %i.sd              ; 3 uses
  %i.sf = fmul float %3, %i.rw
  %i.sg = fsub float %2, %i.sf                    ; 3 uses
  %i.sh = fmul <2 x float> %i.se, %i.se           ; 2 uses
  %shift2199 = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2200 = fadd <2 x float> %i.sh, %shift2199
  %i.si = extractelement <2 x float> %foldExtExtBinop2200, i64 0
  %i.sj = fmul float %i.sg, %i.sg
  %i.sk = fadd float %i.sj, %i.si                 ; 2 uses
  %i.sl = fcmp ogt float %i.sk, f0x057A0000
  br i1 %i.sl, label %bb.bf, label %b3GetLengthAndNormalize.exit

bb.bf:                                            ; preds = %bb.be
  %sqrt.i898 = call float @llvm.sqrt.f32(float %i.sk) ; 2 uses
  %i.sm = fdiv float 1.000000e+00, %sqrt.i898     ; 2 uses
  %i.sn = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sp = fmul <2 x float> %i.se, %i.so
  %i.sq = fmul float %i.sg, %i.sm
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.be, %bb.bf
  %.0 = phi float [ %sqrt.i898, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 2 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.sp, %bb.bf ], [ zeroinitializer, %bb.be ] ; 6 uses
  %.sroa.5.0.i895 = phi float [ %i.sq, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 6 uses
  %.sroa.0.0.vec.extract.i900 = extractelement <2 x float> %.sroa.010.0.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i902 = extractelement <2 x float> %.sroa.010.0.i, i64 1 ; 4 uses
  %i.sr = fmul float %i.pp, %.sroa.0.0.vec.extract.i900
  %i.ss = fmul float %i.pv, %.sroa.0.4.vec.extract.i902
  %i.st = fadd float %i.sr, %i.ss
  %i.su = fmul float %i.pw, %.sroa.5.0.i895
  %i.sv = fadd float %i.su, %i.st
  %i.sw = fcmp olt float %i.sv, f0xB4000000
  br i1 %i.sw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %b3GetLengthAndNormalize.exit
  %i.sx = fsub <2 x float> %i.qv, %i.om           ; 2 uses
  %i.sy = fsub <2 x float> %i.qw, %i.ol           ; 2 uses
  %i.sz = shufflevector <2 x float> %.sroa.0242.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ta = insertelement <2 x float> %i.sz, float %.sroa.5243.0, i64 1
  %i.tb = fsub <2 x float> %i.ta, %i.ol           ; 2 uses
  %i.tc = insertelement <2 x float> %i.sz, float %.sroa.5243.0, i64 0
  %i.td = fsub <2 x float> %i.tc, %i.om           ; 2 uses
  %i.te = fmul <2 x float> %i.tb, %i.sx
  %i.tf = fmul <2 x float> %i.td, %i.sy
  %i.tg = fsub <2 x float> %i.te, %i.tf
  %shift2202 = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2203 = fmul <2 x float> %shift2202, %i.sy
  %shift2205 = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2206 = fmul <2 x float> %i.tb, %shift2205
  %foldExtExtBinop2208 = fsub <2 x float> %foldExtExtBinop2203, %foldExtExtBinop2206
  %i.th = extractelement <2 x float> %foldExtExtBinop2208, i64 0
  %i.ti = fmul <2 x float> %i.tg, %.sroa.010.0.i  ; 2 uses
  %shift2210 = shufflevector <2 x float> %i.ti, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2211 = fadd <2 x float> %i.ti, %shift2210
  %i.tj = extractelement <2 x float> %foldExtExtBinop2211, i64 0
  %i.tk = fmul float %i.th, %.sroa.5.0.i895
  %i.tl = fadd float %i.tk, %i.tj
  %i.tm = fmul float %i.tl, -5.000000e-01
  %i.tn = shufflevector <2 x float> %.sroa.010.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.to = insertelement <2 x float> %i.tn, float %.sroa.5.0.i895, i64 0 ; 2 uses
  %i.tp = fmul <2 x float> %i.pu, %i.to
  %i.tq = fmul float %i.pp, %.sroa.5.0.i895
  %i.tr = fmul float %i.pp, %.sroa.0.4.vec.extract.i902
  %foldExtExtBinop2213 = fmul <2 x float> %i.pu, %.sroa.010.0.i
  %i.ts = extractelement <2 x float> %foldExtExtBinop2213, i64 0
  %i.tt = fcmp olt float %.0, %5
  %i.tu = select i1 %i.tt, float %.0, float %5    ; 2 uses
  %i.tv = fmul float %i.lq, %i.tm
  %i.tw = fmul float %i.tv, %i.tu
  %i.tx = fmul float %i.pw, %.sroa.0.4.vec.extract.i902
  %i.ty = fmul float %i.tu, %i.tw                 ; 2 uses
  %i.tz = fsub float %i.tr, %i.ts                 ; 2 uses
  %i.ua = fmul float %.sroa.0.0.vec.extract.i900, %i.tz
  %i.ub = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.uc = insertelement <2 x float> %i.ub, float %i.tq, i64 1
  %i.ud = fsub <2 x float> %i.tp, %i.uc           ; 3 uses
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.uf = insertelement <2 x float> %i.ue, float %i.tz, i64 1
  %i.ug = fmul <2 x float> %.sroa.010.0.i, %i.uf
  %i.uh = extractelement <2 x float> %i.ud, i64 0
  %i.ui = fmul float %.sroa.5.0.i895, %i.uh
  %i.uj = fsub float %i.ua, %i.ui
  %i.uk = insertelement <2 x float> %i.tn, float %.sroa.5.0.i895, i64 1
  %i.ul = fmul <2 x float> %i.uk, %i.ud
  %i.um = fsub <2 x float> %i.ul, %i.ug
  %i.un = fmul float %4, %i.uj
  %i.uo = fadd float %.sroa.0.4.vec.extract.i902, %i.un
  %i.up = fmul <2 x float> %i.me, %i.um
  %i.uq = fmul float %i.uo, %i.ty                 ; 3 uses
  %i.ur = fmul float %i.rs, %i.uq
  %i.us = fadd <2 x float> %i.to, %i.up
  %i.ut = insertelement <2 x float> poison, float %i.ty, i64 0
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uv = fmul <2 x float> %i.us, %i.uu           ; 5 uses
  %i.uw = extractelement <2 x float> %i.uv, i64 1
  %i.ux = fmul float %i.rn, %i.uw
  %i.uy = fsub float %i.ur, %i.ux
  %i.uz = extractelement <2 x float> %i.uv, i64 0
  %i.va = fmul float %i.rn, %i.uz
  %i.vb = extractelement <2 x float> %i.rr, i64 1
  %i.vc = fmul float %i.vb, %i.uq
  %i.vd = fmul <2 x float> %i.rr, %i.uv           ; 2 uses
  %i.ve = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vf = insertelement <2 x float> %i.ve, float %i.uq, i64 1
  %i.vg = fadd <2 x float> %.sroa.0561.1, %i.vf
  %i.vh = insertelement <2 x float> %i.vd, float %i.va, i64 0
  %i.vi = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vj = insertelement <2 x float> %i.vi, float %i.vc, i64 0
  %i.vk = fsub <2 x float> %i.vh, %i.vj
  %i.vl = fadd <2 x float> %.sroa.0558.1, %i.vk
  %i.vm = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> %i.uv, <2 x i32> <i32 0, i32 2>
  %i.vo = fadd <2 x float> %i.px, %i.vn
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %b3GetLengthAndNormalize.exit
  %.sroa.0558.2 = phi <2 x float> [ %i.vl, %bb.bg ], [ %.sroa.0558.1, %b3GetLengthAndNormalize.exit ] ; 3 uses
  %.sroa.0561.2 = phi <2 x float> [ %i.vg, %bb.bg ], [ %.sroa.0561.1, %b3GetLengthAndNormalize.exit ] ; 3 uses
  %i.vp = phi <2 x float> [ %i.vo, %bb.bg ], [ %i.px, %b3GetLengthAndNormalize.exit ] ; 3 uses
  %i.vq = load i8, ptr %.0639, align 1, !tbaa !379 ; 2 uses
  %i.vr = zext i8 %i.vq to i64                    ; 2 uses
end_hunk_0
