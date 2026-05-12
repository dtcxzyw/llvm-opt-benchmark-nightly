inline.NumInlined: 415
inline.NumDeleted: 222
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EEaSERKS5_:bb.a
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EEaSERKS5_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i
  %2 = load ptr, ptr %0, align 8, !tbaa !54       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %.not4.i.i = icmp eq ptr %2, %i.ab
end_hunk_1
