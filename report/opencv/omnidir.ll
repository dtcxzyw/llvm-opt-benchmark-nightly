Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/omnidir?download=true
inline.NumInlined: 4032
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv7omnidir13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_S3_dS3_S6_:bb.a
  %i.iq = load float, ptr %i.io, align 4, !tbaa !35, !noalias !160
  %i.ir = fpext <2 x float> %i.ip to <2 x double>
  %i.is = fpext float %i.iq to double
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %indvars.iv ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load <2 x double>, ptr %i.it, align 8, !tbaa !20
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !20
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.14713.0 = phi double [ %i.is, %bb.cj ], [ %i.iw, %bb.ck ] ; 5 uses
  %i.ix = phi <2 x double> [ %i.ir, %bb.cj ], [ %i.iv, %bb.ck ] ; 5 uses
  %i.iy = load double, ptr %i.hd, align 8, !tbaa !20, !noalias !161
  %i.iz = extractelement <2 x double> %i.ix, i64 0 ; 4 uses
  %i.ja = call double @llvm.fmuladd.f64(double %i.iy, double %i.iz, double 0.000000e+00)
  %i.jb = load double, ptr %i.he, align 8, !tbaa !20, !noalias !161
  %i.jc = extractelement <2 x double> %i.ix, i64 1 ; 3 uses
  %i.jd = call double @llvm.fmuladd.f64(double %i.jb, double %i.jc, double %i.ja)
  %i.je = load double, ptr %i.hf, align 8, !tbaa !20, !noalias !161
  %i.jf = call double @llvm.fmuladd.f64(double %i.je, double %.sroa.14713.0, double %i.jd)
  %i.jg = fadd double %.sroa.9739.0753, %i.jf     ; 5 uses
  %i.jh = load <4 x double>, ptr %33, align 8, !tbaa !20, !noalias !161 ; 3 uses
  %i.ji = shufflevector <4 x double> %i.jh, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.jj = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.jj, <2 x double> zeroinitializer)
  %i.jl = load <2 x double>, ptr %i.hc, align 8, !tbaa !20, !noalias !161
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jn = shufflevector <4 x double> %i.jh, <4 x double> %i.jm, <2 x i32> <i32 1, i32 4>
  %i.jo = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jp = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jp, <2 x double> %i.jk)
  %i.jr = shufflevector <4 x double> %i.jh, <4 x double> %i.jm, <2 x i32> <i32 2, i32 5>
  %i.js = insertelement <2 x double> poison, double %.sroa.14713.0, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jt, <2 x double> %i.jq)
  %i.jv = fadd <2 x double> %i.dj, %i.ju          ; 6 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0 ; 4 uses
  %i.jx = call double @llvm.fmuladd.f64(double %i.jw, double %i.jw, double 0.000000e+00)
  %i.jy = extractelement <2 x double> %i.jv, i64 1 ; 2 uses
  %i.jz = call double @llvm.fmuladd.f64(double %i.jy, double %i.jy, double %i.jx)
  %i.ka = call noundef double @llvm.fmuladd.f64(double %i.jg, double %i.jg, double %i.jz)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.ka)
  %i.kb = fdiv double 1.000000e+00, %sqrt.i       ; 5 uses
  %i.kc = insertelement <2 x double> poison, double %i.kb, i64 0 ; 2 uses
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x double> %i.jv, %i.kd          ; 3 uses
  %i.kf = fmul double %i.jg, %i.kb
  %i.kg = fadd double %5, %i.kf                   ; 4 uses
  %i.kh = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = fdiv <2 x double> %i.ke, %i.ki          ; 11 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 1 ; 8 uses
  %i.kl = fmul double %i.kk, %i.kk
  %i.km = extractelement <2 x double> %i.kj, i64 0 ; 6 uses
  %i.kn = call double @llvm.fmuladd.f64(double %i.km, double %i.km, double %i.kl) ; 9 uses
  %i.ko = fmul double %i.kn, %i.kn                ; 4 uses
  %i.kp = call double @llvm.fmuladd.f64(double %i.ht, double %i.kn, double 1.000000e+00)
  %i.kq = call double @llvm.fmuladd.f64(double %i.hv, double %i.ko, double %i.kp) ; 2 uses
  %i.kr = fmul double %i.hh, %i.km
  %i.ks = fmul double %i.kk, %i.kr
  %i.kt = call double @llvm.fmuladd.f64(double %i.km, double %i.kq, double %i.ks)
  %i.ku = fmul <2 x double> %i.kj, splat (double 2.000000e+00) ; 2 uses
  %i.kv = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %i.kj, <2 x double> %i.kw) ; 6 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0
  %i.kz = call double @llvm.fmuladd.f64(double %i.hx, double %i.ky, double %i.kt) ; 2 uses
  %shift = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.fm, %shift
  %i.la = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.lb = call double @llvm.fmuladd.f64(double %i.kk, double %i.kq, double %i.la)
  %foldExtExtBinop783 = fmul <2 x double> %shift782, %i.kj
  %i.lc = extractelement <2 x double> %foldExtExtBinop783, i64 0 ; 2 uses
  %i.ld = call double @llvm.fmuladd.f64(double %i.lc, double %i.kk, double %i.lb) ; 4 uses
  %i.le = fmul double %i.id, %i.ld
  %i.lf = call double @llvm.fmuladd.f64(double %i.ic, double %i.kz, double %i.le)
  %i.lg = fadd double %.sroa.0732.0, %i.lf        ; 2 uses
  %i.lh = call double @llvm.fmuladd.f64(double %.sroa.8735.0, double %i.ld, double %.sroa.7.0) ; 2 uses
  %i.li = call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.lj = icmp eq i32 %i.li, 5
  br i1 %i.lj, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lk = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.lh, i64 1
  %i.lm = fptrunc <2 x double> %i.ll to <2 x float>
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv
  store <2 x float> %i.lm, ptr %i.ln, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv ; 2 uses
  store double %i.lg, ptr %i.lo, align 8
  %.sroa.6608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store double %i.lh, ptr %.sroa.6608.0..sroa_idx, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.lp = call noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.lp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lq = load double, ptr %i.hs, align 8, !tbaa !20, !noalias !162 ; 2 uses
  %i.lr = call noundef double @pow(double noundef %i.kb, double noundef 3.000000e+00) #22 ; 5 uses
  %i.ls = fneg double %i.jw
  %i.lt = fmul double %i.jw, %i.ls
  %i.lu = insertelement <2 x double> %i.jo, double %i.lt, i64 1
  %i.lv = extractelement <2 x double> %i.ke, i64 0
  %i.lw = fneg double %i.lv
  %i.lx = fdiv double %i.lw, %i.kg
  %i.ly = extractelement <2 x double> %i.ke, i64 1
  %i.lz = fneg double %i.ly
  %i.ma = fdiv double %i.lz, %i.kg
  %i.mb = fdiv double %i.ma, %i.kg                ; 2 uses
  %i.mc = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.md = fmul double %i.hw, %i.km
  %i.me = fmul double %i.hw, %i.kk
  %i.mf = fmul double %i.me, %i.kn
  %i.mg = insertelement <2 x double> %i.ij, double %i.md, i64 0
  %i.mh = insertelement <2 x double> %i.mc, double %i.kn, i64 0
  %i.mi = fmul <2 x double> %i.mg, %i.mh
  %i.mj = insertelement <2 x double> %i.kj, double %i.ko, i64 1
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.mj, <2 x double> %i.mi) ; 3 uses
  %i.ml = extractelement <2 x double> %i.mk, i64 1
  %i.mm = call double @llvm.fmuladd.f64(double %i.hh, double %i.kk, double %i.ml)
  %i.mn = extractelement <2 x double> %i.mk, i64 0
  %i.mo = call double @llvm.fmuladd.f64(double %i.km, double %i.mn, double %i.mm)
  %i.mp = call double @llvm.fmuladd.f64(double %i.ht, double %i.kn, double %i.mo)
  %i.mq = fadd double %i.mp, 1.000000e+00
  %i.mr = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ms, <2 x double> zeroinitializer) ; 2 uses
  %i.mu = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.kn, i64 1 ; 2 uses
  %i.mx = fmul <2 x double> %i.mu, %i.mw          ; 3 uses
  %i.my = extractelement <2 x double> %i.ku, i64 0
  %i.mz = fmul double %i.kk, %i.my                ; 3 uses
  %i.na = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.nb = fmul <2 x double> %i.na, %i.mw          ; 3 uses
  %i.nc = load <16 x double>, ptr %34, align 8, !tbaa !20, !noalias !162 ; 9 uses
  %i.nd = load double, ptr %i.hi, align 8, !tbaa !20, !noalias !162
  %i.ne = load <2 x double>, ptr %i.hq, align 8, !tbaa !20, !noalias !162
  %i.nf = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 0, i32 9> ; 2 uses
  %i.ng = insertelement <2 x double> %i.nf, double %i.nd, i64 1
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.ng, <2 x double> zeroinitializer)
  %i.ni = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 1, i32 10> ; 2 uses
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.ni, <2 x double> %i.nh)
  %i.nk = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 2, i32 11> ; 2 uses
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.nk, <2 x double> %i.nj)
  %i.nm = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 3, i32 12> ; 3 uses
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> zeroinitializer, <2 x double> %i.nl)
  %i.no = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 4, i32 13> ; 3 uses
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> zeroinitializer, <2 x double> %i.nn)
  %i.nq = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 5, i32 14> ; 3 uses
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> zeroinitializer, <2 x double> %i.np)
  %i.ns = shufflevector <16 x double> %i.nc, <16 x double> poison, <2 x i32> <i32 6, i32 15> ; 3 uses
  %i.nt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> zeroinitializer, <2 x double> %i.nr)
  %i.nu = shufflevector <2 x double> %i.ne, <2 x double> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.nv = shufflevector <16 x double> %i.nc, <16 x double> %i.nu, <2 x i32> <i32 7, i32 16> ; 3 uses
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> zeroinitializer, <2 x double> %i.nt)
  %i.nx = shufflevector <16 x double> %i.nc, <16 x double> %i.nu, <2 x i32> <i32 8, i32 17> ; 3 uses
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> zeroinitializer, <2 x double> %i.nw) ; 2 uses
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> zeroinitializer, <2 x double> %i.nz)
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> zeroinitializer, <2 x double> %i.oa) ; 2 uses
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.nm, <2 x double> %i.ob)
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.no, <2 x double> %i.oc)
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.nq, <2 x double> %i.od)
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> zeroinitializer, <2 x double> %i.oe)
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> zeroinitializer, <2 x double> %i.of)
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> zeroinitializer, <2 x double> %i.og) ; 2 uses
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> zeroinitializer, <2 x double> %i.ob)
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> zeroinitializer, <2 x double> %i.oi)
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> zeroinitializer, <2 x double> %i.oj)
  %i.ol = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.ns, <2 x double> %i.ok)
  %i.om = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.nv, <2 x double> %i.ol)
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.nx, <2 x double> %i.om) ; 2 uses
  %.sroa.5334.0..1210.sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %.1210768, i64 128
  %i.op = insertelement <2 x double> %i.jv, double %i.jg, i64 0
  %i.oq = fneg <2 x double> %i.op                 ; 3 uses
  %i.or = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul <2 x double> %i.or, %i.oq
  %i.ot = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x double> %i.os, %i.ou
  %i.ow = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.lr, i64 1
  %i.ox = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kb, i64 1
  %i.oy = extractelement <2 x double> %i.oq, i64 0
  %i.oz = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pa = fmul <2 x double> %i.oz, %i.oq          ; 2 uses
  %i.pb = shufflevector <2 x double> %i.kx, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.pc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.ow, <2 x double> %i.ox) ; 2 uses
  %i.pd = extractelement <2 x double> %i.pc, i64 0
  %i.pe = call double @llvm.fmuladd.f64(double %.sroa.8735.0, double %i.mz, double %i.pd)
  %i.pf = extractelement <2 x double> %i.pa, i64 0
  %i.pg = fmul double %i.pf, %i.lr                ; 2 uses
  %i.ph = fmul double %i.jg, %i.oy
  %i.pi = shufflevector <2 x double> %i.ov, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 4 uses
  %i.pj = shufflevector <2 x double> %i.pc, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.pk = insertelement <3 x double> %i.pj, double %i.pg, i64 0
  %i.pl = shufflevector <3 x double> %i.pk, <3 x double> %i.pi, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 144
  %i.pm = getelementptr inbounds nuw i8, ptr %.1210768, i64 24
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 40
  %i.pn = getelementptr inbounds nuw i8, ptr %.1210768, i64 152
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 168
  %i.po = getelementptr inbounds nuw i8, ptr %.1210768, i64 96
  %i.pp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.mx, <2 x double> zeroinitializer)
  %i.pq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.nb, <2 x double> %i.pp)
  %i.pr = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.5321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 112
  %i.ps = insertelement <2 x double> poison, double %i.mz, i64 0 ; 2 uses
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> %i.kx, <2 x i32> <i32 0, i32 2>
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.pt, <2 x double> zeroinitializer)
  %i.pv = shufflevector <2 x double> %i.kx, <2 x double> %i.ps, <2 x i32> <i32 1, i32 2>
  %i.pw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.pv, <2 x double> %i.pu)
  %.sroa.4.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %.1210768, i64 232
  %i.px = insertelement <2 x double> %i.mx, double %i.mz, i64 1
  %i.py = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.pz = shufflevector <2 x double> %i.nb, <2 x double> %i.kx, <2 x i32> <i32 0, i32 3>
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.pz, <2 x double> %i.py)
  store <2 x double> %i.qa, ptr %.sroa.4.0..sroa_idx318, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 248
  store double %i.pe, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %i.qb = getelementptr inbounds nuw i8, ptr %.1210768, i64 88
  %i.qc = getelementptr inbounds nuw i8, ptr %.1210768, i64 216
  %i.qd = insertelement <2 x double> %i.ik, double %i.ph, i64 0
  %i.qe = insertelement <2 x double> %i.kj, double %i.lr, i64 0
  %i.qf = insertelement <2 x double> %i.kc, double %i.mf, i64 1
  %i.qg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qd, <2 x double> %i.qe, <2 x double> %i.qf) ; 3 uses
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %39 = insertelement <3 x double> %i.qh, double %i.pg, i64 1
  %40 = shufflevector <3 x double> %39, <3 x double> %i.pi, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.qi = call double @llvm.fmuladd.f64(double %i.hv, double %i.ko, double %i.lc)
  %i.qj = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.qi, i64 0
  %i.qk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.na, <2 x double> %i.qj)
  %i.ql = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qm = insertelement <2 x double> %i.ql, double %i.hh, i64 1
  %i.qn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qm, <2 x double> %i.mc, <2 x double> %i.qk) ; 2 uses
  %i.qo = shufflevector <2 x double> %i.qg, <2 x double> %i.mk, <2 x i32> <i32 1, i32 2>
  %i.qp = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.qo, <2 x double> %i.qp) ; 3 uses
  %i.qr = extractelement <2 x double> %i.qn, i64 0
  %i.qs = call double @llvm.fmuladd.f64(double %i.ht, double %i.kn, double %i.qr)
  %i.qt = fadd double %i.qs, 1.000000e+00         ; 2 uses
  %i.qu = shufflevector <2 x double> %i.mt, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.qv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.qq, <2 x double> %i.qu) ; 3 uses
  %i.qw = shufflevector <2 x double> %i.eq, <2 x double> %i.qq, <2 x i32> <i32 1, i32 3>
  %i.qx = insertelement <2 x double> %i.ie, double %i.qt, i64 0
  %i.qy = shufflevector <2 x double> %i.qv, <2 x double> %i.mt, <2 x i32> <i32 0, i32 3>
  %i.qz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.qx, <2 x double> %i.qy) ; 4 uses
  %i.ra = shufflevector <2 x double> %i.qq, <2 x double> %i.qv, <2 x i32> <i32 0, i32 3>
  %i.rb = shufflevector <2 x double> %i.qz, <2 x double> %i.qv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.rc = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.lx, i64 1
  %i.rd = fdiv <2 x double> %i.rc, %i.ki          ; 5 uses
  %i.re = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.rd, <2 x i32> <i32 0, i32 2>
  %i.rf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.re, <2 x double> zeroinitializer) ; 2 uses
  %i.rg = extractelement <2 x double> %i.rf, i64 0
  %i.rh = call double @llvm.fmuladd.f64(double %.sroa.8735.0, double %i.qt, double %i.rg) ; 3 uses
  %i.ri = shufflevector <2 x double> %i.rf, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.rj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> zeroinitializer, <2 x double> %i.ri) ; 2 uses
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.rl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.rd, <2 x double> %i.rk) ; 2 uses
  %i.rm = extractelement <2 x double> %i.rd, i64 0
  %i.rn = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ro = insertelement <2 x double> %i.rn, double %i.mb, i64 0
  %i.rp = shufflevector <2 x double> %i.rl, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.rq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> %i.ro, <2 x double> %i.rp) ; 3 uses
  %i.rr = insertelement <2 x double> %i.qz, double %i.rh, i64 0
  %i.rs = shufflevector <2 x double> %i.rq, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.rt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rr, <2 x double> zeroinitializer, <2 x double> %i.rs) ; 2 uses
  %i.ru = extractelement <2 x double> %i.rt, i64 1
  %i.rv = call double @llvm.fmuladd.f64(double %i.rh, double %i.rm, double %i.ru)
  %i.rw = shufflevector <2 x double> %i.mx, <2 x double> %i.qz, <2 x i32> <i32 3, i32 1>
  %i.rx = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.rd, <2 x i32> <i32 3, i32 1>
  %i.ry = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rw, <2 x double> %i.rx, <2 x double> zeroinitializer)
  %i.rz = insertelement <2 x double> %i.ie, double %i.rh, i64 0
  %i.sa = insertelement <2 x double> %i.nb, double %i.mb, i64 0
  %i.sb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rz, <2 x double> %i.sa, <2 x double> %i.ry) ; 2 uses
  %i.sc = shufflevector <2 x double> %i.rj, <2 x double> poison, <3 x i32> zeroinitializer
  %i.sd = shufflevector <2 x double> %i.rl, <2 x double> poison, <3 x i32> zeroinitializer
  %i.se = shufflevector <2 x double> %i.rq, <2 x double> poison, <3 x i32> zeroinitializer
  %i.sf = shufflevector <2 x double> %i.rt, <2 x double> poison, <3 x i32> zeroinitializer
  %i.sg = insertelement <3 x double> poison, double %i.rv, i64 0
  %i.sh = shufflevector <3 x double> %i.sg, <3 x double> poison, <3 x i32> zeroinitializer
  %i.si = shufflevector <2 x double> %i.sb, <2 x double> poison, <3 x i32> zeroinitializer
  %i.sj = load double, ptr %i.hk, align 8, !tbaa !20, !noalias !162 ; 2 uses
  %i.sk = load double, ptr %i.hj, align 8, !tbaa !20, !noalias !162 ; 2 uses
  %i.sl = load double, ptr %i.hm, align 8, !tbaa !20, !noalias !162 ; 3 uses
  %i.sm = load double, ptr %i.hl, align 8, !tbaa !20, !noalias !162 ; 2 uses
  %i.sn = call double @llvm.fmuladd.f64(double %i.sk, double 0.000000e+00, double 0.000000e+00)
  %i.so = call double @llvm.fmuladd.f64(double %i.sj, double 0.000000e+00, double %i.sn)
  %i.sp = call double @llvm.fmuladd.f64(double %i.sm, double 0.000000e+00, double %i.so) ; 2 uses
  %i.sq = call double @llvm.fmuladd.f64(double %i.iz, double %i.sl, double %i.sp)
  %i.sr = load double, ptr %i.ho, align 8, !tbaa !20, !noalias !162 ; 3 uses
  %i.ss = load double, ptr %i.hn, align 8, !tbaa !20, !noalias !162 ; 3 uses
  %i.st = load double, ptr %i.hr, align 8, !tbaa !20, !noalias !162 ; 2 uses
  %i.su = load double, ptr %i.hp, align 8, !tbaa !20, !noalias !162 ; 3 uses
  %i.sv = call double @llvm.fmuladd.f64(double %i.jc, double %i.ss, double %i.sq)
  %i.sw = call double @llvm.fmuladd.f64(double %.sroa.14713.0, double %i.sr, double %i.sv)
  %i.sx = call double @llvm.fmuladd.f64(double %i.su, double 0.000000e+00, double %i.sw)
  %i.sy = insertelement <2 x double> poison, double %i.st, i64 0 ; 2 uses
  %i.sz = insertelement <2 x double> %i.sy, double %i.sl, i64 1
  %i.ta = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.tb = insertelement <2 x double> %i.ta, double %i.sp, i64 1
  %i.tc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> zeroinitializer, <2 x double> %i.tb) ; 2 uses
  %i.td = extractelement <2 x double> %i.tc, i64 1
  %i.te = call double @llvm.fmuladd.f64(double %i.ss, double 0.000000e+00, double %i.td)
  %i.tf = call double @llvm.fmuladd.f64(double %i.sr, double 0.000000e+00, double %i.te)
  %i.tg = call double @llvm.fmuladd.f64(double %i.iz, double %i.su, double %i.tf)
  %i.th = insertelement <2 x double> %i.sy, double %i.lr, i64 1
  %i.ti = insertelement <2 x double> poison, double %i.tg, i64 0
  %i.tj = insertelement <2 x double> %i.ti, double %i.kb, i64 1
  %i.tk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.th, <2 x double> %i.tj) ; 2 uses
  %i.tl = call double @llvm.fmuladd.f64(double %i.iz, double %i.sk, double 0.000000e+00)
  %i.tm = call double @llvm.fmuladd.f64(double %i.jc, double %i.sj, double %i.tl)
  %i.tn = call double @llvm.fmuladd.f64(double %.sroa.14713.0, double %i.sm, double %i.tm)
  %i.to = call double @llvm.fmuladd.f64(double %i.sl, double 0.000000e+00, double %i.tn)
  %i.tp = call double @llvm.fmuladd.f64(double %i.ss, double 0.000000e+00, double %i.to)
  %i.tq = call double @llvm.fmuladd.f64(double %i.sr, double 0.000000e+00, double %i.tp)
  %i.tr = call double @llvm.fmuladd.f64(double %i.su, double 0.000000e+00, double %i.tq)
  %i.ts = call double @llvm.fmuladd.f64(double %i.st, double 0.000000e+00, double %i.tr)
  %i.tt = extractelement <2 x double> %i.tc, i64 0
  %i.tu = call double @llvm.fmuladd.f64(double %i.lq, double 0.000000e+00, double %i.tt) ; 2 uses
  %i.tv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.14713.0, i64 0
  %i.tw = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ty = insertelement <2 x double> %i.tk, double %i.ts, i64 1
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %i.tx, <2 x double> %i.ty) ; 3 uses
  %i.ua = shufflevector <2 x double> %i.tk, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 1> ; 2 uses
  %i.ub = shufflevector <3 x double> %i.pi, <3 x double> %i.ua, <3 x i32> <i32 0, i32 1, i32 5>
  %i.uc = shufflevector <3 x double> %i.pi, <3 x double> %i.ua, <3 x i32> <i32 0, i32 1, i32 4>
  store <2 x double> %i.pr, ptr %i.po, align 8
  store <2 x double> %i.pw, ptr %.sroa.5321.0..sroa_idx, align 8
  %i.ud = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.sf, <3 x double> %i.ub, <3 x double> zeroinitializer)
  %i.ue = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.sh, <3 x double> %i.pl, <3 x double> %i.ud)
  %i.uf = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.si, <3 x double> %40, <3 x double> %i.ue) ; 7 uses
  %i.ug = extractelement <3 x double> %i.uf, i64 2 ; 3 uses
  %i.uh = extractelement <2 x double> %i.tz, i64 1
  %i.ui = call double @llvm.fmuladd.f64(double %i.ug, double %i.uh, double 0.000000e+00)
  %i.uj = extractelement <3 x double> %i.uf, i64 1 ; 2 uses
  %i.uk = call double @llvm.fmuladd.f64(double %i.uj, double %i.tu, double %i.ui)
  %i.ul = extractelement <3 x double> %i.uf, i64 0
  %i.um = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.sc, <3 x double> %i.uc, <3 x double> zeroinitializer)
  %i.un = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.sd, <3 x double> %i.pl, <3 x double> %i.um)
  %i.uo = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.se, <3 x double> %40, <3 x double> %i.un) ; 9 uses
  %i.up = shufflevector <3 x double> %i.uo, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.uq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.ny, <2 x double> zeroinitializer)
  %i.ur = shufflevector <3 x double> %i.uo, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.us = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.oh, <2 x double> %i.uq)
  %i.ut = shufflevector <3 x double> %i.uo, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ut, <2 x double> %i.on, <2 x double> %i.us)
  %i.uv = extractelement <3 x double> %i.uo, i64 2
  %i.uw = shufflevector <3 x double> %i.uf, <3 x double> %i.uo, <2 x i32> <i32 0, i32 5>
  %i.ux = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.uk, i64 0
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uw, <2 x double> %i.tz, <2 x double> %i.ux) ; 2 uses
  %i.uz = extractelement <3 x double> %i.uo, i64 1 ; 2 uses
  %i.va = extractelement <2 x double> %i.uy, i64 1
  %i.vb = call double @llvm.fmuladd.f64(double %i.uz, double %i.tu, double %i.va)
  %i.vc = extractelement <3 x double> %i.uo, i64 0
  %i.vd = extractelement <2 x double> %i.tz, i64 0
  %i.ve = call double @llvm.fmuladd.f64(double %i.vc, double %i.vd, double %i.vb)
  %i.vf = shufflevector <3 x double> %i.uf, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.ny, <2 x double> zeroinitializer)
  %i.vh = shufflevector <3 x double> %i.uf, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.oh, <2 x double> %i.vg)
  %i.vj = shufflevector <3 x double> %i.uf, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> %i.on, <2 x double> %i.vi)
  store <2 x double> %i.uu, ptr %.1210768, align 8
  store double %i.ve, ptr %.sroa.5334.0..1210.sroa_idx, align 8, !tbaa !26
  store <2 x double> %i.vk, ptr %i.oo, align 8
  %i.vl = extractelement <2 x double> %i.uy, i64 0
  store double %i.vl, ptr %.sroa.5331.0..sroa_idx, align 8, !tbaa !26
  %i.vm = fadd double %i.uv, 0.000000e+00
  %i.vn = shufflevector <3 x double> %i.uo, <3 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.vo = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.vm, i64 0
  %i.vp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vn, <2 x double> zeroinitializer, <2 x double> %i.vo) ; 3 uses
  %i.vq = extractelement <2 x double> %i.vp, i64 1
  %i.vr = call double @llvm.fmuladd.f64(double %i.uz, double 0.000000e+00, double %i.vq)
  %i.vs = shufflevector <3 x double> %i.uo, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.vt = insertelement <2 x double> %i.vp, double %i.vr, i64 0
  %i.vu = fadd <2 x double> %i.vs, %i.vt          ; 2 uses
  %i.vv = shufflevector <2 x double> %i.vp, <2 x double> %i.vu, <2 x i32> <i32 0, i32 3>
  %i.vw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ut, <2 x double> zeroinitializer, <2 x double> %i.vv)
  store <2 x double> %i.vw, ptr %i.pm, align 8
  %i.vx = extractelement <2 x double> %i.vu, i64 0
  store double %i.vx, ptr %.sroa.5328.0..sroa_idx, align 8, !tbaa !26
  %i.vy = fadd double %i.ug, 0.000000e+00
  %i.vz = call double @llvm.fmuladd.f64(double %i.ug, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.wa = fadd double %i.uj, %i.vz
  %i.wb = insertelement <2 x double> poison, double %i.vy, i64 0
  %i.wc = insertelement <2 x double> %i.wb, double %i.vz, i64 1
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> zeroinitializer, <2 x double> %i.wc) ; 2 uses
  %i.we = insertelement <2 x double> %i.wd, double %i.wa, i64 1
  %i.wf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> zeroinitializer, <2 x double> %i.we)
  %i.wg = extractelement <2 x double> %i.wd, i64 1
  %i.wh = fadd double %i.ul, %i.wg
  store <2 x double> %i.wf, ptr %i.pn, align 8
  store double %i.wh, ptr %.sroa.5325.0..sroa_idx, align 8, !tbaa !26
  %i.wi = extractelement <2 x double> %i.rq, i64 0
  store double %i.wi, ptr %i.qb, align 8, !tbaa !167
  store <2 x double> %i.sb, ptr %i.qc, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %.1210768, i64 48
  store double %i.kz, ptr %i.wj, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 56
  store double 0.000000e+00, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !26
  %i.wk = getelementptr inbounds nuw i8, ptr %.1210768, i64 176
  store double 0.000000e+00, ptr %i.wk, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 184
  store double %i.ld, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !26
  %i.wl = getelementptr inbounds nuw i8, ptr %.1210768, i64 72
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.wl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1210768, i64 208
  store double 1.000000e+00, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %i.wm = getelementptr inbounds nuw i8, ptr %.1210768, i64 64
  store double %i.ld, ptr %i.wm, align 8, !tbaa !168
  %i.wn = getelementptr inbounds nuw i8, ptr %.1210768, i64 192
  store <2 x double> zeroinitializer, ptr %i.wn, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %.1210768, i64 256
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2211 = phi ptr [ %i.wo, %bb.cp ], [ %.1210768, %bb.co ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ci, !llvm.loop !143

.critedge258:                                     ; preds = %bb.cf, %bb.be, %bb.bd, %bb.cg, %bb.bk, %bb.bf
  %.pn239.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.be ], [ %i.eb, %bb.bd ], [ %i.ep, %bb.bk ], [ %i.ed, %bb.bf ], [ %i.ha, %bb.cg ], [ %i.gz, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn239.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn, %.critedge258 ], [ %.pn223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ], [ %.pn221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %.pn219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn239.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7Affine3IdE4rvecEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Vec", align 8           ; 4 uses
  %3 = alloca %"class.cv::Matx.8", align 8        ; 9 uses
  %4 = alloca %"class.cv::Matx.8", align 8        ; 10 uses
  %5 = alloca %"class.cv::Matx.8", align 16       ; 9 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false), !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !20, !noalias !177
  store <2 x double> %i.a, ptr %5, align 16, !tbaa !20, !alias.scope !177
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !20, !noalias !177
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.c, ptr %i.d, align 16, !tbaa !20, !alias.scope !177
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = load <2 x double>, ptr %i.e, align 8, !tbaa !20, !noalias !177
  store <2 x double> %i.g, ptr %i.f, align 8, !tbaa !20, !alias.scope !177
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !20, !noalias !177
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double %i.i, ptr %i.j, align 8, !tbaa !20, !alias.scope !177
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !20, !noalias !177
  store <2 x double> %i.m, ptr %i.l, align 16, !tbaa !20, !alias.scope !177
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load double, ptr %i.n, align 8, !tbaa !20, !noalias !177
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.o, ptr %i.p, align 16, !tbaa !20, !alias.scope !177
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.r, align 8, !tbaa !18
  store i64 12884901891, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 -1040056314, ptr %7, align 8, !tbaa !17
  store ptr %2, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 12884901889, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056314, ptr %8, align 8, !tbaa !17
  store ptr %3, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 12884901891, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 -1040056314, ptr %9, align 8, !tbaa !17
  store ptr %4, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 12884901891, ptr %i.x, align 8
  call void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.y = load double, ptr %4, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ak = load <8 x double>, ptr %3, align 8, !tbaa !20, !noalias !178 ; 10 uses
  %i.al = load double, ptr %i.ai, align 8, !tbaa !20, !noalias !178 ; 2 uses
  %i.am = load double, ptr %i.ah, align 8, !tbaa !20, !noalias !178 ; 2 uses
  %i.an = load double, ptr %i.z, align 8, !tbaa !20, !noalias !178 ; 2 uses
  %i.ao = extractelement <8 x double> %i.ak, i64 0
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.y, double 0.000000e+00)
  %i.aq = call double @llvm.fmuladd.f64(double %i.an, double %i.ab, double %i.ap)
  %i.ar = extractelement <8 x double> %i.ak, i64 2
  %i.as = call double @llvm.fmuladd.f64(double %i.ar, double %i.ad, double %i.aq) ; 2 uses
  %i.at = load <2 x double>, ptr %i.ae, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %i.au = load <2 x double>, ptr %i.af, align 8, !tbaa !20, !noalias !178 ; 4 uses
  %i.av = load <2 x double>, ptr %i.ag, align 8, !tbaa !20, !noalias !178 ; 3 uses
  %i.aw = shufflevector <8 x double> %i.ak, <8 x double> poison, <2 x i32> <i32 5, i32 0> ; 2 uses
  %i.ax = insertelement <2 x double> %i.aw, double %i.am, i64 0
  %i.ay = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.y, i64 0
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.az, <2 x double> zeroinitializer)
  %i.bb = shufflevector <2 x double> %i.au, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bc = shufflevector <8 x double> %i.ak, <8 x double> %i.bb, <2 x i32> <i32 4, i32 8>
  %i.bd = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.an, i64 1
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.be, <2 x double> %i.ba)
  %i.bg = shufflevector <8 x double> %i.ak, <8 x double> poison, <2 x i32> <i32 4, i32 2> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv7omnidir23initUndistortRectifyMapERKNS_11_InputArrayES3_S3_S3_S3_RKNS_5Size_IiEEiRKNS_12_OutputArrayESA_i:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %.critedge

bb.cs:                                            ; preds = %bb.co
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn365.pn = phi { ptr, i32 } [ %i.gy, %bb.ct ], [ %i.gx, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.et

bb.cv:                                            ; preds = %bb.ck, %.critedge399
  %i.gz = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.gz, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ha = call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.hb = icmp eq i64 %i.ha, 12884901891
  br i1 %i.hb, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.hc = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !282
  %i.hd = icmp eq i32 %i.hc, 65536
  br i1 %i.hd, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !18, !noalias !282
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %i.hf)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.hg = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 -1040056314, ptr %45, align 8, !tbaa !17
  store ptr %38, ptr %i.hg, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 12884901891, ptr %i.hh, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.critedge

bb.dc:                                            ; preds = %bb.da
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.et

.critedge:                                        ; preds = %bb.cv, %bb.cw, %bb.db, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  %i.hj = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, i8 0, i64 56, i1 false), !tbaa !20, !alias.scope !283
  store double 1.000000e+00, ptr %46, align 8, !tbaa !20, !alias.scope !283
  %i.hk = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 2 uses
  store double 1.000000e+00, ptr %i.hk, align 8, !tbaa !20, !alias.scope !283
  %i.hl = getelementptr inbounds nuw i8, ptr %46, i64 64
  store double 1.000000e+00, ptr %i.hl, align 8, !tbaa !20, !alias.scope !283
  %i.hm = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.hm, label %bb.dl, label %bb.dd

bb.dd:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  %i.hn = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !284
  %i.ho = icmp eq i32 %i.hn, 65536
  br i1 %i.ho, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !18, !noalias !284
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %i.hq)
  br label %_ZNK2cv11_InputArray6getMatEi.exit457

bb.df:                                            ; preds = %bb.dd
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit457

_ZNK2cv11_InputArray6getMatEi.exit457:            ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !285
  store i64 9223372034707292160, ptr %10, align 8, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !285
  store i32 0, ptr %11, align 4, !tbaa !40, !noalias !285
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 3, ptr %i.hr, align 4, !tbaa !41, !noalias !285
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit457
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  %i.hs = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 -1040056314, ptr %49, align 8, !tbaa !17
  store ptr %46, ptr %i.hs, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 12884901891, ptr %i.ht, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(24) %49, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.dq

bb.di:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit457
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dg
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #22
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn370.pn = phi { ptr, i32 } [ %i.hv, %bb.dj ], [ %i.hu, %bb.di ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.es

bb.dl:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  %i.hw = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !286
  %i.hx = icmp eq i32 %i.hw, 65536
  br i1 %i.hx, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !18, !noalias !286
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %51, ptr noundef nonnull align 8 dereferenceable(208) %i.hz)
  br label %_ZNK2cv11_InputArray6getMatEi.exit459

bb.dn:                                            ; preds = %bb.dl
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %51, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit459

_ZNK2cv11_InputArray6getMatEi.exit459:            ; preds = %bb.dm, %bb.dn
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.8") align 8 %50, ptr noundef nonnull align 8 dereferenceable(208) %51)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %46, ptr noundef nonnull align 8 dereferenceable(72) %50, i64 72, i1 false), !tbaa.struct !287
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.dq

bb.dp:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit459
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.es

bb.dq:                                            ; preds = %bb.do, %bb.dh
  %i.ib = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.id = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ie = load double, ptr %i.id, align 16, !tbaa !20, !noalias !288 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.ig = load double, ptr %i.if, align 8, !tbaa !20, !noalias !288 ; 4 uses
  %i.ih = load double, ptr %i.gf, align 16, !tbaa !20, !noalias !288 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %46, i64 48
  %i.ik = getelementptr inbounds nuw i8, ptr %46, i64 56
  %i.il = load <2 x double>, ptr %38, align 16, !tbaa !20, !noalias !288 ; 12 uses
  %i.im = load double, ptr %i.ii, align 8, !tbaa !20, !noalias !288 ; 5 uses
  %i.in = load double, ptr %i.ij, align 8, !tbaa !20, !noalias !288 ; 4 uses
  %i.io = load double, ptr %46, align 8, !tbaa !20, !noalias !288 ; 3 uses
  %i.ip = load <2 x double>, ptr %i.hk, align 8, !tbaa !20, !noalias !288 ; 7 uses
  %i.iq = load <2 x double>, ptr %i.ik, align 8, !tbaa !20, !noalias !288 ; 9 uses
  %i.ir = load <2 x double>, ptr %i.hj, align 8, !tbaa !20, !noalias !288 ; 8 uses
  %i.is = insertelement <2 x double> poison, double %i.io, i64 0 ; 2 uses
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.il, <2 x double> zeroinitializer)
  %i.iv = load <2 x double>, ptr %i.ib, align 8, !tbaa !20, !noalias !288 ; 12 uses
  %i.iw = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ix = insertelement <2 x double> %i.iw, double %i.ie, i64 0 ; 4 uses
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.ix, <2 x double> zeroinitializer)
  %i.iz = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.iv, <2 x double> %i.iu)
  %i.jb = load <2 x double>, ptr %i.ic, align 16, !tbaa !20, !noalias !288 ; 12 uses
  %i.jc = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jd = insertelement <2 x double> %i.jc, double %i.ig, i64 0 ; 4 uses
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.jd, <2 x double> %i.iy)
  %i.jf = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jg = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.jb, <2 x double> %i.ja) ; 6 uses
  %i.ji = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jj = insertelement <2 x double> %i.ji, double %i.ih, i64 0 ; 4 uses
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.jj, <2 x double> %i.je) ; 5 uses
  %i.jl = insertelement <2 x double> poison, double %i.im, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.il, <2 x double> zeroinitializer)
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.ix, <2 x double> zeroinitializer)
  %i.jp = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.iv, <2 x double> %i.jn)
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.jd, <2 x double> %i.jo)
  %i.js = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jt = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jb, <2 x double> %i.jq) ; 7 uses
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jj, <2 x double> %i.jr) ; 3 uses
  %i.jw = insertelement <2 x double> poison, double %i.in, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.il, <2 x double> zeroinitializer)
  %i.jz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.ix, <2 x double> zeroinitializer)
  %i.ka = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ka, <2 x double> %i.iv, <2 x double> %i.jy)
  %i.kc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ka, <2 x double> %i.jd, <2 x double> %i.jz)
  %i.kd = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ke = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.jb, <2 x double> %i.kb) ; 6 uses
  %i.kg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.jj, <2 x double> %i.kc) ; 6 uses
  %i.kh = extractelement <2 x double> %i.jv, i64 0 ; 2 uses
  %i.ki = fneg double %i.kh                       ; 2 uses
  %i.kj = shufflevector <2 x double> %i.kg, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.kk = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x double> %i.kj, %i.kl
  %i.kn = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.kn, <2 x double> %i.km) ; 2 uses
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> %i.ju, <2 x i32> <i32 0, i32 3>
  %i.kq = fneg <2 x double> %i.kp                 ; 2 uses
  %i.kr = shufflevector <2 x double> %i.jh, <2 x double> %i.kg, <2 x i32> <i32 1, i32 3>
  %i.ks = fmul <2 x double> %i.kr, %i.kq
  %i.kt = shufflevector <2 x double> %i.jh, <2 x double> %i.ju, <2 x i32> <i32 0, i32 2>
  %i.ku = shufflevector <2 x double> %i.ko, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.ku, <2 x double> %i.ks) ; 2 uses
  %i.kw = extractelement <2 x double> %i.jk, i64 0
  %i.kx = extractelement <2 x double> %i.kv, i64 0
  %i.ky = extractelement <2 x double> %i.kv, i64 1
  %i.kz = call noundef double @llvm.fmuladd.f64(double %i.kw, double %i.ky, double %i.kx) ; 2 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.dr, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

bb.dr:                                            ; preds = %bb.dq
  %i.lb = fdiv double 1.000000e+00, %i.kz         ; 2 uses
  %i.lc = fneg <2 x double> %i.kf
  %i.ld = fneg <2 x double> %i.kg                 ; 2 uses
  %i.le = extractelement <2 x double> %i.jh, i64 1
  %i.lf = shufflevector <2 x double> %i.jh, <2 x double> %i.jv, <2 x i32> <i32 1, i32 2>
  %i.lg = shufflevector <2 x double> %i.jk, <2 x double> %i.ju, <2 x i32> <i32 0, i32 3>
  %i.lh = shufflevector <2 x double> %i.kf, <2 x double> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.li = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %shift = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.jk, %shift
  %i.lk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ll = call double @llvm.fmuladd.f64(double %i.le, double %i.kh, double %i.lk)
  %i.lm = fmul double %i.ll, %i.lb
  %i.ln = shufflevector <2 x double> %i.kf, <2 x double> %i.ju, <2 x i32> <i32 1, i32 2>
  %i.lo = fneg <2 x double> %i.ln                 ; 2 uses
  %i.lp = shufflevector <2 x double> %i.ld, <2 x double> %i.lo, <2 x i32> <i32 0, i32 2>
  %i.lq = fmul <2 x double> %i.lf, %i.lp
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.lh, <2 x double> %i.lq)
  %i.ls = fmul <2 x double> %i.lr, %i.lj
  %i.lt = fmul <2 x double> %i.ju, %i.ld
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.kf, <2 x double> %i.lt)
  %i.lv = fmul <2 x double> %i.jk, %i.lc
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.kg, <2 x double> %i.lv)
  %i.lx = insertelement <2 x double> %i.lo, double %i.ki, i64 0
  %i.ly = fmul <2 x double> %i.jh, %i.lx
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.ju, <2 x double> %i.ly)
  %i.ma = fmul <2 x double> %i.lu, %i.lj
  %i.mb = fmul <2 x double> %i.lw, %i.lj
  %i.mc = fmul <2 x double> %i.lz, %i.lj
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit:             ; preds = %bb.dq, %bb.dr
  %.sroa.6512.0 = phi double [ %i.lm, %bb.dr ], [ 0.000000e+00, %bb.dq ]
  %i.md = phi <2 x double> [ %i.mb, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.me = phi <2 x double> [ %i.mc, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.mf = phi <2 x double> [ %i.ma, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.mg = phi <2 x double> [ %i.ls, %bb.dr ], [ zeroinitializer, %bb.dq ] ; 2 uses
  %i.mh = fneg <2 x double> %i.ip                 ; 3 uses
  %i.mi = insertelement <2 x double> %i.iq, double %i.in, i64 1
  %i.mj = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mk = fmul <2 x double> %i.mi, %i.mj
  %i.ml = insertelement <2 x double> %i.ip, double %i.im, i64 1
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.kd, <2 x double> %i.mk) ; 2 uses
  %i.mn = shufflevector <2 x double> %i.ir, <2 x double> %i.mh, <2 x i32> <i32 0, i32 2>
  %i.mo = insertelement <2 x double> poison, double %i.in, i64 1 ; 2 uses
  %i.mp = fneg <2 x double> %i.mm
  %i.mq = shufflevector <2 x double> %i.mo, <2 x double> %i.mp, <2 x i32> <i32 3, i32 1>
  %i.mr = fmul <2 x double> %i.mn, %i.mq
  %i.ms = insertelement <2 x double> %i.is, double %i.im, i64 1
  %i.mt = shufflevector <2 x double> %i.mm, <2 x double> %i.iq, <2 x i32> <i32 0, i32 2>
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.mt, <2 x double> %i.mr) ; 2 uses
  %i.mv = extractelement <2 x double> %i.ir, i64 1
  %i.mw = extractelement <2 x double> %i.mu, i64 0
  %i.mx = extractelement <2 x double> %i.mu, i64 1
  %i.my = call noundef double @llvm.fmuladd.f64(double %i.mv, double %i.mx, double %i.mw) ; 2 uses
  %i.mz = fcmp une double %i.my, 0.000000e+00
  br i1 %i.mz, label %bb.ds, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460

bb.ds:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit
  %i.na = fdiv double 1.000000e+00, %i.my
  %i.nb = fneg <2 x double> %i.iq
  %i.nc = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nd = insertelement <2 x double> %i.nc, double %i.in, i64 1
  %i.ne = fneg <2 x double> %i.nd
  %i.nf = insertelement <2 x double> %i.jf, double %i.io, i64 1
  %i.ng = fmul <2 x double> %i.nf, %i.mh
  %i.nh = insertelement <2 x double> %i.js, double %i.im, i64 1
  %i.ni = fmul <2 x double> %i.nh, %i.nb
  %56 = shufflevector <2 x double> %i.mo, <2 x double> %i.iq, <2 x i32> <i32 3, i32 1>
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %56, <2 x double> %i.ni)
  %i.nk = fmul <2 x double> %i.ir, %i.ne
  %57 = insertelement <2 x double> poison, double %i.io, i64 1
  %58 = shufflevector <2 x double> %57, <2 x double> %i.ir, <2 x i32> <i32 3, i32 1>
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> %i.iq, <2 x double> %i.nk)
  %59 = insertelement <2 x double> poison, double %i.im, i64 1
  %60 = shufflevector <2 x double> %59, <2 x double> %i.ip, <2 x i32> <i32 3, i32 1>
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %60, <2 x double> %i.ng)
  %i.nn = insertelement <2 x double> poison, double %i.na, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.np = fmul <2 x double> %i.nj, %i.no
  %i.nq = fmul <2 x double> %i.nl, %i.no
  %i.nr = fmul <2 x double> %i.nm, %i.no
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460:          ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit, %bb.ds
  %i.ns = phi <2 x double> [ %i.nq, %bb.ds ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.nt = phi <2 x double> [ %i.nr, %bb.ds ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.nu = phi <2 x double> [ %i.np, %bb.ds ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ]
  %i.nv = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.nw = insertelement <2 x double> %i.nv, double %i.ig, i64 1
  %i.nx = fneg <2 x double> %i.nw                 ; 2 uses
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = fmul <2 x double> %i.jb, %i.ny
  %i.oa = insertelement <2 x double> poison, double %i.ih, i64 0 ; 2 uses
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ob, <2 x double> %i.nz) ; 2 uses
  %i.od = shufflevector <2 x double> %i.il, <2 x double> %i.jb, <2 x i32> <i32 1, i32 2>
  %i.oe = shufflevector <2 x double> %i.oc, <2 x double> %i.nv, <2 x i32> <i32 0, i32 2>
  %i.of = fneg <2 x double> %i.oe
  %i.og = fmul <2 x double> %i.od, %i.of
  %i.oh = shufflevector <2 x double> %i.il, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.oi = shufflevector <2 x double> %i.oc, <2 x double> %i.jb, <2 x i32> <i32 1, i32 3>
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.oi, <2 x double> %i.og) ; 2 uses
  %i.ok = extractelement <2 x double> %i.oj, i64 0
  %i.ol = extractelement <2 x double> %i.oj, i64 1
  %i.om = call noundef double @llvm.fmuladd.f64(double %i.ie, double %i.ol, double %i.ok) ; 2 uses
  %i.on = fcmp une double %i.om, 0.000000e+00
  br i1 %i.on, label %bb.dt, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461

bb.dt:                                            ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460
  %i.oo = fdiv double 1.000000e+00, %i.om         ; 2 uses
  %i.op = extractelement <2 x double> %i.iv, i64 1
  %i.oq = extractelement <2 x double> %i.il, i64 1
  %i.or = extractelement <2 x double> %i.iv, i64 0
  %i.os = extractelement <2 x double> %i.il, i64 0
  %i.ot = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.ou = insertelement <2 x double> %i.ot, double %i.ih, i64 1
  %i.ov = fneg <2 x double> %i.ou
  %i.ow = fneg <2 x double> %i.jj
  %i.ox = fmul <2 x double> %i.jd, %i.ov
  %i.oy = shufflevector <2 x double> %i.iv, <2 x double> %i.jb, <2 x i32> <i32 1, i32 2>
  %i.oz = insertelement <2 x double> %i.oa, double %i.ig, i64 1
  %i.pa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.oz, <2 x double> %i.ox)
  %i.pb = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pc = insertelement <2 x double> %i.pb, double %i.ie, i64 1
  %i.pd = fmul <2 x double> %i.pc, %i.ow
  %i.pe = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.ih, i64 1
  %i.pg = shufflevector <2 x double> %i.jb, <2 x double> %i.il, <2 x i32> <i32 1, i32 2>
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.pg, <2 x double> %i.pd)
  %i.pi = fmul <2 x double> %i.ix, %i.nx
  %i.pj = shufflevector <2 x double> %i.il, <2 x double> %i.iv, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pk = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %i.ie, i64 1
  %i.pm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.pl, <2 x double> %i.pi)
  %i.pn = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.pp = fmul <2 x double> %i.pa, %i.po
  %i.pq = fmul <2 x double> %i.ph, %i.po
  %i.pr = fmul <2 x double> %i.pm, %i.po
  %i.ps = shufflevector <2 x double> %i.il, <2 x double> %i.iv, <2 x i32> <i32 0, i32 3>
  %i.pt = shufflevector <2 x double> %i.ot, <2 x double> %i.jb, <2 x i32> <i32 0, i32 2>
  %i.pu = fneg <2 x double> %i.pt
  %i.pv = fmul <2 x double> %i.ps, %i.pu
  %i.pw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.jb, <2 x double> %i.pv)
  %i.px = fmul <2 x double> %i.pw, %i.po
  %i.py = fneg double %i.or
  %i.pz = fmul double %i.oq, %i.py
  %i.qa = call double @llvm.fmuladd.f64(double %i.os, double %i.op, double %i.pz)
  %i.qb = fmul double %i.qa, %i.oo
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461:          ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460, %bb.dt
  %.sroa.12.0 = phi double [ %i.qb, %bb.dt ], [ 0.000000e+00, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.qc = phi <2 x double> [ %i.pr, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.qd = phi <2 x double> [ %i.pp, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.qe = phi <2 x double> [ %i.pq, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ]
  %i.qf = phi <2 x double> [ %i.px, %bb.dt ], [ zeroinitializer, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit460 ] ; 2 uses
  br i1 %i.co, label %.preheader, label %bb.ed

.preheader:                                       ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit461
  %i.qg = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !42
  %i.qi = icmp sgt i32 %i.qh, 0
  br i1 %i.qi, label %.lr.ph683, label %.loopexit

.lr.ph683:                                        ; preds = %.preheader
  %i.qj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.ql = getelementptr inbounds nuw i8, ptr %52, i64 128
  %i.qm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.qo = getelementptr inbounds nuw i8, ptr %53, i64 128
  %i.qp = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.qq = fmul <2 x double> %i.qp, splat (double 2.000000e+00) ; 2 uses
  %i.qr = extractelement <2 x double> %i.mg, i64 0
  %i.qs = extractelement <2 x double> %i.mg, i64 1
  %i.qt = extractelement <4 x double> %i.fl, i64 0
  %i.qu = extractelement <4 x double> %i.fl, i64 2
  %i.qv = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qw = shufflevector <4 x double> %i.fl, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.qx = extractelement <2 x double> %i.qq, i64 0
  %i.qy = extractelement <2 x double> %i.qq, i64 1
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph683, %._crit_edge681
  %indvars.iv694 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next695, %._crit_edge681 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  %i.qz = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !289
  %i.ra = icmp eq i32 %i.qz, 65536
  br i1 %i.ra, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.rb = load ptr, ptr %i.qj, align 8, !tbaa !18, !noalias !289
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %52, ptr noundef nonnull align 8 dereferenceable(208) %i.rb)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

bb.dw:                                            ; preds = %bb.du
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %52, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit462

_ZNK2cv11_InputArray6getMatEi.exit462:            ; preds = %bb.dv, %bb.dw
  %i.rc = load ptr, ptr %i.qk, align 8, !tbaa !33
  %i.rd = load i64, ptr %i.ql, align 8, !tbaa !37
  %i.re = mul i64 %i.rd, %indvars.iv694
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.re ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %52) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  %i.rg = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8), !noalias !290
  %i.rh = icmp eq i32 %i.rg, 65536
  br i1 %i.rh, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  %i.ri = load ptr, ptr %i.qm, align 8, !tbaa !18, !noalias !290
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %53, ptr noundef nonnull align 8 dereferenceable(208) %i.ri)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

bb.dy:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit462
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit463

_ZNK2cv11_InputArray6getMatEi.exit463:            ; preds = %bb.dx, %bb.dy
  %i.rj = load ptr, ptr %i.qn, align 8, !tbaa !33
  %i.rk = load i64, ptr %i.qo, align 8, !tbaa !37
  %i.rl = mul i64 %i.rk, %indvars.iv694
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rl ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  %i.rn = load i32, ptr %5, align 4, !tbaa !43    ; 2 uses
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %_ZNK2cv11_InputArray6getMatEi.exit463
  %i.rp = trunc nuw nsw i64 %indvars.iv694 to i32
  %i.rq = uitofp nneg i32 %i.rp to double         ; 2 uses
  %i.rr = insertelement <2 x double> poison, double %i.rq, i64 0
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.md, <2 x double> %i.me)
  %i.ru = call double @llvm.fmuladd.f64(double %i.rq, double %i.qr, double %.sroa.6512.0)
  %wide.trip.count692 = zext nneg i32 %i.rn to i64
  br label %.lr.ph680

._crit_edge681:                                   ; preds = %bb.ec, %_ZNK2cv11_InputArray6getMatEi.exit463
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %i.rv = load i32, ptr %i.qg, align 4, !tbaa !42
  %i.rw = sext i32 %i.rv to i64
  %i.rx = icmp slt i64 %indvars.iv.next695, %i.rw
  br i1 %i.rx, label %bb.du, label %.loopexit, !llvm.loop !265

.lr.ph680:                                        ; preds = %.lr.ph680.preheader, %bb.ec
  %indvars.iv689 = phi i64 [ 0, %.lr.ph680.preheader ], [ %indvars.iv.next690, %bb.ec ] ; 5 uses
  %.0335676 = phi double [ %i.ru, %.lr.ph680.preheader ], [ %i.um, %bb.ec ] ; 4 uses
  %i.ry = phi <2 x double> [ %i.rt, %.lr.ph680.preheader ], [ %i.un, %bb.ec ] ; 5 uses
  %i.rz = extractelement <2 x double> %i.ry, i64 0
  %foldExtExtBinop725 = fmul <2 x double> %i.ry, %i.ry
  %i.sa = extractelement <2 x double> %foldExtExtBinop725, i64 0
  %i.sb = call double @llvm.fmuladd.f64(double %.0335676, double %.0335676, double %i.sa)
  %i.sc = extractelement <2 x double> %i.ry, i64 1 ; 3 uses
  %i.sd = call double @llvm.fmuladd.f64(double %i.sc, double %i.sc, double %i.sb)
  %sqrt = call double @llvm.sqrt.f64(double %i.sd) ; 3 uses
  %i.se = fdiv double %i.rz, %sqrt
  %i.sf = fdiv double %i.sc, %sqrt
  %i.sg = fadd double %i.gc, %i.sf                ; 2 uses
  %i.sh = fdiv double %.0335676, %sqrt
  %i.si = fdiv double %i.se, %i.sg                ; 7 uses
  %i.sj = fdiv double %i.sh, %i.sg                ; 7 uses
  %i.sk = fmul double %i.si, %i.si
  %i.sl = fmul double %i.qx, %i.sj
  %i.sm = fmul double %i.si, %i.sl
  %i.sn = fmul double %i.sj, 2.000000e+00
  %i.so = insertelement <2 x double> %i.qv, double %i.sj, i64 1
  %i.sp = fmul double %i.si, 2.000000e+00
  %i.sq = call double @llvm.fmuladd.f64(double %i.sj, double %i.sj, double %i.sk) ; 5 uses
  %i.sr = call double @llvm.fmuladd.f64(double %i.qt, double %i.sq, double 1.000000e+00)
  %i.ss = fmul double %i.sq, %i.sq
  %i.st = insertelement <2 x double> poison, double %i.ss, i64 0
end_hunk_1
