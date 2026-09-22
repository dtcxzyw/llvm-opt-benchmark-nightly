Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 186
begin_hunk_0_@LoadGLTF:bb.a
  %i.gw = load ptr, ptr %i.ca, align 8
  %i.gx = getelementptr inbounds nuw [1352 x i8], ptr %i.gw, i64 %i.cn
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 176
  %i.gz = load float, ptr %i.gy, align 8
  %i.ha = load ptr, ptr %i.bk, align 8
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.ha, i64 %i.cp
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 52
  store float %i.gz, ptr %i.he, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  %.pre2403 = load ptr, ptr %i.ca, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.hf = phi ptr [ %.pre2403, %bb.w ], [ %i.fd, %bb.s ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [1352 x i8], ptr %i.hf, i64 %i.cn
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1136
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  %.not1358 = icmp eq ptr %i.hi, null
  br i1 %.not1358, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call fastcc void @LoadImageFromCgltfImage(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef %i.hk, ptr noundef %i.cx)
  %i.hl = load ptr, ptr %10, align 8
  %.not1359 = icmp eq ptr %i.hl, null
  br i1 %.not1359, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hm = load ptr, ptr %i.bk, align 8
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.hm, i64 %i.cp
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #54
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %11, ptr noundef nonnull byval(%struct.Image) align 8 %10) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hq, ptr noundef nonnull align 4 dereferenceable(20) %11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #54
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %10) #54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #54
  %.pre2404 = load ptr, ptr %i.ca, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.hr = phi ptr [ %.pre2404, %bb.aa ], [ %i.hf, %bb.x ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [1352 x i8], ptr %i.hr, i64 %i.cn
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1184
  %i.hu = load ptr, ptr %i.ht, align 8            ; 2 uses
  %.not1360 = icmp eq ptr %i.hu, null
  br i1 %.not1360, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #54
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call fastcc void @LoadImageFromCgltfImage(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef %i.hw, ptr noundef %i.cx)
  %i.hx = load ptr, ptr %12, align 8
  %.not1361 = icmp eq ptr %i.hx, null
  br i1 %.not1361, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hy = load ptr, ptr %i.bk, align 8
  %i.hz = getelementptr inbounds nuw [40 x i8], ptr %i.hy, i64 %i.cp
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #54
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %13, ptr noundef nonnull byval(%struct.Image) align 8 %12) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ic, ptr noundef nonnull align 4 dereferenceable(20) %13, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #54
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %12) #54
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #54
  %.pre2405 = load ptr, ptr %i.ca, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.id = phi ptr [ %.pre2405, %bb.ae ], [ %i.hr, %bb.ab ]
  %i.ie = getelementptr inbounds nuw [1352 x i8], ptr %i.id, i64 %i.cn
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1232
  %i.ig = load ptr, ptr %i.if, align 8            ; 2 uses
  %.not1362 = icmp eq ptr %i.ig, null
  br i1 %.not1362, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #54
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call fastcc void @LoadImageFromCgltfImage(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %i.ii, ptr noundef %i.cx)
  %i.ij = load ptr, ptr %14, align 8
  %.not1363 = icmp eq ptr %i.ij, null
  br i1 %.not1363, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ik = load ptr, ptr %i.bk, align 8
  %i.il = getelementptr inbounds nuw [40 x i8], ptr %i.ik, i64 %i.cp
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 140
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #54
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %15, ptr noundef nonnull byval(%struct.Image) align 8 %14) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.io, ptr noundef nonnull align 4 dereferenceable(20) %15, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #54
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %14) #54
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ip = load ptr, ptr %i.ca, align 8
  %i.iq = getelementptr inbounds nuw [1352 x i8], ptr %i.ip, i64 %i.cn
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1280
  %i.is = load float, ptr %i.ir, align 8
  %i.it = fmul float %i.is, 2.550000e+02
  %i.iu = fptoui float %i.it to i8
  %i.iv = load ptr, ptr %i.bk, align 8
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.iv, i64 %i.cp
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 160
  store i8 %i.iu, ptr %i.iz, align 4
  %i.ja = load ptr, ptr %i.ca, align 8
  %i.jb = getelementptr inbounds nuw [1352 x i8], ptr %i.ja, i64 %i.cn
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1284
  %i.jd = load float, ptr %i.jc, align 4
  %i.je = fmul float %i.jd, 2.550000e+02
  %i.jf = fptoui float %i.je to i8
  %i.jg = load ptr, ptr %i.bk, align 8
  %i.jh = getelementptr inbounds nuw [40 x i8], ptr %i.jg, i64 %i.cp
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 161
  store i8 %i.jf, ptr %i.jk, align 1
  %i.jl = load ptr, ptr %i.ca, align 8
  %i.jm = getelementptr inbounds nuw [1352 x i8], ptr %i.jl, i64 %i.cn
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1288
  %i.jo = load float, ptr %i.jn, align 8
  %i.jp = fmul float %i.jo, 2.550000e+02
  %i.jq = fptoui float %i.jp to i8
  %i.jr = load ptr, ptr %i.bk, align 8
  %i.js = getelementptr inbounds nuw [40 x i8], ptr %i.jr, i64 %i.cp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 162
  store i8 %i.jq, ptr %i.jv, align 2
  %i.jw = load ptr, ptr %i.bk, align 8
  %i.jx = getelementptr inbounds nuw [40 x i8], ptr %i.jw, i64 %i.cp
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 163
  store i8 -1, ptr %i.ka, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #54
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.n
  %i.kb = add i32 %.012501931, 1                  ; 2 uses
  %i.kc = add i32 %.012511930, 1
  %i.kd = zext i32 %i.kb to i64                   ; 2 uses
  %i.ke = load i64, ptr %i.q, align 8
  %i.kf = icmp ugt i64 %i.ke, %i.kd
  br i1 %i.kf, label %bb.n, label %.preheader1907

._crit_edge2069:                                  ; preds = %bb.dd, %.preheader1907
  %i.kg = phi ptr [ %i.m, %.preheader1907 ], [ %i.cek, %bb.dd ] ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 280 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 232 ; 3 uses
  %i.kj = load i64, ptr %i.ki, align 8
  %.not1338 = icmp eq i64 %i.kj, 0
  br i1 %.not1338, label %bb.dl, label %bb.de

bb.ak:                                            ; preds = %.lr.ph2068, %bb.dd
  %i.kk = phi ptr [ %i.m, %.lr.ph2068 ], [ %i.cek, %bb.dd ] ; 2 uses
  %i.kl = phi i64 [ 0, %.lr.ph2068 ], [ %i.cem, %bb.dd ]
  %.012542067 = phi i32 [ 0, %.lr.ph2068 ], [ %.31257, %bb.dd ] ; 3 uses
  %.012582066 = phi i32 [ 0, %.lr.ph2068 ], [ %i.cel, %bb.dd ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 272
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = getelementptr inbounds nuw [264 x i8], ptr %i.kn, i64 %i.kl ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8            ; 3 uses
  %.not1343 = icmp eq ptr %i.kq, null
  br i1 %.not1343, label %bb.dd, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  call void @cgltf_node_transform_world(ptr noundef nonnull %i.ko, ptr noundef nonnull %i.c)
  %i.kr = load <2 x float>, ptr %i.c, align 16    ; 9 uses
  %i.ks = load <2 x float>, ptr %i.cc, align 16   ; 8 uses
  %i.kt = load <2 x float>, ptr %i.cd, align 16   ; 9 uses
  %i.ku = load <2 x float>, ptr %i.ce, align 16   ; 8 uses
  %i.kv = load float, ptr %i.ch, align 8          ; 5 uses
  %i.kw = load float, ptr %i.ci, align 8          ; 6 uses
  %i.kx = load <2 x float>, ptr %i.cf, align 8    ; 8 uses
  %i.ky = load float, ptr %i.cj, align 4          ; 3 uses
  %i.kz = load <2 x float>, ptr %i.cg, align 8    ; 7 uses
  %i.la = load float, ptr %i.ck, align 4          ; 4 uses
  %i.lb = load float, ptr %i.cl, align 4          ; 4 uses
  %i.lc = load float, ptr %i.cm, align 4          ; 6 uses
  %i.ld = fneg <2 x float> %i.ks                  ; 4 uses
  %i.le = extractelement <2 x float> %i.kr, i64 1 ; 3 uses
  %i.lf = extractelement <2 x float> %i.ld, i64 0 ; 2 uses
  %i.lg = fmul float %i.le, %i.lf
  %i.lh = extractelement <2 x float> %i.kr, i64 0 ; 6 uses
  %i.li = extractelement <2 x float> %i.ks, i64 1 ; 2 uses
  %i.lj = call float @llvm.fmuladd.f32(float %i.lh, float %i.li, float %i.lg) ; 3 uses
  %i.lk = fmul float %i.ky, %i.lf
  %i.ll = call float @llvm.fmuladd.f32(float %i.lh, float %i.la, float %i.lk) ; 4 uses
  %i.lm = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ln = fmul <2 x float> %i.lm, %i.ld
  %i.lo = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.lo, <2 x float> %i.ln) ; 4 uses
  %i.lq = extractelement <2 x float> %i.ld, i64 1
  %i.lr = fmul float %i.ky, %i.lq
  %i.ls = fneg <2 x float> %i.ku                  ; 4 uses
  %i.lt = extractelement <2 x float> %i.kt, i64 1 ; 3 uses
  %i.lu = extractelement <2 x float> %i.ls, i64 0 ; 2 uses
  %i.lv = fmul float %i.lt, %i.lu
  %i.lw = extractelement <2 x float> %i.kt, i64 0 ; 6 uses
  %i.lx = extractelement <2 x float> %i.ku, i64 1 ; 2 uses
  %i.ly = call float @llvm.fmuladd.f32(float %i.lw, float %i.lx, float %i.lv) ; 3 uses
  %i.lz = fmul float %i.lb, %i.lu
  %i.ma = insertelement <2 x float> poison, float %i.kv, i64 0 ; 2 uses
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mc = fmul <2 x float> %i.mb, %i.ls
  %i.md = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.me, <2 x float> %i.mc) ; 4 uses
  %i.mg = extractelement <2 x float> %i.ls, i64 1
  %i.mh = fmul float %i.lb, %i.mg
  %i.mi = call float @llvm.fmuladd.f32(float %i.lt, float %i.lc, float %i.mh) ; 4 uses
  %i.mj = fneg float %i.kw
  %i.mk = extractelement <2 x float> %i.kz, i64 0
  %i.ml = insertelement <2 x float> %i.kx, float %i.lb, i64 0 ; 2 uses
  %i.mm = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.mn = fneg <2 x float> %i.kz
  %i.mo = shufflevector <2 x float> %i.mm, <2 x float> %i.mn, <2 x i32> <i32 0, i32 2>
  %i.mp = fmul <2 x float> %i.ml, %i.mo
  %i.mq = shufflevector <2 x float> %i.ma, <2 x float> %i.kx, <2 x i32> <i32 0, i32 2>
  %i.mr = insertelement <2 x float> %i.kz, float %i.lc, i64 0 ; 2 uses
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.mr, <2 x float> %i.mp) ; 4 uses
  %i.mt = fneg float %i.mi                        ; 2 uses
  %i.mu = call float @llvm.fmuladd.f32(float %i.lw, float %i.lc, float %i.lz) ; 4 uses
  %i.mv = extractelement <2 x float> %i.lp, i64 0
  %i.mw = fmul float %i.mv, %i.mt
  %i.mx = extractelement <2 x float> %i.ms, i64 0
  %i.my = call float @llvm.fmuladd.f32(float %i.lj, float %i.mx, float %i.mw)
  %i.mz = extractelement <2 x float> %i.mf, i64 1
  %i.na = call float @llvm.fmuladd.f32(float %i.ll, float %i.mz, float %i.my)
  %i.nb = extractelement <2 x float> %i.lp, i64 1
  %i.nc = call float @llvm.fmuladd.f32(float %i.nb, float %i.mu, float %i.na)
  %i.nd = fneg float %i.ll                        ; 2 uses
  %i.ne = call float @llvm.fmuladd.f32(float %i.le, float %i.la, float %i.lr) ; 4 uses
  %i.nf = fneg float %i.ne                        ; 2 uses
  %i.ng = extractelement <2 x float> %i.mf, i64 0
  %i.nh = call float @llvm.fmuladd.f32(float %i.nf, float %i.ng, float %i.nc)
  %i.ni = extractelement <2 x float> %i.ms, i64 1
  %i.nj = call float @llvm.fmuladd.f32(float %i.ni, float %i.ly, float %i.nh)
  %i.nk = fdiv float 1.000000e+00, %i.nj          ; 5 uses
  %i.nl = insertelement <2 x float> poison, float %i.mu, i64 0
  %i.nm = insertelement <2 x float> %i.nl, float %i.mt, i64 1
  %i.nn = fmul <2 x float> %i.lo, %i.nm
  %i.no = shufflevector <2 x float> %i.ld, <2 x float> %i.ks, <2 x i32> <i32 0, i32 3>
  %i.np = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> %i.np, <2 x float> %i.nn)
  %i.nr = fneg float %i.la
  %i.ns = insertelement <2 x float> %i.mr, float %i.nr, i64 0
  %i.nt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.mf, <2 x float> %i.nq)
  %i.nu = fneg float %i.ky                        ; 2 uses
  %i.nv = fneg float %i.mu                        ; 2 uses
  %i.nw = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.mi, i64 1
  %i.ny = fmul <2 x float> %i.lm, %i.nx
  %i.nz = fneg <2 x float> %i.kr
  %i.oa = shufflevector <2 x float> %i.kr, <2 x float> %i.nz, <2 x i32> <i32 0, i32 3>
  %i.ob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.np, <2 x float> %i.ny)
  %i.oc = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.od = insertelement <2 x float> %i.oc, float %i.nu, i64 1
  %i.oe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> %i.mf, <2 x float> %i.ob)
  %i.of = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.og = insertelement <2 x float> %i.of, float %i.nf, i64 1
  %i.oh = fmul <2 x float> %i.me, %i.og
  %i.oi = shufflevector <2 x float> %i.ls, <2 x float> %i.ku, <2 x i32> <i32 0, i32 3>
  %i.oj = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ok = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oi, <2 x float> %i.oj, <2 x float> %i.oh)
  %i.ol = fneg float %i.lc
  %i.om = insertelement <2 x float> poison, float %i.ol, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.lc, i64 1
  %i.oo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.lp, <2 x float> %i.ok)
  %i.op = fneg float %i.lb                        ; 2 uses
  %i.oq = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.or = insertelement <2 x float> %i.oq, float %i.ne, i64 1
  %i.os = fmul <2 x float> %i.mb, %i.or
  %i.ot = fneg <2 x float> %i.kt
  %i.ou = shufflevector <2 x float> %i.kt, <2 x float> %i.ot, <2 x i32> <i32 0, i32 3>
  %i.ov = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ou, <2 x float> %i.oj, <2 x float> %i.os)
  %i.ow = insertelement <2 x float> %i.ml, float %i.op, i64 1
  %i.ox = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> %i.lp, <2 x float> %i.ov)
  %i.oy = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.pa = fmul <2 x float> %i.nt, %i.oz           ; 5 uses
  %i.pb = fmul <2 x float> %i.oe, %i.oz           ; 5 uses
  %i.pc = fmul <2 x float> %i.oo, %i.oz           ; 5 uses
  %i.pd = fmul <2 x float> %i.ox, %i.oz           ; 5 uses
  %i.pe = fmul float %i.li, %i.nv
  %i.pf = extractelement <2 x float> %i.ks, i64 0 ; 4 uses
  %i.pg = call float @llvm.fmuladd.f32(float %i.pf, float %i.mi, float %i.pe)
  %i.ph = call float @llvm.fmuladd.f32(float %i.la, float %i.ly, float %i.pg)
  %i.pi = fmul float %i.ph, %i.nk                 ; 4 uses
  %i.pj = fneg float %i.lh
  %i.pk = fmul float %i.le, %i.mu
  %i.pl = call float @llvm.fmuladd.f32(float %i.pj, float %i.mi, float %i.pk)
  %i.pm = call float @llvm.fmuladd.f32(float %i.nu, float %i.ly, float %i.pl)
  %i.pn = fmul float %i.pm, %i.nk                 ; 4 uses
  %i.po = fmul float %i.lx, %i.nd
  %i.pp = extractelement <2 x float> %i.ku, i64 0 ; 4 uses
  %i.pq = call float @llvm.fmuladd.f32(float %i.pp, float %i.ne, float %i.po)
  %i.pr = call float @llvm.fmuladd.f32(float %i.lc, float %i.lj, float %i.pq)
  %i.ps = fmul float %i.pr, %i.nk                 ; 4 uses
  %i.pt = fneg float %i.lw
  %i.pu = fmul float %i.lt, %i.ll
  %i.pv = call float @llvm.fmuladd.f32(float %i.pt, float %i.ne, float %i.pu)
  %i.pw = call float @llvm.fmuladd.f32(float %i.op, float %i.lj, float %i.pv)
  %i.px = fmul float %i.pw, %i.nk                 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8            ; 2 uses
  %.not2130 = icmp eq i64 %i.pz, 0
  br i1 %.not2130, label %._crit_edge2063, label %.lr.ph2062

.lr.ph2062:                                       ; preds = %bb.al
  %i.qa = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.qb = extractelement <2 x float> %i.kx, i64 0
  %i.qc = extractelement <2 x float> %i.pb, i64 1
  %i.qd = extractelement <2 x float> %i.pa, i64 1
  %i.qe = extractelement <2 x float> %i.pc, i64 1
  %i.qf = extractelement <2 x float> %i.pd, i64 1
  %i.qg = insertelement <2 x float> %i.pb, float %i.pn, i64 1
  %i.qh = insertelement <2 x float> %i.pa, float %i.pi, i64 1
  %i.qi = insertelement <2 x float> %i.pc, float %i.ps, i64 1
  %i.qj = insertelement <2 x float> %i.pd, float %i.px, i64 1
  %i.qk = shufflevector <2 x float> %i.ks, <2 x float> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.ql = shufflevector <2 x float> %i.kr, <2 x float> %i.kx, <2 x i32> <i32 1, i32 2>
  %i.qm = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qn = insertelement <2 x float> %i.qm, float %i.kv, i64 1
  %i.qo = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qp = insertelement <2 x float> %i.qo, float %i.kw, i64 1
  %i.qq = shufflevector <2 x float> %i.ks, <2 x float> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.qr = shufflevector <2 x float> %i.kr, <2 x float> %i.kx, <2 x i32> <i32 1, i32 2>
  %i.qs = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qt = insertelement <2 x float> %i.qs, float %i.kv, i64 1
  %i.qu = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qv = insertelement <2 x float> %i.qu, float %i.kw, i64 1
  %i.qw = shufflevector <2 x float> %i.ks, <2 x float> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.qx = shufflevector <2 x float> %i.kr, <2 x float> %i.kx, <2 x i32> <i32 1, i32 2>
  %i.qy = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qz = insertelement <2 x float> %i.qy, float %i.kv, i64 1
  %i.ra = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rb = insertelement <2 x float> %i.ra, float %i.kw, i64 1
  br label %bb.am

._crit_edge2063:                                  ; preds = %bb.dc, %bb.al
  %.11255.lcssa = phi i32 [ %.012542067, %bb.al ], [ %.21256, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  %.pre2409 = load ptr, ptr %i.b, align 8
  br label %bb.dd

bb.am:                                            ; preds = %.lr.ph2062, %bb.dc
  %i.rc = phi i64 [ %i.pz, %.lr.ph2062 ], [ %i.ceg, %bb.dc ]
  %i.rd = phi i64 [ 0, %.lr.ph2062 ], [ %i.cei, %bb.dc ] ; 6 uses
  %.112552060 = phi i32 [ %.012542067, %.lr.ph2062 ], [ %.21256, %bb.dc ] ; 6 uses
  %.012592059 = phi i32 [ 0, %.lr.ph2062 ], [ %i.ceh, %bb.dc ]
  %i.re = load ptr, ptr %i.qa, align 8            ; 3 uses
  %i.rf = getelementptr inbounds nuw [144 x i8], ptr %i.re, i64 %i.rd ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8
  %.not1344 = icmp eq i32 %i.rg, 5
  br i1 %.not1344, label %.preheader1906, label %bb.dc

.preheader1906:                                   ; preds = %bb.am
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.ri = load i64, ptr %i.rh, align 8
  %.not2131 = icmp eq i64 %i.ri, 0
  br i1 %.not2131, label %._crit_edge2047, label %.lr.ph2046

.lr.ph2046:                                       ; preds = %.preheader1906
  %i.rj = sext i32 %.112552060 to i64             ; 50 uses
  br label %bb.an

._crit_edge2047:                                  ; preds = %.loopexit1881, %.preheader1906
  %i.rk = phi ptr [ %i.re, %.preheader1906 ], [ %i.byn, %.loopexit1881 ]
  %i.rl = getelementptr inbounds nuw [144 x i8], ptr %i.rk, i64 %i.rd
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8            ; 10 uses
  %.not1345 = icmp eq ptr %i.rn, null
  br i1 %.not1345, label %._crit_edge2047._crit_edge, label %bb.cq

._crit_edge2047._crit_edge:                       ; preds = %._crit_edge2047
  %.pre2406 = load ptr, ptr %i.bd, align 8
  br label %bb.cy

bb.an:                                            ; preds = %.lr.ph2046, %.loopexit1881
  %i.ro = phi ptr [ %i.re, %.lr.ph2046 ], [ %i.byn, %.loopexit1881 ]
  %i.rp = phi i64 [ 0, %.lr.ph2046 ], [ %i.bym, %.loopexit1881 ] ; 2 uses
  %.012602045 = phi i32 [ 0, %.lr.ph2046 ], [ %i.byl, %.loopexit1881 ]
  %i.rq = getelementptr inbounds nuw [144 x i8], ptr %i.ro, i64 %i.rd
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.rs, i64 %i.rp ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load i32, ptr %i.ru, align 8
  switch i32 %i.rv, label %.loopexit1881 [
    i32 1, label %bb.ao
    i32 2, label %bb.aw
    i32 3, label %bb.bi
    i32 4, label %bb.bo
    i32 5, label %bb.bz
  ]

bb.ao:                                            ; preds = %bb.an
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8            ; 14 uses
  %i.ry = load ptr, ptr %i.bd, align 8
  %i.rz = getelementptr inbounds [120 x i8], ptr %i.ry, i64 %i.rj ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  %.not1352 = icmp eq ptr %i.sb, null
  br i1 %.not1352, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.351, ptr noundef %1) #54
  br label %.loopexit1881

bb.aq:                                            ; preds = %bb.ao
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sd = load i32, ptr %i.sc, align 8
  %i.se = icmp eq i32 %i.sd, 3
  br i1 %i.se, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sg = load i32, ptr %i.sf, align 8
  switch i32 %i.sg, label %bb.av [
    i32 6, label %bb.as
    i32 4, label %bb.at
    i32 3, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rx, i64 32 ; 5 uses
  %i.si = load i64, ptr %i.sh, align 8
  %i.sj = trunc i64 %i.si to i32
  store i32 %i.sj, ptr %i.rz, align 8
  %i.sk = load i64, ptr %i.sh, align 8
  %i.sl = mul i64 %i.sk, 12
  %i.sm = call noalias ptr @malloc(i64 noundef %i.sl) #56
  %i.sn = load ptr, ptr %i.bd, align 8
  %i.so = getelementptr inbounds [120 x i8], ptr %i.sn, i64 %i.rj
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store ptr %i.sm, ptr %i.sp, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rx, i64 48
  %i.sr = load ptr, ptr %i.sq, align 8            ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sx = load i64, ptr %i.sw, align 8
  %i.sy = lshr i64 %i.sx, 2
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.tb = load i64, ptr %i.ta, align 8
  %i.tc = lshr i64 %i.tb, 2
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.tc ; 3 uses
  %i.te = load i64, ptr %i.sh, align 8
  %.not2167 = icmp eq i64 %i.te, 0
  br i1 %.not2167, label %.loopexit1881, label %.preheader1861.lr.ph

.preheader1861.lr.ph:                             ; preds = %bb.as
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  br label %.preheader1861

.preheader1861:                                   ; preds = %.preheader1861.lr.ph, %.preheader1861
  %.012662040 = phi i32 [ 0, %.preheader1861.lr.ph ], [ %i.un, %.preheader1861 ] ; 2 uses
  %.012672039 = phi i32 [ 0, %.preheader1861.lr.ph ], [ %i.uo, %.preheader1861 ] ; 2 uses
  %i.tg = mul i32 %.012672039, 3                  ; 3 uses
  %i.th = sext i32 %.012662040 to i64             ; 3 uses
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.th
  %i.tj = load float, ptr %i.ti, align 4
  %i.tk = load ptr, ptr %i.bd, align 8
  %i.tl = getelementptr inbounds [120 x i8], ptr %i.tk, i64 %i.rj
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = zext i32 %i.tg to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.to
  store float %i.tj, ptr %i.tp, align 4
  %i.tq = getelementptr [4 x i8], ptr %i.td, i64 %i.th
  %i.tr = getelementptr i8, ptr %i.tq, i64 4
  %i.ts = load float, ptr %i.tr, align 4
end_hunk_0
begin_hunk_1_@UpdateModelAnimation:bb.a
  %.071 = phi i32 [ %i.v, %bb.e ], [ %i.o, %bb.d ]
  %i.w = load i32, ptr %i.g, align 8              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = sext i32 %.0 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %.071 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac ; 3 uses
  %i.ae = fsub float 1.000000e+00, %.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8
  %wide.trip.count = zext nneg i32 %i.w to i64
  %i.ah = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.aj = insertelement <4 x float> poison, float %.0.i, i64 3
  br label %bb.g

._crit_edge:                                      ; preds = %QuaternionSlerp.exit, %bb.f
  tail call fastcc void @UpdateModelAnimationVertexBuffers(ptr noundef nonnull byval(%struct.Model) align 8 %0)
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph, %QuaternionSlerp.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %QuaternionSlerp.exit ] ; 10 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %indvars.iv ; 8 uses
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.am, align 4 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4 ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.ao, align 4
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4
  %i.ap = fsub <2 x float> %.sroa.034.0.copyload, %.sroa.036.0.copyload
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ap, <2 x float> %.sroa.036.0.copyload)
  %i.ar = fsub float %.sroa.235.0.copyload, %.sroa.237.0.copyload
  %i.as = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.ar, float %.sroa.237.0.copyload)
  store <2 x float> %i.aq, ptr %i.ak, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store float %i.as, ptr %.sroa.439.0..sroa_idx, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.au = load ptr, ptr %i.ab, align 8
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load ptr, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load <2 x float>, ptr %i.aw, align 4    ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 7 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4    ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bf = load <2 x float>, ptr %i.be, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %i.ba, i64 0
  %.sroa.023.0.vec.extract.i = extractelement <2 x float> %i.bd, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ba, %i.bd
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bh = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i, float %.sroa.023.0.vec.extract.i, float %i.bg)
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %i.bc, i64 0
  %.sroa.12.8.vec.extract.i = extractelement <2 x float> %i.bf, i64 0
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i, float %.sroa.12.8.vec.extract.i, float %i.bh)
  %.sroa.9.12.vec.extract.i = extractelement <2 x float> %i.bc, i64 1
  %.sroa.12.12.vec.extract.i = extractelement <2 x float> %i.bf, i64 1
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i, float %.sroa.12.12.vec.extract.i, float %i.bi) ; 3 uses
  %i.bk = fcmp olt float %i.bj, 0.000000e+00      ; 3 uses
  %i.bl = fneg <2 x float> %i.bd
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = fneg float %i.bj
  %.0.i79 = select i1 %i.bk, float %i.bn, float %i.bj ; 5 uses
  %.sroa.023.0.i = select i1 %i.bk, <2 x float> %i.bl, <2 x float> %i.bd ; 3 uses
  %.sroa.12.0.i = select i1 %i.bk, <2 x float> %i.bm, <2 x float> %i.bf ; 3 uses
  %i.bo = tail call float @llvm.fabs.f32(float %.0.i79)
  %i.bp = fcmp ult float %i.bo, 1.000000e+00
  br i1 %i.bp, label %bb.h, label %QuaternionSlerp.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = fcmp ogt float %.0.i79, f0x3F733333
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = fsub <2 x float> %.sroa.12.0.i, %i.bc
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.br, <2 x float> %i.bc) ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bv = fsub <2 x float> %.sroa.023.0.i, %i.ba
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bv, <2 x float> %i.ba) ; 4 uses
  %foldExtExtBinop451 = fmul <2 x float> %i.bw, %i.bw
  %i.bx = extractelement <2 x float> %foldExtExtBinop451, i64 1
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bz)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.ca) ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cb)
  %i.cc = fcmp oeq float %i.cb, 0.000000e+00
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ce = select i1 %i.cc, float 1.000000e+00, float %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x float> %i.bw, %i.cg
  %i.ci = fmul <2 x float> %i.bs, %i.cg
  br label %QuaternionSlerp.exit

bb.j:                                             ; preds = %bb.h
  %i.cj = tail call float @acosf(float noundef %.0.i79) #54 ; 2 uses
  %i.ck = fneg float %.0.i79
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %.0.i79, float 1.000000e+00)
  %i.cm = tail call float @sqrtf(float noundef %i.cl) #54 ; 2 uses
  %i.cn = tail call float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp olt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cp = fmul <2 x float> %.sroa.023.0.i, splat (float 5.000000e-01)
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cp)
  %i.cr = fmul <2 x float> %.sroa.12.0.i, splat (float 5.000000e-01)
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cr)
  br label %QuaternionSlerp.exit

bb.l:                                             ; preds = %bb.j
  %i.ct = fmul float %i.ae, %i.cj
  %i.cu = tail call float @sinf(float noundef %i.ct) #54
  %i.cv = fmul float %.0.i, %i.cj
  %i.cw = tail call float @sinf(float noundef %i.cv) #54
  %i.cx = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x float> %i.cy, %i.da           ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %.sroa.023.0.i, %i.dc
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = fmul <2 x float> %.sroa.12.0.i, %i.dc
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.de, <2 x float> %i.dg)
  br label %QuaternionSlerp.exit

QuaternionSlerp.exit:                             ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.pn87.i = phi <2 x float> [ %i.ba, %bb.g ], [ %i.ch, %bb.i ], [ %i.cq, %bb.k ], [ %i.df, %bb.l ] ; 7 uses
  %.pn85.i = phi <2 x float> [ %i.bc, %bb.g ], [ %i.ci, %bb.i ], [ %i.cs, %bb.k ], [ %i.dh, %bb.l ] ; 5 uses
  store <2 x float> %.pn87.i, ptr %i.at, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store <2 x float> %.pn85.i, ptr %.sroa.429.0..sroa_idx, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ak, i64 28 ; 2 uses
  %i.dj = load ptr, ptr %i.ab, align 8
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %indvars.iv ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load ptr, ptr %i.ad, align 8
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.dl, align 4 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4 ; 2 uses
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.do, align 4
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %.sroa.224.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4
  %i.dp = fsub <2 x float> %.sroa.023.0.copyload, %.sroa.025.0.copyload
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.dp, <2 x float> %.sroa.025.0.copyload)
  store <2 x float> %i.dq, ptr %i.di, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %indvars.iv ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dz = shufflevector <2 x float> %.pn87.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ea = fmul <2 x float> %.pn87.i, %.pn87.i     ; 2 uses
  %i.eb = fmul <2 x float> %i.dz, %.pn85.i        ; 4 uses
  %i.ec = fmul <2 x float> %.pn87.i, %.pn85.i     ; 3 uses
  %shift = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop453 = fsub <2 x float> %i.ec, %shift
  %i.ed = extractelement <2 x float> %foldExtExtBinop453, i64 0
  %shift455 = shufflevector <2 x float> %.pn87.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop456 = fmul <2 x float> %.pn87.i, %shift455 ; 2 uses
  %i.ee = shufflevector <2 x float> %foldExtExtBinop456, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ef = extractelement <2 x float> %foldExtExtBinop456, i64 0
  %i.eg = shufflevector <2 x float> %.pn85.i, <2 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.eh = shufflevector <2 x float> %.pn85.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float 1.000000e+00, i64 3
  %i.ej = fmul <4 x float> %i.eg, %i.ei           ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> %i.ee, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.em = fadd <4 x float> %i.el, %i.ej           ; 2 uses
  %i.en = extractelement <4 x float> %i.ej, i64 1
  %i.eo = fsub float %i.ef, %i.en
  %i.ep = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.eq = insertelement <4 x float> %i.ep, float %i.ed, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.eo, i64 2
  %i.es = fmul <4 x float> %i.er, splat (float 2.000000e+00) ; 4 uses
  %i.et = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ec)
  %shift458 = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop459 = fsub <2 x float> %i.eb, %shift458
  %i.eu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ea)
  %i.ev = load float, ptr %i.ak, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ex = load float, ptr %i.ew, align 4          ; 2 uses
  %i.ey = load float, ptr %.sroa.439.0..sroa_idx, align 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.fa = fsub float %.sroa.224.0.copyload, %.sroa.226.0.copyload
  %i.fb = shufflevector <4 x float> %i.aj, <4 x float> %i.em, <4 x i32> <i32 4, i32 6, i32 poison, i32 3>
  %i.fc = insertelement <4 x float> %i.fb, float %i.eu, i64 2
  %i.fd = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float poison>, float %i.fa, i64 3
  %i.fe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.sroa.226.0.copyload, i64 3
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.fd, <4 x float> %i.fe) ; 6 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 3
  store float %i.fg, ptr %.sroa.4.0..sroa_idx, align 4
  %i.fh = load float, ptr %i.ds, align 4          ; 3 uses
  %i.fi = load float, ptr %i.du, align 4          ; 3 uses
  %i.fj = load float, ptr %i.dt, align 4          ; 3 uses
  %i.fk = load <2 x float>, ptr %i.dv, align 4    ; 6 uses
  %i.fl = load <2 x float>, ptr %i.dw, align 4    ; 6 uses
  %i.fm = fmul <2 x float> %i.fk, %i.fk           ; 3 uses
  %foldExtExtBinop461 = fmul <2 x float> %i.fl, %i.fl ; 2 uses
  %shift463 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop464 = fmul <2 x float> %i.fk, %shift463 ; 2 uses
  %shift466 = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop467 = fmul <2 x float> %shift466, %i.fl ; 2 uses
  %shift469 = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop470 = fadd <2 x float> %shift469, %foldExtExtBinop461
  %i.fn = extractelement <2 x float> %foldExtExtBinop470, i64 0
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float -2.000000e+00, float 1.000000e+00)
  %foldExtExtBinop472 = fadd <2 x float> %foldExtExtBinop464, %foldExtExtBinop467
  %i.fp = extractelement <2 x float> %foldExtExtBinop472, i64 0
  %i.fq = fmul float %i.fp, 2.000000e+00
  %foldExtExtBinop474 = fsub <2 x float> %foldExtExtBinop464, %foldExtExtBinop467
  %i.fr = extractelement <2 x float> %foldExtExtBinop474, i64 0
  %i.fs = fmul float %i.fr, 2.000000e+00
  %foldExtExtBinop476 = fadd <2 x float> %i.fm, %foldExtExtBinop461
  %i.ft = extractelement <2 x float> %foldExtExtBinop476, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float -2.000000e+00, float 1.000000e+00)
  %i.fv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fm)
  %i.fw = fmul float %i.fj, 0.000000e+00
  %i.fx = fadd float %i.fw, 0.000000e+00          ; 4 uses
  %i.fy = load <2 x float>, ptr %i.dr, align 4    ; 3 uses
  %i.fz = load float, ptr %i.dx, align 4          ; 2 uses
  %i.ga = load float, ptr %i.dy, align 4          ; 4 uses
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fi, float 0.000000e+00, float 0.000000e+00)
  %i.gc = fadd float %i.gb, 0.000000e+00          ; 3 uses
  %i.gd = extractelement <2 x float> %i.fy, i64 0
  %i.ge = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.gh = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.fk, %i.gh           ; 4 uses
  %i.gj = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gk = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gl = fmul <2 x float> %i.gj, %i.gk           ; 4 uses
  %i.gm = fadd <2 x float> %i.gi, %i.gl
  %i.gn = fsub <2 x float> %i.gi, %i.gl
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 3>
  %i.gp = fmul <2 x float> %i.go, splat (float 2.000000e+00) ; 4 uses
  %i.gq = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.fu, i64 1 ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, zeroinitializer ; 2 uses
  %i.gt = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fq, i64 1 ; 3 uses
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> zeroinitializer, <2 x float> %i.gs) ; 2 uses
  %i.gw = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gu, <2 x float> %i.gs)
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> zeroinitializer, <2 x float> %i.gy)
  %i.ha = fadd <2 x float> %i.gz, zeroinitializer ; 5 uses
  %i.hb = fmul <2 x float> %i.ha, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> zeroinitializer, <2 x float> %i.gv)
  %i.hd = fadd <2 x float> %i.hc, zeroinitializer ; 3 uses
  %i.he = extractelement <2 x float> %i.ha, i64 0
  %i.hf = extractelement <2 x float> %i.ha, i64 1
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.he, float 0.000000e+00, float %i.hf)
  %shift478 = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop479 = fadd <2 x float> %i.ha, %shift478
  %i.hh = extractelement <2 x float> %foldExtExtBinop479, i64 0
  %i.hi = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.hj, %i.gr
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> zeroinitializer, <2 x float> %i.hk)
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> zeroinitializer, <2 x float> %i.hl)
  %i.hn = fadd <2 x float> %i.hm, zeroinitializer ; 4 uses
  %i.ho = extractelement <2 x float> %i.hn, i64 0
  %i.hp = extractelement <2 x float> %i.hn, i64 1
  %i.hq = fmul float %i.hp, 0.000000e+00          ; 2 uses
  %i.hr = fadd float %i.ho, %i.hq
  %i.hs = fmul <2 x float> %i.hd, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 1
  %i.hu = extractelement <2 x float> %i.hd, i64 0
  %i.hv = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.hv)
  %i.hx = load <2 x float>, ptr %i.di, align 4
  %i.hy = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.hz = shufflevector <2 x float> %i.hx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.ia = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.hz, <3 x i32> <i32 0, i32 1, i32 4> ; 3 uses
  %i.ib = fmul <3 x float> %i.hy, %i.ia
  %i.ic = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.id = fmul <3 x float> %i.ic, %i.ia
  %i.ie = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.if = fmul <3 x float> %i.ie, %i.ia
  %i.ig = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.hz, <3 x i32> <i32 0, i32 3, i32 2> ; 3 uses
  %i.ih = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ii = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ig, <3 x float> %i.ih, <3 x float> %i.ib) ; 2 uses
  %i.ij = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ik = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ig, <3 x float> %i.ij, <3 x float> %i.id) ; 2 uses
  %i.il = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.im = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ig, <3 x float> %i.il, <3 x float> %i.if) ; 2 uses
  %i.in = shufflevector <3 x float> %i.im, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <2 x float> %i.ha, <2 x float> %i.hn, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.iq = shufflevector <2 x float> %i.hb, <2 x float> %i.hn, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ir = insertelement <4 x float> %i.iq, float %i.hq, i64 2
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.it = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> zeroinitializer, <4 x float> %i.is) ; 4 uses
  %i.iu = extractelement <4 x float> %i.it, i64 3
  %i.iv = fadd float %i.iu, 0.000000e+00          ; 4 uses
  %i.iw = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> %foldExtExtBinop459, <2 x i32> <i32 0, i32 2>
  %i.iy = fmul <2 x float> %i.ix, splat (float 2.000000e+00) ; 3 uses
  %i.iz = shufflevector <3 x float> %i.ii, <3 x float> %i.ik, <2 x i32> <i32 0, i32 3>
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> zeroinitializer, <2 x float> %i.iz)
  %i.jb = fadd <2 x float> %i.ja, zeroinitializer ; 3 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 1
  %i.jd = fmul float %i.jc, 0.000000e+00          ; 2 uses
  %i.je = extractelement <2 x float> %i.jb, i64 0 ; 3 uses
  %i.jf = fadd float %i.je, %i.jd
  %i.jg = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.jh = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.ji = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ev, i64 0 ; 2 uses
  %i.jj = insertelement <2 x float> %i.fy, float %i.ga, i64 0
  %i.jk = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> <i32 3, i32 poison, i32 poison>
  %i.jl = shufflevector <3 x float> %i.jk, <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5> ; 4 uses
  %i.jm = shufflevector <2 x float> %i.iy, <2 x float> poison, <3 x i32> zeroinitializer
  %i.jn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jl, <3 x float> %i.jm, <3 x float> %i.ii)
  %i.jo = fadd <3 x float> %i.jn, zeroinitializer ; 3 uses
  %i.jp = shufflevector <2 x float> %i.iy, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.jq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jl, <3 x float> %i.jp, <3 x float> %i.ik)
  %i.jr = fadd <3 x float> %i.jq, zeroinitializer ; 2 uses
  %i.js = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.jt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.js, <3 x float> %i.jl, <3 x float> %i.im)
  %i.ju = fadd <3 x float> %i.jt, zeroinitializer ; 4 uses
  %i.jv = shufflevector <3 x float> %i.jl, <3 x float> %i.hz, <3 x i32> <i32 0, i32 3, i32 4>
  %i.jw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jv, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.jx = fadd <3 x float> %i.jw, zeroinitializer ; 4 uses
  %i.jy = fmul <3 x float> %i.jr, zeroinitializer ; 2 uses
  %i.jz = fadd <3 x float> %i.jo, %i.jy
  %i.ka = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ju, <3 x float> zeroinitializer, <3 x float> %i.jz)
  %i.kb = shufflevector <2 x float> %i.ji, <2 x float> poison, <3 x i32> zeroinitializer
  %i.kc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jx, <3 x float> %i.kb, <3 x float> %i.ka) ; 3 uses
  %i.kd = extractelement <2 x float> %i.jb, i64 1
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.je, float 0.000000e+00, float %i.kd)
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.iv, float 0.000000e+00, float %i.ke)
  %i.kg = fadd float %i.kf, %i.ex
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.je, float 0.000000e+00, float %i.jd) ; 2 uses
  %i.ki = fadd float %i.iv, %i.kh
  %i.kj = fadd float %i.ki, %i.ey
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.fv, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %foldExtExtBinop481 = fadd <2 x float> %i.gi, %i.gl
  %i.kl = extractelement <2 x float> %foldExtExtBinop481, i64 1
  %i.km = fmul float %i.kl, 2.000000e+00          ; 2 uses
  %i.kn = fmul float %i.fj, %i.km
  %foldExtExtBinop483 = fsub <2 x float> %i.gi, %i.gl
  %i.ko = extractelement <2 x float> %foldExtExtBinop483, i64 0
  %i.kp = fmul float %i.ko, 2.000000e+00          ; 3 uses
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.kp, float 0.000000e+00, float %i.kn)
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kk, float 0.000000e+00, float %i.kq)
  %i.ks = fadd float %i.kr, 0.000000e+00          ; 4 uses
  %i.kt = fmul float %i.km, 0.000000e+00          ; 2 uses
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kp, float 0.000000e+00, float %i.kt) ; 2 uses
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.kk, float %i.ku)
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.kp, float %i.kt)
  %i.kx = fadd float %i.kv, 0.000000e+00          ; 3 uses
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kk, float 0.000000e+00, float %i.kw)
  %i.kz = fadd float %i.ky, 0.000000e+00          ; 4 uses
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kz, float 0.000000e+00, float %i.hg)
  %i.lb = extractelement <4 x float> %i.it, i64 1
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.ks, float 0.000000e+00, float %i.lb)
  %i.ld = extractelement <4 x float> %i.it, i64 2 ; 2 uses
  %i.le = fadd float %i.ks, %i.ld
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fz, float %i.lc) ; 4 uses
  %i.lg = fneg float %i.lf
  %i.lh = extractelement <4 x float> %i.it, i64 0 ; 2 uses
  %i.li = fadd float %i.kz, %i.lh
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.kz, float 0.000000e+00, float %i.lh)
  %i.lk = insertelement <2 x float> %i.jg, float %i.kk, i64 1
  %i.ll = insertelement <2 x float> %i.jh, float %i.ku, i64 1
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> zeroinitializer, <2 x float> %i.ll)
  %i.ln = fadd <2 x float> %i.lm, %i.ji           ; 3 uses
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.hu, float 0.000000e+00, float %i.ht) ; 2 uses
  %i.lp = extractelement <2 x float> %i.ln, i64 1
  %i.lq = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lr = insertelement <2 x float> %i.lq, float %i.fh, i64 1
  %i.ls = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lo, i64 0
  %i.lt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> zeroinitializer, <2 x float> %i.ls)
  %i.lu = fadd <2 x float> %i.lt, <float 1.000000e+00, float 0.000000e+00> ; 5 uses
  %i.lv = extractelement <2 x float> %i.lu, i64 1 ; 3 uses
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.fz, float %i.la) ; 4 uses
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.ga, float %i.li) ; 4 uses
  %i.ly = fadd float %i.lv, %i.lj                 ; 4 uses
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.ks, float 0.000000e+00, float %i.hr)
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.gd, float %i.lz) ; 2 uses
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.ga, float %i.le) ; 3 uses
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.ks, float 0.000000e+00, float %i.ld)
  %i.md = fadd float %i.fx, %i.mc                 ; 3 uses
  %i.me = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.gp, <2 x float> %i.gv)
  %i.mh = fadd <2 x float> %i.mg, zeroinitializer ; 3 uses
  %i.mi = fmul <2 x float> %i.mh, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.mj = extractelement <2 x float> %i.mi, i64 1
  %i.mk = extractelement <2 x float> %i.mh, i64 0
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mk, float 0.000000e+00, float %i.mj) ; 2 uses
  %i.mm = tail call float @llvm.fmuladd.f32(float %i.kx, float 0.000000e+00, float %i.ml)
  %i.mn = fadd float %i.gc, %i.mm                 ; 4 uses
  %i.mo = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.mo)
  %i.mq = fneg float %i.ma                        ; 3 uses
  %i.mr = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> zeroinitializer, <2 x float> %i.mp)
  %i.mu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.mt) ; 5 uses
  %i.mv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> zeroinitializer, <2 x float> %i.hw) ; 2 uses
  %i.mw = fadd <2 x float> %i.gg, %i.mv           ; 2 uses
  %i.mx = fadd float %i.lp, %i.lo
  %i.my = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mz = insertelement <2 x float> %i.my, float %i.mx, i64 0
  %i.na = fadd <2 x float> %i.jj, %i.mz           ; 3 uses
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.nc = fadd float %i.kx, %i.ml
  %i.nd = fmul float %i.lw, %i.mq
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.ga, float %i.nc) ; 3 uses
  %i.nf = extractelement <2 x float> %i.na, i64 0
  %i.ng = fneg float %i.nf                        ; 2 uses
  %i.nh = fmul float %i.mn, %i.ng
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.kz, float 0.000000e+00, float %i.hh)
  %i.nj = insertelement <2 x float> %i.gg, float %i.ne, i64 0
  %i.nk = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.ni, i64 1
  %i.nm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.lu, <2 x float> %i.nl) ; 4 uses
  %i.nn = extractelement <2 x float> %i.nm, i64 1 ; 2 uses
  %i.no = tail call float @llvm.fmuladd.f32(float %i.nn, float %i.lf, float %i.nd) ; 3 uses
  %i.np = fneg <2 x float> %i.mw                  ; 2 uses
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.nr = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ns = insertelement <2 x float> %i.nr, float %i.ne, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.nu = fmul <4 x float> %i.nt, %i.nq
  %i.nv = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.nw = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nx = fmul <2 x float> %i.nw, %i.np
  %i.ny = extractelement <2 x float> %i.mu, i64 0
  %i.nz = fneg float %i.ny
  %i.oa = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.lx, i64 1 ; 2 uses
  %i.oc = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oe = fmul <2 x float> %i.ob, %i.od
  %i.of = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = insertelement <2 x float> poison, float %i.md, i64 0
  %i.oi = insertelement <2 x float> %i.oh, float %i.mb, i64 1 ; 3 uses
  %i.oj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> %i.oi, <2 x float> %i.oe) ; 5 uses
  %i.ok = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %i.ol = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> %i.nb, <4 x float> %i.nu) ; 10 uses
  %i.om = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.om, <2 x float> %i.nx) ; 5 uses
  %i.oo = extractelement <2 x float> %i.on, i64 0
  %i.op = fneg float %i.oo                        ; 2 uses
  %i.oq = extractelement <4 x float> %i.ol, i64 0
  %i.or = extractelement <2 x float> %i.on, i64 1
  %i.os = extractelement <2 x float> %i.oj, i64 0
  %i.ot = fneg float %i.os                        ; 2 uses
  %i.ou = extractelement <4 x float> %i.ol, i64 2
  %i.ov = extractelement <4 x float> %i.ol, i64 1
  %i.ow = fneg float %i.lw
  %i.ox = fneg float %i.ly
  %i.oy = fneg float %i.mn
  %i.oz = fneg float %i.mb
  %i.pa = fneg <2 x float> %i.oi
  %i.pb = fmul float %i.ly, %i.oz
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.lx, float %i.md, float %i.pb) ; 3 uses
  %i.pd = extractelement <2 x float> %i.lu, i64 0
  %i.pe = fneg float %i.pd
  %i.pf = fneg float %i.nn
  %i.pg = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.ph = insertelement <4 x float> %i.pg, float %i.lf, i64 1
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pj = shufflevector <4 x float> %i.ol, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.pk = insertelement <4 x float> poison, float %i.op, i64 0
  %i.pl = shufflevector <2 x float> %i.on, <2 x float> %i.pj, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.pm = shufflevector <2 x float> %i.nm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.pn = insertelement <4 x float> %i.pm, float %i.ma, i64 1
  %i.po = insertelement <4 x float> %i.pn, float %i.mq, i64 2
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.pq = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.pr = shufflevector <2 x float> %i.on, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ps = shufflevector <4 x float> %i.pq, <4 x float> %i.pr, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> %i.ol, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.pu = shufflevector <4 x float> %i.pt, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.pv = insertelement <4 x float> poison, float %i.md, i64 0
  %i.pw = shufflevector <2 x float> %i.pa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.px = shufflevector <4 x float> %i.pv, <4 x float> %i.pw, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.py = shufflevector <4 x float> %i.pr, <4 x float> %i.ol, <2 x i32> <i32 1, i32 6>
  %i.pz = fneg <2 x float> %i.py                  ; 2 uses
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qb = shufflevector <4 x float> %i.pk, <4 x float> %i.qa, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> %i.pl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qd = fmul <4 x float> %i.pi, %i.qc
  %i.qe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.pu, <4 x float> %i.qd)
  %i.qf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.px, <4 x float> %i.ol, <4 x float> %i.qe)
  %i.qg = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.qh = insertelement <4 x float> %i.qg, float %i.lw, i64 1
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qj = shufflevector <2 x float> %i.on, <2 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qk = fmul <4 x float> %i.qi, %i.qj
  %i.ql = insertelement <4 x float> %i.pu, float %i.ow, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> %i.pm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qn = shufflevector <4 x float> %i.pm, <4 x float> %i.ol, <4 x i32> <i32 0, i32 poison, i32 1, i32 4>
  %i.qo = insertelement <4 x float> %i.qn, float %i.pf, i64 1
  %i.qp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qm, <4 x float> %i.qo, <4 x float> %i.qk)
  %i.qq = insertelement <4 x float> poison, float %i.ox, i64 0
  %i.qr = insertelement <4 x float> %i.qq, float %i.ly, i64 2
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> %i.ol, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.qt = insertelement <4 x float> %i.ol, float %i.lx, i64 3
  %i.qu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qs, <4 x float> %i.qt, <4 x float> %i.qp)
  %i.qv = insertelement <4 x float> poison, float %i.ot, i64 0
  %i.qw = shufflevector <2 x float> %i.na, <2 x float> %i.mw, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.qy = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.qz = shufflevector <2 x float> %i.oj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ra = shufflevector <4 x float> %i.qy, <4 x float> %i.qz, <4 x i32> <i32 0, i32 4, i32 poison, i32 6> ; 2 uses
  %i.rb = shufflevector <4 x float> %i.ra, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.rc = shufflevector <2 x float> %i.lu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.rd = insertelement <4 x float> %i.rc, float %i.pe, i64 2
  %i.re = insertelement <4 x float> %i.rd, float %i.ng, i64 3
  %i.rf = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.rg = shufflevector <2 x float> %i.rf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rh = fmul <2 x float> %i.ob, %i.rg
  %i.ri = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ri, <2 x float> %i.oi, <2 x float> %i.rh) ; 6 uses
  %i.rk = extractelement <2 x float> %i.rj, i64 1
  %i.rl = fmul float %i.rk, %i.op
  %i.rm = extractelement <2 x float> %i.nm, i64 0
  %i.rn = tail call float @llvm.fmuladd.f32(float %i.no, float %i.rm, float %i.rl)
  %i.ro = extractelement <2 x float> %i.rj, i64 0
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.ro, float %i.oq, float %i.rn)
  %i.rq = extractelement <2 x float> %i.oj, i64 1
  %i.rr = tail call float @llvm.fmuladd.f32(float %i.rq, float %i.or, float %i.rp)
end_hunk_1
begin_hunk_2_@UpdateModelAnimation:bb.a
  %i.un = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> poison, <4 x i32> zeroinitializer
  %i.up = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.td, <4 x float> %i.uo, <4 x float> %i.um)
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.uq, ptr %.sroa.11101.0..sroa_idx, align 4
  %.sroa.15105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.ur = shufflevector <3 x float> %i.ju, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.us = insertelement <4 x float> %i.ur, float %i.iv, i64 3
  %i.ut = shufflevector <3 x float> %i.uc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.uu = insertelement <4 x float> %i.ut, float %i.kh, i64 3
  %i.uv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.us, <4 x float> zeroinitializer, <4 x float> %i.uu)
  %i.uw = shufflevector <3 x float> %i.jx, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ux = insertelement <4 x float> %i.uw, float 1.000000e+00, i64 3
  %i.uy = fadd <4 x float> %i.ux, %i.uv           ; 4 uses
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.va = fmul <4 x float> %i.uz, %i.ry
  %i.vb = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.vc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rx, <4 x float> %i.vb, <4 x float> %i.va)
  %i.vd = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ve = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sk, <4 x float> %i.vd, <4 x float> %i.vc)
  %i.vf = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.vg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.td, <4 x float> %i.vf, <4 x float> %i.ve)
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.vh, ptr %.sroa.15105.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

bb.m:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, <2 x float> } @QuaternionSlerp(<2 x float>, <2 x float>, <2 x float>, <2 x float>, float noundef) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateModelAnimationVertexBuffers(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge227:                                   ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph226, %.critedge
  %indvars.iv238 = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next239, %.critedge ] ; 2 uses
  %i.h = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv238 ; 8 uses
  %.sroa.071.0.copyload = load i32, ptr %i.h, align 8 ; 3 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.674.0.copyload = load ptr, ptr %.sroa.674.0..sroa_idx, align 8 ; 3 uses
  %.sroa.978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.978.0.copyload = load ptr, ptr %.sroa.978.0..sroa_idx, align 8 ; 4 uses
  %.sroa.1483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.1483.0.copyload = load ptr, ptr %.sroa.1483.0..sroa_idx, align 8 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8 ; 4 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8 ; 4 uses
  %.sroa.36102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.sroa.36102.0.copyload = load ptr, ptr %.sroa.36102.0..sroa_idx, align 8 ; 2 uses
  %i.i = icmp ne ptr %.sroa.16.0.copyload, null
  %i.j = icmp ne ptr %.sroa.1483.0.copyload, null
  %or.cond.not235 = select i1 %i.i, i1 %i.j, i1 false
  %i.k = icmp ne ptr %.sroa.18.0.copyload, null
  %or.cond5.not232 = select i1 %or.cond.not235, i1 %i.k, i1 false
  %i.l = icmp ne ptr %.sroa.26.0.copyload, null
  %or.cond8.not230 = select i1 %or.cond5.not232, i1 %i.l, i1 false
  %i.m = icmp sgt i32 %.sroa.071.0.copyload, 0
  %or.cond228 = select i1 %or.cond8.not230, i1 %i.m, i1 false
  br i1 %or.cond228, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.n = mul nuw nsw i32 %.sroa.071.0.copyload, 3
  %.not114 = icmp eq ptr %.sroa.978.0.copyload, null ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.d
  br i1 %.2, label %bb.i, label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv236 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next237, %bb.d ] ; 7 uses
  %.0109222 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.d ]
  %.0110221 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.0.copyload, i64 %indvars.iv236 ; 3 uses
  %i.q = add nuw nsw i64 %indvars.iv236, 1        ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.p, align 4
  %i.r = add nuw nsw i64 %indvars.iv236, 2        ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.0.copyload, i64 %i.r ; 3 uses
  store float 0.000000e+00, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.26.0.copyload, i64 %indvars.iv236 ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.26.0.copyload, i64 %i.r ; 3 uses
  store float 0.000000e+00, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.674.0.copyload, i64 %indvars.iv236
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.674.0.copyload, i64 %i.q
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.674.0.copyload, i64 %i.r
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.978.0.copyload, i64 %indvars.iv236
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.978.0.copyload, i64 %i.q
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.978.0.copyload, i64 %i.r
  %i.ab = sext i32 %.0110221 to i64
  %i.ac = add i32 %.0110221, 4                    ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 3 ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next237, %i.o
  br i1 %i.ad, label %bb.c, label %._crit_edge

bb.e:                                             ; preds = %bb.c, %bb.h
  %indvars.iv = phi i64 [ %i.ab, %bb.c ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.1219 = phi i1 [ %.0109222, %bb.c ], [ %.2, %bb.h ]
  %i.ae = getelementptr inbounds [4 x i8], ptr %.sroa.16.0.copyload, i64 %indvars.iv
  %i.af = load float, ptr %i.ae, align 4          ; 4 uses
  %i.ag = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %.sroa.1483.0.copyload, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.aj ; 17 uses
  %.sroa.11158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %.sroa.11158.0.copyload = load float, ptr %.sroa.11158.0..sroa_idx, align 4
  %.sroa.12159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %.sroa.12159.0.copyload = load float, ptr %.sroa.12159.0..sroa_idx, align 4
  %.sroa.13160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.13160.0.copyload = load float, ptr %.sroa.13160.0..sroa_idx, align 4
  %.sroa.14161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %.sroa.14161.0.copyload = load float, ptr %.sroa.14161.0..sroa_idx, align 4
  %i.al = load float, ptr %i.w, align 4           ; 2 uses
  %i.am = load float, ptr %i.v, align 4           ; 2 uses
  %i.an = load float, ptr %i.x, align 4           ; 2 uses
  %i.ao = load <8 x float>, ptr %i.ak, align 4    ; 4 uses
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.au = insertelement <2 x float> poison, float %i.am, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.as)
  %i.ax = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ay = insertelement <2 x float> poison, float %i.an, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.aw)
  %i.bb = shufflevector <8 x float> %i.ao, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bc = fadd <2 x float> %i.bb, %i.ba
  %i.bd = fmul float %i.al, %.sroa.12159.0.copyload
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.11158.0.copyload, float %i.am, float %i.bd)
  %i.bf = tail call float @llvm.fmuladd.f32(float %.sroa.13160.0.copyload, float %i.an, float %i.be)
  %i.bg = fadd float %.sroa.14161.0.copyload, %i.bf
  %i.bh = load <2 x float>, ptr %i.p, align 4
  %i.bi = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bj, <2 x float> %i.bh)
  store <2 x float> %i.bk, ptr %i.p, align 4
  %i.bl = load float, ptr %i.s, align 4
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.af, float %i.bl)
  store float %i.bm, ptr %i.s, align 4
  br i1 %.not114, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.10157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %.sroa.9156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.8155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %.sroa.7154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.15162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.16192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %.sroa.17193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.sroa.18194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.bn = load float, ptr %i.z, align 4           ; 2 uses
  %i.bo = load float, ptr %i.y, align 4           ; 2 uses
  %i.bp = load float, ptr %i.aa, align 4          ; 2 uses
  %.sroa.0179.0.copyload = load float, ptr %i.ak, align 4 ; 4 uses
  %.sroa.4180.0.copyload = load float, ptr %.sroa.4151.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5181.0.copyload = load float, ptr %.sroa.5152.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6182.0.copyload = load float, ptr %.sroa.6153.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7183.0.copyload = load float, ptr %.sroa.7154.0..sroa_idx, align 4 ; 5 uses
  %.sroa.8184.0.copyload = load float, ptr %.sroa.8155.0..sroa_idx, align 4 ; 4 uses
  %.sroa.9185.0.copyload = load float, ptr %.sroa.9156.0..sroa_idx, align 4 ; 5 uses
  %.sroa.10186.0.copyload = load float, ptr %.sroa.10157.0..sroa_idx, align 4 ; 4 uses
  %i.bq = load <4 x float>, ptr %.sroa.11158.0..sroa_idx, align 4 ; 6 uses
  %.sroa.15191.0.copyload = load float, ptr %.sroa.15162.0..sroa_idx, align 4 ; 5 uses
  %.sroa.16192.0.copyload = load float, ptr %.sroa.16192.0..sroa_idx, align 4 ; 5 uses
  %.sroa.17193.0.copyload = load float, ptr %.sroa.17193.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18194.0.copyload = load float, ptr %.sroa.18194.0..sroa_idx, align 4 ; 6 uses
  %i.br = fneg float %.sroa.4180.0.copyload       ; 4 uses
  %i.bs = fneg float %.sroa.8184.0.copyload       ; 2 uses
  %i.bt = fmul float %.sroa.7183.0.copyload, %i.br
  %i.bu = tail call float @llvm.fmuladd.f32(float %.sroa.0179.0.copyload, float %.sroa.8184.0.copyload, float %i.bt) ; 3 uses
  %i.bv = fmul float %.sroa.15191.0.copyload, %i.br
  %i.bw = tail call float @llvm.fmuladd.f32(float %.sroa.0179.0.copyload, float %.sroa.16192.0.copyload, float %i.bv) ; 4 uses
  %i.bx = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.br, i64 1
  %i.ca = fmul <2 x float> %i.bx, %i.bz
  %i.cb = insertelement <2 x float> poison, float %.sroa.7183.0.copyload, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %.sroa.0179.0.copyload, i64 1 ; 2 uses
  %i.cd = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.ca) ; 4 uses
  %i.cf = fmul float %.sroa.15191.0.copyload, %i.bs
  %i.cg = fneg float %.sroa.6182.0.copyload       ; 4 uses
  %i.ch = fneg float %.sroa.10186.0.copyload      ; 2 uses
  %i.ci = fmul float %.sroa.9185.0.copyload, %i.cg
  %i.cj = tail call float @llvm.fmuladd.f32(float %.sroa.5181.0.copyload, float %.sroa.10186.0.copyload, float %i.ci) ; 3 uses
  %i.ck = fmul float %.sroa.17193.0.copyload, %i.cg
  %i.cl = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cg, i64 1
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = insertelement <2 x float> poison, float %.sroa.9185.0.copyload, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %.sroa.5181.0.copyload, i64 1 ; 2 uses
  %i.cr = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cr, <2 x float> %i.co) ; 4 uses
  %i.ct = fmul float %.sroa.17193.0.copyload, %i.ch
  %i.cu = tail call float @llvm.fmuladd.f32(float %.sroa.9185.0.copyload, float %.sroa.18194.0.copyload, float %i.ct) ; 4 uses
  %i.cv = fneg <4 x float> %i.bq
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cx = insertelement <2 x float> poison, float %.sroa.15191.0.copyload, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %.sroa.17193.0.copyload, i64 1 ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %i.cw
  %i.da = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.db = insertelement <2 x float> poison, float %.sroa.16192.0.copyload, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %.sroa.18194.0.copyload, i64 1 ; 2 uses
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dc, <2 x float> %i.cz) ; 4 uses
  %i.de = fneg float %i.cu                        ; 2 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %.sroa.5181.0.copyload, float %.sroa.18194.0.copyload, float %i.ck) ; 4 uses
  %i.dg = extractelement <2 x float> %i.ce, i64 1
  %i.dh = fmul float %i.dg, %i.de
  %i.di = extractelement <2 x float> %i.dd, i64 1
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.di, float %i.dh)
  %i.dk = extractelement <2 x float> %i.cs, i64 0
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.dk, float %i.dj)
  %i.dm = extractelement <2 x float> %i.ce, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.df, float %i.dl)
  %i.do = fneg float %i.bw                        ; 2 uses
  %i.dp = tail call float @llvm.fmuladd.f32(float %.sroa.7183.0.copyload, float %.sroa.16192.0.copyload, float %i.cf) ; 4 uses
  %i.dq = fneg float %i.dp                        ; 2 uses
  %i.dr = extractelement <2 x float> %i.cs, i64 1
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dr, float %i.dn)
  %i.dt = extractelement <2 x float> %i.dd, i64 0
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.cj, float %i.ds)
  %i.dv = fdiv float 1.000000e+00, %i.du          ; 5 uses
  %i.dw = fneg float %.sroa.7183.0.copyload
  %i.dx = fneg float %.sroa.15191.0.copyload      ; 2 uses
  %i.dy = fneg float %.sroa.9185.0.copyload
  %i.dz = fneg float %.sroa.17193.0.copyload      ; 2 uses
  %i.ea = insertelement <2 x float> poison, float %i.de, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.df, i64 1
  %i.ec = fmul <2 x float> %i.cd, %i.eb
  %i.ed = insertelement <2 x float> poison, float %.sroa.8184.0.copyload, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.br, i64 1
  %i.ef = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ec)
  %i.eh = fneg float %.sroa.16192.0.copyload
  %i.ei = insertelement <2 x float> %i.dc, float %i.eh, i64 1
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.cs, <2 x float> %i.eg)
  %i.ek = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = fneg float %i.df                        ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.en, i64 1
  %i.eq = fmul <2 x float> %i.bx, %i.ep
  %i.er = insertelement <2 x float> %i.cc, float %i.dw, i64 0
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.ef, <2 x float> %i.eq)
  %i.et = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %.sroa.15191.0.copyload, i64 1
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.cs, <2 x float> %i.es)
  %i.ew = fmul <2 x float> %i.ev, %i.el
  %i.ex = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.bw, i64 1
  %i.ez = fmul <2 x float> %i.cr, %i.ey
  %i.fa = insertelement <2 x float> poison, float %.sroa.10186.0.copyload, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.cg, i64 1
  %i.fc = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fc, <2 x float> %i.ez)
  %i.fe = fneg float %.sroa.18194.0.copyload
  %i.ff = insertelement <2 x float> poison, float %.sroa.18194.0.copyload, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.fe, i64 1
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.ce, <2 x float> %i.fd)
  %i.fi = fmul <2 x float> %i.fh, %i.el
  %i.fj = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.do, i64 1
  %i.fl = fmul <2 x float> %i.cl, %i.fk
  %i.fm = insertelement <2 x float> %i.cq, float %i.dy, i64 0
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fc, <2 x float> %i.fl)
  %i.fo = insertelement <2 x float> %i.cy, float %i.dz, i64 0
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.ce, <2 x float> %i.fn)
  %i.fq = fmul <2 x float> %i.fp, %i.el
  %i.fr = fmul float %.sroa.8184.0.copyload, %i.en
  %i.fs = tail call float @llvm.fmuladd.f32(float %.sroa.4180.0.copyload, float %i.cu, float %i.fr)
  %i.ft = tail call float @llvm.fmuladd.f32(float %.sroa.16192.0.copyload, float %i.cj, float %i.fs)
  %i.fu = fmul float %i.ft, %i.dv
  %i.fv = fneg float %.sroa.0179.0.copyload
  %i.fw = fmul float %.sroa.7183.0.copyload, %i.df
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.cu, float %i.fw)
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.cj, float %i.fx)
  %i.fz = fmul float %i.fy, %i.dv
  %i.ga = fmul float %.sroa.10186.0.copyload, %i.do
  %i.gb = tail call float @llvm.fmuladd.f32(float %.sroa.6182.0.copyload, float %i.dp, float %i.ga)
  %i.gc = tail call float @llvm.fmuladd.f32(float %.sroa.18194.0.copyload, float %i.bu, float %i.gb)
  %i.gd = fmul float %i.gc, %i.dv
  %i.ge = fneg float %.sroa.5181.0.copyload
  %i.gf = fmul float %.sroa.9185.0.copyload, %i.bw
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.dp, float %i.gf)
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.bu, float %i.gg)
  %i.gi = fmul float %i.gh, %i.dv
  %i.gj = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x float> %i.gk, %i.ew
  %i.gm = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.gn, <2 x float> %i.gl)
  %i.gp = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.gq, <2 x float> %i.go)
  %i.gs = fadd <2 x float> %i.fq, %i.gr
  %i.gt = fmul float %i.bn, %i.fz
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.bo, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.bp, float %i.gu)
  %i.gw = fadd float %i.gi, %i.gv
  %i.gx = load <2 x float>, ptr %i.t, align 4
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.bj, <2 x float> %i.gx)
  store <2 x float> %i.gy, ptr %i.t, align 4
  %i.gz = load float, ptr %i.u, align 4
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.af, float %i.gz)
  store float %i.ha, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.2 = phi i1 [ %.1219, %bb.e ], [ true, %bb.g ], [ true, %bb.f ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.i:                                             ; preds = %._crit_edge
  %i.hb = load i32, ptr %.sroa.36102.0.copyload, align 4
  %i.hc = mul i32 %.sroa.071.0.copyload, 12       ; 2 uses
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.hb, ptr noundef nonnull %.sroa.18.0.copyload, i32 noundef %i.hc, i32 noundef 0) #54
  br i1 %.not114, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.36102.0.copyload, i64 12
  %i.he = load i32, ptr %i.hd, align 4
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.he, ptr noundef nonnull %.sroa.26.0.copyload, i32 noundef %i.hc, i32 noundef 0) #54
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.j, %bb.i, %bb.b
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count
  br i1 %exitcond241.not, label %._crit_edge227, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @UpdateModelAnimationEx(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %1, float noundef %2, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %3, float noundef %4, float noundef %5) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4              ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond5 = select i1 %or.cond, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ne ptr %i.n, null
  %or.cond11 = select i1 %or.cond8, i1 %i.o, i1 false
  %i.p = fcmp oge float %5, 0.000000e+00
  %or.cond13 = and i1 %i.p, %or.cond11
  %i.q = fcmp ole float %5, 1.000000e+00
  %or.cond15 = and i1 %i.q, %or.cond13
  br i1 %or.cond15, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.r = fptosi float %2 to i32
  %i.s = srem i32 %i.r, %i.e                      ; 3 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = sitofp i32 %i.s to float
  %i.v = fsub float %2, %i.u                      ; 2 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = select i1 %i.w, float 0.000000e+00, float %i.v ; 2 uses
  %i.y = fcmp ogt float %i.x, 1.000000e+00
  %.0.i = select i1 %i.y, float 1.000000e+00, float %i.x ; 5 uses
  %.not166 = icmp slt i32 %i.t, %i.e
  br i1 %.not166, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = srem i32 %i.t, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0150 = phi i32 [ %i.z, %bb.c ], [ %i.t, %bb.b ]
  %i.aa = fptosi float %4 to i32
  %i.ab = srem i32 %i.aa, %i.k                    ; 3 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 3 uses
  %i.ad = sitofp i32 %i.ab to float
  %i.ae = fsub float %4, %i.ad                    ; 2 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = select i1 %i.af, float 0.000000e+00, float %i.ae ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 1.000000e+00
  %.0.i169 = select i1 %i.ah, float 1.000000e+00, float %i.ag ; 5 uses
  %.not168 = icmp slt i32 %i.ac, %i.k
  br i1 %.not168, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = urem i32 %i.ac, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0152 = phi i32 [ %i.ai, %bb.e ], [ %i.ac, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.am = sext i32 %i.s to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.am
  %i.ao = sext i32 %.0150 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ao
  %i.aq = fsub float 1.000000e+00, %.0.i
  %i.ar = sext i32 %i.ab to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ar
  %i.at = sext i32 %.0152 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.at
  %i.av = fsub float 1.000000e+00, %.0.i169
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = fsub nnan float 1.000000e+00, %5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  %wide.trip.count = zext nneg i32 %i.ak to i64
  %i.bb = insertelement <2 x float> poison, float %.0.i169, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bd = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bf = insertelement <2 x float> poison, float %5, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bh = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float poison>, float %5, i64 3
  br label %bb.g

._crit_edge:                                      ; preds = %QuaternionSlerp.exit288, %bb.f
  tail call fastcc void @UpdateModelAnimationVertexBuffers(ptr noundef nonnull byval(%struct.Model) align 8 %0)
  br label %bb.w

bb.g:                                             ; preds = %.lr.ph, %QuaternionSlerp.exit288
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %QuaternionSlerp.exit288 ] ; 8 uses
  %i.bi = load ptr, ptr %i.an, align 8
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv ; 6 uses
  %i.bk = load ptr, ptr %i.ap, align 8
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %indvars.iv ; 6 uses
  %.sroa.086.0.copyload = load <2 x float>, ptr %i.bj, align 4 ; 2 uses
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.287.0.copyload = load float, ptr %.sroa.287.0..sroa_idx, align 4 ; 2 uses
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.bl, align 4
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %i.bm = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.086.0.copyload
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bm, <2 x float> %.sroa.086.0.copyload) ; 2 uses
  %i.bo = fsub float %.sroa.285.0.copyload, %.sroa.287.0.copyload
  %i.bp = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.bo, float %.sroa.287.0.copyload) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bs = load <2 x float>, ptr %i.bq, align 4    ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bu = load <2 x float>, ptr %i.bt, align 4    ; 7 uses
  %i.bv = load <2 x float>, ptr %i.br, align 4    ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bx = load <2 x float>, ptr %i.bw, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %i.bs, i64 0
  %.sroa.023.0.vec.extract.i = extractelement <2 x float> %i.bv, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bv
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bz = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i, float %.sroa.023.0.vec.extract.i, float %i.by)
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %i.bu, i64 0
  %.sroa.12.8.vec.extract.i = extractelement <2 x float> %i.bx, i64 0
  %i.ca = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i, float %.sroa.12.8.vec.extract.i, float %i.bz)
  %.sroa.9.12.vec.extract.i = extractelement <2 x float> %i.bu, i64 1
end_hunk_2
begin_hunk_3_@UpdateModelAnimationEx:bb.a
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fq) ; 2 uses
  %sqrt.i.i222 = tail call float @llvm.sqrt.f32(float %i.fr)
  %i.fs = fcmp oeq float %i.fr, 0.000000e+00
  %i.ft = fdiv float 1.000000e+00, %sqrt.i.i222
  %i.fu = select i1 %i.fs, float 1.000000e+00, float %i.ft
  %i.fv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fx = fmul <2 x float> %i.fm, %i.fw
  %i.fy = fmul <2 x float> %i.fi, %i.fw
  br label %QuaternionSlerp.exit229

bb.o:                                             ; preds = %bb.m
  %i.fz = tail call float @acosf(float noundef %.0.i195) #54 ; 2 uses
  %i.ga = fneg float %.0.i195
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %.0.i195, float 1.000000e+00)
  %i.gc = tail call float @sqrtf(float noundef %i.gb) #54 ; 2 uses
  %i.gd = tail call float @llvm.fabs.f32(float %i.gc)
  %i.ge = fcmp olt float %i.gd, f0x358637BD
  br i1 %i.ge, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gf = fmul <2 x float> %.sroa.023.0.i196, splat (float 5.000000e-01)
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> splat (float 5.000000e-01), <2 x float> %i.gf)
  %i.gh = fmul <2 x float> %.sroa.12.0.i197, splat (float 5.000000e-01)
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> splat (float 5.000000e-01), <2 x float> %i.gh)
  br label %QuaternionSlerp.exit229

bb.q:                                             ; preds = %bb.o
  %i.gj = fmul float %i.av, %i.fz
  %i.gk = tail call float @sinf(float noundef %i.gj) #54
  %i.gl = fmul float %.0.i169, %i.fz
  %i.gm = tail call float @sinf(float noundef %i.gl) #54
  %i.gn = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gm, i64 1
  %i.gp = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fdiv <2 x float> %i.go, %i.gq           ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gt = fmul <2 x float> %.sroa.023.0.i196, %i.gs
  %i.gu = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.gu, <2 x float> %i.gt)
  %i.gw = fmul <2 x float> %.sroa.12.0.i197, %i.gs
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.gu, <2 x float> %i.gw)
  br label %QuaternionSlerp.exit229

QuaternionSlerp.exit229:                          ; preds = %QuaternionSlerp.exit, %bb.n, %bb.p, %bb.q
  %.pn87.i198 = phi <2 x float> [ %i.eq, %QuaternionSlerp.exit ], [ %i.fx, %bb.n ], [ %i.gg, %bb.p ], [ %i.gv, %bb.q ] ; 4 uses
  %.pn85.i199 = phi <2 x float> [ %i.es, %QuaternionSlerp.exit ], [ %i.fy, %bb.n ], [ %i.gi, %bb.p ], [ %i.gx, %bb.q ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.gy, align 4 ; 2 uses
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 36
  %.sroa.253.0.copyload = load float, ptr %.sroa.253.0..sroa_idx, align 4 ; 2 uses
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.gz, align 4
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 4
  %i.ha = fsub <2 x float> %.sroa.050.0.copyload, %.sroa.052.0.copyload
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ha, <2 x float> %.sroa.052.0.copyload)
  %i.hc = fsub float %.sroa.251.0.copyload, %.sroa.253.0.copyload
  %i.hd = tail call float @llvm.fmuladd.f32(float %.0.i169, float %i.hc, float %.sroa.253.0.copyload)
  %i.he = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %indvars.iv ; 8 uses
  %i.hf = fsub <2 x float> %i.el, %i.bn
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.hf, <2 x float> %i.bn)
  %i.hh = fsub float %i.en, %i.bp
  %i.hi = tail call float @llvm.fmuladd.f32(float %5, float %i.hh, float %i.bp)
  store <2 x float> %i.hg, ptr %i.he, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  store float %i.hi, ptr %.sroa.445.0..sroa_idx, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.054.0.vec.extract.i246 = extractelement <2 x float> %.pn87.i, i64 0
  %.sroa.023.0.vec.extract.i247 = extractelement <2 x float> %.pn87.i198, i64 0
  %foldExtExtBinop669 = fmul <2 x float> %.pn87.i, %.pn87.i198
  %i.hk = extractelement <2 x float> %foldExtExtBinop669, i64 1
  %i.hl = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i246, float %.sroa.023.0.vec.extract.i247, float %i.hk)
  %.sroa.9.8.vec.extract.i250 = extractelement <2 x float> %.pn85.i, i64 0
  %.sroa.12.8.vec.extract.i251 = extractelement <2 x float> %.pn85.i199, i64 0
  %i.hm = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i250, float %.sroa.12.8.vec.extract.i251, float %i.hl)
  %.sroa.9.12.vec.extract.i252 = extractelement <2 x float> %.pn85.i, i64 1
  %.sroa.12.12.vec.extract.i253 = extractelement <2 x float> %.pn85.i199, i64 1
  %i.hn = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i252, float %.sroa.12.12.vec.extract.i253, float %i.hm) ; 3 uses
  %i.ho = fcmp olt float %i.hn, 0.000000e+00      ; 3 uses
  %i.hp = fneg <2 x float> %.pn87.i198
  %i.hq = fneg <2 x float> %.pn85.i199
  %i.hr = fneg float %i.hn
  %.0.i254 = select i1 %i.ho, float %i.hr, float %i.hn ; 5 uses
  %.sroa.023.0.i255 = select i1 %i.ho, <2 x float> %i.hp, <2 x float> %.pn87.i198 ; 3 uses
  %.sroa.12.0.i256 = select i1 %i.ho, <2 x float> %i.hq, <2 x float> %.pn85.i199 ; 3 uses
  %i.hs = tail call float @llvm.fabs.f32(float %.0.i254)
  %i.ht = fcmp ult float %i.hs, 1.000000e+00
  br i1 %i.ht, label %bb.r, label %QuaternionSlerp.exit288

bb.r:                                             ; preds = %QuaternionSlerp.exit229
  %i.hu = fcmp ogt float %.0.i254, f0x3F733333
  br i1 %i.hu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hv = fsub <2 x float> %.sroa.12.0.i256, %.pn85.i
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.hv, <2 x float> %.pn85.i) ; 3 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.hy = extractelement <2 x float> %i.hw, i64 1 ; 2 uses
  %i.hz = fsub <2 x float> %.sroa.023.0.i255, %.pn87.i
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.hz, <2 x float> %.pn87.i) ; 4 uses
  %foldExtExtBinop671 = fmul <2 x float> %i.ia, %i.ia
  %i.ib = extractelement <2 x float> %foldExtExtBinop671, i64 1
  %i.ic = extractelement <2 x float> %i.ia, i64 0 ; 2 uses
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.ib)
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.id)
  %i.if = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ie) ; 2 uses
  %sqrt.i.i281 = tail call float @llvm.sqrt.f32(float %i.if)
  %i.ig = fcmp oeq float %i.if, 0.000000e+00
  %i.ih = fdiv float 1.000000e+00, %sqrt.i.i281
  %i.ii = select i1 %i.ig, float 1.000000e+00, float %i.ih
  %i.ij = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.il = fmul <2 x float> %i.ia, %i.ik
  %i.im = fmul <2 x float> %i.hw, %i.ik
  br label %QuaternionSlerp.exit288

bb.t:                                             ; preds = %bb.r
  %i.in = tail call float @acosf(float noundef %.0.i254) #54 ; 2 uses
  %i.io = fneg float %.0.i254
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.io, float %.0.i254, float 1.000000e+00)
  %i.iq = tail call float @sqrtf(float noundef %i.ip) #54 ; 2 uses
  %i.ir = tail call float @llvm.fabs.f32(float %i.iq)
  %i.is = fcmp olt float %i.ir, f0x358637BD
  br i1 %i.is, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.it = fmul <2 x float> %.sroa.023.0.i255, splat (float 5.000000e-01)
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn87.i, <2 x float> splat (float 5.000000e-01), <2 x float> %i.it)
  %i.iv = fmul <2 x float> %.sroa.12.0.i256, splat (float 5.000000e-01)
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn85.i, <2 x float> splat (float 5.000000e-01), <2 x float> %i.iv)
  br label %QuaternionSlerp.exit288

bb.v:                                             ; preds = %bb.t
  %i.ix = fmul float %i.ay, %i.in
  %i.iy = tail call float @sinf(float noundef %i.ix) #54
  %i.iz = fmul float %5, %i.in
  %i.ja = tail call float @sinf(float noundef %i.iz) #54
  %i.jb = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ja, i64 1
  %i.jd = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fdiv <2 x float> %i.jc, %i.je           ; 2 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jh = fmul <2 x float> %.sroa.023.0.i255, %i.jg
  %i.ji = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn87.i, <2 x float> %i.ji, <2 x float> %i.jh)
  %i.jk = fmul <2 x float> %.sroa.12.0.i256, %i.jg
  %i.jl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn85.i, <2 x float> %i.ji, <2 x float> %i.jk)
  br label %QuaternionSlerp.exit288

QuaternionSlerp.exit288:                          ; preds = %QuaternionSlerp.exit229, %bb.s, %bb.u, %bb.v
  %.pn87.i257 = phi <2 x float> [ %.pn87.i, %QuaternionSlerp.exit229 ], [ %i.il, %bb.s ], [ %i.iu, %bb.u ], [ %i.jj, %bb.v ] ; 7 uses
  %.pn85.i258 = phi <2 x float> [ %.pn85.i, %QuaternionSlerp.exit229 ], [ %i.im, %bb.s ], [ %i.iw, %bb.u ], [ %i.jl, %bb.v ] ; 5 uses
  store <2 x float> %.pn87.i257, ptr %i.hj, align 4
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  store <2 x float> %.pn85.i258, ptr %.sroa.435.0..sroa_idx, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.he, i64 28 ; 2 uses
  %i.jn = fsub <2 x float> %i.hb, %i.ed
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.jn, <2 x float> %i.ed)
  %i.jp = fsub float %i.hd, %i.ef
  store <2 x float> %i.jo, ptr %i.jm, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  %i.jq = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %indvars.iv ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 28
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 36
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jy = shufflevector <2 x float> %.pn87.i257, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jz = fmul <2 x float> %.pn87.i257, %.pn87.i257 ; 2 uses
  %i.ka = fmul <2 x float> %i.jy, %.pn85.i258     ; 4 uses
  %i.kb = fmul <2 x float> %.pn87.i257, %.pn85.i258 ; 3 uses
  %shift = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop673 = fsub <2 x float> %i.kb, %shift
  %i.kc = extractelement <2 x float> %foldExtExtBinop673, i64 0
  %shift675 = shufflevector <2 x float> %.pn87.i257, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop676 = fmul <2 x float> %.pn87.i257, %shift675 ; 2 uses
  %i.kd = shufflevector <2 x float> %foldExtExtBinop676, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ke = extractelement <2 x float> %foldExtExtBinop676, i64 0
  %i.kf = shufflevector <2 x float> %.pn85.i258, <2 x float> %i.ka, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.kg = shufflevector <2 x float> %.pn85.i258, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.kh = insertelement <4 x float> %i.kg, float 1.000000e+00, i64 3
  %i.ki = fmul <4 x float> %i.kf, %i.kh           ; 2 uses
  %i.kj = shufflevector <2 x float> %i.jz, <2 x float> %i.ka, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.kd, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.kl = fadd <4 x float> %i.kk, %i.ki           ; 2 uses
  %i.km = extractelement <4 x float> %i.ki, i64 1
  %i.kn = fsub float %i.ke, %i.km
  %i.ko = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.kp = insertelement <4 x float> %i.ko, float %i.kc, i64 1
  %i.kq = insertelement <4 x float> %i.kp, float %i.kn, i64 2
  %i.kr = fmul <4 x float> %i.kq, splat (float 2.000000e+00) ; 4 uses
  %i.ks = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kb)
  %shift678 = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop679 = fsub <2 x float> %i.ka, %shift678
  %i.kt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jz)
  %i.ku = load float, ptr %i.he, align 4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.kw = load float, ptr %i.kv, align 4          ; 2 uses
  %i.kx = load float, ptr %.sroa.445.0..sroa_idx, align 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.kz = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.la = insertelement <4 x float> %i.kz, float %i.kt, i64 2
  %i.lb = insertelement <4 x float> %i.la, float %i.jp, i64 3
  %i.lc = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.ef, i64 3
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lb, <4 x float> %i.bh, <4 x float> %i.lc) ; 6 uses
  %i.le = extractelement <4 x float> %i.ld, i64 3
  store float %i.le, ptr %.sroa.4.0..sroa_idx, align 4
  %i.lf = load float, ptr %i.jr, align 4          ; 3 uses
  %i.lg = load float, ptr %i.jt, align 4          ; 3 uses
  %i.lh = load float, ptr %i.js, align 4          ; 3 uses
  %i.li = load <2 x float>, ptr %i.ju, align 4    ; 6 uses
  %i.lj = load <2 x float>, ptr %i.jv, align 4    ; 6 uses
  %i.lk = fmul <2 x float> %i.li, %i.li           ; 3 uses
  %foldExtExtBinop681 = fmul <2 x float> %i.lj, %i.lj ; 2 uses
  %shift683 = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684 = fmul <2 x float> %i.li, %shift683 ; 2 uses
  %shift686 = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop687 = fmul <2 x float> %shift686, %i.lj ; 2 uses
  %shift689 = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop690 = fadd <2 x float> %shift689, %foldExtExtBinop681
  %i.ll = extractelement <2 x float> %foldExtExtBinop690, i64 0
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.ll, float -2.000000e+00, float 1.000000e+00)
  %foldExtExtBinop692 = fadd <2 x float> %foldExtExtBinop684, %foldExtExtBinop687
  %i.ln = extractelement <2 x float> %foldExtExtBinop692, i64 0
  %i.lo = fmul float %i.ln, 2.000000e+00
  %foldExtExtBinop694 = fsub <2 x float> %foldExtExtBinop684, %foldExtExtBinop687
  %i.lp = extractelement <2 x float> %foldExtExtBinop694, i64 0
  %i.lq = fmul float %i.lp, 2.000000e+00
  %foldExtExtBinop696 = fadd <2 x float> %i.lk, %foldExtExtBinop681
  %i.lr = extractelement <2 x float> %foldExtExtBinop696, i64 0
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.lr, float -2.000000e+00, float 1.000000e+00)
  %i.lt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lk)
  %i.lu = fmul float %i.lh, 0.000000e+00
  %i.lv = fadd float %i.lu, 0.000000e+00          ; 4 uses
  %i.lw = load <2 x float>, ptr %i.jq, align 4    ; 3 uses
  %i.lx = load float, ptr %i.jw, align 4          ; 2 uses
  %i.ly = load float, ptr %i.jx, align 4          ; 4 uses
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lg, float 0.000000e+00, float 0.000000e+00)
  %i.ma = fadd float %i.lz, 0.000000e+00          ; 3 uses
  %i.mb = extractelement <2 x float> %i.lw, i64 0
  %i.mc = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.mf = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = fmul <2 x float> %i.li, %i.mf           ; 4 uses
  %i.mh = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mi = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mj = fmul <2 x float> %i.mh, %i.mi           ; 4 uses
  %i.mk = fadd <2 x float> %i.mg, %i.mj
  %i.ml = fsub <2 x float> %i.mg, %i.mj
  %i.mm = shufflevector <2 x float> %i.mk, <2 x float> %i.ml, <2 x i32> <i32 0, i32 3>
  %i.mn = fmul <2 x float> %i.mm, splat (float 2.000000e+00) ; 4 uses
  %i.mo = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.ls, i64 1 ; 2 uses
  %i.mq = fmul <2 x float> %i.mp, zeroinitializer ; 2 uses
  %i.mr = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.ms = insertelement <2 x float> %i.mr, float %i.lo, i64 1 ; 3 uses
  %i.mt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> zeroinitializer, <2 x float> %i.mq) ; 2 uses
  %i.mu = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.ms, <2 x float> %i.mq)
  %i.mx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mn, <2 x float> zeroinitializer, <2 x float> %i.mw)
  %i.my = fadd <2 x float> %i.mx, zeroinitializer ; 5 uses
  %i.mz = fmul <2 x float> %i.my, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mn, <2 x float> zeroinitializer, <2 x float> %i.mt)
  %i.nb = fadd <2 x float> %i.na, zeroinitializer ; 3 uses
  %i.nc = extractelement <2 x float> %i.my, i64 0
  %i.nd = extractelement <2 x float> %i.my, i64 1
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nc, float 0.000000e+00, float %i.nd)
  %shift698 = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop699 = fadd <2 x float> %i.my, %shift698
  %i.nf = extractelement <2 x float> %foldExtExtBinop699, i64 0
  %i.ng = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ni = fmul <2 x float> %i.nh, %i.mp
  %i.nj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> zeroinitializer, <2 x float> %i.ni)
  %i.nk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mn, <2 x float> zeroinitializer, <2 x float> %i.nj)
  %i.nl = fadd <2 x float> %i.nk, zeroinitializer ; 4 uses
  %i.nm = extractelement <2 x float> %i.nl, i64 0
  %i.nn = extractelement <2 x float> %i.nl, i64 1
  %i.no = fmul float %i.nn, 0.000000e+00          ; 2 uses
  %i.np = fadd float %i.nm, %i.no
  %i.nq = fmul <2 x float> %i.nb, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.nr = extractelement <2 x float> %i.nq, i64 1
  %i.ns = extractelement <2 x float> %i.nb, i64 0
  %i.nt = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.nt)
  %i.nv = load <2 x float>, ptr %i.jm, align 4
  %i.nw = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.nx = shufflevector <2 x float> %i.nv, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.ny = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.nx, <3 x i32> <i32 0, i32 1, i32 4> ; 3 uses
  %i.nz = fmul <3 x float> %i.nw, %i.ny
  %i.oa = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ob = fmul <3 x float> %i.oa, %i.ny
  %i.oc = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.od = fmul <3 x float> %i.oc, %i.ny
  %i.oe = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.nx, <3 x i32> <i32 0, i32 3, i32 2> ; 3 uses
  %i.of = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> zeroinitializer
  %i.og = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oe, <3 x float> %i.of, <3 x float> %i.nz) ; 2 uses
  %i.oh = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> zeroinitializer
  %i.oi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oe, <3 x float> %i.oh, <3 x float> %i.ob) ; 2 uses
  %i.oj = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ok = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oe, <3 x float> %i.oj, <3 x float> %i.od) ; 2 uses
  %i.ol = shufflevector <3 x float> %i.ok, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.om = shufflevector <2 x float> %i.my, <2 x float> %i.nl, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.on = shufflevector <4 x float> %i.om, <4 x float> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.oo = shufflevector <2 x float> %i.mz, <2 x float> %i.nl, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.op = insertelement <4 x float> %i.oo, float %i.no, i64 2
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> %i.ol, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.or = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.on, <4 x float> zeroinitializer, <4 x float> %i.oq) ; 4 uses
  %i.os = extractelement <4 x float> %i.or, i64 3
  %i.ot = fadd float %i.os, 0.000000e+00          ; 4 uses
  %i.ou = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> %foldExtExtBinop679, <2 x i32> <i32 0, i32 2>
  %i.ow = fmul <2 x float> %i.ov, splat (float 2.000000e+00) ; 3 uses
  %i.ox = shufflevector <3 x float> %i.og, <3 x float> %i.oi, <2 x i32> <i32 0, i32 3>
  %i.oy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> zeroinitializer, <2 x float> %i.ox)
  %i.oz = fadd <2 x float> %i.oy, zeroinitializer ; 3 uses
  %i.pa = extractelement <2 x float> %i.oz, i64 1
  %i.pb = fmul float %i.pa, 0.000000e+00          ; 2 uses
  %i.pc = extractelement <2 x float> %i.oz, i64 0 ; 3 uses
  %i.pd = fadd float %i.pc, %i.pb
  %i.pe = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.pf = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ku, i64 0 ; 2 uses
  %i.ph = insertelement <2 x float> %i.lw, float %i.ly, i64 0
  %i.pi = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> <i32 3, i32 poison, i32 poison>
  %i.pj = shufflevector <3 x float> %i.pi, <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5> ; 4 uses
  %i.pk = shufflevector <2 x float> %i.ow, <2 x float> poison, <3 x i32> zeroinitializer
  %i.pl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pj, <3 x float> %i.pk, <3 x float> %i.og)
  %i.pm = fadd <3 x float> %i.pl, zeroinitializer ; 3 uses
  %i.pn = shufflevector <2 x float> %i.ow, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.po = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pj, <3 x float> %i.pn, <3 x float> %i.oi)
  %i.pp = fadd <3 x float> %i.po, zeroinitializer ; 2 uses
  %i.pq = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.pr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pq, <3 x float> %i.pj, <3 x float> %i.ok)
  %i.ps = fadd <3 x float> %i.pr, zeroinitializer ; 4 uses
  %i.pt = shufflevector <3 x float> %i.pj, <3 x float> %i.nx, <3 x i32> <i32 0, i32 3, i32 4>
  %i.pu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pt, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.pv = fadd <3 x float> %i.pu, zeroinitializer ; 4 uses
  %i.pw = fmul <3 x float> %i.pp, zeroinitializer ; 2 uses
  %i.px = fadd <3 x float> %i.pm, %i.pw
  %i.py = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ps, <3 x float> zeroinitializer, <3 x float> %i.px)
  %i.pz = shufflevector <2 x float> %i.pg, <2 x float> poison, <3 x i32> zeroinitializer
  %i.qa = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pv, <3 x float> %i.pz, <3 x float> %i.py) ; 3 uses
  %i.qb = extractelement <2 x float> %i.oz, i64 1
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.pc, float 0.000000e+00, float %i.qb)
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.ot, float 0.000000e+00, float %i.qc)
  %i.qe = fadd float %i.qd, %i.kw
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.pc, float 0.000000e+00, float %i.pb) ; 2 uses
  %i.qg = fadd float %i.ot, %i.qf
  %i.qh = fadd float %i.qg, %i.kx
  %i.qi = tail call float @llvm.fmuladd.f32(float %i.lt, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %foldExtExtBinop701 = fadd <2 x float> %i.mg, %i.mj
  %i.qj = extractelement <2 x float> %foldExtExtBinop701, i64 1
  %i.qk = fmul float %i.qj, 2.000000e+00          ; 2 uses
  %i.ql = fmul float %i.lh, %i.qk
  %foldExtExtBinop703 = fsub <2 x float> %i.mg, %i.mj
  %i.qm = extractelement <2 x float> %foldExtExtBinop703, i64 0
  %i.qn = fmul float %i.qm, 2.000000e+00          ; 3 uses
  %i.qo = tail call float @llvm.fmuladd.f32(float %i.qn, float 0.000000e+00, float %i.ql)
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qi, float 0.000000e+00, float %i.qo)
  %i.qq = fadd float %i.qp, 0.000000e+00          ; 4 uses
  %i.qr = fmul float %i.qk, 0.000000e+00          ; 2 uses
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.qn, float 0.000000e+00, float %i.qr) ; 2 uses
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.qi, float %i.qs)
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.lf, float %i.qn, float %i.qr)
  %i.qv = fadd float %i.qt, 0.000000e+00          ; 3 uses
  %i.qw = tail call float @llvm.fmuladd.f32(float %i.qi, float 0.000000e+00, float %i.qu)
  %i.qx = fadd float %i.qw, 0.000000e+00          ; 4 uses
  %i.qy = tail call float @llvm.fmuladd.f32(float %i.qx, float 0.000000e+00, float %i.ne)
  %i.qz = extractelement <4 x float> %i.or, i64 1
  %i.ra = tail call float @llvm.fmuladd.f32(float %i.qq, float 0.000000e+00, float %i.qz)
  %i.rb = extractelement <4 x float> %i.or, i64 2 ; 2 uses
  %i.rc = fadd float %i.qq, %i.rb
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.lx, float %i.ra) ; 4 uses
  %i.re = fneg float %i.rd
  %i.rf = extractelement <4 x float> %i.or, i64 0 ; 2 uses
  %i.rg = fadd float %i.qx, %i.rf
  %i.rh = tail call float @llvm.fmuladd.f32(float %i.qx, float 0.000000e+00, float %i.rf)
  %i.ri = insertelement <2 x float> %i.pe, float %i.qi, i64 1
  %i.rj = insertelement <2 x float> %i.pf, float %i.qs, i64 1
  %i.rk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ri, <2 x float> zeroinitializer, <2 x float> %i.rj)
  %i.rl = fadd <2 x float> %i.rk, %i.pg           ; 3 uses
  %i.rm = tail call float @llvm.fmuladd.f32(float %i.ns, float 0.000000e+00, float %i.nr) ; 2 uses
  %i.rn = extractelement <2 x float> %i.rl, i64 1
  %i.ro = shufflevector <2 x float> %i.rl, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.rp = insertelement <2 x float> %i.ro, float %i.lf, i64 1
  %i.rq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rm, i64 0
  %i.rr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rp, <2 x float> zeroinitializer, <2 x float> %i.rq)
  %i.rs = fadd <2 x float> %i.rr, <float 1.000000e+00, float 0.000000e+00> ; 5 uses
  %i.rt = extractelement <2 x float> %i.rs, i64 1 ; 3 uses
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rt, float %i.lx, float %i.qy) ; 4 uses
  %i.rv = tail call float @llvm.fmuladd.f32(float %i.rt, float %i.ly, float %i.rg) ; 4 uses
  %i.rw = fadd float %i.rt, %i.rh                 ; 4 uses
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.qq, float 0.000000e+00, float %i.np)
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.mb, float %i.rx) ; 2 uses
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.ly, float %i.rc) ; 3 uses
  %i.sa = tail call float @llvm.fmuladd.f32(float %i.qq, float 0.000000e+00, float %i.rb)
  %i.sb = fadd float %i.lv, %i.sa                 ; 3 uses
  %i.sc = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.se = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sd, <2 x float> %i.mn, <2 x float> %i.mt)
  %i.sf = fadd <2 x float> %i.se, zeroinitializer ; 3 uses
  %i.sg = fmul <2 x float> %i.sf, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.sh = extractelement <2 x float> %i.sg, i64 1
  %i.si = extractelement <2 x float> %i.sf, i64 0
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.si, float 0.000000e+00, float %i.sh) ; 2 uses
  %i.sk = tail call float @llvm.fmuladd.f32(float %i.qv, float 0.000000e+00, float %i.sj)
  %i.sl = fadd float %i.ma, %i.sk                 ; 4 uses
  %i.sm = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sg, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.sm)
  %i.so = fneg float %i.ry                        ; 3 uses
  %i.sp = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sq, <2 x float> zeroinitializer, <2 x float> %i.sn)
  %i.ss = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.me, <2 x float> %i.sr) ; 5 uses
  %i.st = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ro, <2 x float> zeroinitializer, <2 x float> %i.nu) ; 2 uses
  %i.su = fadd <2 x float> %i.me, %i.st           ; 2 uses
  %i.sv = fadd float %i.rn, %i.rm
  %i.sw = shufflevector <2 x float> %i.st, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sx = insertelement <2 x float> %i.sw, float %i.sv, i64 0
  %i.sy = fadd <2 x float> %i.ph, %i.sx           ; 3 uses
  %i.sz = shufflevector <2 x float> %i.sy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ta = fadd float %i.qv, %i.sj
  %i.tb = fmul float %i.ru, %i.so
  %i.tc = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.ly, float %i.ta) ; 3 uses
  %i.td = extractelement <2 x float> %i.sy, i64 0
  %i.te = fneg float %i.td                        ; 2 uses
  %i.tf = fmul float %i.sl, %i.te
  %i.tg = tail call float @llvm.fmuladd.f32(float %i.qx, float 0.000000e+00, float %i.nf)
  %i.th = insertelement <2 x float> %i.me, float %i.tc, i64 0
  %i.ti = insertelement <2 x float> poison, float %i.tf, i64 0
  %i.tj = insertelement <2 x float> %i.ti, float %i.tg, i64 1
  %i.tk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.th, <2 x float> %i.rs, <2 x float> %i.tj) ; 4 uses
  %i.tl = extractelement <2 x float> %i.tk, i64 1 ; 2 uses
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.tl, float %i.rd, float %i.tb) ; 3 uses
  %i.tn = fneg <2 x float> %i.su                  ; 2 uses
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.tp = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.tq = insertelement <2 x float> %i.tp, float %i.tc, i64 0
  %i.tr = shufflevector <2 x float> %i.tq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ts = fmul <4 x float> %i.tr, %i.to
  %i.tt = insertelement <2 x float> poison, float %i.sl, i64 0
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = fmul <2 x float> %i.tu, %i.tn
  %i.tw = extractelement <2 x float> %i.ss, i64 0
  %i.tx = fneg float %i.tw
  %i.ty = insertelement <2 x float> poison, float %i.rw, i64 0
  %i.tz = insertelement <2 x float> %i.ty, float %i.rv, i64 1 ; 2 uses
  %i.ua = insertelement <2 x float> poison, float %i.re, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uc = fmul <2 x float> %i.tz, %i.ub
  %i.ud = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uf = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.ug = insertelement <2 x float> %i.uf, float %i.rz, i64 1 ; 3 uses
  %i.uh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> %i.ug, <2 x float> %i.uc) ; 5 uses
  %i.ui = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %i.uj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ui, <4 x float> %i.sz, <4 x float> %i.ts) ; 10 uses
  %i.uk = shufflevector <2 x float> %i.rs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ul = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ss, <2 x float> %i.uk, <2 x float> %i.tv) ; 5 uses
  %i.um = extractelement <2 x float> %i.ul, i64 0
  %i.un = fneg float %i.um                        ; 2 uses
  %i.uo = extractelement <4 x float> %i.uj, i64 0
  %i.up = extractelement <2 x float> %i.ul, i64 1
  %i.uq = extractelement <2 x float> %i.uh, i64 0
  %i.ur = fneg float %i.uq                        ; 2 uses
  %i.us = extractelement <4 x float> %i.uj, i64 2
  %i.ut = extractelement <4 x float> %i.uj, i64 1
  %i.uu = fneg float %i.ru
  %i.uv = fneg float %i.rw
  %i.uw = fneg float %i.sl
  %i.ux = fneg float %i.rz
  %i.uy = fneg <2 x float> %i.ug
  %i.uz = fmul float %i.rw, %i.ux
  %i.va = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.sb, float %i.uz) ; 3 uses
  %i.vb = extractelement <2 x float> %i.rs, i64 0
  %i.vc = fneg float %i.vb
  %i.vd = fneg float %i.tl
  %i.ve = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.vf = insertelement <4 x float> %i.ve, float %i.rd, i64 1
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.vh = shufflevector <4 x float> %i.uj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.vi = insertelement <4 x float> poison, float %i.un, i64 0
  %i.vj = shufflevector <2 x float> %i.ul, <2 x float> %i.vh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.vk = shufflevector <2 x float> %i.tk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.vl = insertelement <4 x float> %i.vk, float %i.ry, i64 1
  %i.vm = insertelement <4 x float> %i.vl, float %i.so, i64 2
  %i.vn = shufflevector <4 x float> %i.vm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.vo = insertelement <4 x float> poison, float %i.rd, i64 0
  %i.vp = shufflevector <2 x float> %i.ul, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vq = shufflevector <4 x float> %i.vo, <4 x float> %i.vp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> %i.uj, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> %i.vk, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.vt = insertelement <4 x float> poison, float %i.sb, i64 0
  %i.vu = shufflevector <2 x float> %i.uy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vv = shufflevector <4 x float> %i.vt, <4 x float> %i.vu, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.vw = shufflevector <4 x float> %i.vp, <4 x float> %i.uj, <2 x i32> <i32 1, i32 6>
  %i.vx = fneg <2 x float> %i.vw                  ; 2 uses
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.vz = shufflevector <4 x float> %i.vi, <4 x float> %i.vy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> %i.vj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wb = fmul <4 x float> %i.vg, %i.wa
  %i.wc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vn, <4 x float> %i.vs, <4 x float> %i.wb)
  %i.wd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vv, <4 x float> %i.uj, <4 x float> %i.wc)
  %i.we = insertelement <4 x float> poison, float %i.rv, i64 0
  %i.wf = insertelement <4 x float> %i.we, float %i.ru, i64 1
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.wh = shufflevector <2 x float> %i.ul, <2 x float> %i.vx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wi = fmul <4 x float> %i.wg, %i.wh
  %i.wj = insertelement <4 x float> %i.vs, float %i.uu, i64 0
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> %i.vk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wl = shufflevector <4 x float> %i.vk, <4 x float> %i.uj, <4 x i32> <i32 0, i32 poison, i32 1, i32 4>
  %i.wm = insertelement <4 x float> %i.wl, float %i.vd, i64 1
  %i.wn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wk, <4 x float> %i.wm, <4 x float> %i.wi)
  %i.wo = insertelement <4 x float> poison, float %i.uv, i64 0
  %i.wp = insertelement <4 x float> %i.wo, float %i.rw, i64 2
  %i.wq = shufflevector <4 x float> %i.wp, <4 x float> %i.uj, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.wr = insertelement <4 x float> %i.uj, float %i.rv, i64 3
  %i.ws = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wq, <4 x float> %i.wr, <4 x float> %i.wn)
  %i.wt = insertelement <4 x float> poison, float %i.ur, i64 0
  %i.wu = shufflevector <2 x float> %i.sy, <2 x float> %i.su, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> %i.to, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.ww = insertelement <4 x float> poison, float %i.va, i64 0
  %i.wx = shufflevector <2 x float> %i.uh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.wy = shufflevector <4 x float> %i.ww, <4 x float> %i.wx, <4 x i32> <i32 0, i32 4, i32 poison, i32 6> ; 2 uses
  %i.wz = shufflevector <4 x float> %i.wy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.xa = shufflevector <2 x float> %i.rs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.xb = insertelement <4 x float> %i.xa, float %i.vc, i64 2
  %i.xc = insertelement <4 x float> %i.xb, float %i.te, i64 3
  %i.xd = insertelement <2 x float> poison, float %i.so, i64 0
  %i.xe = shufflevector <2 x float> %i.xd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xf = fmul <2 x float> %i.tz, %i.xe
  %i.xg = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xg, <2 x float> %i.ug, <2 x float> %i.xf) ; 6 uses
  %i.xi = extractelement <2 x float> %i.xh, i64 1
  %i.xj = fmul float %i.xi, %i.un
  %i.xk = extractelement <2 x float> %i.tk, i64 0
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.tm, float %i.xk, float %i.xj)
  %i.xm = extractelement <2 x float> %i.xh, i64 0
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.xm, float %i.uo, float %i.xl)
  %i.xo = extractelement <2 x float> %i.uh, i64 1
  %i.xp = tail call float @llvm.fmuladd.f32(float %i.xo, float %i.up, float %i.xn)
end_hunk_3
