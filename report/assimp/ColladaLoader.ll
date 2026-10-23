Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaLoader?download=true
inline.NumInlined: 3826
inline.NumDeleted: 1929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp13ColladaLoader14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE7reserveEm.exit
  %i.fe = load ptr, ptr %i.av, align 8
  %i.ff = invoke noundef ptr @_ZN6Assimp13ColladaLoader14BuildHierarchyERKNS_13ColladaParserEPKNS_7Collada4NodeE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %4, ptr noundef %i.fe)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.ff, ptr %i.fg, align 8
  invoke void @_ZN6Assimp13ColladaLoader13FillMaterialsERKNS_13ColladaParserEP7aiScene(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %4, ptr nonnull poison)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 371
  %i.fi = load i8, ptr %i.fh, align 1, !range !15, !noundef !16
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.fl = load float, ptr %i.fk, align 8          ; 3 uses
  %i.fm = load ptr, ptr %i.fg, align 8            ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1028 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 1044 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1060 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1076 ; 2 uses
  %i.fr = load <4 x float>, ptr %i.fn, align 4    ; 4 uses
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ft = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.fl, i64 1 ; 4 uses
  %i.fu = fmul <4 x float> %i.fs, %i.ft
  %i.fv = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fl, i64 0 ; 4 uses
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fw, <4 x float> %i.fu)
  %i.fy = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fz = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.fl, i64 2 ; 4 uses
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.fz, <4 x float> %i.fx)
  %i.gb = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ga)
  store <4 x float> %i.gc, ptr %i.fn, align 4
  %i.gd = load <4 x float>, ptr %i.fo, align 4    ; 4 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gf = fmul <4 x float> %i.ge, %i.ft
  %i.gg = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.fw, <4 x float> %i.gf)
  %i.gi = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.fz, <4 x float> %i.gh)
  %i.gk = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gj)
  store <4 x float> %i.gl, ptr %i.fo, align 4
  %i.gm = load <4 x float>, ptr %i.fp, align 4    ; 4 uses
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.go = fmul <4 x float> %i.gn, %i.ft
  %i.gp = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.fw, <4 x float> %i.go)
  %i.gr = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.fz, <4 x float> %i.gq)
  %i.gt = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gs)
  store <4 x float> %i.gu, ptr %i.fp, align 4
  %i.gv = load <4 x float>, ptr %i.fq, align 4    ; 4 uses
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gx = fmul <4 x float> %i.gw, %i.ft
  %i.gy = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.fw, <4 x float> %i.gx)
  %i.ha = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.fz, <4 x float> %i.gz)
  %i.hc = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hb)
  store <4 x float> %i.hd, ptr %i.fq, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.hf = load i8, ptr %i.he, align 2, !range !15, !noundef !16
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 716
  %i.hi = load i32, ptr %i.hh, align 4
  switch i32 %i.hi, label %bb.aa [
    i32 0, label %bb.y
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.hj = load ptr, ptr %i.fg, align 8            ; 16 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1028 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1032
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 1036
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 1040
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 1044 ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 1048
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 1052
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 1056
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 1060 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 1064
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hj, i64 1068
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 1072
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 1076 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 1080
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 1084
  %i.id = getelementptr inbounds nuw i8, ptr %i.hj, i64 1088
  %i.ie = load float, ptr %i.hm, align 4
  %i.if = load float, ptr %i.hn, align 4
  %i.ig = load float, ptr %i.ho, align 4
  %i.ih = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ij = fmul <4 x float> %i.ii, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ik = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hl, i64 1 ; 2 uses
  %i.il = fsub <4 x float> %i.ij, %i.ik
  %i.im = shufflevector <4 x float> %i.ik, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.in = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> zeroinitializer, <4 x float> %i.il)
  %i.io = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.in)
  %i.ir = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.is, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.iq)
  store <4 x float> %i.it, ptr %i.hk, align 4
  %i.iu = load float, ptr %i.hr, align 4
  %i.iv = load float, ptr %i.hs, align 4
  %i.iw = load float, ptr %i.ht, align 4
  %i.ix = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = fmul <4 x float> %i.iy, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ja = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hq, i64 1 ; 2 uses
  %i.jb = fsub <4 x float> %i.iz, %i.ja
  %i.jc = shufflevector <4 x float> %i.ja, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.jd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jc, <4 x float> zeroinitializer, <4 x float> %i.jb)
  %i.je = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.jd)
  %i.jh = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jg)
  store <4 x float> %i.jj, ptr %i.hp, align 4
  %i.jk = load float, ptr %i.hw, align 4
  %i.jl = load float, ptr %i.hx, align 4
  %i.jm = load float, ptr %i.hy, align 4
  %i.jn = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = fmul <4 x float> %i.jo, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.jq = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.hv, i64 1 ; 2 uses
  %i.jr = fsub <4 x float> %i.jp, %i.jq
  %i.js = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> zeroinitializer, <4 x float> %i.jr)
  %i.ju = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.jt)
  %i.jx = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jw)
  store <4 x float> %i.jz, ptr %i.hu, align 4
  %i.ka = load float, ptr %i.ib, align 4
  %i.kb = load float, ptr %i.ic, align 4
  %i.kc = load float, ptr %i.id, align 4
  %i.kd = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kf = fmul <4 x float> %i.ke, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.kg = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ia, i64 1 ; 2 uses
  %i.kh = fsub <4 x float> %i.kf, %i.kg
  %i.ki = shufflevector <4 x float> %i.kg, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.kj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ki, <4 x float> zeroinitializer, <4 x float> %i.kh)
  %i.kk = insertelement <4 x float> poison, float %i.kb, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.kj)
  %i.kn = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ko, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.km)
  store <4 x float> %i.kp, ptr %i.hz, align 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.kq = load ptr, ptr %i.fg, align 8            ; 12 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1028 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 1036
  %i.kt = load float, ptr %i.ks, align 4          ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1040
  %i.kv = load float, ptr %i.ku, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 1044 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 1052
  %i.ky = load float, ptr %i.kx, align 4          ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 1056
  %i.la = load float, ptr %i.kz, align 4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kq, i64 1060 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 1068
  %i.ld = load float, ptr %i.lc, align 4          ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kq, i64 1072
  %i.lf = load float, ptr %i.le, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kq, i64 1076 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kq, i64 1084
  %i.li = load float, ptr %i.lh, align 4          ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kq, i64 1088
  %i.lk = load float, ptr %i.lj, align 4
  %i.ll = load <2 x float>, ptr %i.kr, align 4    ; 3 uses
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ln = fmul <2 x float> %i.lm, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.lo = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> zeroinitializer, <2 x float> %i.ln) ; 2 uses
  %i.lq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.kt, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ls = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lt = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = load <2 x float>, ptr %i.kw, align 4    ; 3 uses
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lx = fmul <2 x float> %i.lw, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ly = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ly, <2 x float> zeroinitializer, <2 x float> %i.lx) ; 2 uses
  %i.ma = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ky, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.mc = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.md = insertelement <4 x float> poison, float %i.la, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = load <2 x float>, ptr %i.lb, align 4    ; 3 uses
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mh = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mi = fmul <2 x float> %i.mh, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.mj = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> zeroinitializer, <2 x float> %i.mi) ; 2 uses
  %i.ml = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ld, i64 0
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.mn = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mo = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mq = load <2 x float>, ptr %i.lg, align 4    ; 3 uses
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ms = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mt = fmul <2 x float> %i.ms, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.mu = shufflevector <2 x float> %i.ll, <2 x float> %i.lv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.mv = shufflevector <4 x float> %i.mu, <4 x float> %i.mg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.mr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mx = shufflevector <2 x float> %i.ln, <2 x float> %i.lx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.my = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mz = shufflevector <4 x float> %i.mx, <4 x float> %i.my, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.na = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nb = shufflevector <4 x float> %i.mz, <4 x float> %i.na, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nc = fadd <4 x float> %i.mw, %i.nb           ; 4 uses
  %i.nd = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ne = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> zeroinitializer, <2 x float> %i.mt) ; 2 uses
  %i.nf = shufflevector <2 x float> %i.lp, <2 x float> %i.lz, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ng = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nh = shufflevector <4 x float> %i.nf, <4 x float> %i.ng, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ni = shufflevector <2 x float> %i.ne, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nj = shufflevector <4 x float> %i.nh, <4 x float> %i.ni, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nk = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.nl = insertelement <4 x float> %i.nk, float %i.ky, i64 1
  %i.nm = insertelement <4 x float> %i.nl, float %i.ld, i64 2
  %i.nn = insertelement <4 x float> %i.nm, float %i.li, i64 3
  %i.no = fsub <4 x float> %i.nj, %i.nn           ; 4 uses
  %i.np = shufflevector <4 x float> %i.nc, <4 x float> %i.no, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lr, <4 x float> zeroinitializer, <4 x float> %i.nq)
  %i.ns = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lu, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.nr)
  store <4 x float> %i.ns, ptr %i.kr, align 4
  %i.nt = shufflevector <4 x float> %i.nc, <4 x float> %i.no, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> %i.mc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mb, <4 x float> zeroinitializer, <4 x float> %i.nu)
  %i.nw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.nv)
  store <4 x float> %i.nw, ptr %i.kw, align 4
  %i.nx = shufflevector <4 x float> %i.nc, <4 x float> %i.no, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mm, <4 x float> zeroinitializer, <4 x float> %i.ny)
  %i.oa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.nz)
  store <4 x float> %i.oa, ptr %i.lb, align 4
  %i.ob = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.li, i64 0
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.od = shufflevector <4 x float> %i.nc, <4 x float> %i.no, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.oe = shufflevector <2 x float> %i.ne, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.of = shufflevector <4 x float> %i.od, <4 x float> %i.oe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.og = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oc, <4 x float> zeroinitializer, <4 x float> %i.of)
  %i.oh = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.og)
  store <4 x float> %i.oj, ptr %i.lg, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.w
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 760
  %i.ol = load i64, ptr %i.ok, align 8            ; 4 uses
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.on = trunc i64 %i.ol to i32                  ; 2 uses
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %_ZN10aiMetadata5AllocEj.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.op = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc50:                                         ; preds = %bb.ac
  store i32 %i.on, ptr %i.op, align 8
  %i.oq = and i64 %i.ol, 4294967295               ; 4 uses
  %i.or = mul nuw nsw i64 %i.oq, 1028             ; 3 uses
  %i.os = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.or) #30
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %.noexc50
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.ou = add nsw i64 %i.or, -1028
  %i.ov = urem i64 %i.ou, 1028
  %i.ow = sub nsw i64 %i.or, %i.ov
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.os, i8 0, i64 %i.ow, i1 false)
  store ptr %i.os, ptr %i.ot, align 8
  %i.ox = shl nuw nsw i64 %i.oq, 4
  %i.oy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ox) #30
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc52:                                         ; preds = %.noexc51
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %i.oq
  %i.pa = add nuw nsw i64 %i.oq, 1152921504606846975
  %i.pb = and i64 %i.pa, 1152921504606846975
  %xtraiter = and i64 %i.ol, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.noexc52, %.prol.preheader
  %i.pc = phi ptr [ %i.pe, %.prol.preheader ], [ %i.oy, %.noexc52 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.noexc52 ]
  store i32 10, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store ptr null, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !26

.prol.loopexit:                                   ; preds = %.prol.preheader, %.noexc52
  %.unr = phi ptr [ %i.oy, %.noexc52 ], [ %i.pe, %.prol.preheader ]
  %i.pf = icmp samesign ult i64 %i.pb, 7
  br i1 %i.pf, label %.unr-lcssa, label %.noexc52.new

.noexc52.new:                                     ; preds = %.prol.loopexit, %.noexc52.new
  %i.pg = phi ptr [ %i.pw, %.noexc52.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store ptr null, ptr %i.ph, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i32 10, ptr %i.pi, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store ptr null, ptr %i.pj, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  store i32 10, ptr %i.pk, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  store ptr null, ptr %i.pl, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  store i32 10, ptr %i.pm, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 56
  store ptr null, ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 64
  store i32 10, ptr %i.po, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 72
  store ptr null, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pg, i64 80
  store i32 10, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pg, i64 88
  store ptr null, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pg, i64 96
  store i32 10, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pg, i64 104
  store ptr null, ptr %i.pt, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pg, i64 112
  store i32 10, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pg, i64 120
  store ptr null, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pg, i64 128 ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.oz
  br i1 %i.px, label %.unr-lcssa, label %.noexc52.new

.unr-lcssa:                                       ; preds = %.noexc52.new, %.prol.loopexit
  %i.py = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store ptr %i.oy, ptr %i.py, align 8
  br label %_ZN10aiMetadata5AllocEj.exit

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %.unr-lcssa, %bb.ab
  %.0.i = phi ptr [ %i.op, %.unr-lcssa ], [ null, %bb.ab ]
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  store ptr %.0.i, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 744
  %i.qb = load ptr, ptr %i.qa, align 8            ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 728 ; 2 uses
  %.not102105 = icmp eq ptr %i.qb, %i.qc
  br i1 %.not102105, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10aiMetadata5AllocEj.exit, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.0107 = phi i64 [ %i.rs, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ], [ 0, %_ZN10aiMetadata5AllocEj.exit ] ; 3 uses
  %.sroa.065.0106 = phi ptr [ %i.rr, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ], [ %i.qb, %_ZN10aiMetadata5AllocEj.exit ] ; 6 uses
  %i.qd = load ptr, ptr %i.pz, align 8            ; 3 uses
  %i.qe = trunc i64 %.0107 to i32
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.065.0106, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.065.0106, i64 64 ; 4 uses
  %i.qh = load i32, ptr %i.qd, align 8
  %.not.i = icmp ugt i32 %i.qh, %i.qe
  br i1 %.not.i, label %bb.ad, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.065.0106, i64 40
  %i.qj = load i64, ptr %i.qi, align 8            ; 5 uses
  %i.qk = icmp eq i64 %i.qj, 0
  br i1 %i.qk, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ql = and i64 %.0107, 4294967295              ; 4 uses
  %i.qm = icmp ugt i64 %i.qj, 1023
  br i1 %i.qm, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds nuw [1028 x i8], ptr %i.qo, i64 %i.ql ; 2 uses
  %i.qq = trunc nuw nsw i64 %i.qj to i32
  store i32 %i.qq, ptr %i.qp, align 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 4 ; 2 uses
  %i.qs = load ptr, ptr %i.qf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qr, ptr align 1 %i.qs, i64 %i.qj, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qj
  store i8 0, ptr %i.qt, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.af, %bb.ae
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 3 uses
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %i.ql
  store i32 5, ptr %i.qw, align 8
  %i.qx = load ptr, ptr %i.qu, align 8
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.ql ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8            ; 5 uses
  %.not24.i = icmp eq ptr %i.ra, null
  br i1 %.not24.i, label %.thread29.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.rb = load i32, ptr %i.qy, align 8
end_hunk_0
