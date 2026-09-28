Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/joint?download=true
inline.NumInlined: 136
inline.NumDeleted: 31
begin_hunk_0_@b3GetJointReaction:bb.a
  %i.c = and i64 %i.b, 3, !nosanitize !33
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !33
  %i.e = and i1 %i.a, %i.d, !nosanitize !33
  br i1 %i.e, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @168, i64 %i.b) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !147
  switch i32 %i.g, label %bb.m [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = fmul <2 x float> %i.i, %i.i
  %i.k = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.k)
  %i.l = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.p = load <2 x float>, ptr %i.m, align 4, !tbaa !10
  %i.q = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.p)
  %i.r = load float, ptr %i.n, align 4, !tbaa !352
  %i.s = fsub float %i.q, %i.r
  %i.t = load float, ptr %i.o, align 4, !tbaa !353
  %i.u = fadd float %i.s, %i.t                    ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fneg float %i.u
  %i.x = select i1 %i.v, float %i.w, float %i.u
  %i.y = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.0133.0.copyload = load <2 x float>, ptr %i.z, align 4 ; 2 uses
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.2134.0.copyload = load float, ptr %.sroa.2134.0..sroa_idx, align 4
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.aa, align 4 ; 2 uses
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.2132.0.copyload = load float, ptr %.sroa.2132.0..sroa_idx, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 276
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 2 uses
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 260
  %.sroa.2122.0.copyload = load float, ptr %.sroa.2122.0..sroa_idx, align 4
  %.sroa.0119.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 2 uses
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 284
  %.sroa.2120.0.copyload = load float, ptr %.sroa.2120.0..sroa_idx, align 4
  %i.ad = shufflevector <2 x float> %.sroa.0133.0.copyload, <2 x float> %.sroa.0121.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x float> %.sroa.0131.0.copyload, <2 x float> %.sroa.0119.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.af = fadd <2 x float> %i.ad, %i.ae           ; 2 uses
  %i.ag = shufflevector <2 x float> %.sroa.0133.0.copyload, <2 x float> %.sroa.0121.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ah = shufflevector <2 x float> %.sroa.0131.0.copyload, <2 x float> %.sroa.0119.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ai = fadd <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %.sroa.2134.0.copyload, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %.sroa.2122.0.copyload, i64 1
  %i.al = insertelement <2 x float> poison, float %.sroa.2132.0.copyload, i64 0
  %i.am = insertelement <2 x float> %i.al, float %.sroa.2120.0.copyload, i64 1
  %i.an = fadd <2 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = fmul <2 x float> %i.af, %i.af
  %i.ap = fmul <2 x float> %i.ai, %i.ai
  %i.aq = fadd <2 x float> %i.ao, %i.ap
  %i.ar = fmul <2 x float> %i.an, %i.an
  %i.as = fadd <2 x float> %i.ar, %i.aq
  %i.at = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.as)
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !10
  %i.ay = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ax)
  %i.az = load float, ptr %i.aw, align 4, !tbaa !354
  %i.ba = fsub float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0100.0.copyload = load <2 x float>, ptr %i.bb, align 4 ; 2 uses
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.2101.0.copyload = load float, ptr %.sroa.2101.0..sroa_idx, align 4
  %i.bc = load <2 x float>, ptr %i.au, align 4, !tbaa !10 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> %.sroa.0100.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.be = fmul <2 x float> %i.bd, %i.bd
  %i.bf = insertelement <2 x float> %.sroa.0100.0.copyload, float %i.ba, i64 0 ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = fadd <2 x float> %i.be, %i.bg
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %.sroa.2101.0.copyload, i64 1 ; 2 uses
  %i.bk = fmul <2 x float> %i.bj, %i.bj
  %i.bl = fadd <2 x float> %i.bk, %i.bh
  %i.bm = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bl)
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.092.0.copyload = load <2 x float>, ptr %i.bn, align 4 ; 2 uses
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !355
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bs = load <2 x float>, ptr %i.bq, align 4, !tbaa !10
  %i.bt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bs)
  %i.bu = load float, ptr %i.br, align 4, !tbaa !356
  %i.bv = fsub float %i.bt, %i.bu
  %i.bw = load <2 x float>, ptr %.sroa.293.0..sroa_idx, align 4 ; 2 uses
  %i.bx = shufflevector <2 x float> %.sroa.092.0.copyload, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx
  %i.bz = shufflevector <2 x float> %.sroa.092.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bp, i64 1 ; 2 uses
  %i.cb = fmul <2 x float> %i.ca, %i.ca
  %i.cc = fadd <2 x float> %i.by, %i.cb
  %i.cd = insertelement <2 x float> %i.bw, float %i.bv, i64 1 ; 2 uses
  %i.ce = fmul <2 x float> %i.cd, %i.cd
  %i.cf = fadd <2 x float> %i.cc, %i.ce
  %i.cg = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cf)
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.079.0.copyload = load <2 x float>, ptr %i.ch, align 4 ; 4 uses
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.280.0.copyload = load float, ptr %.sroa.280.0..sroa_idx, align 4 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.079.0.copyload, %.sroa.079.0.copyload
  %foldExtExtBinop286 = fmul <2 x float> %.sroa.079.0.copyload, %.sroa.079.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop286, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop288 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.ci = extractelement <2 x float> %foldExtExtBinop288, i64 0
  %i.cj = fmul float %.sroa.280.0.copyload, %.sroa.280.0.copyload
  %i.ck = fadd float %i.cj, %i.ci
  %sqrt.i212 = tail call float @llvm.sqrt.f32(float %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !144
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef %0, i32 noundef %i.cm) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !145
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %6, ptr noundef %0, i32 noundef %i.co) #11
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cr = load <2 x float>, ptr %i.cq, align 4    ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ct = load <2 x float>, ptr %i.cs, align 4    ; 6 uses
  %foldExtExtBinop290 = fmul <2 x float> %i.cr, %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cv = load <2 x float>, ptr %i.cu, align 4    ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cx = load <2 x float>, ptr %i.cw, align 4    ; 5 uses
  %i.cy = fmul <2 x float> %i.cv, %i.cx           ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.da = load <2 x float>, ptr %i.cp, align 4    ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.dc = load <2 x float>, ptr %i.db, align 4    ; 6 uses
  %i.dd = load <2 x float>, ptr %i.cz, align 4    ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = load <2 x float>, ptr %i.de, align 4    ; 6 uses
  %i.dg = fmul <2 x float> %i.da, %i.dd           ; 2 uses
  %shift295 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop296 = fmul <2 x float> %shift295, %i.df
  %shift298 = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop299 = fmul <2 x float> %i.dc, %shift298
  %i.dh = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <2 x i32> <i32 0, i32 2>
  %i.di = fmul <2 x float> %i.dh, %i.dd           ; 2 uses
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.dk = fmul <2 x float> %i.da, %i.dj           ; 2 uses
  %i.dl = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dm = shufflevector <2 x float> %foldExtExtBinop296, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.dn = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.do = shufflevector <2 x float> %foldExtExtBinop299, <2 x float> %i.dn, <2 x i32> <i32 0, i32 3>
  %i.dp = fsub <2 x float> %i.dm, %i.do
  %i.dq = fsub <2 x float> %i.di, %i.dk
  %i.dr = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %i.dd
  %i.dt = shufflevector <2 x float> %i.dd, <2 x float> %i.df, <2 x i32> <i32 1, i32 2>
  %i.du = fmul <2 x float> %i.dr, %i.dt
  %i.dv = fadd <2 x float> %i.ds, %i.dp
  %i.dw = fadd <2 x float> %i.du, %i.dq
  %i.dx = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dy = fmul <2 x float> %i.da, %i.dx
  %i.dz = shufflevector <2 x float> %i.da, <2 x float> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.ea = fmul <2 x float> %i.dz, %i.dx
  %i.eb = fadd <2 x float> %i.dy, %i.dv           ; 5 uses
  %i.ec = fadd <2 x float> %i.ea, %i.dw           ; 3 uses
  %foldExtExtBinop304 = fmul <2 x float> %i.dc, %i.df
  %foldExtExtBinop306.a = fmul <2 x float> %i.ct, %i.cv
  %i.ed = extractelement <2 x float> %foldExtExtBinop306.a, i64 1
  %i.ee = fmul <2 x float> %i.cr, %i.cx           ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  %i.eg = extractelement <2 x float> %i.ee, i64 1
  %i.eh = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = shufflevector <2 x float> %i.cr, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %i.ek = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.el = shufflevector <2 x float> %i.ct, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.em = fmul <2 x float> %i.ek, %i.el
  %i.en = shufflevector <2 x float> %i.cv, <2 x float> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.eo = fmul <2 x float> %i.en, %i.cx
  %i.ep = shufflevector <2 x float> %i.dc, <2 x float> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.eq = shufflevector <2 x float> %i.df, <2 x float> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.er = fmul <2 x float> %i.ep, %i.eq
  %i.es = shufflevector <2 x float> %foldExtExtBinop304, <2 x float> %foldExtExtBinop290, <2 x i32> <i32 0, i32 2>
  %i.et = shufflevector <2 x float> %i.dg, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.eu = shufflevector <2 x float> %i.dg, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.ev = fadd <2 x float> %i.et, %i.eu
  %i.ew = fadd <2 x float> %i.es, %i.ev
  %i.ex = fsub <2 x float> %i.er, %i.ew           ; 3 uses
  %i.ey = shufflevector <2 x float> %i.cv, <2 x float> %i.ct, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ey, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fb = shufflevector <2 x float> %i.cx, <2 x float> %i.cv, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.fc = insertelement <4 x float> %i.fb, float 0.000000e+00, i64 3
  %i.fd = fmul <4 x float> %i.fa, %i.fc           ; 3 uses
  %i.fe = extractelement <4 x float> %i.fd, i64 1
  %i.ff = fsub float %i.ef, %i.fe
  %i.fg = fadd float %i.eg, %i.ff
  %i.fh = fadd float %i.ed, %i.fg                 ; 4 uses
  %i.fi = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fj = fsub <2 x float> %i.fi, %i.eo
  %i.fk = fadd <2 x float> %i.em, %i.fj
  %i.fl = fadd <2 x float> %i.ej, %i.fk           ; 6 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0
  %i.fn = fmul float %i.fm, 0.000000e+00          ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fn, i64 1
  %i.fq = insertelement <2 x float> %i.fl, float %i.fn, i64 0
  %i.fr = fsub <2 x float> %i.fp, %i.fq
  %i.fs = extractelement <2 x float> %i.fl, i64 1
  %i.ft = fmul float %i.fs, 0.000000e+00
  %i.fu = fmul float %i.fh, 0.000000e+00
  %i.fv = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fw = fadd <2 x float> %i.fv, %i.fr           ; 3 uses
  %i.fx = fmul <2 x float> %i.ex, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.fy = fmul <2 x float> %i.fl, %i.fw
  %i.fz = extractelement <2 x float> %i.fw, i64 0
  %i.ga = fmul float %i.fh, %i.fz
  %i.gb = fmul <2 x float> %i.eb, <float 1.000000e+00, float 0.000000e+00>
  %i.gc = shufflevector <2 x float> %i.ec, <2 x float> %i.eb, <2 x i32> <i32 1, i32 2>
  %i.gd = fmul <2 x float> %i.gc, zeroinitializer ; 2 uses
  %i.ge = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %i.ft, i64 1
  %i.gg = insertelement <2 x float> %i.gd, float %i.fu, i64 1
  %i.gh = fsub <2 x float> %i.gf, %i.gg
  %i.gi = fadd <2 x float> %i.fx, %i.gh           ; 3 uses
  %foldExtExtBinop311 = fmul <2 x float> %i.fl, %i.gi
  %i.gj = shufflevector <2 x float> %foldExtExtBinop311, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = insertelement <2 x float> %i.gj, float %i.ga, i64 1
  %i.gl = fsub <2 x float> %i.fy, %i.gk
  %i.gm = fmul <2 x float> %i.gl, splat (float 2.000000e+00)
  %i.gn = fadd <2 x float> %i.gm, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.go = fsub <2 x float> %i.gd, %i.gb
  %i.gp = shufflevector <2 x float> %i.fx, <2 x float> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.gq = fadd <2 x float> %i.gp, %i.go           ; 3 uses
  %i.gr = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %i.fh, i64 1
  %i.gt = fmul <2 x float> %i.gs, %i.gi
  %i.gu = shufflevector <2 x float> %i.eb, <2 x float> %i.fl, <2 x i32> <i32 0, i32 2>
  %i.gv = shufflevector <2 x float> %i.fw, <2 x float> %i.gq, <2 x i32> <i32 3, i32 1>
  %i.gw = fmul <2 x float> %i.gu, %i.gv
  %i.gx = fsub <2 x float> %i.gt, %i.gw
  %i.gy = fmul <2 x float> %i.eb, %i.gq
  %i.gz = shufflevector <2 x float> %i.gi, <2 x float> %i.gq, <2 x i32> <i32 0, i32 2>
  %i.ha = fmul <2 x float> %i.ec, %i.gz
  %i.hb = fsub <2 x float> %i.gy, %i.ha
  %i.hc = fmul <2 x float> %i.gx, splat (float 2.000000e+00)
  %i.hd = fadd <2 x float> %i.hc, zeroinitializer ; 4 uses
  %i.he = fmul <2 x float> %i.hb, splat (float 2.000000e+00)
  %i.hf = fadd <2 x float> %i.he, <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.hg = fmul <2 x float> %i.gn, %i.hf
  %i.hh = shufflevector <2 x float> %i.gn, <2 x float> %i.hf, <2 x i32> <i32 1, i32 2>
  %i.hi = fmul <2 x float> %i.hd, %i.hh
  %i.hj = fsub <2 x float> %i.hg, %i.hi           ; 3 uses
  %i.hk = extractelement <2 x float> %i.hd, i64 0
  %shift313 = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop314 = fmul <2 x float> %shift313, %i.hd
  %shift316 = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop317 = fmul <2 x float> %i.gn, %shift316
  %foldExtExtBinop319 = fsub <2 x float> %foldExtExtBinop314, %foldExtExtBinop317 ; 3 uses
  %i.hl = fmul <2 x float> %i.hj, %i.hj           ; 2 uses
  %shift321 = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop322 = fadd <2 x float> %i.hl, %shift321
  %foldExtExtBinop324 = fmul <2 x float> %foldExtExtBinop319, %foldExtExtBinop319
  %foldExtExtBinop326 = fadd <2 x float> %foldExtExtBinop324, %foldExtExtBinop322
  %i.hm = extractelement <2 x float> %foldExtExtBinop326, i64 0 ; 2 uses
  %i.hn = fcmp ogt float %i.hm, f0x057A0000
  br i1 %i.hn, label %bb.j, label %b3Normalize.exit

bb.j:                                             ; preds = %bb.i
  %i.ho = extractelement <2 x float> %foldExtExtBinop319, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.hm)
  %i.hp = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.hj, %i.hr
  %i.ht = fmul float %i.ho, %i.hp
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.i, %bb.j
  %.sroa.07.0.i = phi <2 x float> [ %i.hs, %bb.j ], [ zeroinitializer, %bb.i ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.ht, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.hu, align 4 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 204
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.hv, align 4 ; 2 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4
  %foldExtExtBinop328 = fadd <2 x float> %.sroa.036.0.copyload, %.sroa.034.0.copyload
  %i.hw = extractelement <2 x float> %foldExtExtBinop328, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !357
  %i.ib = load float, ptr %i.hy, align 4, !tbaa !358
  %i.ic = fsub float %i.ia, %i.ib                 ; 2 uses
  %i.id = fmul float %i.hk, %i.ic
  %i.ie = fadd float %i.hw, %i.id
  %i.if = load float, ptr %i.hz, align 4, !tbaa !359 ; 2 uses
  %.sroa.0.4.vec.extract.i260 = extractelement <2 x float> %.sroa.07.0.i, i64 1
  %i.ig = fmul float %.sroa.0.4.vec.extract.i260, %i.if
  %i.ih = fadd float %i.ig, %i.ie                 ; 2 uses
  %i.ii = fmul float %i.ih, %i.ih
  %foldExtExtBinop330 = fadd <2 x float> %.sroa.036.0.copyload, %.sroa.034.0.copyload
  %i.ij = fadd float %.sroa.237.0.copyload, %.sroa.235.0.copyload
  %i.ik = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.hf, %i.il
  %i.in = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> %foldExtExtBinop330, <2 x i32> <i32 0, i32 2>
  %i.ip = fadd <2 x float> %i.io, %i.im
  %i.iq = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ir = insertelement <2 x float> %i.iq, float %.sroa.5.0.i, i64 0
  %i.is = insertelement <2 x float> poison, float %i.if, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = fmul <2 x float> %i.ir, %i.it
  %i.iv = fadd <2 x float> %i.iu, %i.ip           ; 2 uses
  %i.iw = fmul <2 x float> %i.iv, %i.iv           ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 1
  %i.iy = fadd float %i.ix, %i.ii
  %i.iz = extractelement <2 x float> %i.iw, i64 0
  %i.ja = fadd float %i.iz, %i.iy
  %sqrt.i267 = call float @llvm.sqrt.f32(float %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.jb = insertelement <2 x float> poison, float %sqrt.i212, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %sqrt.i267, i64 1
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.jd, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 236
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.je, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 244
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.jf = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.0.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jg = fmul <2 x float> %i.jf, %i.jf
  %i.jh = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.0.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ji = fmul <2 x float> %i.jh, %i.jh
  %i.jj = fadd <2 x float> %i.jg, %i.ji
  %i.jk = insertelement <2 x float> poison, float %.sroa.28.0.copyload, i64 0
  %i.jl = insertelement <2 x float> %i.jk, float %.sroa.2.0.copyload, i64 1 ; 2 uses
  %i.jm = fmul <2 x float> %i.jl, %i.jl
  %i.jn = fadd <2 x float> %i.jm, %i.jj
  %i.jo = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.jn)
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.jt = load <2 x float>, ptr %i.jp, align 4    ; 2 uses
  %i.ju = fmul <2 x float> %i.jt, %i.jt           ; 2 uses
  %shift332 = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop333 = fadd <2 x float> %i.ju, %shift332
  %i.jv = extractelement <2 x float> %foldExtExtBinop333, i64 0
  %i.jw = load <2 x float>, ptr %i.jq, align 4, !tbaa !10
  %i.jx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jw)
  %i.jy = load float, ptr %i.jr, align 4, !tbaa !360
  %i.jz = fsub float %i.jx, %i.jy                 ; 2 uses
  %i.ka = fmul float %i.jz, %i.jz
  %i.kb = fadd float %i.jv, %i.ka
  %sqrt280 = tail call float @llvm.sqrt.f32(float %i.kb)
  %i.kc = load float, ptr %i.js, align 4, !tbaa !361 ; 3 uses
  %i.kd = fcmp olt float %i.kc, 0.000000e+00
  %i.ke = fneg float %i.kc
  %i.kf = select i1 %i.kd, float %i.ke, float %i.kc
  %i.kg = insertelement <2 x float> poison, float %sqrt280, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %i.kf, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.k, %b3Normalize.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ki = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.l, %bb.d ], [ %i.y, %bb.e ], [ %i.at, %bb.f ], [ %i.bm, %bb.g ], [ %i.cg, %bb.h ], [ %i.jc, %b3Normalize.exit ], [ %i.jo, %bb.k ], [ %i.kh, %bb.l ] ; 2 uses
  %i.kj = icmp ne ptr %3, null, !nosanitize !33
  %i.kk = ptrtoint ptr %3 to i64, !nosanitize !33 ; 2 uses
  %i.kl = and i64 %i.kk, 3, !nosanitize !33
  %i.km = icmp eq i64 %i.kl, 0, !nosanitize !33
  %i.kn = and i1 %i.kj, %i.km, !nosanitize !33
  br i1 %i.kn, label %bb.o, label %bb.n, !prof !35, !nosanitize !33

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @169, i64 %i.kk) #12, !nosanitize !33
  unreachable, !nosanitize !33
end_hunk_0
begin_hunk_1_@b3SolveJoints_Overflow:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2592
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101  ; 3 uses
  br i1 %.not, label %bb.h, label %bb.i, !prof !34, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @204, i64 %i.i, i64 0) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2600
  %i.q = load i32, ptr %i.p, align 8, !tbaa !178  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.s = ptrtoint ptr %i.o to i64, !nosanitize !33 ; 3 uses
  %i.t = icmp ne ptr %i.o, null, !nosanitize !33
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.l, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.u = mul nuw nsw i64 %indvars.iv, 444
  %i.v = add i64 %i.u, %i.s, !nosanitize !33      ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = xor i1 %i.t, %i.w
  %i.y = icmp uge i64 %i.v, %i.s, !nosanitize !33
  %i.z = and i1 %i.y, %i.x, !nosanitize !33
  br i1 %i.z, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @205, i64 %i.s, i64 %i.v) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [444 x i8], ptr %i.o, i64 %indvars.iv
  tail call void @b3SolveJoint(ptr noundef %i.aa, ptr noundef nonnull %0, i1 noundef zeroext %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !392
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawJoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 !func_sanitize !394 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 15 uses
  %4 = alloca %struct.b3Transform, align 8        ; 15 uses
  %i.a = alloca [24 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = icmp ne ptr %1, null, !nosanitize !33
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !33
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !33
  %i.g = and i1 %i.c, %i.f, !nosanitize !33
  br i1 %i.g, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @206, i64 %i.d) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3880
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 4 uses
  %i.j = icmp ne ptr %2, null, !nosanitize !33
  %i.k = ptrtoint ptr %2 to i64, !nosanitize !33  ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !33
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !33
  %i.n = and i1 %i.j, %i.m, !nosanitize !33
  br i1 %i.n, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @207, i64 %i.k) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !139  ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [128 x i8], ptr %i.i, i64 %i.q ; 3 uses
  %i.s = shl nsw i64 %i.q, 7
  %i.t = ptrtoint ptr %i.i to i64, !nosanitize !33 ; 6 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !33      ; 3 uses
  %i.v = icmp ne ptr %i.i, null, !nosanitize !33  ; 3 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !33
  %i.z = icmp slt i32 %i.p, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !33
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @208, i64 %i.t, i64 %i.u) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.g:                                             ; preds = %bb.e
  %.not = icmp ugt ptr %i.o, inttoptr (i64 -13 to ptr)
  br i1 %.not, label %bb.h, label %bb.i, !prof !34, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.o to i64, !nosanitize !33 ; 2 uses
  %i.ad = add i64 %i.ac, 12, !nosanitize !33
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.ac, i64 %i.ad) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [128 x i8], ptr %i.i, i64 %i.ag ; 3 uses
  %i.ai = shl nsw i64 %i.ag, 7
  %i.aj = add i64 %i.ai, %i.t, !nosanitize !33    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.v, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.t, !nosanitize !33
  %i.an = icmp slt i32 %i.af, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !33
  br i1 %i.ap, label %bb.k, label %bb.j, !prof !35, !nosanitize !33

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @210, i64 %i.t, i64 %i.aj) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.k:                                             ; preds = %bb.i
  %i.aq = ptrtoint ptr %i.r to i64, !nosanitize !33 ; 2 uses
  %i.ar = and i64 %i.aq, 7, !nosanitize !33
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !33
  %i.at = and i1 %i.v, %i.as
  br i1 %i.at, label %bb.m, label %bb.l, !prof !35, !nosanitize !33

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @211, i64 %i.aq) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !131
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.cn, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %i.ah to i64, !nosanitize !33 ; 2 uses
  %i.ay = and i64 %i.ax, 7, !nosanitize !33
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !33
  br i1 %i.az, label %bb.p, label %bb.o, !prof !35, !nosanitize !33

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @212, i64 %i.ax) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !131
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.cn, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = tail call ptr @b3GetJointSim(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %1, ptr noundef nonnull %i.r) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #11
  %i.be = icmp ne ptr %i.bd, null, !nosanitize !33
  %i.bf = ptrtoint ptr %i.bd to i64, !nosanitize !33 ; 2 uses
  %i.bg = and i64 %i.bf, 3, !nosanitize !33
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !33
  %i.bi = and i1 %i.be, %i.bh, !nosanitize !33
  br i1 %i.bi, label %bb.s, label %bb.r, !prof !35, !nosanitize !33

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @213, i64 %i.bf) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.s:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.0109.0.copyload = load <2 x float>, ptr %i.bj, align 4 ; 4 uses
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.2110.0.copyload = load float, ptr %.sroa.2110.0..sroa_idx, align 4 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bl = load <2 x float>, ptr %i.bk, align 4    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bn = load <2 x float>, ptr %i.bm, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0109.0.copyload, %i.bn
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %i.bl, i64 0
  %i.bp = fmul float %.sroa.2110.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load float, ptr %i.bq, align 8, !tbaa !395 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bs, align 4 ; 4 uses
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %.sroa.297.0.copyload = load float, ptr %.sroa.297.0..sroa_idx, align 4 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bu = load <2 x float>, ptr %i.bt, align 4    ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bw = load <2 x float>, ptr %i.bv, align 4    ; 4 uses
  %foldExtExtBinop259 = fmul <2 x float> %.sroa.096.0.copyload, %i.bw
  %5 = extractelement <2 x float> %foldExtExtBinop259, i64 0
  %.sroa.09.0.vec.extract.i.i.i200 = extractelement <2 x float> %i.bu, i64 0
  %6 = fmul float %.sroa.297.0.copyload, %.sroa.09.0.vec.extract.i.i.i200
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8, !tbaa !395
  %i.bz = fsub float %i.bo, %i.bp
  %i.ca = shufflevector <2 x float> %.sroa.0109.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = insertelement <2 x float> %i.ca, float %.sroa.2110.0.copyload, i64 1 ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bl
  %i.cd = shufflevector <2 x float> %i.bl, <2 x float> %i.bn, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ce = fmul <2 x float> %.sroa.0109.0.copyload, %i.cd
  %i.cf = fsub <2 x float> %i.cc, %i.ce           ; 2 uses
  %i.cg = insertelement <2 x float> %i.ca, float %.sroa.2110.0.copyload, i64 0
  %i.ch = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fmul <2 x float> %i.cb, %i.ch
  %i.ck = fadd <2 x float> %i.ci, %i.cf           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x float> %i.cl, float %i.bz, i64 0
  %i.cn = fadd <2 x float> %i.cj, %i.cm           ; 2 uses
  %i.co = fmul <2 x float> %i.cd, %i.ck
  %i.cp = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.cq = fmul <2 x float> %i.cp, %i.cn
  %i.cr = fsub <2 x float> %i.co, %i.cq
  %i.cs = fmul <2 x float> %i.cr, splat (float 2.000000e+00)
  %i.ct = fadd <2 x float> %.sroa.0109.0.copyload, %i.cs
  %i.cu = load <2 x float>, ptr %3, align 8, !tbaa !10
  %i.cv = fadd <2 x float> %i.cu, %i.ct           ; 7 uses
  %i.cw = fsub float %5, %6
  %i.cx = shufflevector <2 x float> %.sroa.096.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = insertelement <2 x float> %i.cx, float %.sroa.297.0.copyload, i64 1 ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %i.bu
  %i.da = shufflevector <2 x float> %i.bu, <2 x float> %i.bw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.db = fmul <2 x float> %.sroa.096.0.copyload, %i.da
  %i.dc = fsub <2 x float> %i.cz, %i.db           ; 2 uses
  %i.dd = insertelement <2 x float> %i.cx, float %.sroa.297.0.copyload, i64 0
  %i.de = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = fmul <2 x float> %i.cy, %i.de
  %i.dh = fadd <2 x float> %i.df, %i.dc           ; 2 uses
  %i.di = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dj = insertelement <2 x float> %i.di, float %i.cw, i64 0
  %i.dk = fadd <2 x float> %i.dg, %i.dj           ; 2 uses
  %i.dl = fmul <2 x float> %i.da, %i.dh
  %i.dm = shufflevector <2 x float> %i.bw, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.dn = fmul <2 x float> %i.dm, %i.dk
  %i.do = fsub <2 x float> %i.dl, %i.dn
  %i.dp = fmul <2 x float> %i.do, splat (float 2.000000e+00)
  %i.dq = fadd <2 x float> %.sroa.096.0.copyload, %i.dp
  %i.dr = shufflevector <2 x float> %i.bl, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.ds = shufflevector <2 x float> %i.cn, <2 x float> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.bl, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.dv = shufflevector <2 x float> %i.ck, <2 x float> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.dw = fmul <2 x float> %i.du, %i.dv
  %i.dx = fsub <2 x float> %i.dt, %i.dw
  %i.dy = fmul <2 x float> %i.dx, splat (float 2.000000e+00)
  %i.dz = insertelement <2 x float> poison, float %.sroa.2110.0.copyload, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %.sroa.297.0.copyload, i64 1
  %i.eb = fadd <2 x float> %i.ea, %i.dy
  %i.ec = load <2 x float>, ptr %4, align 8, !tbaa !10
  %i.ed = fadd <2 x float> %i.ec, %i.dq           ; 7 uses
  %i.ee = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.by, i64 1
  %i.eg = fadd <2 x float> %i.ef, %i.eb           ; 8 uses
  %i.eh = icmp ne ptr %0, null, !nosanitize !33
  %i.ei = ptrtoint ptr %0 to i64, !nosanitize !33 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !nosanitize !33
  %i.ek = icmp eq i64 %i.ej, 0, !nosanitize !33
  %i.el = and i1 %i.eh, %i.ek, !nosanitize !33
  br i1 %i.el, label %bb.u, label %bb.t, !prof !35, !nosanitize !33

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %i.ei) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.u:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.eo = load float, ptr %i.em, align 4, !tbaa !397
  %i.ep = load float, ptr %i.en, align 8, !tbaa !135
  %i.eq = fmul float %i.eo, %i.ep                 ; 2 uses
  %i.er = fcmp olt float %i.eq, f0x38D1B717
  %i.es = select i1 %i.er, float f0x38D1B717, float %i.eq ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !136
  switch i32 %i.eu, label %bb.aq [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.ab
    i32 4, label %bb.al
    i32 5, label %bb.am
    i32 6, label %bb.an
    i32 7, label %bb.ao
    i32 8, label %bb.ap
  ]

bb.v:                                             ; preds = %bb.u
  call void @b3DrawParallelJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.es) #11
  br label %bb.ba

bb.w:                                             ; preds = %bb.u
  call void @b3DrawDistanceJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4) #11
  br label %bb.ba

bb.x:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !398 ; 4 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8
  %i.ey = load i32, ptr %i.ex, align 4, !nosanitize !33
  %i.ez = icmp eq i32 %i.ey, -1056584962, !nosanitize !33
  br i1 %i.ez, label %bb.y, label %bb.aa, !nosanitize !33

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr i8, ptr %i.ew, i64 -4
  %i.fb = load i32, ptr %i.fa, align 8, !nosanitize !33
  %i.fc = icmp eq i32 %i.fb, -341714709, !nosanitize !33
  br i1 %i.fc, label %bb.aa, label %bb.z, !prof !35, !nosanitize !33

bb.z:                                             ; preds = %bb.y
  %i.fd = ptrtoint ptr %i.ew to i64, !nosanitize !33
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @217, i64 %i.fd) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !399
  %i.fg = extractelement <2 x float> %i.eg, i64 0
  %i.fh = extractelement <2 x float> %i.eg, i64 1
  call void %i.ew(<2 x float> %i.cv, float %i.fg, <2 x float> %i.ed, float %i.fh, i32 noundef 16766720, ptr noundef %i.ff) #11
  br label %bb.ba

bb.ab:                                            ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !398 ; 4 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load i32, ptr %i.fk, align 4, !nosanitize !33
  %i.fm = icmp eq i32 %i.fl, -1056584962, !nosanitize !33
  br i1 %i.fm, label %bb.ac, label %bb.ae, !nosanitize !33

bb.ac:                                            ; preds = %bb.ab
  %i.fn = getelementptr i8, ptr %i.fj, i64 -4
  %i.fo = load i32, ptr %i.fn, align 8, !nosanitize !33
  %i.fp = icmp eq i32 %i.fo, -341714709, !nosanitize !33
  br i1 %i.fp, label %bb.ae, label %bb.ad, !prof !35, !nosanitize !33

bb.ad:                                            ; preds = %bb.ac
  %i.fq = ptrtoint ptr %i.fj to i64, !nosanitize !33
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @218, i64 %i.fq) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ae:                                            ; preds = %bb.ab, %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !399
  %i.ft = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.fu = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  call void %i.fj(<2 x float> %i.cv, float %i.ft, <2 x float> %i.ed, float %i.fu, i32 noundef 14524637, ptr noundef %i.fs) #11
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !400 ; 4 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -8
  %i.fy = load i32, ptr %i.fx, align 4, !nosanitize !33
  %i.fz = icmp eq i32 %i.fy, -1056584962, !nosanitize !33
  br i1 %i.fz, label %bb.af, label %bb.ah, !nosanitize !33

bb.af:                                            ; preds = %bb.ae
  %i.ga = getelementptr i8, ptr %i.fw, i64 -4
  %i.gb = load i32, ptr %i.ga, align 8, !nosanitize !33
  %i.gc = icmp eq i32 %i.gb, -127790077, !nosanitize !33
  br i1 %i.gc, label %bb.ah, label %bb.ag, !prof !35, !nosanitize !33

bb.ag:                                            ; preds = %bb.af
  %i.gd = ptrtoint ptr %i.fw to i64, !nosanitize !33
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @220, i64 %i.gd) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.ge = load ptr, ptr %i.fr, align 8, !tbaa !399
  call void %i.fw(<2 x float> %i.cv, float %i.ft, float noundef 8.000000e+00, i32 noundef 10145074, ptr noundef %i.ge) #11
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !400 ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8
  %i.gh = load i32, ptr %i.gg, align 4, !nosanitize !33
  %i.gi = icmp eq i32 %i.gh, -1056584962, !nosanitize !33
  br i1 %i.gi, label %bb.ai, label %bb.ak, !nosanitize !33

bb.ai:                                            ; preds = %bb.ah
  %i.gj = getelementptr i8, ptr %i.gf, i64 -4
  %i.gk = load i32, ptr %i.gj, align 8, !nosanitize !33
  %i.gl = icmp eq i32 %i.gk, -127790077, !nosanitize !33
  br i1 %i.gl, label %bb.ak, label %bb.aj, !prof !35, !nosanitize !33

bb.aj:                                            ; preds = %bb.ai
  %i.gm = ptrtoint ptr %i.gf to i64, !nosanitize !33
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @221, i64 %i.gm) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.gn = load ptr, ptr %i.fr, align 8, !tbaa !399
  call void %i.gf(<2 x float> %i.ed, float %i.fu, float noundef 8.000000e+00, i32 noundef 14524637, ptr noundef %i.gn) #11
  br label %bb.ba

bb.al:                                            ; preds = %bb.u
  call void @b3DrawPrismaticJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.es) #11
  br label %bb.ba

bb.am:                                            ; preds = %bb.u
  call void @b3DrawRevoluteJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.es) #11
  br label %bb.ba

bb.an:                                            ; preds = %bb.u
  call void @b3DrawSphericalJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.es) #11
  br label %bb.ba

bb.ao:                                            ; preds = %bb.u
  call void @b3DrawWeldJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.es) #11
  br label %bb.ba

bb.ap:                                            ; preds = %bb.u
  call void @b3DrawWheelJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.es) #11
  br label %bb.ba

bb.aq:                                            ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !398 ; 4 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8
  %i.gr = load i32, ptr %i.gq, align 4, !nosanitize !33
  %i.gs = icmp eq i32 %i.gr, -1056584962, !nosanitize !33
  br i1 %i.gs, label %bb.ar, label %bb.at, !nosanitize !33
end_hunk_1
