inline.NumInlined: 825
inline.NumDeleted: 324
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.outer, !llvm.loop !54

bb.cu:                                            ; preds = %bb.f
  %.sroa.32.0.ph.lcssa1821 = phi ptr [ %.sroa.32.0.ph, %bb.f ] ; 7 uses
  %.sroa.18.0.ph.lcssa1800 = phi ptr [ %.sroa.18.0.ph, %bb.f ] ; 2 uses
  %.sroa.0579.0.ph.lcssa1775 = phi ptr [ %.sroa.0579.0.ph, %bb.f ] ; 10 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.agk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %scevgep1877 = getelementptr i8, ptr %i.agm, i64 16 ; 2 uses
  %scevgep1881 = getelementptr i8, ptr %.sroa.0579.0.ph, i64 16 ; 2 uses
  br label %vector.body1477

vector.body1477:                                  ; preds = %vector.body1477, %vector.ph1474
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0809 = phi i64 [ %i.ahm, %scalar.ph ], [ %.0809.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ahi = shl i64 %.0809, 2                      ; 2 uses
  %scevgep1885 = getelementptr i8, ptr %.sroa.0579.0.ph, i64 %i.ahi
  %i.ahj = load i32, ptr %scevgep1885, align 4, !tbaa !3
  %i.ahk = sitofp i32 %i.ahj to float
  %i.ahl = fmul float %i.agk, %i.ahk
end_hunk_2
