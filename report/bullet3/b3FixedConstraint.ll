Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3FixedConstraint?download=true
inline.NumInlined: 194
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17b3FixedConstraint8getInfo2EPN17b3TypedConstraint17b3ConstraintInfo2EPK15b3RigidBodyData:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ep = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.eu = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.eu, <2 x float> %i.es)
  %i.ew = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ex = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ex, <2 x float> %i.ev)
  %i.ez = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fa = shufflevector <3 x float> %i.cz, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.cy, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fb, <2 x float> %i.ey) ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fe = fneg float %i.fd
  store float %i.fe, ptr %i.ed, align 4, !tbaa !9
  %i.ff = extractelement <2 x float> %i.fc, i64 0 ; 2 uses
  store float %i.ff, ptr %i.ee, align 8, !tbaa !9
  store float %i.fd, ptr %i.eb, align 16, !tbaa !9
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !9
  store float %i.eg, ptr %i.ei, align 8, !tbaa !9
  store float 0.000000e+00, ptr %i.ej, align 4, !tbaa !9
  %i.fg = fneg float %i.ff
  store float %i.fg, ptr %i.ec, align 16, !tbaa !9
  store float %i.dy, ptr %i.ek, align 4, !tbaa !9
  store <2 x float> zeroinitializer, ptr %i.el, align 8, !tbaa !9
  %i.fh = load float, ptr %1, align 8, !tbaa !33
  %i.fi = load float, ptr %i.em, align 4, !tbaa !34
  %i.fj = fmul float %i.fh, %i.fi                 ; 5 uses
  %i.fk = load float, ptr %i.i, align 16, !tbaa !9
  %i.fl = fadd float %i.dy, %i.fk
  %i.fm = load <2 x float>, ptr %i.en, align 4, !tbaa !9
  %i.fn = fadd <2 x float> %i.fc, %i.fm
  %i.fo = fsub float %i.fl, %i.bc
  %i.fp = fsub <2 x float> %i.fn, %i.bq
  %i.fq = load float, ptr %i.d, align 16, !tbaa !9
  %i.fr = fsub float %i.fo, %i.fq
  %i.fs = load <2 x float>, ptr %i.eo, align 4, !tbaa !9
  %i.ft = fsub <2 x float> %i.fp, %i.fs
  %i.fu = fmul float %i.fj, %i.fr
  %i.fv = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fw, %i.ft           ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !35 ; 6 uses
  %i.ga = load i32, ptr %i.m, align 8, !tbaa !29  ; 4 uses
  %i.gb = sext i32 %i.ga to i64                   ; 5 uses
  store float %i.fu, ptr %i.fz, align 4, !tbaa !11
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.gb
  %i.gd = extractelement <2 x float> %i.fx, i64 0
  store float %i.gd, ptr %i.gc, align 4, !tbaa !11
  %.idx = shl nsw i64 %i.gb, 3
  %i.ge = getelementptr inbounds i8, ptr %i.fz, i64 %.idx
  %i.gf = extractelement <2 x float> %i.fx, i64 1
  store float %i.gf, ptr %i.ge, align 4, !tbaa !11
  %i.gg = mul nsw i32 %i.ga, 3
  %i.gh = load ptr, ptr %i.br, align 8, !tbaa !30 ; 3 uses
  %i.gi = sext i32 %i.gg to i64                   ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gi
  store float 1.000000e+00, ptr %i.gj, align 4, !tbaa !11
  %i.gk = shl nsw i32 %i.ga, 2
  %i.gl = or disjoint i32 %i.gk, 1
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gm
  store float 1.000000e+00, ptr %i.gn, align 4, !tbaa !11
  %i.go = mul nsw i32 %i.ga, 5
  %i.gp = add nsw i32 %i.go, 2
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gq
  store float 1.000000e+00, ptr %i.gr, align 4, !tbaa !11
  %i.gs = load ptr, ptr %i.dz, align 8, !tbaa !32 ; 4 uses
  %.not73 = icmp eq ptr %i.gs, null
  br i1 %.not73, label %_ZNK12b3Quaternion7nearestERKS_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gi
  store float -1.000000e+00, ptr %i.gt, align 4, !tbaa !11
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gm
  store float -1.000000e+00, ptr %i.gu, align 4, !tbaa !11
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gq
  store float -1.000000e+00, ptr %i.gv, align 4, !tbaa !11
  br label %_ZNK12b3Quaternion7nearestERKS_.exit.i

_ZNK12b3Quaternion7nearestERKS_.exit.i:           ; preds = %bb.d, %bb.c
  %i.gw = load float, ptr %i.w, align 4, !tbaa !11
  %i.gx = load <4 x float>, ptr %i.j, align 16, !tbaa !9 ; 5 uses
  %i.gy = load float, ptr %i.cs, align 4, !tbaa !11
  %i.gz = load <2 x float>, ptr %i.e, align 16, !tbaa !11 ; 3 uses
  %i.ha = load <2 x float>, ptr %i.y, align 4, !tbaa !11 ; 4 uses
  %i.hb = load <2 x float>, ptr %i.cu, align 4, !tbaa !9 ; 3 uses
  %i.hc = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.he = fneg <2 x float> %i.hd                  ; 2 uses
  %i.hf = shufflevector <2 x float> %i.hc, <2 x float> %i.hb, <2 x i32> <i32 3, i32 1>
  %i.hg = fneg <2 x float> %i.hf                  ; 2 uses
  %i.hh = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = shufflevector <2 x float> %i.gz, <2 x float> %i.ha, <2 x i32> <i32 0, i32 2>
  %i.hk = fmul <2 x float> %i.hi, %i.hj
  %i.hl = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.he, <2 x float> %i.hk)
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hg, <2 x float> %i.hn)
  %i.hp = shufflevector <2 x float> %i.ha, <2 x float> %i.gz, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hb, <2 x float> %i.ho) ; 5 uses
  %i.hr = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.hs = fmul <2 x float> %i.hr, %i.hp
  %i.ht = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.hu = shufflevector <2 x float> %i.hg, <2 x float> %i.ht, <2 x i32> <i32 0, i32 3>
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hu, <2 x float> %i.hs)
  %i.hw = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hx = shufflevector <4 x float> %i.gx, <4 x float> %i.hw, <2 x i32> <i32 5, i32 1>
  %i.hy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.hx, <2 x float> %i.hv)
  %i.hz = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hz, <2 x float> %i.hy) ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.id = load <2 x float>, ptr %i.ib, align 16, !tbaa !11 ; 6 uses
  %i.ie = extractelement <2 x float> %i.id, i64 0
  %i.if = load <2 x float>, ptr %i.ic, align 4, !tbaa !11 ; 4 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0 ; 4 uses
  %i.ih = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %i.ii = extractelement <2 x float> %i.if, i64 1 ; 3 uses
  %i.ij = extractelement <2 x float> %i.ia, i64 0 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.il = load float, ptr %i.ik, align 4, !tbaa !9 ; 5 uses
  %i.im = extractelement <2 x float> %i.ia, i64 1 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.id, %i.hq
  %i.in = fsub float %i.ig, %i.ih
  %i.io = fsub float %i.ii, %i.ij
  %i.ip = fsub float %i.il, %i.im
  %foldExtExtBinop179 = fadd <2 x float> %i.id, %i.hq
  %i.iq = fadd float %i.ig, %i.ih
  %i.ir = fadd float %i.ii, %i.ij
  %i.is = fadd float %i.im, %i.il
  %i.it = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.iq, i64 1 ; 2 uses
  %i.iv = fmul <2 x float> %i.iu, %i.iu
  %i.iw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop179, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.iw, <2 x float> %i.iv)
  %i.iy = insertelement <2 x float> poison, float %i.io, i64 0
  %i.iz = insertelement <2 x float> %i.iy, float %i.ir, i64 1 ; 2 uses
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.iz, <2 x float> %i.ix)
  %i.jb = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.is, i64 1 ; 2 uses
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.jc, <2 x float> %i.ja) ; 2 uses
  %i.je = extractelement <2 x float> %i.jd, i64 0
  %i.jf = extractelement <2 x float> %i.jd, i64 1
  %i.jg = fcmp olt float %i.je, %i.jf             ; 2 uses
  %i.jh = fneg <2 x float> %i.hq
  %i.ji = fneg <2 x float> %i.ia
  %.sroa.07.0.copyload.pn.i.i = select i1 %i.jg, <2 x float> %i.hq, <2 x float> %i.jh ; 6 uses
  %.sroa.3.0.copyload.pn.i.i = select i1 %i.jg, <2 x float> %i.ia, <2 x float> %i.ji ; 5 uses
  %i.jj = shufflevector <2 x float> %i.if, <2 x float> %i.id, <2 x i32> <i32 1, i32 2>
  %i.jk = fneg <2 x float> %i.jj                  ; 2 uses
  %i.jl = fneg <2 x float> %i.id
  %i.jm = fneg float %i.ig
  %.sroa.527.12.vec.extract.i = extractelement <2 x float> %.sroa.3.0.copyload.pn.i.i, i64 1 ; 2 uses
  %.sroa.026.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.pn.i.i, i64 0
  %.sroa.026.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload.pn.i.i, i64 1 ; 2 uses
  %.sroa.527.8.vec.extract.i = extractelement <2 x float> %.sroa.3.0.copyload.pn.i.i, i64 0 ; 2 uses
  %i.jn = insertelement <2 x float> poison, float %i.il, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x float> %i.jo, %.sroa.07.0.copyload.pn.i.i
  %i.jq = shufflevector <2 x float> %.sroa.3.0.copyload.pn.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.jl, <2 x float> %i.jp)
  %i.js = shufflevector <2 x float> %.sroa.07.0.copyload.pn.i.i, <2 x float> %.sroa.3.0.copyload.pn.i.i, <2 x i32> <i32 1, i32 2>
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jk, <2 x float> %i.jr)
  %i.ju = shufflevector <2 x float> %.sroa.3.0.copyload.pn.i.i, <2 x float> %.sroa.07.0.copyload.pn.i.i, <2 x i32> <i32 0, i32 2>
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.if, <2 x float> %i.jt) ; 4 uses
  %i.jw = fmul float %i.il, %.sroa.527.8.vec.extract.i
  %i.jx = extractelement <2 x float> %i.jk, i64 0
  %i.jy = tail call float @llvm.fmuladd.f32(float %.sroa.527.12.vec.extract.i, float %i.jx, float %i.jw)
  %i.jz = tail call float @llvm.fmuladd.f32(float %.sroa.026.0.vec.extract.i, float %i.jm, float %i.jy)
  %i.ka = tail call float @llvm.fmuladd.f32(float %.sroa.026.4.vec.extract.i, float %i.ie, float %i.jz) ; 3 uses
  %foldExtExtBinop181 = fmul <2 x float> %i.id, %.sroa.07.0.copyload.pn.i.i
  %i.kb = extractelement <2 x float> %foldExtExtBinop181, i64 0
  %i.kc = tail call float @llvm.fmuladd.f32(float %.sroa.527.12.vec.extract.i, float %i.il, float %i.kb)
  %i.kd = tail call float @llvm.fmuladd.f32(float %.sroa.026.4.vec.extract.i, float %i.ig, float %i.kc)
  %i.ke = tail call float @llvm.fmuladd.f32(float %.sroa.527.8.vec.extract.i, float %i.ii, float %i.kd) ; 2 uses
  %i.kf = fcmp olt float %i.ke, -1.000000e+00
  %spec.store.select.i.i.i = select i1 %i.kf, float -1.000000e+00, float %i.ke ; 2 uses
  %i.kg = fcmp ogt float %spec.store.select.i.i.i, 1.000000e+00
  %spec.store.select1.i.i.i = select i1 %i.kg, float 1.000000e+00, float %spec.store.select.i.i.i
  %i.kh = tail call noundef float @acosf(float noundef %spec.store.select1.i.i.i) #13
  %foldExtExtBinop183 = fmul <2 x float> %i.jv, %i.jv
  %i.ki = extractelement <2 x float> %foldExtExtBinop183, i64 1
  %i.kj = extractelement <2 x float> %i.jv, i64 0 ; 2 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.ki)
  %i.kl = tail call noundef float @llvm.fmuladd.f32(float %i.ka, float %i.ka, float %i.kk) ; 2 uses
  %i.km = fcmp olt float %i.kl, f0x28800000
  br i1 %i.km, label %_ZN15b3TransformUtil32calculateDiffAxisAngleQuaternionERK12b3QuaternionS2_R9b3Vector3Rf.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK12b3Quaternion7nearestERKS_.exit.i
  %i.kn = tail call float @llvm.sqrt.f32(float %i.kl)
  %i.ko = fdiv float 1.000000e+00, %i.kn          ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.jv, %i.kq
  %i.ks = fmul float %i.ka, %i.ko
  %.sroa.14.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ks, i64 0
  br label %_ZN15b3TransformUtil32calculateDiffAxisAngleQuaternionERK12b3QuaternionS2_R9b3Vector3Rf.exit

_ZN15b3TransformUtil32calculateDiffAxisAngleQuaternionERK12b3QuaternionS2_R9b3Vector3Rf.exit: ; preds = %_ZNK12b3Quaternion7nearestERKS_.exit.i, %bb.e
  %.sroa.14.0 = phi <2 x float> [ %.sroa.14.8.vec.insert, %bb.e ], [ zeroinitializer, %_ZNK12b3Quaternion7nearestERKS_.exit.i ]
  %.sroa.0.0 = phi <2 x float> [ %i.kr, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00>, %_ZNK12b3Quaternion7nearestERKS_.exit.i ] ; 2 uses
  %i.kt = fmul float %i.kh, -2.000000e+00         ; 3 uses
  %.sroa.0.0.vec.extract148 = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.ku = fmul float %i.kt, %.sroa.0.0.vec.extract148
  %.sroa.0.4.vec.extract155 = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.kv = fmul float %i.kt, %.sroa.0.4.vec.extract155
  %.sroa.14.8.vec.extract164 = extractelement <2 x float> %.sroa.14.0, i64 0
  %i.kw = fmul float %i.kt, %.sroa.14.8.vec.extract164
  %i.kx = fmul float %i.fj, %i.ku
  %.idx175 = mul nsw i64 %i.gb, 12
  %i.ky = getelementptr inbounds i8, ptr %i.fz, i64 %.idx175
  store float %i.kx, ptr %i.ky, align 4, !tbaa !11
  %i.kz = fmul float %i.fj, %i.kv
  %.idx176 = shl nsw i64 %i.gb, 4
  %i.la = getelementptr inbounds i8, ptr %i.fz, i64 %.idx176
  store float %i.kz, ptr %i.la, align 4, !tbaa !11
  %i.lb = fmul float %i.fj, %i.kw
  %.idx177 = mul nsw i64 %i.gb, 20
  %i.lc = getelementptr inbounds i8, ptr %i.fz, i64 %.idx177
  store float %i.lb, ptr %i.lc, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17b3TypedConstraint21setupSolverConstraintER20b3AlignedObjectArrayI18b3SolverConstraintEiif(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17b3TypedConstraint23solveConstraintObsoleteER12b3SolverBodyS1_f(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(228) %1, ptr noundef nonnull align 16 dereferenceable(228) %2, float noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17b3FixedConstraint8setParamEifi(ptr noundef nonnull align 16 dereferenceable(112) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK17b3FixedConstraint8getParamEii(ptr noundef nonnull align 16 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret float 0.000000e+00
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 16, !tbaa !11  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #13 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.m, align 4, !tbaa !11
  %i.t = load float, ptr %i.n, align 8, !tbaa !11
  %i.u = fsub float %i.s, %i.t
  %i.v = load float, ptr %i.o, align 8, !tbaa !11
  %i.w = load float, ptr %i.j, align 16, !tbaa !11
  %i.x = fsub float %i.v, %i.w
  %i.y = load float, ptr %i.k, align 16, !tbaa !11
  %i.z = load float, ptr %i.p, align 4, !tbaa !11
  %i.aa = fsub float %i.y, %i.z
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.u, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.x, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.aa, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !11
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !11
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #13 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !11
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !11
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !11
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !11
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !11
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !11
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 16, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"vtable pointer", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i64 0, i64 16, !9}
!15 = !{!"_ZTSN17b3TypedConstraint17b3ConstraintInfo1E", !6, i64 0, !6, i64 4}
!16 = !{!15, !6, i64 0}
!17 = !{!15, !6, i64 4}
!18 = !{!"_ZTS13b3TypedObject", !6, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"p1 _ZTS15b3JointFeedback", !20, i64 0}
!22 = !{!"_ZTS17b3TypedConstraint", !18, i64 8, !6, i64 12, !5, i64 16, !10, i64 24, !19, i64 28, !19, i64 29, !6, i64 32, !6, i64 36, !6, i64 40, !10, i64 44, !10, i64 48, !21, i64 56}
!23 = !{!22, !6, i64 36}
!24 = !{!22, !6, i64 40}
!25 = !{!"p1 float", !20, i64 0}
!26 = !{!"p1 int", !20, i64 0}
!27 = !{!"_ZTSN17b3TypedConstraint17b3ConstraintInfo2E", !10, i64 0, !10, i64 4, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !6, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !26, i64 80, !6, i64 88, !10, i64 92}
!28 = !{!27, !25, i64 8}
!29 = !{!27, !6, i64 40}
!30 = !{!27, !25, i64 16}
!31 = !{!27, !25, i64 24}
!32 = !{!27, !25, i64 32}
!33 = !{!27, !10, i64 0}
!34 = !{!27, !10, i64 4}
!35 = !{!27, !25, i64 48}
end_hunk_0
