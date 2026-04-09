inline.NumInlined: 1994
inline.NumDeleted: 840
begin_hunk_0_@_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !99     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %.fr7.i = freeze i64 %i.f                       ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = load ptr, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %.fr7.i, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %.fr7.i, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i, !prof !107

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_:bb.a
  unreachable

_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.fr7.i) #24 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i
  %i.q = add i64 %.fr7.i, -24
  %i.r = urem i64 %i.q, 24
  %i.s = sub i64 %.fr7.i, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_:bb.a

_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.fr7.i
  store ptr %i.t, ptr %i.g, align 8, !tbaa !98
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %.fr7.i
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %.fr7.i, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.z = udiv exact i64 %.fr7.i, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_:bb.a

_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.fr7.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !97
  br label %bb.i
end_hunk_4
