inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.oc = fneg float %i.ob                        ; 2 uses
  %i.od = load <2 x float>, ptr %i.nz, align 4, !noalias !22 ; 8 uses
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %4 = extractelement <2 x float> %i.od, i64 1    ; 2 uses
  %5 = fmul <2 x float> %i.od, %i.od
  %i.of = extractelement <2 x float> %5, i64 1    ; 2 uses
  %i.og = load float, ptr %i.oa, align 4, !noalias !22 ; 8 uses
  %i.oh = extractelement <2 x float> %i.od, i64 0 ; 6 uses
  %6 = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.oh, float %i.of)
  %7 = tail call float @llvm.fmuladd.f32(float %6, float -2.000000e+00, float 1.000000e+00) ; 6 uses
  %i.oi = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = fmul <2 x float> %i.oe, %i.oj
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.om = insertelement <2 x float> %i.od, float %i.og, i64 0 ; 2 uses
  %i.on = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ol, <2 x float> %i.om, <2 x float> %i.ok)
  %i.oo = fmul <2 x float> %i.on, splat (float 2.000000e+00) ; 6 uses
  %8 = tail call float @llvm.fmuladd.f32(float %i.og, float %i.og, float %i.of)
  %9 = tail call float @llvm.fmuladd.f32(float %8, float -2.000000e+00, float 1.000000e+00) ; 6 uses
  %i.op = fmul float %i.og, %i.oc
  %i.oq = tail call float @llvm.fmuladd.f32(float %i.oh, float %4, float %i.op)
  %i.or = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %i.od, %i.os
end_hunk_1
begin_hunk_2_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.oy = shufflevector <4 x float> %i.ow, <4 x float> %i.ox, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oz = fmul <4 x float> %i.oy, splat (float 2.000000e+00) ; 8 uses
  %i.pa = fmul float %i.og, %i.ob
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.oh, float %4, float %i.pa)
  %i.pc = fmul float %i.pb, 2.000000e+00          ; 4 uses
  %10 = fmul float %i.oh, %i.oh
  %i.pd = tail call float @llvm.fmuladd.f32(float %i.og, float %i.og, float %10)
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.pd, float -2.000000e+00, float 1.000000e+00) ; 6 uses
  %i.pf = load double, ptr %i.nx, align 8
  %i.pg = load ptr, ptr %i.bo, align 8
  %i.ph = getelementptr inbounds nuw [32 x i8], ptr %i.pg, i64 %indvars.iv336
  store double %i.pf, ptr %i.ph, align 8
  %i.pi = fadd float %7, %9
  %i.pj = fadd float %i.pe, %i.pi                 ; 2 uses
  %i.pk = fcmp ogt float %i.pj, 0.000000e+00
  br i1 %i.pk, label %bb.aj, label %bb.ak

end_hunk_2
begin_hunk_3_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ak:                                            ; preds = %.lr.ph302
  %11 = fcmp ogt float %7, %9
  %12 = fcmp ogt float %7, %i.pe
  %or.cond.i160 = and i1 %11, %12
  br i1 %or.cond.i160, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.px = fadd float %7, 1.000000e+00
  %i.py = fsub float %i.px, %9
  %i.pz = fsub float %i.py, %i.pe
  %i.qa = tail call noundef float @sqrtf(float noundef %i.pz) #19
  %i.qb = fmul float %i.qa, 2.000000e+00
  %i.qc = extractelement <4 x float> %i.oz, i64 1
end_hunk_3
begin_hunk_4_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.am:                                            ; preds = %bb.ak
  %i.qo = fcmp ogt float %9, %i.pe
  br i1 %i.qo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qp = fadd float %9, 1.000000e+00
  %i.qq = fsub float %i.qp, %7
  %i.qr = fsub float %i.qq, %i.pe
  %i.qs = tail call noundef float @sqrtf(float noundef %i.qr) #19
  %i.qt = fmul float %i.qs, 2.000000e+00
  %i.qu = insertelement <2 x float> %i.oo, float %i.pc, i64 1
end_hunk_4
begin_hunk_5_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

bb.ao:                                            ; preds = %bb.am
  %i.ri = fadd float %i.pe, 1.000000e+00
  %i.rj = fsub float %i.ri, %7
  %i.rk = fsub float %i.rj, %9
  %i.rl = tail call noundef float @sqrtf(float noundef %i.rk) #19
  %i.rm = fmul float %i.rl, 2.000000e+00
  %i.rn = insertelement <2 x float> %i.oo, float %i.pc, i64 0
end_hunk_5
