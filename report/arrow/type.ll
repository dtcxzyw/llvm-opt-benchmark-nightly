inline.NumInlined: 11291
inline.NumDeleted: 4278
begin_hunk_0_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cr, label %.lr.ph.split.backedge, label %bb.ad, !prof !335

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29
  %.lcssa150 = phi i64 [ %i.cq, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ]
  %.026.i24.lcssa = phi ptr [ %.026.i24, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 5 uses
  %.0.i25.lcssa = phi i32 [ %.0.i25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i29 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.cs, label %.lr.ph.preheader.i.i.i39, label %._crit_edge.i.i.i31

.lr.ph.preheader.i.i.i39:                         ; preds = %bb.ad
  %i.ct = add i32 %.0.i.i.i30, -2
  br label %.lr.ph.i9.i.i40

.lr.ph.i9.i.i40:                                  ; preds = %.lr.ph.i9.i.i40, %.lr.ph.preheader.i.i.i39
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag:bb.a
  br i1 %i.eh, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN5arrow8FieldRefESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit88, label %.lr.ph.i.i.i.i80, !llvm.loop !2875

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN5arrow8FieldRefESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit88: ; preds = %_ZSt10_ConstructIN5arrow8FieldRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i83
  %.lcssa176 = phi ptr [ %scevgep269, %_ZSt10_ConstructIN5arrow8FieldRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i83 ]
  %i.ei = icmp eq ptr %1, %i.j
  br i1 %i.ei, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8FieldRefES2_SaIS1_EET0_T_S5_S4_RT1_.exit97, label %.lr.ph.i.i.i.i.i89.preheader
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader, %_ZSt10_ConstructIN5arrow8FieldRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i92
  %lsr.iv292 = phi ptr [ %scevgep291.a, %.lr.ph.i.i.i.i.i89.preheader ], [ %scevgep293, %_ZSt10_ConstructIN5arrow8FieldRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i92 ] ; 12 uses
  %lsr.iv281 = phi ptr [ %lsr.iv279, %.lr.ph.i.i.i.i.i89.preheader ], [ %scevgep282, %_ZSt10_ConstructIN5arrow8FieldRefEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i92 ] ; 13 uses
  %scevgep294.a = getelementptr i8, ptr %lsr.iv292, i64 -16 ; 6 uses
  %scevgep287.a = getelementptr i8, ptr %lsr.iv281, i64 -16
  %scevgep286.a = getelementptr i8, ptr %lsr.iv281, i64 -16
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i87: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i.i82
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i84, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i83, i64 16 ; 4 uses
  %i.et = icmp eq ptr %i.er, %3
  br i1 %i.et, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow8DataTypeEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit89, label %.lr.ph.i.i.i.i82, !llvm.loop !3061

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow8DataTypeEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit89: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i87
  %.lcssa157 = phi ptr [ %i.es, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i87 ]
  %i.eu = icmp eq ptr %1, %i.i
  br i1 %i.eu, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN5arrow8DataTypeEES4_SaIS3_EET0_T_S7_S6_RT1_.exit94, label %.lr.ph.i.i.i.i.i90.preheader
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader, %.lr.ph.i.i.i.i.i90
  %lsr.iv196 = phi i64 [ 0, %.lr.ph.i.i.i.i.i90.preheader ], [ %lsr.iv.next197, %.lr.ph.i.i.i.i.i90 ] ; 3 uses
  %scevgep201.a = getelementptr i8, ptr %1, i64 %lsr.iv196 ; 4 uses
  %scevgep198 = getelementptr i8, ptr %i.es, i64 %lsr.iv196 ; 2 uses
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 8
  store ptr null, ptr %scevgep199, align 8, !tbaa !355
  %i.ev = load <2 x ptr>, ptr %scevgep201.a, align 8, !tbaa !580
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a
  %lsr.iv.next197 = add i64 %lsr.iv196, 16        ; 2 uses
  %scevgep203 = getelementptr i8, ptr %scevgep201.a, i64 16
  %i.ew = icmp eq ptr %scevgep203, %i.i
  %scevgep200 = getelementptr i8, ptr %i.es, i64 %lsr.iv.next197
  br i1 %i.ew, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN5arrow8DataTypeEES4_SaIS3_EET0_T_S7_S6_RT1_.exit94.loopexit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !3057

_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN5arrow8DataTypeEES4_SaIS3_EET0_T_S7_S6_RT1_.exit94.loopexit: ; preds = %.lr.ph.i.i.i.i.i90
end_hunk_6
