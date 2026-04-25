inline.NumInlined: 2564
inline.NumDeleted: 1401
begin_hunk_0_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit
  %i.ak = inttoptr i64 %i.af to ptr               ; 6 uses
  %min.iters.check128 = icmp ult i64 %i.ai, 16
  br i1 %min.iters.check128, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.lr.ph.i.i.i.i.preheader.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag:bb.a
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bg, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.preheader.i35:                     ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33
  %i.cj = inttoptr i64 %i.cf to ptr               ; 6 uses
  %min.iters.check101 = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check101, label %.lr.ph.i.i.i.i.i36.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i.i.i.i.preheader.i35
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag:bb.a

_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.ds = getelementptr i8, ptr %i.dm, i64 %i.do  ; 5 uses
  %min.iters.check156 = icmp ult i64 %i.d, 30
  br i1 %min.iters.check156, label %.lr.ph.i.i.i.i.i.i.i.i42.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit
  %i.ak = inttoptr i64 %i.af to ptr               ; 6 uses
  %min.iters.check128 = icmp ult i64 %i.ai, 16
  br i1 %min.iters.check128, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.lr.ph.i.i.i.i.preheader.i
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag:bb.a
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bg, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.preheader.i35:                     ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33
  %i.cj = inttoptr i64 %i.cf to ptr               ; 6 uses
  %min.iters.check101 = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check101, label %.lr.ph.i.i.i.i.i36.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i.i.i.i.preheader.i35
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag:bb.a

_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.ds = getelementptr i8, ptr %i.dm, i64 %i.do  ; 5 uses
  %min.iters.check156 = icmp ult i64 %i.d, 30
  br i1 %min.iters.check156, label %.lr.ph.i.i.i.i.i.i.i.i42.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
end_hunk_7
