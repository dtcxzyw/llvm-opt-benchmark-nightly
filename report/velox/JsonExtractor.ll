inline.NumInlined: 1040
inline.NumDeleted: 614
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_113JsonExtractor7extractERKN5folly7dynamicE:_ZNKSt6vectorIPKN5folly7dynamicESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.pre.i, ptr %4, align 8, !noalias !93
  store ptr %i.bb, ptr %i.g, align 8, !noalias !93
  %i.bc = call { i64, i64 } @_ZN5folly6detail15str_to_integralIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %4) #1, !noalias !93
  %.fr44.i = freeze { i64, i64 } %i.bc            ; 2 uses
  %i.bd = extractvalue { i64, i64 } %.fr44.i, 0
  %i.be = and i64 %i.bd, 255
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.o, label %_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i, !prof !96

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread25.i
  %i.bg = extractvalue { i64, i64 } %.fr44.i, 1   ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !97, !noalias !98 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !97, !noalias !98 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
end_hunk_0
