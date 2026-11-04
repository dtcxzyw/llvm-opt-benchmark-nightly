Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4pbrt10CameraBase18Approximate_dp_dxyENS_6Point3IfEENS_7Normal3IfEEfiPNS_7Vector3IfEES7_:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !828, !range !11, !noundef !12
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt10CameraBase16CameraFromRenderENS_7Normal3IfEEf.exit
  %i.ci = sitofp i32 %6 to float
  %i.cj = call noundef float @sqrtf(float noundef %i.ci) #23
  %i.ck = fdiv float 1.000000e+00, %i.cj          ; 2 uses
  %i.cl = fcmp ogt float %i.ck, 1.250000e-01
  %.sroa.speculated = select i1 %i.cl, float %i.ck, float 1.250000e-01
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4pbrt10CameraBase16CameraFromRenderENS_7Normal3IfEEf.exit, %bb.d
  %i.cm = phi float [ %.sroa.speculated, %bb.d ], [ 1.000000e+00, %_ZNK4pbrt10CameraBase16CameraFromRenderENS_7Normal3IfEEf.exit ] ; 3 uses
  %i.cn = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.co = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cp = shufflevector <2 x float> %.fca.0.extract211, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = fadd <2 x float> %i.co, zeroinitializer ; 4 uses
  %i.cr = insertelement <2 x float> poison, float %.fca.1.extract212, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = shufflevector <8 x float> %i.k, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.cu = fmul <2 x float> %i.cs, %i.ct
  %i.cv = fadd <2 x float> %i.cn, splat (float 1.000000e+00) ; 4 uses
  %i.cw = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.cx = fmul <2 x float> %i.cp, %i.cw
  %i.cy = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.cz = fmul <2 x float> %.fca.0.extract211, %i.cy
  %i.da = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.db = fmul <2 x float> %i.cs, %i.da
  %i.dc = shufflevector <8 x float> %i.k, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.dd = fmul <2 x float> %.fca.0.extract211, %i.dc
  %i.de = shufflevector <8 x float> %i.k, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.df = fmul <2 x float> %i.cp, %i.de
  %i.dg = fadd <2 x float> %i.df, %i.dd
  %i.dh = fadd <2 x float> %i.dg, %i.cu
  %i.di = shufflevector <8 x float> %i.k, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.dj = fadd <2 x float> %i.di, %i.dh           ; 3 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.dl = fcmp oeq float %i.dk, 1.000000e+00      ; 2 uses
  %i.dm = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.dn = fdiv float %i.dm, %i.dk
  %.sroa.495.0.i = select i1 %i.dl, float %i.dm, float %i.dn ; 3 uses
  %i.do = fadd <2 x float> %.sroa.0159.0.copyload, zeroinitializer ; 3 uses
  %i.dp = fadd <2 x float> %.sroa.0149.0.copyload, zeroinitializer ; 3 uses
  %i.dq = fadd <2 x float> %i.cx, %i.cz
  %i.dr = fadd <2 x float> %i.dq, %i.db
  %i.ds = shufflevector <8 x float> %i.i, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.dt = fadd <2 x float> %i.ds, %i.dr           ; 2 uses
  %i.du = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = fdiv <2 x float> %i.dt, %i.du
  %i.dw = insertelement <2 x i1> poison, i1 %i.dl, i64 0
  %i.dx = shufflevector <2 x i1> %i.dw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x float> %i.dt, <2 x float> %i.dv ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = fadd <2 x float> %.sroa.0116.0.copyload, zeroinitializer ; 3 uses
  %i.ec = fadd <2 x float> %.sroa.0106.0.copyload, zeroinitializer ; 3 uses
  %i.ed = shufflevector <2 x float> %.sroa.045.4.vec.insert.i26.pn.i.i.i, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ee = fmul <3 x float> %i.ed, %i.bx
  %i.ef = shufflevector <2 x float> %.sroa.045.4.vec.insert.i26.pn.i.i.i, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.eg = fmul <3 x float> %i.ef, %i.bz
  %i.eh = fadd <3 x float> %i.ee, %i.eg
  %i.ei = insertelement <3 x float> poison, float %.pn29.i.i.i, i64 0
  %i.ej = shufflevector <3 x float> %i.ei, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ek = shufflevector <2 x float> %i.br, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.el = insertelement <3 x float> %i.ek, float %i.bt, i64 2
  %i.em = fmul <3 x float> %i.ej, %i.el
  %i.en = fadd <3 x float> %i.eh, %i.em           ; 4 uses
  %i.eo = extractelement <3 x float> %i.en, i64 2
  %i.ep = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.eq = fmul <2 x float> %i.ep, %i.cq           ; 2 uses
  %i.er = fneg <2 x float> %i.eq
  %i.es = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ep, <2 x float> %i.cq, <2 x float> %i.er)
  %i.et = fmul float %.sroa.495.0.i, %i.eo
  %i.eu = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ev = shufflevector <2 x float> %i.do, <2 x float> %i.eb, <2 x i32> <i32 1, i32 3>
  %i.ew = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.eu, <2 x float> %i.ev, <2 x float> %i.eq)
  %i.ex = fadd <2 x float> %i.ew, %i.es
  %i.ey = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = shufflevector <2 x float> %i.do, <2 x float> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.fa = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ey, <2 x float> %i.ez, <2 x float> %i.ex)
  %i.fb = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fsub <2 x float> %i.fa, %i.fc
  %i.fe = fneg <2 x float> %i.fd                  ; 2 uses
  %i.ff = extractelement <3 x float> %i.bx, i64 0
  %i.fg = extractelement <3 x float> %i.bx, i64 2
  %i.fh = extractelement <3 x float> %i.bz, i64 0
  %i.fi = extractelement <3 x float> %i.bz, i64 2
  %i.fj = fmul <2 x float> %i.ep, %i.cv           ; 2 uses
  %i.fk = fneg <2 x float> %i.fj
  %i.fl = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ep, <2 x float> %i.cv, <2 x float> %i.fk)
  %i.fm = shufflevector <2 x float> %i.dp, <2 x float> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.fn = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.eu, <2 x float> %i.fm, <2 x float> %i.fj)
  %i.fo = fadd <2 x float> %i.fn, %i.fl
  %i.fp = shufflevector <2 x float> %i.dp, <2 x float> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.fq = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ey, <2 x float> %i.fp, <2 x float> %i.fo) ; 2 uses
  %foldExtExtBinop363 = fdiv <2 x float> %i.fe, %i.fq ; 2 uses
  %foldExtExtBinop365 = fmul <2 x float> %i.cv, %foldExtExtBinop363
  %foldExtExtBinop367 = fadd <2 x float> %i.cq, %foldExtExtBinop365
  %i.fr = extractelement <2 x float> %foldExtExtBinop367, i64 0
  %i.fs = shufflevector <2 x float> %foldExtExtBinop363, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %i.dp, %i.fs
  %i.fu = fadd <2 x float> %i.do, %i.ft
  %i.fv = fsub <2 x float> %i.fu, %i.dy           ; 3 uses
  %i.fw = fsub float %i.fr, %.sroa.495.0.i        ; 3 uses
  %i.fx = extractelement <2 x float> %i.fv, i64 0 ; 2 uses
  %i.fy = fmul float %i.ff, %i.fx
  %i.fz = extractelement <2 x float> %i.fv, i64 1 ; 2 uses
  %i.ga = fmul float %i.by, %i.fz
  %i.gb = fadd float %i.fy, %i.ga
  %i.gc = fmul float %i.fg, %i.fw
  %i.gd = fadd float %i.gc, %i.gb
  %i.ge = fmul float %i.fh, %i.fx
  %i.gf = fmul float %i.ca, %i.fz
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = fmul float %i.fi, %i.fw
  %i.gi = fadd float %i.gh, %i.gg
  %i.gj = fmul <2 x float> %i.br, %i.fv           ; 2 uses
  %shift369 = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop370 = fadd <2 x float> %i.gj, %shift369
  %i.gk = extractelement <2 x float> %foldExtExtBinop370, i64 0
  %i.gl = fmul float %i.bt, %i.fw
  %i.gm = fadd float %i.gl, %i.gk
  %.sroa.045.0.vec.insert.i293 = insertelement <2 x float> poison, float %i.gd, i64 0
  %.sroa.045.4.vec.insert.i294 = insertelement <2 x float> %.sroa.045.0.vec.insert.i293, float %i.gi, i64 1
  %i.gn = call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 8 dereferenceable(896) %0, <2 x float> %.sroa.045.4.vec.insert.i294, float %i.gm, float noundef %5) ; 2 uses
  %.fca.0.extract38 = extractvalue { <2 x float>, float } %i.gn, 0
  %.fca.1.extract39 = extractvalue { <2 x float>, float } %i.gn, 1
  %i.go = fmul <2 x float> %i.ea, %.fca.0.extract38
  %i.gp = fmul float %i.cm, %.fca.1.extract39
  store <2 x float> %i.go, ptr %7, align 4
  store float %i.gp, ptr %.sroa.467.0..sroa_idx, align 4
  %foldExtExtBinop372 = fdiv <2 x float> %i.fe, %i.fq ; 2 uses
  %foldExtExtBinop374 = fmul <2 x float> %i.cv, %foldExtExtBinop372
  %foldExtExtBinop376 = fadd <2 x float> %i.cq, %foldExtExtBinop374
  %i.gq = extractelement <2 x float> %foldExtExtBinop376, i64 1
  %i.gr = shufflevector <2 x float> %foldExtExtBinop372, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gs = fmul <2 x float> %i.ec, %i.gr
  %i.gt = fadd <2 x float> %i.eb, %i.gs
  %i.gu = fsub <2 x float> %i.gt, %i.dy           ; 3 uses
  %i.gv = fsub float %i.gq, %.sroa.495.0.i        ; 2 uses
  %i.gw = load <5 x float>, ptr %i.bm, align 4, !tbaa !155 ; 3 uses
  %i.gx = shufflevector <5 x float> %i.gw, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gy = shufflevector <5 x float> %i.gw, <5 x float> poison, <2 x i32> <i32 4, i32 1>
  %i.gz = fmul <2 x float> %i.gu, %i.gy
  %i.ha = load <2 x float>, ptr %i.bq, align 4, !tbaa !155 ; 2 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hc = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = shufflevector <4 x float> %i.gx, <4 x float> %i.hb, <2 x i32> <i32 4, i32 0>
  %i.he = fmul <2 x float> %i.hc, %i.hd
  %i.hf = fadd <2 x float> %i.gz, %i.he
  %i.hg = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = shufflevector <2 x float> %i.ha, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <5 x float> %i.hi, <5 x float> %i.gw, <2 x i32> <i32 1, i32 7>
  %i.hk = fmul <2 x float> %i.hh, %i.hj
  %i.hl = fadd <2 x float> %i.hf, %i.hk
  %i.hm = load <2 x float>, ptr %i.bo, align 4, !tbaa !155
  %i.hn = fmul <2 x float> %i.gu, %i.hm           ; 2 uses
  %shift378 = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fadd <2 x float> %i.hn, %shift378
  %i.ho = extractelement <2 x float> %foldExtExtBinop379, i64 0
  %i.hp = load float, ptr %i.bs, align 4, !tbaa !155
  %i.hq = fmul float %i.gv, %i.hp
  %i.hr = fadd float %i.ho, %i.hq
  %i.hs = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ht = call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 8 dereferenceable(896) %0, <2 x float> %i.hs, float %i.hr, float noundef %5) ; 2 uses
  %.fca.0.extract3 = extractvalue { <2 x float>, float } %i.ht, 0
  %.fca.1.extract4 = extractvalue { <2 x float>, float } %i.ht, 1
  %i.hu = fmul <2 x float> %i.ea, %.fca.0.extract3
  %i.hv = fmul float %i.cm, %.fca.1.extract4
  store <2 x float> %i.hu, ptr %8, align 4
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.hv, ptr %.sroa.431.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Transform") align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #13 comdat {
bb.a:
  %.sroa.072.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.072.0.vec.extract)
  %i.b = fcmp olt float %i.a, 7.200000e-01
  %.sroa.068.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.c = tail call float @llvm.fabs.f32(float %.sroa.068.0.vec.extract)
  %i.d = fcmp olt float %i.c, 7.200000e-01
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %..preheader_crit_edge, label %bb.b

..preheader_crit_edge:                            ; preds = %bb.a
  %.pre202 = extractelement <2 x float> %3, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

bb.b:                                             ; preds = %bb.a
  %.sroa.068.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.e = shufflevector <2 x float> %3, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %5 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e)
  %6 = fcmp olt <2 x float> %5, splat (float 7.200000e-01) ; 2 uses
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %or.cond166 = select i1 %8, i1 %7, i1 false     ; 2 uses
  %spec.select = select i1 %or.cond166, float 1.000000e+00, float 0.000000e+00
  %spec.select167 = select i1 %or.cond166, float 0.000000e+00, float 1.000000e+00
  %i.f = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.select, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2:   ; preds = %..preheader_crit_edge, %bb.b
  %.sroa.03.4.vec.extract.i77.pre-phi = phi float [ %.pre202, %..preheader_crit_edge ], [ %.sroa.068.4.vec.extract, %bb.b ] ; 2 uses
  %.sroa.14162.0 = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %spec.select167, %bb.b ] ; 3 uses
  %i.g = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %..preheader_crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = fsub float %.sroa.14162.0, %2            ; 7 uses
  %i.i = insertelement <5 x float> <float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %.sroa.14162.0, i64 2
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.k = shufflevector <5 x float> %i.j, <5 x float> %i.i, <5 x i32> <i32 0, i32 1, i32 7, i32 8, i32 9> ; 2 uses
  %i.l = shufflevector <2 x float> %1, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.m = shufflevector <5 x float> %i.l, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 1, i32 poison, i32 8, i32 9>
  %i.n = insertelement <5 x float> %i.m, float %2, i64 2
  %i.o = fsub <5 x float> %i.k, %i.n
  %i.p = shufflevector <5 x float> %i.o, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.q = fsub float %.sroa.14162.0, %4            ; 7 uses
  %i.r = shufflevector <2 x float> %3, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.s = shufflevector <5 x float> %i.r, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 poison, i32 poison, i32 8, i32 9>
  %i.t = insertelement <5 x float> %i.s, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 1
  %i.u = insertelement <5 x float> %i.t, float %4, i64 2
  %i.v = fsub <5 x float> %i.k, %i.u
  %i.w = shufflevector <5 x float> %i.v, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4>
  %i.x = fmul float %i.h, %i.q
  %i.y = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.z = shufflevector <4 x float> %i.y, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.aa = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ac = fsub <4 x float> %i.z, %i.ab            ; 3 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 4 uses
  %i.ae = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.ag = insertelement <4 x float> %i.af, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 2
  %i.ah = fsub <4 x float> %i.z, %i.ag            ; 3 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 5 uses
  %foldExtExtBinop = fmul <8 x float> %i.ad, %i.ai
  %i.aj = extractelement <8 x float> %foldExtExtBinop, i64 0
  %i.ak = extractelement <4 x float> %i.ac, i64 2 ; 3 uses
  %i.al = extractelement <4 x float> %i.ah, i64 2 ; 3 uses
  %i.am = fmul float %i.ak, %i.al
  %i.an = fadd float %i.aj, %i.am
  %i.ao = fadd float %i.x, %i.an
  %i.ap = fmul float %i.ao, 4.000000e+00
  %i.aq = fmul float %i.h, %i.h
  %foldExtExtBinop204 = fmul <8 x float> %i.ad, %i.ad
  %i.ar = extractelement <8 x float> %foldExtExtBinop204, i64 0
  %i.as = fmul float %i.ak, %i.ak
  %i.at = fadd float %i.ar, %i.as
  %i.au = fadd float %i.aq, %i.at                 ; 2 uses
  %i.av = fmul float %i.q, %i.q
  %foldExtExtBinop206 = fmul <8 x float> %i.ai, %i.ai
  %i.aw = extractelement <8 x float> %foldExtExtBinop206, i64 0
  %i.ax = fmul float %i.al, %i.al
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = fadd float %i.av, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.au, %i.az
  %.scalar = fdiv float %i.ap, %i.ba              ; 2 uses
  %i.bb = insertelement <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bd = fmul float %.scalar, %i.q
  %.scalar208 = fdiv float 2.000000e+00, %i.au    ; 2 uses
  %i.be = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar208, i64 0 ; 2 uses
  %i.bf = shufflevector <3 x float> %i.be, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bg = fmul float %.scalar208, %i.h
  %i.bh = fmul float %i.bg, %i.h
  %i.bi = fsub float 1.000000e+00, %i.bh
  %.scalar209 = fdiv float 2.000000e+00, %i.az    ; 2 uses
  %i.bj = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar209, i64 0 ; 2 uses
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bl = fmul float %.scalar209, %i.q
  %i.bm = fmul float %i.bl, %i.q
  %i.bn = fsub float %i.bi, %i.bm
  %i.bo = fmul <8 x float> %i.bf, %i.ad
  %i.bp = fmul <8 x float> %i.bo, %i.p
  %i.bq = fsub <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %i.bp
  %i.br = fmul <8 x float> %i.bk, %i.ai
  %i.bs = fmul <8 x float> %i.br, %i.w
  %i.bt = fsub <8 x float> %i.bq, %i.bs
  %i.bu = fmul <8 x float> %i.bc, %i.ai
  %i.bv = fmul <8 x float> %i.bu, %i.p
  %i.bw = fadd <8 x float> %i.bt, %i.bv           ; 4 uses
  %i.bx = fmul float %i.bd, %i.h
  %i.by = fadd float %i.bn, %i.bx                 ; 2 uses
  store <8 x float> %i.bw, ptr %0, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = shufflevector <3 x float> %i.be, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ca = insertelement <2 x float> poison, float %i.h, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bz, %i.cb
  %i.cd = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = fsub <2 x float> zeroinitializer, %i.ce
  %i.cg = shufflevector <3 x float> %i.bj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cj = fmul <2 x float> %i.cg, %i.ci
  %i.ck = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cl = fmul <2 x float> %i.cj, %i.ck
  %i.cm = fsub <2 x float> %i.cf, %i.cl
  %i.cn = shufflevector <3 x float> %i.bb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cn, %i.ci
  %i.cp = fmul <2 x float> %i.co, %i.cd
  %i.cq = fadd <2 x float> %i.cm, %i.cp           ; 3 uses
  store <2 x float> %i.cq, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.by, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = shufflevector <8 x float> %i.bw, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  store <2 x float> %i.cs, ptr %i.cr, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ct = insertelement <2 x float> %i.cq, float 0.000000e+00, i64 1
  store <2 x float> %i.ct, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cu = shufflevector <8 x float> %i.bw, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cu, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.cv, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cw = shufflevector <8 x float> %i.bw, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cw, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.by, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %0, <2 x float> %1, float %2, float noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i8, ptr %i.e, align 4, !tbaa !289, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !155
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load float, ptr %i.j, align 4, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load float, ptr %i.l, align 4, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !155
  %i.s = load <6 x float>, ptr %i.p, align 4, !tbaa !155 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !155
  %i.v = fmul <2 x float> %1, %i.u                ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load float, ptr %i.x, align 4, !tbaa !155
  %i.z = fmul float %2, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !155
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = fadd float %i.w, %i.ac                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float %i.ad, ptr %i.c, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.ae = fcmp une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef 393, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #25
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit: ; preds = %bb.b
  %i.af = fmul <2 x float> %1, %i.r               ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %2, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <6 x float> %i.s, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = fmul <2 x float> %1, %i.o               ; 2 uses
  %i.al = fmul <2 x float> %1, %i.i               ; 2 uses
  %shift36 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop37 = fadd <2 x float> %i.al, %shift36
  %i.am = extractelement <2 x float> %foldExtExtBinop37, i64 0
  %i.an = fmul float %2, %i.k
  %i.ao = fadd float %i.an, %i.m
  %i.ap = fadd float %i.am, %i.ao                 ; 2 uses
end_hunk_0
