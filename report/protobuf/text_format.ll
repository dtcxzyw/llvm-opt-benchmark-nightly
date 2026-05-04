inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetLocationRangeEPKNS0_15FieldDescriptorEi:bb.a
  br i1 %i.an, label %.thread32.i.i.i, label %bb.g, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetTreeForNestedEPKNS0_15FieldDescriptorEi:bb.a
  br i1 %i.ao, label %.thread32.i.i.i, label %bb.g, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.al
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf10TextFormat7Printer25RegisterFieldValuePrinterEPKNS0_15FieldDescriptorEPKNS1_17FieldValuePrinterE:bb.a
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit14 ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !50, !noalias !349, !nonnull !78, !noundef !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !50, !noalias !349
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.af
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc, %bb.e, %bb.d
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf10TextFormat7Printer25RegisterFieldValuePrinterEPKNS0_15FieldDescriptorEPKNS1_21FastFieldValuePrinterE:bb.a
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ac, i8 noundef signext %i.v), !noalias !385 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !385, !nonnull !78, !noundef !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !50, !noalias !385
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ad
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf10TextFormat7Printer22RegisterMessagePrinterEPKNS0_10DescriptorEPKNS1_14MessagePrinterE:bb.a
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ac, i8 noundef signext %i.v), !noalias !414 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !414, !nonnull !78, !noundef !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !50, !noalias !414
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ad
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a
  br i1 %i.cj, label %.thread32.i.i.i, label %bb.v, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf10TextFormat7Printer8PrintAnyERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a
  br i1 %i.cp, label %.thread32.i.i.i.i, label %bb.aj, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cm
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf10TextFormat7Printer10PrintFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE:bb.a
  br i1 %i.ca, label %.thread32.i.i.i.i, label %bb.v, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bx
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE:bb.a
  br i1 %i.an, label %.thread32.i.i.i.i, label %bb.f, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf10TextFormat7Printer14PrintFieldNameERKNS0_7MessageEiiPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE:bb.a
  br i1 %i.bx, label %.thread32.i.i.i.i, label %bb.k, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bu
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE22find_or_prepare_insertISD_EES4_INSL_8iteratorEbERKT_:bb.a
  %i.as = mul i64 %i.ar, -2543921745674291987
  %i.at = tail call noundef i64 @llvm.bswap.i64(i64 %i.as)
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.at, i8 noundef signext %i.af), !noalias !862 ; 2 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !50, !noalias !862, !nonnull !78, !noundef !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !862
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.au
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit: ; preds = %bb.c, %bb.d, %bb.e
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE30find_or_prepare_insert_non_sooISD_EES4_INSL_8iteratorEbERKT_:bb.a
  %i.ba = add i64 %.sroa.7.0, %i.az
  %i.bb = and i64 %i.ba, %i.w
  %i.bc = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i64 %i.bb, i64 %.sroa.15.0) ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.bc
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE30find_or_prepare_insert_non_sooISD_EES4_INSL_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.be, %.thread ], [ %i.bi, %.critedge20 ]
  %.sink75 = phi ptr [ %i.bf, %.thread ], [ %i.an, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_:bb.a
  br i1 %i.bf, label %.thread32.i, label %bb.g, !prof !135

.thread32.i:                                      ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit

bb.g:                                             ; preds = %.lr.ph.i
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_:bb.a
  %i.ba = add i64 %.sroa.7.0, %i.az
  %i.bb = and i64 %i.ba, %i.w
  %i.bc = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i64 %i.bb, i64 %.sroa.15.0) ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.bc
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.be, %.thread ], [ %i.bi, %.critedge20 ]
  %.sink75 = phi ptr [ %i.bf, %.thread ], [ %i.an, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE30find_or_prepare_insert_non_sooIS8_EESN_INSR_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE30find_or_prepare_insert_non_sooIS8_EESN_INSR_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_23
