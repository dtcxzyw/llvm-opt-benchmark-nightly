Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/solver?download=true
inline.NumInlined: 218
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@b3FinalizeBodiesTask:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ji, i8 0, i64 24, i1 false)
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !347 ; 2 uses
  %i.jl = and i32 %i.jk, -833
  %i.jm = getelementptr inbounds nuw i8, ptr %i.as, i64 212 ; 4 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !154 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ar, i64 52 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !167 ; 2 uses
  %i.jq = or i32 %i.jn, %i.jp
  %i.jr = and i32 %i.jq, 768
  %i.js = or disjoint i32 %i.jr, %i.jl
  store i32 %i.js, ptr %i.jj, align 8, !tbaa !347
  %i.jt = and i32 %i.jn, -833                     ; 2 uses
  store i32 %i.jt, ptr %i.jm, align 4, !tbaa !154
  %i.ju = and i32 %i.jp, -833
  store i32 %i.ju, ptr %i.jo, align 4, !tbaa !167
  %i.jv = and i32 %i.jk, 8192
  %i.jw = icmp eq i32 %i.jv, 0
  %or.cond493 = select i1 %i.ag, i1 true, i1 %i.jw
  br i1 %or.cond493, label %bb.h, label %bb.g

bb.g:                                             ; preds = %b3NormalizeQuat.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 52
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !348
  %i.jz = fcmp ogt float %i.hl, %i.jy
  br i1 %i.jz, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g, %b3NormalizeQuat.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  store float 0.000000e+00, ptr %i.ka, align 8, !tbaa !349
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !350
  %i.kd = icmp eq i32 %i.kc, 2
  %or.cond = and i1 %i.kd, %i.m
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ke = fmul float %i.n, %i.gg                  ; 2 uses
  %i.kf = fcmp ogt float %i.hi, %i.ke
  %i.kg = select i1 %i.kf, float %i.hi, float %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.as, i64 180
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !351
  %i.kj = fmul float %i.ki, 5.000000e-01
  %i.kk = fcmp ogt float %i.kg, %i.kj
  br i1 %i.kk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.kl = or disjoint i32 %i.jt, 64
  store i32 %i.kl, ptr %i.jm, align 4, !tbaa !154
  %i.km = and i32 %i.jn, 128
  %.not = icmp eq i32 %i.km, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.kn = atomicrmw add ptr %i.ah, i32 1 seq_cst, align 4
  %i.ko = load ptr, ptr %i.ai, align 8, !tbaa !93
  %i.kp = sext i32 %i.kn to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kp
  store i32 %i.ix, ptr %i.kq, align 4, !tbaa !101
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call fastcc void @b3SolveContinuous(ptr noundef nonnull %i.b, i32 noundef %i.ix, ptr noundef %i.x)
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.kr = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kr, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !tbaa.struct !168
  %i.ks = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ks, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !164
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.kt = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kt, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !tbaa.struct !168
  %i.ku = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ku, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !164
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iv, i64 56 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 8, !tbaa !349
  %i.kx = fadd float %i.n, %i.kw
  store float %i.kx, ptr %i.kv, align 8, !tbaa !349
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %i.ky = load <2 x float>, ptr %i.au, align 4    ; 6 uses
  %i.kz = load <2 x float>, ptr %i.aw, align 4    ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %i.lb = getelementptr inbounds nuw i8, ptr %i.as, i64 108
  %.sroa.0456.0.copyload = load <2 x float>, ptr %i.lb, align 4, !tbaa !146 ; 6 uses
  %.sroa.4457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %.sroa.4457.0.copyload = load float, ptr %.sroa.4457.0..sroa_idx, align 4, !tbaa !146 ; 3 uses
  %.sroa.5458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %.sroa.5458.0.copyload = load <2 x float>, ptr %.sroa.5458.0..sroa_idx, align 4, !tbaa !146 ; 6 uses
  %.sroa.6459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %.sroa.6459.0.copyload = load float, ptr %.sroa.6459.0..sroa_idx, align 4, !tbaa !146 ; 3 uses
  %.sroa.7460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 132
  %.sroa.7460.0.copyload = load <2 x float>, ptr %.sroa.7460.0..sroa_idx, align 4, !tbaa !146 ; 4 uses
  %.sroa.8461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 140
  %.sroa.8461.0.copyload = load float, ptr %.sroa.8461.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  %i.lc = fmul <2 x float> %i.ky, %i.ky           ; 2 uses
  %foldExtExtBinop556 = fmul <2 x float> %i.kz, %i.kz
  %shift558 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop559 = fmul <2 x float> %i.ky, %shift558 ; 2 uses
  %i.ld = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.le = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %i.ld, %i.le           ; 2 uses
  %i.lg = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = fmul <2 x float> %i.ky, %i.lg           ; 2 uses
  %shift561 = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop562 = fmul <2 x float> %i.kz, %shift561 ; 2 uses
  %foldExtExtBinop564 = fadd <2 x float> %foldExtExtBinop559, %foldExtExtBinop562
  %foldExtExtBinop566 = fsub <2 x float> %foldExtExtBinop559, %foldExtExtBinop562
  %i.li = shufflevector <2 x float> %foldExtExtBinop564, <2 x float> %foldExtExtBinop566, <2 x i32> <i32 0, i32 2>
  %i.lj = fmul <2 x float> %i.li, splat (float 2.000000e+00) ; 8 uses
  %i.lk = shufflevector <2 x float> %foldExtExtBinop556, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = fadd <2 x float> %i.lc, %i.lk
  %i.lm = fmul <2 x float> %i.ll, splat (float 2.000000e+00)
  %i.ln = fsub <2 x float> splat (float 1.000000e+00), %i.lm ; 9 uses
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lp = fadd <2 x float> %i.lf, %i.lh           ; 2 uses
  %i.lq = fsub <2 x float> %i.lf, %i.lh           ; 2 uses
  %i.lr = shufflevector <2 x float> %i.lp, <2 x float> %i.lq, <2 x i32> <i32 3, i32 0>
  %i.ls = fmul <2 x float> %i.lr, splat (float 2.000000e+00) ; 7 uses
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lu = shufflevector <2 x float> %i.lq, <2 x float> %i.lp, <2 x i32> <i32 0, i32 3>
  %i.lv = fmul <2 x float> %i.lu, splat (float 2.000000e+00) ; 7 uses
  %i.lw = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lc)
  %i.lx = fmul float %i.lw, 2.000000e+00
  %i.ly = fsub float 1.000000e+00, %i.lx          ; 3 uses
  %i.lz = shufflevector <2 x float> %.sroa.0456.0.copyload, <2 x float> %.sroa.5458.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ma = fmul <2 x float> %i.lz, %i.ln
  %i.mb = shufflevector <2 x float> %.sroa.0456.0.copyload, <2 x float> %.sroa.5458.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.mc = fmul <2 x float> %i.lj, %i.mb
  %i.md = fadd <2 x float> %i.mc, %i.ma
  %i.me = insertelement <2 x float> poison, float %.sroa.4457.0.copyload, i64 0
  %i.mf = insertelement <2 x float> %i.me, float %.sroa.6459.0.copyload, i64 1
  %i.mg = fmul <2 x float> %i.lv, %i.mf
  %i.mh = fadd <2 x float> %i.mg, %i.md           ; 3 uses
  %i.mi = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.0456.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.mj = fmul <2 x float> %i.mi, %i.lj
  %i.mk = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.0456.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ml = fmul <2 x float> %i.mk, %i.ln
  %i.mm = fadd <2 x float> %i.mj, %i.ml
  %i.mn = insertelement <2 x float> poison, float %.sroa.6459.0.copyload, i64 0
  %i.mo = insertelement <2 x float> %i.mn, float %.sroa.4457.0.copyload, i64 1
  %i.mp = fmul <2 x float> %i.mo, %i.lv
  %i.mq = fadd <2 x float> %i.mp, %i.mm           ; 3 uses
  %i.mr = fmul <2 x float> %i.lj, %.sroa.7460.0.copyload
  %i.ms = shufflevector <2 x float> %.sroa.7460.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mt = fmul <2 x float> %i.ln, %i.ms
  %i.mu = fadd <2 x float> %i.mr, %i.mt
  %i.mv = insertelement <2 x float> poison, float %.sroa.8461.0.copyload, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = fmul <2 x float> %i.lv, %i.mw
  %i.my = fadd <2 x float> %i.mx, %i.mu           ; 3 uses
  %i.mz = extractelement <2 x float> %i.ln, i64 1
  %i.na = shufflevector <2 x float> %i.ln, <2 x float> %i.lj, <2 x i32> <i32 1, i32 3>
  %i.nb = fmul <2 x float> %i.na, %i.mh
  %i.nc = shufflevector <2 x float> %i.lj, <2 x float> %i.ln, <2 x i32> <i32 1, i32 3>
  %i.nd = fmul <2 x float> %i.nc, %i.mq
  %i.ne = fadd <2 x float> %i.nb, %i.nd
  %i.nf = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ng = fmul <2 x float> %i.nf, %i.my
  %i.nh = fadd <2 x float> %i.ne, %i.ng
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nj = shufflevector <2 x float> %i.lj, <2 x float> %i.ln, <2 x i32> <i32 0, i32 2>
  %i.nk = fmul <2 x float> %i.nj, %i.mh
  %i.nl = shufflevector <2 x float> %i.ln, <2 x float> %i.lj, <2 x i32> <i32 0, i32 2>
  %i.nm = fmul <2 x float> %i.nl, %i.mq
  %i.nn = fadd <2 x float> %i.nk, %i.nm
  %i.no = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x float> %i.no, %i.my
  %i.nq = fadd <2 x float> %i.np, %i.nn
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ns = shufflevector <2 x float> %i.ls, <2 x float> %.sroa.0456.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 1>
  %i.nt = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.7460.0.copyload, <4 x i32> <i32 1, i32 2, i32 poison, i32 1>
  %i.nu = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nv = shufflevector <4 x float> %i.nt, <4 x float> %i.nu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nw = fmul <4 x float> %i.ns, %i.nv
  %i.nx = shufflevector <2 x float> %i.ls, <2 x float> %.sroa.0456.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ny = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.7460.0.copyload, <4 x i32> <i32 0, i32 3, i32 poison, i32 0>
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.oa = fmul <4 x float> %i.nx, %i.nz
  %i.ob = fadd <4 x float> %i.oa, %i.nw
  %i.oc = insertelement <4 x float> poison, float %.sroa.6459.0.copyload, i64 0
  %i.od = insertelement <4 x float> %i.oc, float %.sroa.8461.0.copyload, i64 1
  %i.oe = insertelement <4 x float> %i.od, float %.sroa.4457.0.copyload, i64 2
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.og = insertelement <4 x float> poison, float %i.ly, i64 0
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = fmul <4 x float> %i.of, %i.oh
  %i.oj = fadd <4 x float> %i.oi, %i.ob           ; 3 uses
  %i.ok = extractelement <4 x float> %i.oj, i64 2
  %i.ol = fmul float %i.mz, %i.ok
  %i.om = shufflevector <2 x float> %i.lj, <2 x float> %i.lv, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.on = shufflevector <4 x float> %i.om, <4 x float> %i.lo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.oo = fmul <4 x float> %i.on, %i.oj           ; 4 uses
  %i.op = extractelement <4 x float> %i.oo, i64 0
  %i.oq = fadd float %i.ol, %i.op
  %i.or = extractelement <4 x float> %i.oo, i64 1
  %i.os = fadd float %i.oq, %i.or
  %i.ot = fmul <2 x float> %i.ls, %i.mh
  %i.ou = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ov = fmul <2 x float> %i.ou, %i.mq
  %i.ow = fadd <2 x float> %i.ot, %i.ov
  %i.ox = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = fmul <2 x float> %i.oy, %i.my
  %i.pa = fadd <2 x float> %i.oz, %i.ow
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pc = shufflevector <2 x float> %i.ls, <2 x float> %i.lv, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.pd = insertelement <4 x float> %i.pc, float %i.ly, i64 3
  %i.pe = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.pf = fmul <4 x float> %i.pd, %i.pe           ; 4 uses
  %shift571.a = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %shift571 = fadd <4 x float> %shift571.a, %6
  %foldExtExtBinop572 = fadd <4 x float> %shift571, %i.pf
  %i.pg = extractelement <4 x float> %foldExtExtBinop572, i64 1
  %shift574 = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop575 = fadd <4 x float> %shift574, %i.pf
  %shift577 = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop578 = fadd <4 x float> %foldExtExtBinop575, %shift577
  %i.ph = extractelement <4 x float> %foldExtExtBinop578, i64 0
  store <2 x float> %i.ni, ptr %i.la, align 4, !tbaa !146
  %.sroa.4416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  store float %i.os, ptr %.sroa.4416.0..sroa_idx, align 4, !tbaa !146
  %.sroa.5417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 156
  store <2 x float> %i.nr, ptr %.sroa.5417.0..sroa_idx, align 4, !tbaa !146
  %.sroa.6418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 164
  store float %i.pg, ptr %.sroa.6418.0..sroa_idx, align 4, !tbaa !146
  %.sroa.7419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  store <2 x float> %i.pb, ptr %.sroa.7419.0..sroa_idx, align 4, !tbaa !146
  %.sroa.8420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  store float %i.ph, ptr %.sroa.8420.0..sroa_idx, align 4, !tbaa !146
  %i.pi = load ptr, ptr %i.aj, align 8, !tbaa !352
  %i.pj = getelementptr inbounds nuw i8, ptr %i.iv, i64 44
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !353 ; 3 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [64 x i8], ptr %i.pi, i64 %i.pl ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.po = load float, ptr %i.pn, align 8, !tbaa !349 ; 4 uses
  %i.pp = fcmp olt float %i.po, 5.000000e-01
  br i1 %i.pp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !359 ; 2 uses
  %.val287 = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.ps = lshr i32 %i.pr, 6
  %i.pt = and i32 %i.pr, 63
  %i.pu = zext nneg i32 %i.pt to i64
  %i.pv = shl nuw i64 1, %i.pu
  %i.pw = zext nneg i32 %i.ps to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %.val287, i64 %i.pw ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !80
  %i.pz = or i64 %i.pv, %i.py
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !80
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !360
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.qd = load float, ptr %i.ak, align 8, !tbaa !129 ; 2 uses
  %i.qe = fcmp ogt float %i.po, %i.qd
  br i1 %i.qe, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.qf = fcmp oeq float %i.po, %i.qd
  br i1 %i.qf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.qg = load i32, ptr %i.al, align 4, !tbaa !128
  %i.qh = icmp sgt i32 %i.pk, %i.qg
  br i1 %i.qh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r
  store i32 %i.pk, ptr %i.al, align 4, !tbaa !128
  store float %i.po, ptr %i.ak, align 8, !tbaa !129
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.t, %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %i.as, i64 28, i1 false), !tbaa.struct !165
  %i.qi = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %.0281518 = load i32, ptr %i.qi, align 8, !tbaa !101 ; 2 uses
  %.not285519 = icmp eq i32 %.0281518, -1
  br i1 %.not285519, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.qj = load i32, ptr %i.jm, align 4, !tbaa !154
  %i.qk = and i32 %i.qj, 64
  %.not284 = icmp eq i32 %i.qk, 0
  %i.ql = lshr i64 %indvars.iv, 6
  %i.qm = and i64 %indvars.iv, 63
  %i.qn = shl nuw i64 1, %i.qm                    ; 2 uses
  %i.qo = and i64 %i.ql, 67108863                 ; 2 uses
  br i1 %.not284, label %.lr.ph.split.us, label %._crit_edge.loopexit532

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.w
  %.0281520.us = phi i32 [ %.0281.us, %bb.w ], [ %.0281518, %.lr.ph ]
  %i.qp = load ptr, ptr %i.am, align 8, !tbaa !136
  %i.qq = sext i32 %.0281520.us to i64
  %i.qr = getelementptr inbounds [232 x i8], ptr %i.qp, i64 %i.qq ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef %i.qr, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.ac) #10
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !169
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 64 ; 2 uses
  %.sroa.5487.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.qr, i64 72 ; 2 uses
  %.sroa.5487.0.copyload.us = load float, ptr %.sroa.5487.0..sroa_idx.us, align 8
  %.sroa.6488.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.qr, i64 76 ; 2 uses
  %.sroa.8490.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.qr, i64 84 ; 2 uses
  %.sroa.8490.0.copyload.us = load float, ptr %.sroa.8490.0..sroa_idx.us, align 4
  %i.qu = load <2 x float>, ptr %i.qt, align 8
  %i.qv = load <2 x float>, ptr %.sroa.6488.0..sroa_idx.us, align 4
  %i.qw = load <2 x float>, ptr %5, align 8
  %i.qx = load <2 x float>, ptr %i.an, align 4
  %i.qy = shufflevector <2 x float> %i.qu, <2 x float> %i.qx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qz = shufflevector <2 x float> %i.qw, <2 x float> %i.qv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ra = fcmp ule <4 x float> %i.qy, %i.qz
  %i.rb = load float, ptr %i.ao, align 8          ; 2 uses
  %i.rc = fcmp ule float %.sroa.5487.0.copyload.us, %i.rb
  %i.rd = load float, ptr %i.ap, align 4          ; 2 uses
  %i.re = fcmp ule float %i.rd, %.sroa.8490.0.copyload.us
  %i.rf = freeze <4 x i1> %i.ra
  %i.rg = bitcast <4 x i1> %i.rf to i4
  %i.rh = icmp eq i4 %i.rg, -1
  %.fr = freeze i1 %i.rc
  %op.rdx = and i1 %i.rh, %.fr
  %op.rdx533 = select i1 %op.rdx, i1 %i.re, i1 false
  br i1 %op.rdx533, label %bb.w, label %b3AABB_Contains.exit.thread.us

b3AABB_Contains.exit.thread.us:                   ; preds = %.lr.ph.split.us
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qr, i64 36
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !170 ; 3 uses
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %5, align 8
  %i.rk = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.rl = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rm = fsub <2 x float> %.sroa.012.0.copyload.us, %i.rl
  %i.rn = fsub float %i.rb, %i.rj
  %.sroa.04.0.copyload.us = load <2 x float>, ptr %i.an, align 4
  %i.ro = fadd <2 x float> %i.rl, %.sroa.04.0.copyload.us
  %i.rp = fadd float %i.rj, %i.rd
  store <2 x float> %i.rm, ptr %i.qt, align 8, !tbaa !146
  store float %i.rn, ptr %.sroa.5487.0..sroa_idx.us, align 8, !tbaa !146
  store <2 x float> %i.ro, ptr %.sroa.6488.0..sroa_idx.us, align 4, !tbaa !146
  store float %i.rp, ptr %.sroa.8490.0..sroa_idx.us, align 4, !tbaa !146
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qr, i64 198 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !156
  %i.rs = or i8 %i.rr, 32
  store i8 %i.rs, ptr %i.rq, align 2, !tbaa !156
  %.val.us = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.qo ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !80
  %i.rv = or i64 %i.ru, %i.qn
  store i64 %i.rv, ptr %i.rt, align 8, !tbaa !80
  br label %bb.w

bb.w:                                             ; preds = %b3AABB_Contains.exit.thread.us, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qr, i64 12
  %.0281.us = load i32, ptr %i.rw, align 4, !tbaa !101 ; 2 uses
  %.not285.us = icmp eq i32 %.0281.us, -1
  br i1 %.not285.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !335

._crit_edge.loopexit532:                          ; preds = %.lr.ph
  %.val286.pre = load ptr, ptr %i.y, align 8, !tbaa !131
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.val286.pre, i64 %i.qo ; 2 uses
  %.pre527 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.rx = or i64 %.pre527, %i.qn
  store i64 %i.rx, ptr %.phi.trans.insert, align 8, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.loopexit532, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge524, label %bb.b, !llvm.loop !336
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @b3GetMilliseconds(i64 noundef) local_unnamed_addr #2

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @b3GetShapeUserMaterialId(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @b3BroadPhase_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #2

declare void @b3ValidateBroadPhase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b3BulletBodyTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [3848 x i8], ptr %i.d, i64 %i.e
  %i.g = icmp slt i32 %0, %1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.i = sext i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
end_hunk_0
