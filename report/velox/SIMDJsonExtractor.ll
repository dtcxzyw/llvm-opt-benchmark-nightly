inline.NumInlined: 651
inline.NumDeleted: 356
begin_hunk_0_@_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E:bb.a
  store ptr %i.al, ptr %3, align 8, !noalias !128
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !128
  %i.aq = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %3) #2, !noalias !128 ; 4 uses
  %i.ar = and i64 %i.aq, 255
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.h, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !131

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !111, !noalias !132 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !111, !noalias !132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.01115.i.i.i.i.i = phi ptr [ %i.at, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.au = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !31
  %i.av = sext i8 %i.au to i32
  %i.aw = call i32 @isspace(i32 noundef %i.av) #24
  %.not12.not.i.i.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not12.not.i.i.not.i.i.i, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.i

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.i, %bb.h
  %i.ax = icmp slt i64 %i.aq, 0
  br i1 %i.ax, label %.preheader, label %bb.y

.preheader:                                       ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E:bb.a
  %.sink539 = phi i32 [ -1, %bb.x ], [ 1, %bb.w ]
  %i.ds = add nsw i32 %.sroa.4239.0.copyload, %.sink539
  store i32 %i.ds, ptr %i.di, align 4, !tbaa !84
  %.sroa.686.0.extract.shift524 = add i64 %i.aq, %.0380.lcssa
  %i.dt = ashr i64 %.sroa.686.0.extract.shift524, 32
  br label %.lr.ph460

bb.y:                                             ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %i.du = lshr i64 %i.aq, 32
  %.not450 = icmp eq ptr %i.b, null
  br i1 %.not450, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph460

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E:bb.a
  store i8 1, ptr %i.gh, align 8, !tbaa !114
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %.lr.ph460, %bb.b, %bb.c, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %bb.y, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit
  %.4 = phi i32 [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread ], [ 17, %bb.c ], [ 0, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit ], [ 0, %.lr.ph460 ], [ 0, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24 ], [ 0, %bb.y ], [ 17, %bb.b ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ], [ 0, %.lr.ph.i.i.i.i.i ]
  ret i32 %.4
}

end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !38 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !34
  store ptr %i.o, ptr %.02530, align 8, !tbaa !38
  store ptr %.02530, ptr %i.g, align 8, !tbaa !34
  store ptr %i.g, ptr %i.m, align 8, !tbaa !37
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !38
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !37
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !38
  store ptr %i.r, ptr %.02530, align 8, !tbaa !38
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !37
  store ptr %.02530, ptr %i.s, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !180

end_hunk_4
