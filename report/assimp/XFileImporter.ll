inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.if = fsub float %i.ie, %i.hi
  %i.ig = tail call noundef float @sqrtf(float noundef %i.if) #19
  %.scalar = fmul float %i.ig, 2.000000e+00
  %4 = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.ih = extractelement <4 x float> %i.hd, i64 1
  %i.ii = fsub float %i.he, %i.ih
  %i.ij = insertelement <4 x float> poison, float %i.ii, i64 0
  %6 = shufflevector <4 x float> %i.ij, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ik = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.il = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.im = fadd <4 x float> %i.ik, %i.il
  %i.in = shufflevector <4 x float> %6, <4 x float> %i.im, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.io = fdiv <4 x float> %i.in, %5
  %i.ip = fmul <4 x float> %i.in, %5
  %i.iq = shufflevector <4 x float> %i.io, <4 x float> %i.ip, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  %i.ny = load float, ptr %i.nv, align 4, !noalias !22 ; 3 uses
  %i.nz = fneg float %i.ny                        ; 2 uses
  %7 = load <2 x float>, ptr %i.nw, align 4, !noalias !22 ; 8 uses
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oa = extractelement <2 x float> %7, i64 1    ; 2 uses
  %9 = fmul <2 x float> %7, %7
  %10 = extractelement <2 x float> %9, i64 1      ; 2 uses
  %11 = load float, ptr %i.nx, align 4, !noalias !22 ; 8 uses
  %12 = extractelement <2 x float> %7, i64 0      ; 6 uses
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %10)
  %14 = tail call float @llvm.fmuladd.f32(float %13, float -2.000000e+00, float 1.000000e+00) ; 6 uses
  %i.ob = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = fmul <2 x float> %8, %i.oc
  %i.oe = insertelement <2 x float> %7, float %11, i64 1
  %i.of = insertelement <2 x float> %7, float %11, i64 0 ; 2 uses
  %i.og = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oe, <2 x float> %i.of, <2 x float> %i.od)
  %i.oh = fmul <2 x float> %i.og, splat (float 2.000000e+00) ; 6 uses
  %i.oi = tail call float @llvm.fmuladd.f32(float %11, float %11, float %10)
  %i.oj = tail call float @llvm.fmuladd.f32(float %i.oi, float -2.000000e+00, float 1.000000e+00) ; 6 uses
  %i.ok = fmul float %11, %i.nz
  %i.ol = tail call float @llvm.fmuladd.f32(float %12, float %i.oa, float %i.ok)
  %i.om = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oo = fmul <2 x float> %7, %i.on
  %i.op = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.op, <2 x float> %8, <2 x float> %i.oo)
  %i.or = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ol, i64 1
  %i.os = shufflevector <2 x float> %i.oq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ot = shufflevector <4 x float> %i.or, <4 x float> %i.os, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ou = fmul <4 x float> %i.ot, splat (float 2.000000e+00) ; 8 uses
  %i.ov = fmul float %11, %i.ny
  %i.ow = tail call float @llvm.fmuladd.f32(float %12, float %i.oa, float %i.ov)
  %i.ox = fmul float %i.ow, 2.000000e+00          ; 4 uses
  %15 = fmul float %12, %12
  %i.oy = tail call float @llvm.fmuladd.f32(float %11, float %11, float %15)
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.oy, float -2.000000e+00, float 1.000000e+00) ; 6 uses
  %i.pa = load double, ptr %i.nu, align 8
  %i.pb = load ptr, ptr %i.bo, align 8
  %i.pc = getelementptr inbounds nuw [32 x i8], ptr %i.pb, i64 %indvars.iv336
  store double %i.pa, ptr %i.pc, align 8
  %i.pd = fadd float %14, %i.oj
  %i.pe = fadd float %i.oz, %i.pd                 ; 2 uses
  %i.pf = fcmp ogt float %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.aj, label %bb.ak
end_hunk_1
begin_hunk_2_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ak:                                            ; preds = %.lr.ph302
  %i.ps = fcmp ogt float %14, %i.oj
  %i.pt = fcmp ogt float %14, %i.oz
  %or.cond.i160 = and i1 %i.ps, %i.pt
  br i1 %or.cond.i160, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pu = fadd float %14, 1.000000e+00
  %i.pv = fsub float %i.pu, %i.oj
  %i.pw = fsub float %i.pv, %i.oz
  %i.px = tail call noundef float @sqrtf(float noundef %i.pw) #19
  %.scalar397 = fmul float %i.px, 2.000000e+00
  %16 = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar397, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.py = extractelement <4 x float> %i.ou, i64 1
  %i.pz = fsub float %i.ox, %i.py
  %i.qa = insertelement <4 x float> poison, float %i.pz, i64 0
  %18 = shufflevector <4 x float> %i.qa, <4 x float> %17, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.qb = shufflevector <2 x float> %i.oh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qc = shufflevector <4 x float> %i.ou, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.qd = fadd <4 x float> %i.qb, %i.qc
  %i.qe = shufflevector <4 x float> %18, <4 x float> %i.qd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.qf = fdiv <4 x float> %i.qe, %17
  %i.qg = fmul <4 x float> %i.qe, %17
  %i.qh = shufflevector <4 x float> %i.qf, <4 x float> %i.qg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

end_hunk_2
begin_hunk_3_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a

bb.an:                                            ; preds = %bb.am
  %i.qj = fadd float %i.oj, 1.000000e+00
  %i.qk = fsub float %i.qj, %14
  %i.ql = fsub float %i.qk, %i.oz
  %i.qm = tail call noundef float @sqrtf(float noundef %i.ql) #19
  %i.qn = fmul float %i.qm, 2.000000e+00
end_hunk_3
begin_hunk_4_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a

bb.ao:                                            ; preds = %bb.am
  %i.rc = fadd float %i.oz, 1.000000e+00
  %i.rd = fsub float %i.rc, %14
  %i.re = fsub float %i.rd, %i.oj
  %i.rf = tail call noundef float @sqrtf(float noundef %i.re) #19
  %i.rg = fmul float %i.rf, 2.000000e+00
end_hunk_4
