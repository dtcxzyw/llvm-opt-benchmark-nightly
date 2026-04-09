inline.NumInlined: 5859
inline.NumDeleted: 2214
begin_hunk_0_@_ZNSt6vectorISt4pairIllESaIS1_EEaSERKS3_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !718  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !342    ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !719
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIllESaIS1_EEaSERKS3_:bb.a
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE11_M_allocateEm.exit.i
  %i.q = and i64 %i.f, -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.q, i1 false)
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIllESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIllESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
end_hunk_1
