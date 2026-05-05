inline.NumInlined: 1842
inline.NumDeleted: 874
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a

_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i.i87
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i89, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i88, i64 16 ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.ej, %3
  br i1 %.not.i.i.i.i93, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95, label %.lr.ph.i.i.i.i87, !llvm.loop !244

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95: ; preds = %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92
  %.lcssa206 = phi ptr [ %i.ek, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92 ] ; 2 uses
  %.lcssa167 = phi ptr [ %i.ek, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92 ]
  %.not11.i.i.i.i.i96 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97.preheader
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i97
  %lsr.iv206 = phi i64 [ 0, %.lr.ph.i.i.i.i.i97.preheader ], [ %lsr.iv.next207, %.lr.ph.i.i.i.i.i97 ] ; 3 uses
  %scevgep211.a = getelementptr i8, ptr %1, i64 %lsr.iv206 ; 4 uses
  %scevgep208 = getelementptr i8, ptr %.lcssa206, i64 %lsr.iv206 ; 2 uses
  %scevgep209 = getelementptr i8, ptr %scevgep208, i64 8
  store ptr null, ptr %scevgep209, align 8, !tbaa !21
  %i.el = load <2 x ptr>, ptr %scevgep211.a, align 8, !tbaa !62
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a
  %lsr.iv.next207 = add i64 %lsr.iv206, 16        ; 2 uses
  %scevgep213 = getelementptr i8, ptr %scevgep211.a, i64 16
  %.not.i.i.i.i.i100 = icmp eq ptr %scevgep213, %i.h
  %scevgep210 = getelementptr i8, ptr %.lcssa206, i64 %lsr.iv.next207
  br i1 %.not.i.i.i.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102.loopexit, label %.lr.ph.i.i.i.i.i97, !llvm.loop !397

_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102.loopexit: ; preds = %.lr.ph.i.i.i.i.i97
end_hunk_2
