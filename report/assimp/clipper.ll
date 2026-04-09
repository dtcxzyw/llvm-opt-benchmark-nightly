inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSERKS3_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSERKS3_:bb.a
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i
  %i.p = and i64 %i.f, 9223372036854775792
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
end_hunk_1
begin_hunk_2_@_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb:bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.o = icmp ugt i64 %i.n, 384307168202282325
end_hunk_2
begin_hunk_3_@_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb:bb.a

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %.loopexit263, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gb = zext i1 %4 to i64
  %i.gc = add nuw nsw i64 %i.n, %i.gb             ; 2 uses
  %i.gd = add nsw i64 %i.g, 1
  %i.ge = mul i64 %i.gc, %i.gd                    ; 4 uses
  %i.gf = icmp ugt i64 %i.ge, 384307168202282325
end_hunk_3
begin_hunk_4_@_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb:bb.a
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162: ; preds = %bb.y, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i159
  %i.hf = add nsw i64 %i.gc, -1                   ; 2 uses
  %.not327 = icmp eq i64 %i.hf, 0
  br i1 %.not327, label %._crit_edge308, label %.preheader.lr.ph

end_hunk_4
