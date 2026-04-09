inline.NumInlined: 270
inline.NumDeleted: 172
begin_hunk_0_@_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !131    ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_:bb.a
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.q = and i64 %i.f, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.q, i1 false)
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_:bb.a

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit
  %i.bc = add i64 %i.l, %i.d
  %i.bd = add i64 %i.e, %i.u
  %2 = sub i64 %i.bc, %i.bd
  %3 = add i64 %2, -8                             ; 2 uses
  %i.be = lshr i64 %3, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check106 = icmp ult i64 %3, 56
  %i.bg = sub i64 %i.l, %i.e
  %diff.check = icmp ult i64 %i.bg, 32
  %or.cond = or i1 %min.iters.check106, %diff.check
end_hunk_2
