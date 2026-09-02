Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sift.dispatch?download=true
inline.NumInlined: 1019
inline.NumDeleted: 410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv12cpu_baseline21findScaleSpaceExtremaEiiiiiiidddRKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EERKNS_5RangeE:bb.a
  %i.ia = fcmp olt float %i.hq, %i.ho
  %.sroa.speculated388.i = select i1 %i.ia, float %i.hq, float %i.ho ; 2 uses
  %.sroa.speculated404.i = select i1 %i.hz, float %i.hm, float %i.hk ; 2 uses
  %i.ib = fcmp olt float %.sroa.speculated388.i, %.sroa.speculated404.i
  %i.ic = fcmp olt float %i.hv, %i.hs
  %i.id = fcmp olt float %i.hy, %i.hw
  %i.ie = select i1 %i.id, float %i.hy, float %i.hw ; 2 uses
  %i.if = select i1 %i.ic, float %i.hv, float %i.hs ; 2 uses
  %i.ig = fcmp olt float %i.ie, %i.if
  %i.ih = select i1 %i.ig, float %i.ie, float %i.if ; 2 uses
  %i.ii = select i1 %i.ib, float %.sroa.speculated388.i, float %.sroa.speculated404.i ; 2 uses
  %i.ij = fcmp olt float %i.ih, %i.ii
  %i.ik = select i1 %i.ij, float %i.ih, float %i.ii
  %i.il = fcmp ugt float %i.dc, %i.ik
  br i1 %i.il, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.im = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dh
  %i.in = load float, ptr %i.im, align 4, !tbaa !30 ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dk ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !30 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.io, i64 4
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !30 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dp
  %i.it = load float, ptr %i.is, align 4, !tbaa !30 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ds
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !30 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.cz, i64 %i.dv ; 3 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !30 ; 2 uses
  %i.iz = load float, ptr %i.iw, align 4, !tbaa !30 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iw, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !30 ; 2 uses
  %i.jc = fcmp olt float %i.ip, %i.in
  %i.jd = fcmp olt float %i.it, %i.ir
  %.sroa.speculated385.i = select i1 %i.jd, float %i.it, float %i.ir ; 2 uses
  %.sroa.speculated401.i = select i1 %i.jc, float %i.ip, float %i.in ; 2 uses
  %i.je = fcmp olt float %.sroa.speculated385.i, %.sroa.speculated401.i
  %i.jf = fcmp olt float %i.iy, %i.iv
  %i.jg = fcmp olt float %i.jb, %i.iz
  %i.jh = select i1 %i.jg, float %i.jb, float %i.iz ; 2 uses
  %i.ji = select i1 %i.jf, float %i.iy, float %i.iv ; 2 uses
  %i.jj = fcmp olt float %i.jh, %i.ji
  %i.jk = select i1 %i.jj, float %i.jh, float %i.ji ; 2 uses
  %i.jl = select i1 %i.je, float %.sroa.speculated385.i, float %.sroa.speculated401.i ; 2 uses
  %i.jm = fcmp olt float %i.jk, %i.jl
  %i.jn = select i1 %i.jm, float %i.jk, float %i.jl
  %i.jo = fcmp ugt float %i.dc, %i.jn
  br i1 %i.jo, label %.critedge.i, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv378.i
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !30 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv378.i
  %i.js = load float, ptr %i.jr, align 4, !tbaa !30 ; 2 uses
  %i.jt = fcmp olt float %i.js, %i.jq
  %.sroa.speculated.i = select i1 %i.jt, float %i.js, float %i.jq
  %i.ju = fcmp ugt float %i.dc, %.sroa.speculated.i
  br i1 %i.ju, label %.critedge.i, label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv378.i
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !30 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv378.i
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !30 ; 2 uses
  %i.jz = fcmp olt float %i.jw, %i.jy
  %.sroa.speculated263.i = select i1 %i.jz, float %i.jy, float %i.jw
  %i.ka = fcmp ult float %i.dc, %.sroa.speculated263.i
  br i1 %i.ka, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_122findScaleSpaceExtremaT7processERKNS_5RangeEE29__cv_trace_location_region632)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL18adjustLocalExtremaERKSt6vectorINS_3MatESaIS2_EERNS_8KeyPointEiRiS9_S9_ifffE25__cv_trace_location_fn298)
          to label %.noexc.i unwind label %bb.ac

.noexc.i:                                         ; preds = %bb.m
  %i.kb = load ptr, ptr %11, align 8, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.noexc.i
  %.0318.i = phi i32 [ %i.da, %.noexc.i ], [ %i.rb, %bb.t ] ; 10 uses
  %.0316.i = phi i32 [ %i.df, %.noexc.i ], [ %i.qy, %bb.t ] ; 11 uses
  %.0315.i = phi i32 [ %1, %.noexc.i ], [ %i.re, %bb.t ] ; 9 uses
  %.0240400.i.i = phi i32 [ 0, %.noexc.i ], [ %i.rp, %bb.t ]
  %i.kc = add nsw i32 %.0315.i, %i.bo
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr [208 x i8], ptr %i.kb, i64 %i.kd ; 11 uses
  %i.kf = add nsw i32 %.0316.i, 1                 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !31
  %i.ki = icmp slt i32 %i.kh, 2                   ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !26 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 128
  %i.km = load i64, ptr %i.kl, align 8            ; 3 uses
  %i.kn = sext i32 %.0318.i to i64                ; 3 uses
  %i.ko = mul i64 %i.km, %i.kn
  %.sink.idx.i.i.i = select i1 %i.ki, i64 0, i64 %i.ko
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.sink.idx.i.i.i ; 4 uses
  %i.kp = sext i32 %i.kf to i64                   ; 5 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !30 ; 2 uses
  %i.ks = add nsw i32 %.0316.i, -1
  %i.kt = sext i32 %i.ks to i64                   ; 5 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.kt
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !30 ; 4 uses
  %i.kw = add nsw i32 %.0318.i, 1
  %i.kx = sext i32 %i.kw to i64                   ; 3 uses
  %i.ky = mul i64 %i.km, %i.kx
  %.sink.idx.i276.i.i = select i1 %i.ki, i64 0, i64 %i.ky
  %.sink.i277.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.sink.idx.i276.i.i ; 5 uses
  %i.kz = sext i32 %.0316.i to i64                ; 9 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %.sink.i277.i.i, i64 %i.kz
  %i.lb = add nsw i32 %.0318.i, -1
  %i.lc = sext i32 %i.lb to i64                   ; 3 uses
  %i.ld = mul i64 %i.km, %i.lc
  %.sink.idx.i278.i.i = select i1 %i.ki, i64 0, i64 %i.ld
  %.sink.i279.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.sink.idx.i278.i.i ; 4 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %.sink.i279.i.i, i64 %i.kz
  %i.lf = getelementptr i8, ptr %i.ke, i64 212
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !31
  %i.lh = icmp slt i32 %i.lg, 2                   ; 3 uses
  %i.li = getelementptr i8, ptr %i.ke, i64 232
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !26 ; 3 uses
  %i.lk = getelementptr i8, ptr %i.ke, i64 336
  %i.ll = load i64, ptr %i.lk, align 8            ; 3 uses
  %i.lm = mul i64 %i.ll, %i.kn
  %.sink.idx.i280.i.i = select i1 %i.lh, i64 0, i64 %i.lm
  %.sink.i281.i.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.sink.idx.i280.i.i ; 3 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %.sink.i281.i.i, i64 %i.kz
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !30 ; 3 uses
  %i.lp = getelementptr i8, ptr %i.ke, i64 -204
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !31
  %i.lr = icmp slt i32 %i.lq, 2                   ; 3 uses
  %i.ls = getelementptr i8, ptr %i.ke, i64 -184
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !26 ; 3 uses
  %i.lu = getelementptr i8, ptr %i.ke, i64 -80
  %i.lv = load i64, ptr %i.lu, align 8            ; 3 uses
  %i.lw = mul i64 %i.lv, %i.kn
  %.sink.idx.i282.i.i = select i1 %i.lr, i64 0, i64 %i.lw
  %.sink.i283.i.i = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.sink.idx.i282.i.i ; 3 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %.sink.i283.i.i, i64 %i.kz
  %i.ly = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.kz
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !30 ; 2 uses
  %i.ma = fmul float %i.lz, 2.000000e+00          ; 5 uses
  %i.mb = fadd float %i.kr, %i.kv
  %i.mc = fsub float %i.mb, %i.ma
  %i.md = fmul float %i.mc, f0x3B808081           ; 3 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %.sink.i277.i.i, i64 %i.kp
  %i.mf = load float, ptr %i.me, align 4, !tbaa !30
  %i.mg = getelementptr inbounds [4 x i8], ptr %.sink.i277.i.i, i64 %i.kt
  %i.mh = getelementptr inbounds [4 x i8], ptr %.sink.i279.i.i, i64 %i.kp
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !30
  %i.mj = getelementptr inbounds [4 x i8], ptr %.sink.i279.i.i, i64 %i.kt
  %i.mk = getelementptr inbounds [4 x i8], ptr %.sink.i281.i.i, i64 %i.kp
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !30
  %i.mm = getelementptr inbounds [4 x i8], ptr %.sink.i281.i.i, i64 %i.kt
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !30
  %i.mo = getelementptr inbounds [4 x i8], ptr %.sink.i283.i.i, i64 %i.kp
  %i.mp = getelementptr inbounds [4 x i8], ptr %.sink.i283.i.i, i64 %i.kt
  %i.mq = fsub float %i.ml, %i.mn
  %i.mr = load float, ptr %i.mp, align 4, !tbaa !30
  %i.ms = mul i64 %i.ll, %i.kx
  %.sink.idx.i314.i.i = select i1 %i.lh, i64 0, i64 %i.ms
  %.sink.i315.i.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.sink.idx.i314.i.i
  %i.mt = getelementptr inbounds [4 x i8], ptr %.sink.i315.i.i, i64 %i.kz
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !30
  %i.mv = mul i64 %i.ll, %i.lc
  %.sink.idx.i316.i.i = select i1 %i.lh, i64 0, i64 %i.mv
  %.sink.i317.i.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.sink.idx.i316.i.i
  %i.mw = getelementptr inbounds [4 x i8], ptr %.sink.i317.i.i, i64 %i.kz
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !30
  %i.my = mul i64 %i.lv, %i.kx
  %.sink.idx.i318.i.i = select i1 %i.lr, i64 0, i64 %i.my
  %.sink.i319.i.i = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.sink.idx.i318.i.i
  %i.mz = getelementptr inbounds [4 x i8], ptr %.sink.i319.i.i, i64 %i.kz
  %i.na = load float, ptr %i.mz, align 4, !tbaa !30
  %i.nb = mul i64 %i.lv, %i.lc
  %.sink.idx.i320.i.i = select i1 %i.lr, i64 0, i64 %i.nb
  %.sink.i321.i.i = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.sink.idx.i320.i.i
  %i.nc = getelementptr inbounds [4 x i8], ptr %.sink.i321.i.i, i64 %i.kz
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !30
  %i.ne = load float, ptr %i.la, align 4, !tbaa !30 ; 2 uses
  %i.nf = load float, ptr %i.mg, align 4, !tbaa !30 ; 2 uses
  %i.ng = load <2 x float>, ptr %i.mj, align 4, !tbaa !30 ; 3 uses
  %i.nh = load float, ptr %i.le, align 4, !tbaa !30 ; 3 uses
  %i.ni = fadd float %i.ne, %i.nh
  %i.nj = fsub float %i.ni, %i.ma
  %i.nk = fmul float %i.nj, f0x3B808081           ; 5 uses
  %i.nl = load float, ptr %i.lx, align 4, !tbaa !30 ; 3 uses
  %i.nm = load float, ptr %i.mo, align 4, !tbaa !30
  %i.nn = fadd float %i.lo, %i.nl
  %i.no = fsub float %i.mq, %i.nm
  %i.np = fsub float %i.nn, %i.ma
  %i.nq = fadd float %i.no, %i.mr
  %20 = insertelement <2 x float> poison, float %i.nq, i64 0
  %21 = insertelement <2 x float> %20, float %i.np, i64 1
  %22 = fmul <2 x float> %21, <float f0x3A808081, float f0x3B808081> ; 3 uses
  %i.nr = fsub float %i.mf, %i.nf
  %i.ns = fsub float %i.mu, %i.mx
  %i.nt = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.nu = insertelement <2 x float> %i.nt, float %i.nr, i64 1
  %i.nv = insertelement <2 x float> poison, float %i.na, i64 0
  %i.nw = insertelement <2 x float> %i.nv, float %i.mi, i64 1
  %i.nx = fsub <2 x float> %i.nu, %i.nw
  %i.ny = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nz = insertelement <2 x float> %i.ny, float %i.nd, i64 0
  %i.oa = fadd <2 x float> %i.nx, %i.nz
  %i.ob = fmul <2 x float> %i.oa, splat (float f0x3A808081) ; 3 uses
  %i.oc = extractelement <2 x float> %i.ob, i64 0 ; 6 uses
  %i.od = fneg float %i.oc                        ; 3 uses
  %i.oe = fmul float %i.oc, %i.od
  %23 = extractelement <2 x float> %22, i64 1     ; 4 uses
  %i.of = call float @llvm.fmuladd.f32(float %i.nk, float %23, float %i.oe) ; 2 uses
  %24 = extractelement <2 x float> %22, i64 0     ; 4 uses
  %i.og = fmul float %24, %i.od
  %i.oh = extractelement <2 x float> %i.ob, i64 1 ; 7 uses
  %i.oi = call float @llvm.fmuladd.f32(float %i.oh, float %23, float %i.og)
  %i.oj = fneg float %i.oi
  %i.ok = fmul float %i.oh, %i.oj
  %i.ol = call float @llvm.fmuladd.f32(float %i.md, float %i.of, float %i.ok)
  %i.om = fneg float %i.nk
  %i.on = fmul float %24, %i.om
  %i.oo = call float @llvm.fmuladd.f32(float %i.oh, float %i.oc, float %i.on)
  %i.op = call float @llvm.fmuladd.f32(float %24, float %i.oo, float %i.ol) ; 2 uses
  %i.oq = fcmp une float %i.op, 0.000000e+00
  br i1 %i.oq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.or = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.os = insertelement <2 x float> %i.or, float %i.lo, i64 1
  %i.ot = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ou = insertelement <2 x float> %i.ot, float %i.nl, i64 1
  %i.ov = fsub <2 x float> %i.os, %i.ou
  %i.ow = fsub float %i.kr, %i.kv
  %i.ox = fmul float %i.ow, f0x3B008081           ; 3 uses
  %i.oy = fdiv float 1.000000e+00, %i.op          ; 2 uses
  %i.oz = fmul <2 x float> %i.ov, splat (float f0x3B008081) ; 3 uses
  %i.pa = fneg float %24                          ; 3 uses
  %i.pb = extractelement <2 x float> %i.oz, i64 1 ; 2 uses
  %i.pc = fneg float %i.pb                        ; 2 uses
  %i.pd = fmul float %i.oc, %i.pa
  %i.pe = fmul float %i.oc, %i.pc
  %i.pf = call float @llvm.fmuladd.f32(float %i.oh, float %23, float %i.pd)
  %i.pg = extractelement <2 x float> %i.oz, i64 0 ; 3 uses
  %i.ph = call float @llvm.fmuladd.f32(float %i.pg, float %23, float %i.pe) ; 2 uses
  %i.pi = fneg float %i.pf
  %i.pj = fneg float %i.ph
  %i.pk = fmul float %i.ox, %i.pi
  %i.pl = fmul float %i.oh, %i.pj
  %i.pm = call float @llvm.fmuladd.f32(float %i.md, float %i.ph, float %i.pk)
  %i.pn = call float @llvm.fmuladd.f32(float %i.ox, float %i.of, float %i.pl)
  %i.po = fmul float %i.pg, %i.pa
  %i.pp = fmul float %i.nk, %i.pc
  %i.pq = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.pr = insertelement <2 x float> %i.pq, float %i.po, i64 1
  %i.ps = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> %i.oz, <2 x float> %i.pr) ; 2 uses
  %i.pt = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pu = insertelement <2 x float> poison, float %i.pn, i64 0
  %i.pv = insertelement <2 x float> %i.pu, float %i.pm, i64 1
  %i.pw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pt, <2 x float> %i.ps, <2 x float> %i.pv)
  %i.px = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fmul <2 x float> %i.pw, %i.py
  %i.qa = fmul float %i.pg, %i.od
  %i.qb = call float @llvm.fmuladd.f32(float %i.nk, float %i.pb, float %i.qa)
  %i.qc = extractelement <2 x float> %i.ps, i64 1
  %i.qd = fneg float %i.qc
  %i.qe = fmul float %i.oh, %i.qd
  %i.qf = call float @llvm.fmuladd.f32(float %i.md, float %i.qb, float %i.qe)
  %i.qg = fmul float %i.nk, %i.pa
  %i.qh = call float @llvm.fmuladd.f32(float %i.oh, float %i.oc, float %i.qg)
  %i.qi = call float @llvm.fmuladd.f32(float %i.ox, float %i.qh, float %i.qf)
  %i.qj = fmul float %i.qi, %i.oy
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.fca.1.extract.i.i.i = phi float [ %i.qj, %bb.o ], [ 0.000000e+00, %bb.n ] ; 3 uses
  %.fca.0.extract.i.i.i = phi <2 x float> [ %i.pz, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 1 ; 2 uses
  %i.qk = fneg float %.fca.1.extract.i.i.i        ; 3 uses
  %i.ql = fneg float %.sroa.0.4.vec.extract.i.i.i ; 2 uses
  %i.qm = fneg float %.sroa.0.0.vec.extract.i.i.i ; 2 uses
  %i.qn = call float @llvm.fabs.f32(float %.fca.1.extract.i.i.i) ; 2 uses
  %i.qo = fcmp olt float %i.qn, 5.000000e-01
  %i.qp = call float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i.i.i) ; 2 uses
  %i.qq = fcmp olt float %i.qp, 5.000000e-01
  %or.cond391.i.i = select i1 %i.qo, i1 %i.qq, i1 false
  %i.qr = call float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i.i.i) ; 2 uses
  %i.qs = fcmp olt float %i.qr, 5.000000e-01
  %or.cond393.i.i = select i1 %or.cond391.i.i, i1 %i.qs, i1 false
  br i1 %or.cond393.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.qt = fcmp ogt float %i.qn, f0x4E2AAAAB
  %i.qu = fcmp ogt float %i.qp, f0x4E2AAAAB
  %or.cond395.i.i = select i1 %i.qt, i1 true, i1 %i.qu
  %i.qv = fcmp ogt float %i.qr, f0x4E2AAAAB
  %or.cond397.i.i = select i1 %or.cond395.i.i, i1 true, i1 %i.qv
  br i1 %or.cond397.i.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.qw = insertelement <4 x float> poison, float %i.qm, i64 0
  %i.qx = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.qw)
  %i.qy = add nsw i32 %i.qx, %.0316.i             ; 6 uses
  %i.qz = insertelement <4 x float> poison, float %i.ql, i64 0
  %i.ra = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.qz)
  %i.rb = add nsw i32 %i.ra, %.0318.i             ; 6 uses
  %i.rc = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.rd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.rc)
  %i.re = add nsw i32 %i.rd, %.0315.i             ; 6 uses
  %i.rf = icmp slt i32 %i.re, 1
  %i.rg = icmp sgt i32 %i.re, %6
  %or.cond.i.i = or i1 %i.rf, %i.rg
  %i.rh = icmp slt i32 %i.qy, 5
  %or.cond320.i = select i1 %or.cond.i.i, i1 true, i1 %i.rh
  br i1 %or.cond320.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !32
  %i.rk = add nsw i32 %i.rj, -5
  %.not.i220.i = icmp sge i32 %i.qy, %i.rk
  %i.rl = icmp slt i32 %i.rb, 5
  %or.cond321.i = select i1 %.not.i220.i, i1 true, i1 %i.rl
  br i1 %or.cond321.i, label %.critedge.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !33
  %i.ro = add nsw i32 %i.rn, -5
  %.not265.i.i = icmp sge i32 %i.rb, %i.ro
  %i.rp = add nuw nsw i32 %.0240400.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.rp, 5
  %or.cond424.i.i = select i1 %.not265.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond424.i.i, label %.critedge.i.i, label %bb.n, !llvm.loop !127

bb.u:                                             ; preds = %bb.p
  %i.rq = zext nneg i32 %i.kf to i64              ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i, i64 %i.rq
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !30 ; 2 uses
  %i.rt = fsub float %i.rs, %i.kv
  %i.ru = fmul float %i.rt, f0x3B008081
  %i.rv = zext nneg i32 %.0316.i to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i277.i.i, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !30 ; 2 uses
  %i.ry = fsub float %i.rx, %i.nh
  %i.rz = fmul float %i.ry, f0x3B008081
  %i.sa = fsub float %i.lo, %i.nl
  %i.sb = fmul float %i.sa, f0x3B008081
  %i.sc = call float @llvm.fmuladd.f32(float %i.ru, float %i.qm, float 0.000000e+00)
  %i.sd = call float @llvm.fmuladd.f32(float %i.rz, float %i.ql, float %i.sc)
  %i.se = call noundef float @llvm.fmuladd.f32(float %i.sb, float %i.qk, float %i.sd)
  %i.sf = fmul float %i.se, 5.000000e-01
  %i.sg = call float @llvm.fmuladd.f32(float %i.lz, float f0x3B808081, float %i.sf)
  %i.sh = call noundef float @llvm.fabs.f32(float %i.sg) ; 2 uses
  %i.si = fmul float %i.sh, %i.bp
  %i.sj = fcmp olt float %i.si, %i.bk
  br i1 %i.sj, label %.critedge.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.sk = fadd float %i.kv, %i.rs
  %i.sl = fsub float %i.sk, %i.ma
  %i.sm = fmul float %i.sl, f0x3B808081           ; 2 uses
  %i.sn = fadd float %i.rx, %i.nh
  %i.so = fsub float %i.sn, %i.ma
  %i.sp = fmul float %i.so, f0x3B808081           ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i277.i.i, i64 %i.rq
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !30
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.sink.i279.i.i, i64 %i.rq
  %i.st = load float, ptr %i.ss, align 4, !tbaa !30
  %i.su = fsub float %i.sr, %i.nf
  %i.sv = fsub float %i.su, %i.st
  %i.sw = extractelement <2 x float> %i.ng, i64 0
  %i.sx = fadd float %i.sw, %i.sv
  %i.sy = fmul float %i.sx, f0x3A808081           ; 2 uses
  %i.sz = fneg float %i.sy
  %i.ta = fmul float %i.sy, %i.sz
  %i.tb = call float @llvm.fmuladd.f32(float %i.sm, float %i.sp, float %i.ta) ; 2 uses
  %i.tc = fcmp ugt float %i.tb, 0.000000e+00
  br i1 %i.tc, label %bb.w, label %.critedge.i.i

bb.w:                                             ; preds = %bb.v
  %i.td = fadd float %i.sm, %i.sp                 ; 2 uses
  %i.te = fmul float %i.td, %i.td
  %i.tf = fmul float %i.te, %i.bl
  %i.tg = fmul float %i.br, %i.tb
  %i.th = fcmp ult float %i.tf, %i.tg
  br i1 %i.th, label %bb.x, label %.critedge.i.i

bb.x:                                             ; preds = %bb.w
  %i.ti = sitofp i32 %.0315.i to float
  %i.tj = fsub float %i.ti, %.fca.1.extract.i.i.i
  %i.tk = fdiv float %i.tj, %i.bp
  %exp2f.i221.i = invoke float @exp2f(float %i.tk)
          to label %exp2f.i.noexc.i unwind label %bb.ac

exp2f.i.noexc.i:                                  ; preds = %bb.x
  %i.tl = shl i32 %.0315.i, 8
  %i.tm = add nsw i32 %i.tl, %0
  %i.tn = fpext nnan ninf float %i.qk to double
  %i.to = fadd nnan double %i.tn, 5.000000e-01
  %i.tp = fmul nnan double %i.to, 2.550000e+02
  %i.tq = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.tr = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.tq)
  %i.ts = shl i32 %i.tr, 16
  %i.tt = add nsw i32 %i.tm, %i.ts
  %i.tu = sitofp i32 %.0318.i to float
  %i.tv = uitofp nneg i32 %.0316.i to float
  %i.tw = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.tx = insertelement <2 x float> %i.tw, float %i.tu, i64 1
  %i.ty = fsub nnan <2 x float> %i.tx, %.fca.0.extract.i.i.i
  %i.tz = fmul <2 x float> %i.ty, %i.cb
  %i.ua = fmul float %exp2f.i221.i, %i.bm
  %i.ub = fmul float %i.ua, %i.bt
  %i.uc = fmul float %i.ub, 2.000000e+00
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %exp2f.i.noexc.i, %bb.w, %bb.v, %bb.u
  %.sroa.16.0.i = phi float [ 0.000000e+00, %bb.u ], [ %i.sh, %exp2f.i.noexc.i ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %.sroa.10.0.i = phi float [ 0.000000e+00, %bb.u ], [ %i.uc, %exp2f.i.noexc.i ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ] ; 3 uses
  %.1319.i = phi i32 [ %.0318.i, %bb.u ], [ %.0318.i, %exp2f.i.noexc.i ], [ %.0318.i, %bb.w ], [ %.0318.i, %bb.v ], [ %i.rb, %bb.t ], [ %i.rb, %bb.s ], [ %i.rb, %bb.r ], [ %.0318.i, %bb.q ]
  %.1317.i = phi i32 [ %.0316.i, %bb.u ], [ %.0316.i, %exp2f.i.noexc.i ], [ %.0316.i, %bb.w ], [ %.0316.i, %bb.v ], [ %i.qy, %bb.t ], [ %i.qy, %bb.s ], [ %i.qy, %bb.r ], [ %.0316.i, %bb.q ]
  %.1.i = phi i32 [ %.0315.i, %bb.u ], [ %.0315.i, %exp2f.i.noexc.i ], [ %.0315.i, %bb.w ], [ %.0315.i, %bb.v ], [ %i.re, %bb.t ], [ %i.re, %bb.s ], [ %i.re, %bb.r ], [ %.0315.i, %bb.q ]
  %.sroa.18.0.i = phi i32 [ 0, %bb.u ], [ %i.tt, %exp2f.i.noexc.i ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %.5252.i.i = phi i1 [ false, %bb.u ], [ true, %exp2f.i.noexc.i ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ]
  %i.ud = phi <2 x float> [ zeroinitializer, %bb.u ], [ %i.tz, %exp2f.i.noexc.i ], [ zeroinitializer, %bb.w ], [ zeroinitializer, %bb.v ], [ zeroinitializer, %bb.q ], [ zeroinitializer, %bb.r ], [ zeroinitializer, %bb.s ], [ zeroinitializer, %bb.t ] ; 2 uses
  %i.ue = load i32, ptr %i.t, align 8, !tbaa !18
  %.not.i.i.i = icmp eq i32 %i.ue, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge.i.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %16)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.uf = landingpad { ptr, i32 }
          catch ptr null
  %i.ug = extractvalue { ptr, i32 } %i.uf, 0
  call void @__clang_call_terminate(ptr %i.ug) #25
  unreachable

bb.aa:                                            ; preds = %bb.y, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.5252.i.i, label %bb.ad, label %.critedge176.i

bb.ab:                                            ; preds = %bb.l
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ac:                                            ; preds = %bb.x, %bb.m
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
