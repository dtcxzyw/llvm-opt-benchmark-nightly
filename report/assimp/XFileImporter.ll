inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.oc = fneg float %i.ob                        ; 2 uses
  %i.od = load <2 x float>, ptr %i.nz, align 4, !noalias !22 ; 8 uses
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.of = extractelement <2 x float> %i.od, i64 1 ; 2 uses
  %i.og = load float, ptr %i.oa, align 4, !noalias !22 ; 5 uses
  %i.oh = extractelement <2 x float> %i.od, i64 0 ; 4 uses
  %i.oi = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = fmul <2 x float> %i.oe, %i.oj
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.om = insertelement <2 x float> %i.od, float %i.og, i64 0 ; 2 uses
  %i.on = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ol, <2 x float> %i.om, <2 x float> %i.ok)
  %i.oo = fmul <2 x float> %i.on, splat (float 2.000000e+00) ; 6 uses
  %i.op = fmul float %i.og, %i.oc
  %i.oq = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.of, float %i.op)
  %i.or = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %i.od, %i.os
end_hunk_1
begin_hunk_2_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.oy = shufflevector <4 x float> %i.ow, <4 x float> %i.ox, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oz = fmul <4 x float> %i.oy, splat (float 2.000000e+00) ; 8 uses
  %i.pa = fmul float %i.og, %i.ob
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.of, float %i.pa)
  %i.pc = fmul float %i.pb, 2.000000e+00          ; 4 uses
  %4 = fmul <2 x float> %i.od, %i.od              ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %6 = extractelement <2 x float> %4, i64 1
  %i.pd = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.oh, float %6)
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.pd, float -2.000000e+00, float 1.000000e+00) ; 5 uses
  %7 = insertelement <2 x float> poison, float %i.og, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %8, <2 x float> %5)
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.pf = load double, ptr %i.nx, align 8
  %i.pg = load ptr, ptr %i.bo, align 8
  %i.ph = getelementptr inbounds nuw [32 x i8], ptr %i.pg, i64 %indvars.iv336
  store double %i.pf, ptr %i.ph, align 8
  %11 = extractelement <2 x float> %10, i64 0     ; 5 uses
  %i.pi = fadd float %i.pe, %11
  %12 = extractelement <2 x float> %10, i64 1     ; 5 uses
  %i.pj = fadd float %12, %i.pi                   ; 2 uses
  %i.pk = fcmp ogt float %i.pj, 0.000000e+00
  br i1 %i.pk, label %bb.aj, label %bb.ak

end_hunk_2
begin_hunk_3_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ak:                                            ; preds = %.lr.ph302
  %13 = insertelement <2 x float> poison, float %i.pe, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fcmp ogt <2 x float> %14, %10             ; 2 uses
  %shift = shufflevector <2 x i1> %15, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = and <2 x i1> %15, %shift
  %or.cond.i160 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %or.cond.i160, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.px = fadd float %i.pe, 1.000000e+00
  %i.py = fsub float %i.px, %11
  %i.pz = fsub float %i.py, %12
  %i.qa = tail call noundef float @sqrtf(float noundef %i.pz) #19
  %i.qb = fmul float %i.qa, 2.000000e+00
  %i.qc = extractelement <4 x float> %i.oz, i64 1
end_hunk_3
begin_hunk_4_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.am:                                            ; preds = %bb.ak
  %i.qo = fcmp ogt float %11, %12
  br i1 %i.qo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qp = fadd float %11, 1.000000e+00
  %i.qq = fsub float %i.qp, %i.pe
  %i.qr = fsub float %i.qq, %12
  %i.qs = tail call noundef float @sqrtf(float noundef %i.qr) #19
  %i.qt = fmul float %i.qs, 2.000000e+00
  %i.qu = insertelement <2 x float> %i.oo, float %i.pc, i64 1
end_hunk_4
begin_hunk_5_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ao:                                            ; preds = %bb.am
  %i.ri = fadd float %12, 1.000000e+00
  %i.rj = fsub float %i.ri, %i.pe
  %i.rk = fsub float %i.rj, %11
  %i.rl = tail call noundef float @sqrtf(float noundef %i.rk) #19
  %i.rm = fmul float %i.rl, 2.000000e+00
  %i.rn = insertelement <2 x float> %i.oo, float %i.pc, i64 0
end_hunk_5
