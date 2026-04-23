inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE3EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 19) i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #40 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.d, label %_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUliE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.d, !prof !9246

bb.d:                                             ; preds = %bb.c
  %2 = fadd double %i.b, 0xC1DFFFFFFFBFFFFF
  %i.e = fptosi double %2 to i32
  %.not.i.i.i = icmp sgt i32 %i.e, 1
  br i1 %.not.i.i.i, label %_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUliE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIidEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

bb.e:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.g, label %_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUliE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = fadd double %i.b, 0x41DFFFFFFFFFFFFF
  %i.h = fptosi double %3 to i32
  %.not15.i.i.i = icmp slt i32 %i.h, -1
  br i1 %.not15.i.i.i, label %_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUliE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIidEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

_ZN5folly6detail15checkConversionIidEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i: ; preds = %bb.g, %bb.e, %bb.d
  %i.i = fptosi double %i.b to i32                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #31

; Function Attrs: nounwind
declare i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef) local_unnamed_addr #14

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE1EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 19) i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #40 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.d, label %_ZNO5folly8ExpectedIaNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlaE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIaS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.d, !prof !9246

bb.d:                                             ; preds = %bb.c
  %2 = fadd double %i.b, 0xC05FBFFFFFFFFFFF
  %i.e = fptosi double %2 to i8
  %.not.i.i.i = icmp sgt i8 %i.e, 1
  br i1 %.not.i.i.i, label %_ZNO5folly8ExpectedIaNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlaE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIaS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIadEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

bb.e:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.g, label %_ZNO5folly8ExpectedIaNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlaE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIaS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = fadd double %i.b, 0x405FFFFFFFFFFFFF
  %i.h = fptosi double %3 to i8
  %.not15.i.i.i = icmp slt i8 %i.h, -1
  br i1 %.not15.i.i.i, label %_ZNO5folly8ExpectedIaNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlaE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIaS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIadEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

_ZN5folly6detail15checkConversionIadEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i: ; preds = %bb.g, %bb.e, %bb.d
  %i.i = fptosi double %i.b to i8                 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE2EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 19) i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #40 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.d, label %_ZNO5folly8ExpectedIsNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlsE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIsS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.d, !prof !9246

bb.d:                                             ; preds = %bb.c
  %2 = fadd double %i.b, 0xC0DFFFBFFFFFFFFF
  %i.e = fptosi double %2 to i16
  %.not.i.i.i = icmp sgt i16 %i.e, 1
  br i1 %.not.i.i.i, label %_ZNO5folly8ExpectedIsNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlsE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIsS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIsdEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

bb.e:                                             ; preds = %bb.b
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.g, label %_ZNO5folly8ExpectedIsNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlsE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIsS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = fadd double %i.b, 0x40DFFFFFFFFFFFFF
  %i.h = fptosi double %3 to i16
  %.not15.i.i.i = icmp slt i16 %i.h, -1
  br i1 %.not15.i.i.i, label %_ZNO5folly8ExpectedIsNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUlsE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIsS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIsdEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

_ZN5folly6detail15checkConversionIsdEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i: ; preds = %bb.g, %bb.e, %bb.d
  %i.i = fptosi double %i.b to i16                ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE4EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 19) i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #40 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.d, label %_ZNO5folly8ExpectedIlNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUllE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.d, !prof !9246

bb.d:                                             ; preds = %bb.c
  %2 = fadd double %i.b, 0xC3DFFFFFFFFFFFFF
  %i.e = fptosi double %2 to i64
  %.not.i.i.i = icmp sgt i64 %i.e, 1023
  br i1 %.not.i.i.i, label %_ZNO5folly8ExpectedIlNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUllE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

bb.e:                                             ; preds = %bb.b
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.g, label %_ZNO5folly8ExpectedIlNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUllE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = fadd double %i.b, 0x43DFFFFFFFFFFFFF
  %i.h = fptosi double %3 to i64
  %.not15.i.i.i = icmp slt i64 %i.h, -1024
  br i1 %.not15.i.i.i, label %_ZNO5folly8ExpectedIlNS_14ConversionCodeEE4thenIJZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS5_4exec13GenericWriterEEUllE_ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSQ_.exit, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i: ; preds = %bb.g, %bb.e, %bb.d
  %i.i = fptosi double %i.b to i64                ; 2 uses
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE7EEEvRKNS0_10BaseVectorERS4_RKS1_RS9_EUlT_E0_ZNKS7_ILS8_7EEEvSB_SC_SE_SF_EUliE_EEvSE_SG_T0_EUlSG_E_EEvSG_:bb.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE7EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE(ptr noundef nonnull byval(%"class.simdjson::padded_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #41 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.simdjson::simdjson_result", align 8 ; 11 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::document", align 8 ; 15 uses
end_hunk_13
begin_hunk_14_@llvm.ceil.f64
declare double @llvm.ceil.f64(double) #31

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #42

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 18) i32 @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE(ptr noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0, ptr %.8.val.0.val, i32 %.24.val.0.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hp, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE3EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ar, !prof !9246

bb.ar:                                            ; preds = %bb.aq
  %3 = fadd double %i.hn, 0xC1DFFFFFFFBFFFFF
  %i.hq = fptosi double %3 to i32
  %.not.i.i.i.i.i = icmp sgt i32 %i.hq, 1
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE3EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIidEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ap
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hs, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE3EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %4 = fadd double %i.hn, 0x41DFFFFFFFFFFFFF
  %i.ht = fptosi double %4 to i32
  %.not15.i.i.i.i.i = icmp slt i32 %i.ht, -1
  br i1 %.not15.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE3EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIidEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

_ZN5folly6detail15checkConversionIidEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i: ; preds = %bb.au, %bb.as, %bb.ar
  %i.hu = fptosi double %i.hn to i32              ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hp, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE1EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ar, !prof !9246

bb.ar:                                            ; preds = %bb.aq
  %3 = fadd double %i.hn, 0xC05FBFFFFFFFFFFF
  %i.hq = fptosi double %3 to i8
  %.not.i.i.i.i.i = icmp sgt i8 %i.hq, 1
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE1EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIadEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ap
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hs, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE1EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %4 = fadd double %i.hn, 0x405FFFFFFFFFFFFF
  %i.ht = fptosi double %4 to i8
  %.not15.i.i.i.i.i = icmp slt i8 %i.ht, -1
  br i1 %.not15.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE1EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIadEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

_ZN5folly6detail15checkConversionIadEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i: ; preds = %bb.au, %bb.as, %bb.ar
  %i.hu = fptosi double %i.hn to i8               ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hp, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE2EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ar, !prof !9246

bb.ar:                                            ; preds = %bb.aq
  %3 = fadd double %i.hn, 0xC0DFFFBFFFFFFFFF
  %i.hq = fptosi double %3 to i16
  %.not.i.i.i.i.i = icmp sgt i16 %i.hq, 1
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE2EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIsdEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ap
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hs, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE2EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %4 = fadd double %i.hn, 0x40DFFFFFFFFFFFFF
  %i.ht = fptosi double %4 to i16
  %.not15.i.i.i.i.i = icmp slt i16 %i.ht, -1
  br i1 %.not15.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE2EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIsdEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

_ZN5folly6detail15checkConversionIsdEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i: ; preds = %bb.au, %bb.as, %bb.ar
  %i.hu = fptosi double %i.hn to i16              ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hp, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ar, !prof !9246

bb.ar:                                            ; preds = %bb.aq
  %3 = fadd double %i.hn, 0xC3DFFFFFFFFFFFFF
  %i.hq = fptosi double %3 to i64
  %.not.i.i.i.i.i = icmp sgt i64 %i.hq, 1023
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ap
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br i1 %i.hs, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %4 = fadd double %i.hn, 0x43DFFFFFFFFFFFFF
  %i.ht = fptosi double %4 to i64
  %.not15.i.i.i.i.i = icmp slt i64 %i.ht, -1024
  br i1 %.not15.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE4EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i

_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i.i: ; preds = %bb.au, %bb.as, %bb.ar
  %i.hu = fptosi double %i.hn to i64              ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 18) i32 @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE(ptr noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #41 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !9819 ; 20 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_23
begin_hunk_24_@_ZN5folly6detail15str_to_integralInEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE
declare void @_ZN5folly6detail15str_to_integralInEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::Expected.2357") align 16, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE32EvE5applyES6_RNS0_4exec13GenericWriterE(ptr noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #41 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.2418", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_24
begin_hunk_25_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE32EEEvRKNS0_10BaseVectorERS4_RKS1_RS9_EUlT_E0_ZNKS7_ILS8_32EEEvSB_SC_SE_SF_EUliE_EEvSE_SG_T0_EUlSG_E_EEvSG_:bb.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE32EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE(ptr noundef nonnull byval(%"class.simdjson::padded_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #41 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.2418", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_25
begin_hunk_26_@llvm.vector.reduce.add.v4i32
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #38 = { nofree nounwind }
attributes #39 = { nounwind }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #43 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #44 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nounwind willreturn memory(argmem: read) }
end_hunk_26
