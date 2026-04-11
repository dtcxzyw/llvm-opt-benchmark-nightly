inline.NumInlined: 2834
inline.NumDeleted: 1257
begin_hunk_0_@_ZN6Assimp11XGLImporter9ReadTrafoERN4pugi8xml_nodeE:bb.a
  %.sroa.8.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.8.1282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %.sroa.077.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.077.1283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 2 uses
  %.sroa.22159.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.22159.1284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 4 uses
  %.0.lcssa = phi float [ 1.000000e+00, %bb.b ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
end_hunk_0
begin_hunk_1_@_ZN6Assimp11XGLImporter9ReadTrafoERN4pugi8xml_nodeE:bb.a
  %i.eu = fneg float %i.ee
  %i.ev = fmul float %.sroa.22159.2, %i.eu
  %i.ew = call float @llvm.fmuladd.f32(float %.sroa.0128.4.vec.extract152, float %.sroa.22.2, float %i.ev)
  %9 = fmul float %.0.lcssa, %i.eq
  %10 = fmul float %.0.lcssa, %.sroa.22.2
  %i.ex = fmul float %.0.lcssa, %.sroa.22159.2
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %9, ptr %i.ez, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %10, ptr %11, align 4
  store float %i.ex, ptr %i.i, align 4
  %i.fa = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.lcssa, i64 0
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
end_hunk_1
