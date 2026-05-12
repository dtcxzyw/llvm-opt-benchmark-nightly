inline.NumInlined: 872
inline.NumDeleted: 339
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = load ptr, ptr %0, align 8, !tbaa !67     ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !407

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !67
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i
  %3 = phi ptr [ %.pre47, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
end_hunk_1
