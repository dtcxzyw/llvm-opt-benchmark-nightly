inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdb22JoinRelationSetManager15GetJoinRelationERKSt13unordered_setImSt4hashImESt8equal_toImESaImEE:bb.a
bb.d:                                             ; preds = %._crit_edge
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %3 = xor i64 %i.k, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0, ptr noundef nonnull %i.i, i64 noundef %3)
          to label %.noexc unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

end_hunk_0
begin_hunk_1_@_ZN6duckdb20CardinalityEstimator29InitCardinalityEstimatorPropsENS_12optional_ptrINS_15JoinRelationSetELb1EEERNS_13RelationStatsE:bb.a
  %i.w = ashr exact i64 %i.v, 7
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %6 = xor i64 %i.y, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb19RelationsSetToStatsESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_(ptr %i.q, ptr %i.s, i64 noundef %6, ptr nonnull @_ZN6duckdb9SortTdomsERKNS_19RelationsSetToStatsES2_)
          to label %.noexc13 unwind label %.loopexit.split-lp

end_hunk_1
begin_hunk_2_@_ZN6duckdb14PlanEnumerator7EmitCSGERNS_15JoinRelationSetE:bb.a
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = shl nuw nsw i64 %i.az, 1
  %12 = xor i64 %i.ba, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterISt7greaterImEEEEvT_SC_T0_T1_(ptr %i.aq, ptr %i.as, i64 noundef %12)
          to label %.noexc61 unwind label %bb.h

end_hunk_2
begin_hunk_3_@_ZN6duckdbL18GetAllNeighborSetsENS_6vectorImLb1ESaImEEE:bb.a
  %i.i = ashr exact i64 %i.h, 3
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %15 = xor i64 %i.k, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.c, ptr %i.e, i64 noundef %15)
          to label %.noexc unwind label %bb.c

end_hunk_3
begin_hunk_4_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
bb.at:                                            ; preds = %._crit_edge.i
  %i.gz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %43 = xor i64 %i.ha, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0.i, ptr noundef nonnull %i.gy, i64 noundef %43)
          to label %.noexc.i unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i

end_hunk_4
begin_hunk_5_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
bb.bo:                                            ; preds = %._crit_edge.i167
  %i.jw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mc, i1 true)
  %i.jx = shl nuw nsw i64 %i.jw, 1
  %44 = xor i64 %i.jx, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0.i159, ptr noundef nonnull %i.jv, i64 noundef %44)
          to label %.noexc.i176 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i170

end_hunk_5
begin_hunk_6_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
bb.cz:                                            ; preds = %._crit_edge.i202
  %i.rc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ti, i1 true)
  %i.rd = shl nuw nsw i64 %i.rc, 1
  %45 = xor i64 %i.rd, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0.i194, ptr noundef nonnull %i.rb, i64 noundef %45)
          to label %.noexc.i211 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i205

end_hunk_6
begin_hunk_7_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
bb.dt:                                            ; preds = %._crit_edge.i229
  %i.ty = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.we, i1 true)
  %i.tz = shl nuw nsw i64 %i.ty, 1
  %46 = xor i64 %i.tz, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0.i221, ptr noundef nonnull %i.tx, i64 noundef %46)
          to label %.noexc.i238 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i232

end_hunk_7
begin_hunk_8_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
bb.gk:                                            ; preds = %._crit_edge.i374
  %i.aik = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akq, i1 true)
  %i.ail = shl nuw nsw i64 %i.aik, 1
  %47 = xor i64 %i.ail, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0.i366, ptr noundef nonnull %i.aij, i64 noundef %47)
          to label %.noexc.i383 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i377

end_hunk_8
begin_hunk_9_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
bb.io:                                            ; preds = %._crit_edge.i508
  %i.aur = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.auv, i1 true)
  %i.aus = shl nuw nsw i64 %i.aur, 1
  %48 = xor i64 %i.aus, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.aup, ptr noundef nonnull %i.auq, i64 noundef %48)
          to label %.noexc.i517 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511

end_hunk_9
