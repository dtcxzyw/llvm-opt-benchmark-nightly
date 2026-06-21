inline.NumInlined: 5152
inline.NumDeleted: 1417
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4LIEF8optimizeIS9_ISt10unique_ptrINSF_5MachO22ChainedBindingInfoListESt14default_deleteISJ_EESaISM_EEEESB_RKT_PFS7_RKNSP_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS14_S19_E_EEEvSP_SP_SP_SP_T0_:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit37.thread
  %i.ak = load ptr, ptr %1, align 8
  %i.al = load ptr, ptr %3, align 8
  %i.am = tail call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef %i.b) #22
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit49.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit49.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i
  %i.ao = phi ptr [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.ar = icmp ugt i64 %i.b, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50

.thread:                                          ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit61.thread

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56: ; preds = %bb.g
  %i.av = load ptr, ptr %3, align 8
  %i.aw = tail call i32 @memcmp(ptr noundef %i.ao, ptr noundef %i.av, i64 noundef %i.aq) #22
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit61.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread
  %i.ay = load ptr, ptr %3, align 8
  %i.az = tail call i32 @memcmp(ptr noundef %i.ay, ptr noundef %i.ao, i64 noundef %i.b) #22
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit61.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit61.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56, %.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50
  %i.bb = phi i64 [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50 ], [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56 ], [ %i.at, %.thread ] ; 3 uses
  %i.bc = icmp ugt i64 %i.d, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit61.thread
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68: ; preds = %bb.h
  %i.be = load ptr, ptr %3, align 8
  %i.bf = load ptr, ptr %2, align 8
  %i.bg = tail call i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.be, i64 noundef %i.bb) #22
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit73.thread

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit61.thread
  %i.bi = icmp eq i64 %i.d, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit73.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62: ; preds = %bb.i
  %i.bj = load ptr, ptr %2, align 8
  %i.bk = load ptr, ptr %3, align 8
  %i.bl = tail call i32 @memcmp(ptr noundef %i.bk, ptr noundef %i.bj, i64 noundef %i.d) #22
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit73.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit73.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62, %bb.i
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread: ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i26, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit73.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit49.thread
  %.sink = phi ptr [ %3, %bb.f ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit73.thread ], [ %1, %bb.g ], [ %2, %bb.d ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit49.thread ], [ %2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i26 ], [ %2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i32 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i44 ], [ %1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50 ], [ %1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68 ], [ %3, %bb.h ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4LIEF8optimizeIS9_ISt10unique_ptrINSF_5MachO22ChainedBindingInfoListESt14default_deleteISJ_EESaISM_EEEESB_RKT_PFS7_RKNSP_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS14_S19_E_EEESP_SP_SP_SP_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.022.0 = phi ptr [ %0, %bb.a ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.us-phi34, %bb.f ] ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.fr39 = freeze i64 %i.b                        ; 5 uses
  %i.c = icmp eq i64 %.fr39, 0                    ; 2 uses
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %.split.us
  %.sroa.022.1.us = phi ptr [ %i.f, %.split.us ], [ %.sroa.022.0, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.022.1.us, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.1.us, i64 32
  br i1 %.not, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread, label %.split.us, !llvm.loop !85

.split:                                           ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread
  %.sroa.022.1 = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread ], [ %.sroa.022.0, %bb.b ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ugt i64 %i.h, %.fr39
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.split
  %i.j = load ptr, ptr %2, align 8
  %i.k = load ptr, ptr %.sroa.022.1, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.fr39) #22
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread

bb.c:                                             ; preds = %.split
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %.sroa.022.1, align 8
  %i.p = load ptr, ptr %2, align 8
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %i.h) #22
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 32
  br label %.split, !llvm.loop !85

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread: ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.split.us
  %.us-phi = phi ptr [ %.sroa.022.1.us, %.split.us ], [ %.sroa.022.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.022.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i ], [ %.sroa.022.1, %bb.c ] ; 4 uses
  br i1 %i.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.us: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread
  %.sroa.0.1.us37 = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit19.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.backedge
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.backedge ], [ %.sroa.0.0, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread ] ; 2 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp ugt i64 %.fr39, %i.u
  br i1 %i.v, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14: ; preds = %bb.d
  %i.x = load ptr, ptr %.sroa.0.1, align 8
  %i.y = load ptr, ptr %2, align 8
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %i.u) #22
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit19.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = load ptr, ptr %.sroa.0.1, align 8
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.fr39) #22
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit19.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.backedge: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14, %bb.d
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33, !llvm.loop !86

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit19.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.us
  %.us-phi34 = phi ptr [ %.sroa.0.1.us37, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread.split33.us ], [ %.sroa.0.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14 ], [ %.sroa.0.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8 ] ; 3 uses
  %i.af = icmp ult ptr %.us-phi, %.us-phi34
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit19.thread
  ret ptr %.us-phi

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit19.thread
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.us-phi, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi34) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  br label %bb.b, !llvm.loop !87
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4LIEF8optimizeIS9_ISt10unique_ptrINSF_5MachO22ChainedBindingInfoListESt14default_deleteISJ_EESaISM_EEEESB_RKT_PFS7_RKNSP_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS14_S19_E_EEEvSP_SP_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.0.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.023 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.023, %bb.q ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn22, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 6 uses
  %i.i = load i64, ptr %i.b, align 8              ; 3 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 0
  %.pre = load ptr, ptr %.sroa.0.023, align 8     ; 3 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.l, i64 noundef %i.i) #22
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.h, 0
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i: ; preds = %bb.d
  %i.p = load ptr, ptr %.sroa.0.023, align 8      ; 2 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.p, i64 noundef %i.h) #22
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.t = phi ptr [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i ], [ %.pre, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.c, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.pn22, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread
  %i.w = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread
  store ptr %i.t, ptr %2, align 8
  %i.y = load i64, ptr %i.u, align 8
  store i64 %i.y, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store i64 %i.h, ptr %i.d, align 8
  store ptr %i.u, ptr %.sroa.0.023, align 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.u, align 8
  %i.z = ptrtoint ptr %.sroa.0.023 to i64
  %i.aa = sub i64 %i.z, %i.e
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn22, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.023, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.f, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.aj, align 1
  store i8 %i.ap, ptr %i.ag, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.af, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.aj, ptr %i.af, align 8
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = load i64, ptr %i.ak, align 8
  store i64 %i.ax, ptr %i.ah, align 8
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ay = load i64, ptr %i.ah, align 8
  store ptr %i.aj, ptr %i.af, align 8
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = load i64, ptr %i.ak, align 8
  store i64 %i.bc, ptr %i.ah, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.ae, align 8
  store i64 %i.ay, ptr %i.ak, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.ae, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ag, %bb.i ], [ %i.ak, %bb.j ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 1
  %i.bf = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, !llvm.loop !88

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bh = load ptr, ptr %0, align 8               ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.f
  %i.bj = load ptr, ptr %2, align 8               ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.c                 ; 2 uses
  %.pre27 = load i64, ptr %i.d, align 8           ; 5 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bk, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bk, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.bl = icmp ult i64 %.pre27, 16
  call void @llvm.assume(i1 %i.bl)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  switch i64 %.pre27, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bm = load i8, ptr %i.bj, align 1
  store i8 %i.bm, ptr %i.bh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %.pre27, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.bn, ptr %i.b, align 8
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  store ptr %i.bj, ptr %0, align 8
  store i64 %.pre27, ptr %i.b, align 8
  %i.bq = load i64, ptr %i.c, align 8
  store i64 %i.bq, ptr %i.f, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.br = load i64, ptr %i.f, align 8
  store ptr %i.bj, ptr %0, align 8
  store i64 %.pre27, ptr %i.b, align 8
  %i.bs = load i64, ptr %i.c, align 8
  store i64 %i.bs, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bh, ptr %2, align 8
  store i64 %i.br, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bt = phi ptr [ %i.bh, %bb.o ], [ %i.c, %bb.p ], [ %i.bj, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.bt, align 1
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.c
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bw = load i64, ptr %i.c, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %bb.d
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN4LIEF8optimizeIS9_ISt10unique_ptrINSF_5MachO22ChainedBindingInfoListESt14default_deleteISJ_EESaISM_EEEESB_RKT_PFS7_RKNSP_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS14_S19_E_EEEvSP_T0_(ptr nonnull %.sroa.0.023)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorISt10unique_ptrINS2_5MachO22ChainedBindingInfoListESt14default_deleteIS7_EESaISA_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EERKT_PFSI_RKNSL_10value_typeEERmPSt13unordered_mapISI_mSt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_mEEEEUlRS10_S15_E_EclINS_17__normal_iteratorIPSI_SK_EES1B_EEbSL_T0_.exit.thread
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !89

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.a
  ret void
}
end_hunk_0
begin_hunk_1_@_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_:bb.a

.thread.i17:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.ag, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = load i64, ptr %i.al, align 8
  store i64 %i.ay, ptr %i.ai, align 8
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10
  %i.az = load i64, ptr %i.ai, align 8
  store ptr %i.ak, ptr %i.ag, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = load i64, ptr %i.al, align 8
  store i64 %i.bd, ptr %i.ai, align 8
  %.not.i12 = icmp eq ptr %i.ah, null
  br i1 %.not.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11
  store ptr %i.ah, ptr %3, align 8
  store i64 %i.az, ptr %i.al, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11, %.thread.i17
  store ptr %i.al, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14, %bb.n, %bb.o
  %i.be = phi ptr [ %i.ah, %bb.n ], [ %i.al, %bb.o ], [ %i.ak, %bb.j ], [ %.pre.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bf, align 8
  store i8 0, ptr %i.be, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.a
  %i.i = sub i64 %i.b, %i.d
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.i, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.j = icmp slt i32 %.0.i.i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 8 uses
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  %.sroa.speculated.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i26, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27: ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8
  %i.o = load ptr, ptr %2, align 8
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i26) #22 ; 2 uses
  %.not.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i28, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27, %bb.b
  %i.q = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i31 = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i32 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i31, i64 2147483647)
  %.0.i6.i.i.i33 = trunc nsw i64 %.08.i.i.i.i32 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30
  %.0.i.i.i29 = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27 ], [ %.0.i6.i.i.i33, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30 ]
  %i.r = icmp slt i32 %.0.i.i.i29, 0
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34
  %.sroa.speculated.i.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i35, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36: ; preds = %bb.c
  %i.t = load ptr, ptr %3, align 8
  %i.u = load ptr, ptr %1, align 8
  %i.v = tail call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i35) #22 ; 2 uses
  %.not.i.i.i37 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i37, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36, %bb.c
  %i.w = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i40 = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i41 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i40, i64 2147483647)
  %.0.i6.i.i.i42 = trunc nsw i64 %.08.i.i.i.i41 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39
  %.0.i.i.i38 = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36 ], [ %.0.i6.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39 ]
  %i.x = icmp slt i32 %.0.i.i.i38, 0
  %. = select i1 %i.x, ptr %3, ptr %1
  br label %bb.f

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  %.sroa.speculated.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i44, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45: ; preds = %bb.d
  %i.z = load ptr, ptr %3, align 8
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i44) #22 ; 2 uses
  %.not.i.i.i46 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %bb.d
  %i.ac = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i51 = trunc nsw i64 %.08.i.i.i.i50 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48
  %.0.i.i.i47 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45 ], [ %.0.i6.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48 ]
  %i.ad = icmp slt i32 %.0.i.i.i47, 0
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i53, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54: ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i53) #22 ; 2 uses
  %.not.i.i.i55 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %bb.e
  %i.ai = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i60 = trunc nsw i64 %.08.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57
  %.0.i.i.i56 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54 ], [ %.0.i6.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57 ]
  %i.aj = icmp slt i32 %.0.i.i.i56, 0
  %.66 = select i1 %i.aj, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.0.016, %1
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.019 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn18 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.019, %bb.q ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn18, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.h) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8
  %i.l = load ptr, ptr %.sroa.0.019, align 8
  %i.m = call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.k, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.n = sub i64 %i.h, %i.i
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.o, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.c, ptr %2, align 8
  %i.p = load ptr, ptr %.sroa.0.019, align 8      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  store ptr %i.p, ptr %2, align 8
  %i.u = load i64, ptr %i.q, align 8
  store i64 %i.u, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store i64 %i.h, ptr %i.d, align 8
  store ptr %i.q, ptr %.sroa.0.019, align 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.q, align 8
  %i.v = ptrtoint ptr %.sroa.0.019 to i64
  %i.w = sub i64 %i.v, %i.e
  %i.x = ashr exact i64 %i.w, 5                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pn18, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.019, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 6 uses
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %i.af = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ah = icmp eq ptr %i.af, %i.ag                ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ah, label %bb.e, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  switch i64 %i.aj, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.al = load i8, ptr %i.af, align 1
  store i8 %i.al, ptr %i.ac, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.af, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.am = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.ab, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.af, ptr %i.ab, align 8
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = load i64, ptr %i.ag, align 8
  store i64 %i.at, ptr %i.ad, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.au = load i64, ptr %i.ad, align 8
  store ptr %i.af, ptr %i.ab, align 8
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = load i64, ptr %i.ag, align 8
  store i64 %i.ay, ptr %i.ad, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ac, ptr %i.aa, align 8
  store i64 %i.au, ptr %i.ag, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.aa, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.az = phi ptr [ %i.ac, %bb.h ], [ %i.ag, %bb.i ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.az, align 1
  %i.bb = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bc = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, !llvm.loop !88

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bd = load ptr, ptr %0, align 8               ; 6 uses
  %i.be = icmp eq ptr %i.bd, %i.f
  %i.bf = load ptr, ptr %2, align 8               ; 6 uses
  %i.bg = icmp eq ptr %i.bf, %i.c                 ; 2 uses
  %.pre22 = load i64, ptr %i.d, align 8           ; 5 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bg, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.bh = icmp ult i64 %.pre22, 16
  call void @llvm.assume(i1 %i.bh)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  switch i64 %.pre22, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.bf, align 1
  store i8 %i.bi, ptr %i.bd, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bf, i64 %.pre22, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bj = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.bj, ptr %i.b, align 8
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  store ptr %i.bf, ptr %0, align 8
  store i64 %.pre22, ptr %i.b, align 8
  %i.bm = load i64, ptr %i.c, align 8
  store i64 %i.bm, ptr %i.f, align 8
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bn = load i64, ptr %i.f, align 8
  store ptr %i.bf, ptr %0, align 8
  store i64 %.pre22, ptr %i.b, align 8
  %i.bo = load i64, ptr %i.c, align 8
  store i64 %i.bo, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bd, ptr %2, align 8
  store i64 %i.bn, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bp = phi ptr [ %i.bd, %bb.n ], [ %i.c, %bb.o ], [ %i.bf, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.bp, align 1
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.c
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bs = load i64, ptr %i.c, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

bb.p:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.019)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !111

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.a
  ret void
}
end_hunk_1
begin_hunk_2_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4LIEF8optimizeIS9_IPNSF_5MachO6SymbolESaISJ_EEEESB_RKT_PFS7_RKNSM_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS11_S16_E_EEEvSM_SM_SM_SM_T0_:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit37.thread
  %i.ak = load ptr, ptr %1, align 8
  %i.al = load ptr, ptr %3, align 8
  %i.am = tail call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.ak, i64 noundef %i.b) #22
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit49.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit49.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i
  %i.ao = phi ptr [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.ar = icmp ugt i64 %i.b, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50

.thread:                                          ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit61.thread

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56: ; preds = %bb.g
  %i.av = load ptr, ptr %3, align 8
  %i.aw = tail call i32 @memcmp(ptr noundef %i.ao, ptr noundef %i.av, i64 noundef %i.aq) #22
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit61.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread
  %i.ay = load ptr, ptr %3, align 8
  %i.az = tail call i32 @memcmp(ptr noundef %i.ay, ptr noundef %i.ao, i64 noundef %i.b) #22
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit61.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit61.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56, %.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50
  %i.bb = phi i64 [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50 ], [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56 ], [ %i.at, %.thread ] ; 3 uses
  %i.bc = icmp ugt i64 %i.d, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit61.thread
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68: ; preds = %bb.h
  %i.be = load ptr, ptr %3, align 8
  %i.bf = load ptr, ptr %2, align 8
  %i.bg = tail call i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.be, i64 noundef %i.bb) #22
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit73.thread

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit61.thread
  %i.bi = icmp eq i64 %i.d, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit73.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62: ; preds = %bb.i
  %i.bj = load ptr, ptr %2, align 8
  %i.bk = load ptr, ptr %3, align 8
  %i.bl = tail call i32 @memcmp(ptr noundef %i.bk, ptr noundef %i.bj, i64 noundef %i.d) #22
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit73.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit73.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62, %bb.i
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i34.thread: ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i26, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit73.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit49.thread
  %.sink = phi ptr [ %3, %bb.f ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit73.thread ], [ %1, %bb.g ], [ %2, %bb.d ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit49.thread ], [ %2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i26 ], [ %2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i32 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i38 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i44 ], [ %1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i50 ], [ %1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i56 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i62 ], [ %3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68 ], [ %3, %bb.h ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4LIEF8optimizeIS9_IPNSF_5MachO6SymbolESaISJ_EEEESB_RKT_PFS7_RKNSM_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS11_S16_E_EEESM_SM_SM_SM_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.022.0 = phi ptr [ %0, %bb.a ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.us-phi34, %bb.f ] ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.fr39 = freeze i64 %i.b                        ; 5 uses
  %i.c = icmp eq i64 %.fr39, 0                    ; 2 uses
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %.split.us
  %.sroa.022.1.us = phi ptr [ %i.f, %.split.us ], [ %.sroa.022.0, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.022.1.us, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.1.us, i64 32
  br i1 %.not, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread, label %.split.us, !llvm.loop !129

.split:                                           ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread
  %.sroa.022.1 = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread ], [ %.sroa.022.0, %bb.b ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ugt i64 %i.h, %.fr39
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.split
  %i.j = load ptr, ptr %2, align 8
  %i.k = load ptr, ptr %.sroa.022.1, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.fr39) #22
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread

bb.c:                                             ; preds = %.split
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %.sroa.022.1, align 8
  %i.p = load ptr, ptr %2, align 8
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %i.h) #22
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 32
  br label %.split, !llvm.loop !129

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread: ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.split.us
  %.us-phi = phi ptr [ %.sroa.022.1.us, %.split.us ], [ %.sroa.022.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.022.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i ], [ %.sroa.022.1, %bb.c ] ; 4 uses
  br i1 %i.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.us: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread
  %.sroa.0.1.us37 = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit19.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.backedge
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.backedge ], [ %.sroa.0.0, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread ] ; 2 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -24
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp ugt i64 %.fr39, %i.u
  br i1 %i.v, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14: ; preds = %bb.d
  %i.x = load ptr, ptr %.sroa.0.1, align 8
  %i.y = load ptr, ptr %2, align 8
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %i.u) #22
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit19.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = load ptr, ptr %.sroa.0.1, align 8
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.fr39) #22
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit19.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.backedge: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14, %bb.d
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33, !llvm.loop !130

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit19.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.us
  %.us-phi34 = phi ptr [ %.sroa.0.1.us37, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread.split33.us ], [ %.sroa.0.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i14 ], [ %.sroa.0.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i8 ] ; 3 uses
  %i.af = icmp ult ptr %.us-phi, %.us-phi34
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit19.thread
  ret ptr %.us-phi

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit19.thread
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.us-phi, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi34) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  br label %bb.b, !llvm.loop !131
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN4LIEF8optimizeIS9_IPNSF_5MachO6SymbolESaISJ_EEEESB_RKT_PFS7_RKNSM_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS11_S16_E_EEEvSM_SM_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.0.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.023 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.023, %bb.q ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn22, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 6 uses
  %i.i = load i64, ptr %i.b, align 8              ; 3 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 0
  %.pre = load ptr, ptr %.sroa.0.023, align 8     ; 3 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.l, i64 noundef %i.i) #22
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.h, 0
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i: ; preds = %bb.d
  %i.p = load ptr, ptr %.sroa.0.023, align 8      ; 2 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.p, i64 noundef %i.h) #22
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.t = phi ptr [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i ], [ %.pre, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.c, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.pn22, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread
  %i.w = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i.thread
  store ptr %i.t, ptr %2, align 8
  %i.y = load i64, ptr %i.u, align 8
  store i64 %i.y, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store i64 %i.h, ptr %i.d, align 8
  store ptr %i.u, ptr %.sroa.0.023, align 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.u, align 8
  %i.z = ptrtoint ptr %.sroa.0.023 to i64
  %i.aa = sub i64 %i.z, %i.e
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn22, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.023, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.f, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.aj, align 1
  store i8 %i.ap, ptr %i.ag, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.af, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.aj, ptr %i.af, align 8
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = load i64, ptr %i.ak, align 8
  store i64 %i.ax, ptr %i.ah, align 8
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ay = load i64, ptr %i.ah, align 8
  store ptr %i.aj, ptr %i.af, align 8
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = load i64, ptr %i.ak, align 8
  store i64 %i.bc, ptr %i.ah, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.ae, align 8
  store i64 %i.ay, ptr %i.ak, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.ae, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ag, %bb.i ], [ %i.ak, %bb.j ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 1
  %i.bf = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, !llvm.loop !88

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bh = load ptr, ptr %0, align 8               ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.f
  %i.bj = load ptr, ptr %2, align 8               ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.c                 ; 2 uses
  %.pre27 = load i64, ptr %i.d, align 8           ; 5 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bk, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bk, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.bl = icmp ult i64 %.pre27, 16
  call void @llvm.assume(i1 %i.bl)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  switch i64 %.pre27, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bm = load i8, ptr %i.bj, align 1
  store i8 %i.bm, ptr %i.bh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %.pre27, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.bn, ptr %i.b, align 8
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  store ptr %i.bj, ptr %0, align 8
  store i64 %.pre27, ptr %i.b, align 8
  %i.bq = load i64, ptr %i.c, align 8
  store i64 %i.bq, ptr %i.f, align 8
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.br = load i64, ptr %i.f, align 8
  store ptr %i.bj, ptr %0, align 8
  store i64 %.pre27, ptr %i.b, align 8
  %i.bs = load i64, ptr %i.c, align 8
  store i64 %i.bs, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bh, ptr %2, align 8
  store i64 %i.br, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bt = phi ptr [ %i.bh, %bb.o ], [ %i.c, %bb.p ], [ %i.bj, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.bt, align 1
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.c
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bw = load i64, ptr %i.c, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i12.i.i, %bb.d
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN4LIEF8optimizeIS9_IPNSF_5MachO6SymbolESaISJ_EEEESB_RKT_PFS7_RKNSM_10value_typeEERmPSt13unordered_mapIS7_mSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_mEEEEUlRS11_S16_E_EEEvSM_T0_(ptr nonnull %.sroa.0.023)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4LIEF8optimizeISt6vectorIPNS2_5MachO6SymbolESaIS7_EEEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEEEUlRSX_S12_E_EclINS_17__normal_iteratorIPSF_SH_EES18_EEbSI_T0_.exit.thread
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !132

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.a
  ret void
}
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIPN4LIEF5MachO6SymbolESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_:bb.a
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZN4LIEF11swap_endianINS_5MachO7details8nlist_64EEEvPT_(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4LIEF5MachO6Binary15two_level_hintsEv(ptr noundef nonnull align 8 dereferenceable(488)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPN4LIEF5MachO6SymbolESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPN4LIEF5MachO6SymbolESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef ptr @_ZNK4LIEF5MachO6Binary14code_signatureEv(ptr noundef nonnull align 8 dereferenceable(488)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not49 = icmp ult i64 %i.g, %2
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1                 ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1
  store i8 %i.q, ptr %i.d, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.o, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %1, align 1
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8
  %.not.i.i.i51 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i51, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8               ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.s
  %i.au = phi ptr [ %i.at, %bb.s ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i8, ptr %i.ai, align 1
  store i8 %i.az, ptr %i.au, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.y:                                             ; preds = %bb.x
  %i.be = load i8, ptr %1, align 1
  store i8 %i.be, ptr %i.ba, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i56 = icmp eq ptr %i.ai, null
  br i1 %.not.i56, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55, %bb.z
  store ptr %i.au, ptr %0, align 8
  store ptr %i.bf, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.p, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF9to_stringINS_5MachO7SectionEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #14 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #22
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #22
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #22
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF5MachOlsERSoRKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(192) %1) #22 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !alias.scope !146
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8, !alias.scope !146
  store i8 0, ptr %i.aq, align 8, !alias.scope !146
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !noalias !146 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !146 ; 2 uses
  %i.aw = icmp ugt ptr %i.at, %i.av
  %.08.i.i.i = select i1 %i.aw, ptr %i.at, ptr %i.av ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !146 ; 2 uses
  %i.az = ptrtoint ptr %.08.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ay, i64 noundef %i.bb) #22 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #22
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.bd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bd, ptr %2, align 8
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bi, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.bj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bk, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bl = load i64, ptr %i.aj, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #22
  store ptr %i.f, ptr %2, align 8
  %i.bn = load i64, ptr %i.h, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.g, ptr %i.bo, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF5MachOlsERSoRKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

declare void @_ZN4LIEF11swap_endianINS_5MachO7details14mach_header_64EEEvPT_(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4LIEF5MachO7Builder12get_cmd_sizeINS0_7details7MachO32EEEmRKNS0_11LoadCommandE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  switch i64 %i.b, label %bb.b [
    i64 2147483683, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 2147483679, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 2147483672, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 13, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 12, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
    i64 32, label %_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit
  ]

_ZNK4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPKT_v.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
end_hunk_3
