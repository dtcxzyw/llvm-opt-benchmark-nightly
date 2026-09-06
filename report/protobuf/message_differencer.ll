Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/message_differencer?download=true
inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0
@_ZTSPFvPSt6vectorIiSaIiEES2_E = linkonce_odr constant [26 x i8] c"PFvPSt6vectorIiSaIiEES2_E\00", comdat, align 1
@_ZTIFvPSt6vectorIiSaIiEES2_E = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFvPSt6vectorIiSaIiEES2_E }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFvPSt6vectorIiSaIiEES2_E = linkonce_odr constant [25 x i8] c"FvPSt6vectorIiSaIiEES2_E\00", comdat, align 1
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 8, i32 16, i32 16, i16 8, i8 1, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashES8_EEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE }, comdat, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 8, i32 16, i32 16, i16 8, i8 1, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashES8_EEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvST_PFvST_hmmE }, comdat, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 8, i32 8, i32 8, i16 8, i8 1, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashES8_EEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE }, comdat, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 32, i32 32, i32 32, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19transfer_n_slots_fnEPvSF_SF_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSK_PFvSK_hmmE }, comdat, align 8
@.str.77 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@"_ZTIZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_E3$_0" }, align 8
@"_ZTSZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_E3$_0" = internal constant [200 x i8] c"ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_E3$_0\00", align 1
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 16, i32 32, i32 32, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm32EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE }, comdat, align 8
@_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_ = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_ }, comdat, align 8
@_ZTSZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_ = linkonce_odr hidden constant [210 x i8] c"ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_\00", comdat, align 1
@_ZN4absl12lts_2025051216numbers_internal9kHexTableE = external local_unnamed_addr constant [513 x i8], align 16

@_ZN6google8protobuf4util18MessageDifferencer21MapEntryKeyComparatorC1EPS2_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer21MapEntryKeyComparatorC2EPS2_
@_ZN6google8protobuf4util18MessageDifferencerC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencerC2Ev
@_ZN6google8protobuf4util18MessageDifferencerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencerD2Ev
@_ZN6google8protobuf4util18MessageDifferencer8ReporterC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer8ReporterC2Ev
@_ZN6google8protobuf4util18MessageDifferencer8ReporterD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer8ReporterD2Ev
@_ZN6google8protobuf4util18MessageDifferencer16MapKeyComparatorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer16MapKeyComparatorC2Ev
@_ZN6google8protobuf4util18MessageDifferencer16MapKeyComparatorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer16MapKeyComparatorD2Ev
@_ZN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaD2Ev
@_ZN6google8protobuf4util18MessageDifferencer14StreamReporterC1EPNS0_2io20ZeroCopyOutputStreamE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer14StreamReporterC2EPNS0_2io20ZeroCopyOutputStreamE
@_ZN6google8protobuf4util18MessageDifferencer14StreamReporterC1EPNS0_2io7PrinterE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer14StreamReporterC2EPNS0_2io7PrinterE
@_ZN6google8protobuf4util18MessageDifferencer14StreamReporterD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf4util18MessageDifferencer14StreamReporterD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf4util37MatchIndicesPostProcessorForSmartListEPSt6vectorIiSaIiEES5_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %_ZNSt6vectorIiSaIiEE2atEm.exit.lr.ph

_ZNSt6vectorIiSaIiEE2atEm.exit.lr.ph:             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt6vectorIiSaIiEE2atEm.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit19, %bb.a
  ret void

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit.lr.ph, %_ZNSt6vectorIiSaIiEE2atEm.exit19
  %.028 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE2atEm.exit.lr.ph ], [ %i.v, %_ZNSt6vectorIiSaIiEE2atEm.exit19 ] ; 2 uses
  %.01527 = phi i32 [ -1, %_ZNSt6vectorIiSaIiEE2atEm.exit.lr.ph ], [ %.1, %_ZNSt6vectorIiSaIiEE2atEm.exit19 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.028 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20   ; 4 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIiSaIiEE2atEm.exit19, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  %i.l = icmp slt i32 %.01527, 0
  %i.m = icmp samesign ugt i32 %i.j, %.01527
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE2atEm.exit19, label %_ZNSt6vectorIiSaIiEE2atEm.exit21

_ZNSt6vectorIiSaIiEE2atEm.exit21:                 ; preds = %bb.b
  %i.n = zext nneg i32 %i.j to i64                ; 3 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.p = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  %.not.i.i22 = icmp ugt i64 %i.t, %i.n
  br i1 %.not.i.i22, label %_ZNSt6vectorIiSaIiEE2atEm.exit25, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %i.n, i64 noundef %i.t) #39
  unreachable

_ZNSt6vectorIiSaIiEE2atEm.exit25:                 ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit21
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  store i32 -1, ptr %i.u, align 4, !tbaa !20
  store i32 -1, ptr %i.i, align 4, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE2atEm.exit19

_ZNSt6vectorIiSaIiEE2atEm.exit19:                 ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE2atEm.exit25, %_ZNSt6vectorIiSaIiEE2atEm.exit
  %.1 = phi i32 [ %.01527, %_ZNSt6vectorIiSaIiEE2atEm.exit ], [ %.01527, %_ZNSt6vectorIiSaIiEE2atEm.exit25 ], [ %i.j, %bb.b ]
  %i.v = add nuw i64 %.028, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %_ZNSt6vectorIiSaIiEE2atEm.exit, !llvm.loop !305
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf4util16AddSpecificIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr nofree noundef writeonly captures(none) initializes((40, 44)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.e = extractvalue { ptr, ptr } %i.d, 1
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.g, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.h, align 8, !tbaa !34
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf4util19AddSpecificNewIndexEPNS1_18MessageDifferencer13SpecificFieldERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr nofree noundef writeonly captures(none) initializes((44, 48)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.e = extractvalue { ptr, ptr } %i.d, 1
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i32 noundef %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.h, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer21MapEntryKeyComparatorC2EPS2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf4util18MessageDifferencer21MapEntryKeyComparatorE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer16MapKeyComparatorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf4util18MessageDifferencer16MapKeyComparatorE, i64 16), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf4util18MessageDifferencer21MapEntryKeyComparator7IsMatchERKNS0_7MessageES6_iRKSt6vectorINS2_13SpecificFieldESaIS8_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.43", align 8    ; 16 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = tail call noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i32 noundef 1) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = extractvalue { ptr, ptr } %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.c)
  br i1 %i.k, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.b
  %.pre35 = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi ptr [ %.pre35, %._crit_edge ], [ %i.e, %bb.a ]
  %i.m = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer9IsIgnoredERKNS0_7MessageES5_PKNS0_15FieldDescriptorERKSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106  ; 3 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !107    ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = sdiv exact i64 %i.s, 96
  %i.t = icmp ugt i64 %6, 96076792050570581
  br i1 %i.t, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i, !prof !108

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #41
  %.pre36 = load ptr, ptr %4, align 8, !tbaa !109
  %.pre37 = load ptr, ptr %i.n, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.v = phi ptr [ %i.o, %bb.c ], [ %.pre37, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.p, %bb.c ], [ %.pre36, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.x = phi ptr [ null, %bb.c ], [ %i.u, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !110
  %.not7.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.08.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !116
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !106
  br i1 %i.m, label %bb.h, label %bb.k

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106 ; 3 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !107   ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %7 = sdiv exact i64 %i.ai, 96
  %i.aj = icmp ugt i64 %7, 96076792050570581
  br i1 %i.aj, label %.noexc.i.i28, label %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i21, !prof !108

.noexc.i.i28:                                     ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i21: ; preds = %bb.f
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #41
  %.pre = load ptr, ptr %4, align 8, !tbaa !109
  %.pre34 = load ptr, ptr %i.ad, align 8, !tbaa !109
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i21, %.critedge
  %i.al = phi ptr [ %i.ae, %.critedge ], [ %.pre34, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i21 ] ; 2 uses
  %i.am = phi ptr [ %i.af, %.critedge ], [ %.pre, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i21 ] ; 2 uses
  %i.an = phi ptr [ null, %.critedge ], [ %i.ak, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i21 ] ; 4 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110
  %.not7.i.i.i.i.i22 = icmp eq ptr %i.am, %i.al
  br i1 %.not7.i.i.i.i.i22, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit29, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i23
  %.09.i.i.i.i.i24 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i23 ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i25 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i23 ], [ %i.am, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.09.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.08.i.i.i.i.i25, i64 96, i1 false), !tbaa.struct !116
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i25, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i24, i64 96 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i.i.i26, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit29, label %.lr.ph.i.i.i.i.i23, !llvm.loop !0

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit29: ; preds = %.lr.ph.i.i.i.i.i23, %bb.g
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.an, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i.i23 ]
  store ptr %.0.lcssa.i.i.i.i.i27, ptr %i.ao, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit29, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.au = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7CompareERKNS0_7MessageES5_iPSt6vectorINS2_13SpecificFieldESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(408) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %5, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.av

bb.k:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.bd = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer34CompareFieldValueUsingParentFieldsERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEiiPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %i.c, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k, %bb.h
  %.0 = phi i1 [ %i.au, %bb.h ], [ %i.bd, %bb.k ]
  %i.be = load ptr, ptr %5, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit31, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit31

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit31: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret i1 %.0
}

declare noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6google8protobuf4util18MessageDifferencer5scopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !103
  ret i32 %i.b
}

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer9IsIgnoredERKNS0_7MessageES5_PKNS0_15FieldDescriptorERKSt6vectorINS2_13SpecificFieldESaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load i64, ptr %i.e, align 8, !tbaa !118
  %.not.i.i.i.i.i = icmp ugt i64 %i.f, 131071
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %3
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load i64, ptr %i.s, align 8, !tbaa !118, !noalias !308
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !119 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i6.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.at, %bb.f ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.as, %bb.f ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.b ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !119 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.b
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112
  %i.an = icmp eq ptr %i.am, %3
  br i1 %i.an, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit, label %bb.e, !prof !120

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not43.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not43.i.i.i.i, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, !prof !108

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.d, !llvm.loop !1

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, label %.loopexit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !121 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !121 ; 2 uses
  %.not2021 = icmp eq ptr %i.av, %i.ax
  br i1 %.not2021, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, %.lr.ph
  %.sroa.011.022 = phi ptr [ %i.bd, %.lr.ph ], [ %i.av, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.011.022, align 8, !tbaa !123 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.bd, %i.ax
  %or.cond30 = select i1 %i.bc, i1 true, i1 %.not20
  br i1 %or.cond30, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread, %bb.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit
  %.3 = phi i1 [ true, %bb.b ], [ true, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit ], [ false, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf15FieldDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE8containsIS8_EEbRKT_.exit.thread ], [ %i.bc, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 96
  %i.g = icmp ugt i64 %2, 96076792050570581
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i, !prof !108

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !110
  %i.m = load ptr, ptr %1, align 8, !tbaa !109    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6google8protobuf4util18MessageDifferencer13SpecificFieldESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.08.i.i.i.i, i64 96, i1 false), !tbaa.struct !116
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6google8protobuf4util18MessageDifferencer13SpecificFieldESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6google8protobuf4util18MessageDifferencer13SpecificFieldESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7CompareERKNS0_7MessageES5_iPSt6vectorINS2_13SpecificFieldESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.79", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.79", align 8 ; 8 uses
  %7 = alloca %"class.std::vector.61", align 8    ; 9 uses
  %8 = alloca %"class.std::vector.61", align 8    ; 9 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.e, align 1 ; 2 uses
  %i.f = zext i16 %.0.copyload.i.i.i to i64       ; 3 uses
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZN6google8protobuf8internal16kAnyFullTypeNameE) #40
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %bb.b, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i16 %.0.copyload.i.i.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull @_ZN6google8protobuf8internal16kAnyFullTypeNameE, i64 %i.f)
  %i.l = icmp eq i32 %bcmp.i, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr null, ptr %5, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 8, !tbaa !311
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.n = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer14UnpackAnyField9UnpackAnyERKNS0_7MessageEPSt10unique_ptrIS4_St14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  br i1 %i.n, label %bb.d, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit45

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer14UnpackAnyField9UnpackAnyERKNS0_7MessageEPSt10unique_ptrIS4_St14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.q = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %6, align 8, !tbaa !111    ; 4 uses
  %i.s = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = extractvalue { ptr, ptr } %i.q, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 0
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %3, 1
  %i.x = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7CompareERKNS0_7MessageES5_iPSt6vectorINS2_13SpecificFieldESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef %i.w, ptr noundef %4)
          to label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44 unwind label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.i, %bb.d, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %6, align 8, !tbaa !111    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i: ; preds = %bb.j
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #40, !inline_history !309
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.ad = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i40 = icmp eq ptr %i.ad, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i41

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i41: ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #40, !inline_history !309
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit42

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit42: ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.w

bb.k:                                             ; preds = %bb.e
  %.pr.pre = load ptr, ptr %6, align 8, !tbaa !111 ; 2 uses
  %.not.i43 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44: ; preds = %bb.i, %bb.h, %bb.k
  %.02865 = phi i1 [ false, %bb.k ], [ false, %bb.h ], [ true, %bb.i ]
  %.03464 = phi i1 [ undef, %bb.k ], [ undef, %bb.h ], [ %i.x, %bb.i ]
  %i.ah = phi ptr [ %.pr.pre, %bb.k ], [ %i.r, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #40, !inline_history !309
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit45

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit45: ; preds = %bb.c, %bb.k, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44
  %.02859 = phi i1 [ %.02865, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44 ], [ false, %bb.k ], [ false, %bb.c ]
  %.03458 = phi i1 [ %.03464, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i44 ], [ undef, %bb.k ], [ undef, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.al = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i46 = icmp eq ptr %i.al, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit48, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i47

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i47: ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit45
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #40, !inline_history !309
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit48

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit48: ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit45, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br i1 %.02859, label %bb.v, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !127
  %.not = icmp eq i32 %i.aq, 1
  br i1 %.not, label %.thread66, label %bb.l

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %i.ar = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.as = extractvalue { ptr, ptr } %i.ar, 1
  %i.at = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.au = extractvalue { ptr, ptr } %i.at, 1
  %i.av = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.aw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ax = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20CompareUnknownFieldsERKNS0_7MessageES5_RKNS0_15UnknownFieldSetES8_PSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef %4)
  br i1 %i.ax, label %.thread66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %0, align 8, !tbaa !128
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.v, label %.thread66

.thread66:                                        ; preds = %bb.m, %bb.l, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %.2 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread ], [ true, %bb.l ], [ false, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZN6google8protobuf4util18MessageDifferencer14RetrieveFieldsERKNS0_7MessageEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.61") align 8 %7, ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZN6google8protobuf4util18MessageDifferencer14RetrieveFieldsERKNS0_7MessageEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.61") align 8 %8, ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.r
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util18MessageDifferencer37TreatAsMapWithMultipleFieldPathsAsKeyEPKNS0_15FieldDescriptorERKSt6vectorIS6_IS5_SaIS5_EESaIS8_EE:bb.a
  %i.fw = select i1 %i.fu, i64 1152921504606846975, i64 %i.fv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fx = shl nuw nsw i64 %i.fw, 3
  %i.fy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #41 ; 4 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 2 uses
  store ptr %i.fg, ptr %i.fz, align 8, !tbaa !172
  %i.ga = icmp sgt i64 %i.fq, 0
  br i1 %i.ga, label %bb.ai, label %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.ai:                                            ; preds = %_ZNKSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr align 8 %i.fn, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.ai, %_ZNKSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  %i.gc = load ptr, ptr %i.fk, align 8, !tbaa !165
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %i.gd, %i.fp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.ge) #42
  br label %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.fy, ptr %i.fh, align 8, !tbaa !164
  store ptr %i.gb, ptr %i.fi, align 8, !tbaa !186
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gf, ptr %i.fk, align 8, !tbaa !165
  br label %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.af, %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !117, !noalias !435 ; 2 uses
  %i.gi = icmp ne i64 %i.gh, 0
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp ult i64 %i.gh, 2
  br i1 %i.gj, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE9push_backERKS5_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !118, !noalias !437
  %.not.i.i.i.i.i.i = icmp ult i64 %i.gl, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 131072, ptr %i.gk, align 8, !tbaa !148, !noalias !437
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE26find_or_prepare_insert_sooIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !112, !noalias !437 ; 2 uses
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !437 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE26find_or_prepare_insert_sooIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gr = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gs = xor i64 %i.gr, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gt = mul i64 %i.gs, -2543921745674291987
  %i.gu = tail call noundef i64 @llvm.bswap.i64(i64 %i.gt)
  %i.gv = xor i64 %i.gu, %i.gr
  %i.gw = mul i64 %i.gv, 6679450291180483821
  %i.gx = lshr i64 %i.gw, 56
  %i.gy = trunc nuw i64 %i.gx to i8
  %i.gz = and i8 %i.gy, 127
  %i.ha = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.hb = xor i64 %i.ha, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.hc = mul i64 %i.hb, -2543921745674291987
  %i.hd = tail call noundef i64 @llvm.bswap.i64(i64 %i.hc)
  %i.he = xor i64 %i.hd, %i.ha
  %i.hf = mul i64 %i.he, -2543921745674291987
  %i.hg = tail call noundef i64 @llvm.bswap.i64(i64 %i.hf)
  %i.hh = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.hg, i8 noundef signext %i.gz), !noalias !437
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hi, align 8, !tbaa !119, !noalias !437
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.hh
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE26find_or_prepare_insert_sooIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE26find_or_prepare_insert_sooIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %.sink16.i.i.i.i.i = phi ptr [ %i.hj, %bb.an ], [ %i.gm, %bb.al ], [ %i.gn, %bb.am ]
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.an ], [ 1, %bb.al ], [ 0, %bb.am ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !437
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE22find_or_prepare_insertIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i

bb.ao:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util18MessageDifferencer16MapKeyComparatorESaIS5_EE9push_backERKS5_.exit
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.359") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !189, !range !178, !alias.scope !438
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE22find_or_prepare_insertIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE22find_or_prepare_insertIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.ao, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE26find_or_prepare_insert_sooIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i
  %i.hk = phi i8 [ %.sink.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE26find_or_prepare_insert_sooIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.i.i.i, %bb.ao ]
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.ap, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE22find_or_prepare_insertIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !438 ; 2 uses
  %i.hm = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !438
  store ptr %i.hm, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !191
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store ptr null, ptr %i.hn, align 8, !tbaa !192
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE22find_or_prepare_insertIS8_EESJ_INSN_8iteratorEbERKT_.exit.i.i.i, %bb.ap
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  store ptr %i.fg, ptr %i.ho, align 8, !tbaa !172
  ret void

bb.aq:                                            ; preds = %.critedge78
  %i.hp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 40) #42
  resume { ptr, i32 } %i.hp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IPKN6google8protobuf15FieldDescriptorESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #42
  br label %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !204
  br label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !202
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #42
  br label %_ZNSt12_Vector_baseISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorC2EPS2_RKSt6vectorIS5_IPKNS0_15FieldDescriptorESaIS8_EESaISA_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !204    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = sdiv exact i64 %i.h, 24
  %i.i = icmp ugt i64 %5, 384307168202282325
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEE8allocateEmPKv.exit.i.i.i.i, !prof !108

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #41
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !202
  %i.o = load ptr, ptr %2, align 8, !tbaa !205
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EES2_IS9_SaIS9_EEEEPS9_ET0_T_SH_SG_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %.noexc27
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !204  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #42
  br label %.body

bb.e:                                             ; preds = %.noexc27
  store ptr %i.q, ptr %i.l, align 8, !tbaa !201
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %bb.f, label %.critedge26, !prof !108

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.51) #44
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #43
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #43
  unreachable

bb.j:                                             ; preds = %.critedge26
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.q
  br i1 %.not, label %._crit_edge, label %.critedge26

._crit_edge:                                      ; preds = %bb.j
  ret void

.critedge26:                                      ; preds = %bb.e, %bb.j
  %.sroa.032.037 = phi ptr [ %i.ab, %bb.j ], [ %i.x, %bb.e ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.032.037, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !203
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.k, label %bb.j, !prof !108

bb.k:                                             ; preds = %.critedge26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.52) #44
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit30 unwind label %bb.n

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit30: ; preds = %bb.l
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #43
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #43
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.z, %bb.h ]
  call void @_ZNSt6vectorIS_IPKN6google8protobuf15FieldDescriptorESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40
  br label %.body

.body:                                            ; preds = %bb.d, %bb.c, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.r, %bb.c ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer28TreatAsMapUsingKeyComparatorEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.359", align 8    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 32
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !108

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 471, ptr noundef nonnull @.str.3) #44
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 24, ptr nonnull @.str.4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.i = xor i64 %i.h, -1
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.h, ptr nonnull %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #43
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #43
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !117  ; 4 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load i64, ptr %i.q, align 8, !tbaa !118
  %.not.i.i.i.i.i = icmp ugt i64 %i.r, 131071
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %1
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.u, i1 false, !prof !449
  br i1 %or.cond, label %bb.k, label %.critedge19, !prof !449

bb.g:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 1, i32 1)
  %i.x = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.y = xor i64 %i.x, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.z = mul i64 %i.y, -2543921745674291987
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %i.z)
  %i.ab = xor i64 %i.aa, %i.x
  %i.ac = mul i64 %i.ab, -2543921745674291987
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !118, !noalias !450
  %i.ag = and i64 %i.af, 65535
  %i.ah = lshr i64 %i.ad, 7
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ad to i8
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util18MessageDifferencer15CompareMapFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE:bb.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 1, i32 1)
  %i.v = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.w = xor i64 %i.v, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  %i.z = xor i64 %i.y, %i.v
  %i.aa = mul i64 %i.z, -2543921745674291987
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !118, !noalias !584
  %i.ae = and i64 %i.ad, 65535
  %i.af = lshr i64 %i.ab, 7
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ab to i8
  %i.ai = and i8 %i.ah, 127
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !119 ; 2 uses
  %i.ak = insertelement <16 x i8> poison, i8 %i.ai, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i6.i.i.i = phi i64 [ %i.ag, %bb.f ], [ %i.bd, %bb.i ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bc, %bb.i ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.l ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 3, i32 1)
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.6.0.i.i.i.i
  %i.ao = load <16 x i8>, ptr %i.an, align 1, !tbaa !119 ; 2 uses
  %i.ap = icmp eq <16 x i8> %i.al, %i.ao
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.az, %bb.h ], [ %i.aq, %bb.g ] ; 3 uses
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = add i64 %.sroa.6.0.i.i.i.i, %i.as
  %i.au = and i64 %i.at, %i.l
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112
  %i.ax = icmp eq ptr %i.aw, %4
  br i1 %i.ax, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit, label %bb.h, !prof !120

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.az = and i16 %i.ay, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.ba = icmp eq <16 x i8> %i.ao, splat (i8 -128)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %.not43.i.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not43.i.i.i.i, label %bb.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit.thread, !prof !108

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bc = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.6.0.i.i.i.i
  br label %bb.g, !llvm.loop !2

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit.thread, label %bb.u

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.e, %.split, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !159
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.u

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !160
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %i.bl = tail call noundef ptr @_ZNK6google8protobuf10Descriptor7map_keyEv(ptr noundef nonnull align 8 dereferenceable(160) %i.bk)
  %i.bm = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %i.bn = tail call noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %i.bp, align 8, !tbaa !119
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.br, align 8, !tbaa !228
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 84
  store i32 -1, ptr %i.bs, align 4, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i8 0, ptr %i.bt, align 8, !tbaa !230
  store ptr %1, ptr %7, align 8, !tbaa !144
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.bu, align 8, !tbaa !145
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %3, ptr %i.bv, align 8, !tbaa !146
  store ptr %4, ptr %i.bo, align 8, !tbaa !147
  invoke void @_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(89) %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bw = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer9IsIgnoredERKNS0_7MessageES5_PKNS0_15FieldDescriptorERKSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %i.bw, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer9IsIgnoredERKNS0_7MessageES5_PKNS0_15FieldDescriptorERKSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.bx, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !119
  %i.ca = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer30CompareMapFieldByMapReflectionERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EEPNS1_22DefaultFieldComparatorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %i.bz)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.cc = load ptr, ptr %6, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !110
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.cb

bb.s:                                             ; preds = %bb.m, %bb.o, %bb.p
  %.027 = phi i1 [ %i.ca, %bb.p ], [ undef, %bb.o ], [ undef, %bb.m ]
  %cond = phi i1 [ false, %bb.p ], [ true, %bb.o ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.ci = load ptr, ptr %6, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !110
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #42
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit29

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit29: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.split, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit29, %bb.j, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit.thread, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorEPKNS5_4util18MessageDifferencer16MapKeyComparatorEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8containsIS8_EEbRKT_.exit, %bb.c, %bb.b, %bb.a
  %i.co = call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer18CompareRepeatedRepERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit29, %bb.u
  %.1 = phi i1 [ %i.co, %bb.u ], [ %.027, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EED2Ev.exit29 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20CompareRepeatedFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer18CompareRepeatedRepERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7IsMatchEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorEPKNS0_7MessageESB_iRKSt6vectorINS2_13SpecificFieldESaISD_EEPNS2_8ReporterEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::vector.43", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !107    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %11 = sdiv exact i64 %i.f, 96
  %i.g = icmp ugt i64 %11, 96076792050570581
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i, !prof !108

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
  %.pre = load ptr, ptr %6, align 8, !tbaa !109
  %.pre105 = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre105, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !110
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.08.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !116
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 2, !tbaa !141
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !143
  %.not = icmp eq i32 %i.u, 10
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.v = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer34CompareFieldValueUsingParentFieldsERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEiiPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %8, i32 noundef %9, ptr noundef nonnull %10)
          to label %bb.x unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %.loopexit
  %i.x = load ptr, ptr %0, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152
  store ptr %7, ptr %0, align 8, !tbaa !128
  store ptr null, ptr %i.y, align 8, !tbaa !152
  %i.aa = icmp eq ptr %2, null
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer34CompareFieldValueUsingParentFieldsERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEiiPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %8, i32 noundef %9, ptr noundef nonnull %10)
          to label %bb.w unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.i:                                             ; preds = %bb.f
  %i.ad = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %1, i32 noundef %8)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %1, i32 noundef %9)
          to label %bb.m unwind label %bb.q       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, 16
  %.not102 = icmp eq i8 %i.al, 0                  ; 2 uses
  %spec.select = select i1 %.not102, ptr null, ptr %i.ag ; 2 uses
  %spec.select101 = select i1 %.not102, ptr null, ptr %i.ai ; 2 uses
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !106 ; 19 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i, label %bb.t, label %bb.s

bb.n:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.p:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.u, %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.m
  store ptr %3, ptr %i.am, align 8, !tbaa !111
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !111
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 %5, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !20
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %1, ptr %.sroa.976.0..sroa_idx, align 8, !tbaa !112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !20
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !113
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 %8, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !20
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 %9, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !20
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %spec.select, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !111
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %spec.select101, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !111
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.2092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i32 -1, ptr %.sroa.2092.0..sroa_idx, align 8, !tbaa !20
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 84
  store i32 -1, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !20
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i8 0, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !115
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store ptr %i.at, ptr %i.l, align 8, !tbaa !106
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit

bb.t:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %10, align 8, !tbaa !107  ; 5 uses
  %i.av = ptrtoint ptr %i.am to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775776
  br i1 %i.ay, label %bb.u, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #39
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.az = sdiv exact i64 %i.ax, 96                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 96076792050570581)
  %i.bd = select i1 %i.bb, i64 96076792050570581, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = mul nuw nsw i64 %i.bd, 96
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #41
          to label %.noexc65 unwind label %bb.r   ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax ; 14 uses
  store ptr %3, ptr %i.bg, align 8, !tbaa !111
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %4, ptr %.sroa.7.0..sroa_idx70, align 8, !tbaa !111
  %.sroa.8.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i32 %5, ptr %.sroa.8.0..sroa_idx72, align 8, !tbaa !20
  %.sroa.976.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %1, ptr %.sroa.976.0..sroa_idx77, align 8, !tbaa !112
  %.sroa.11.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i32 -1, ptr %.sroa.11.0..sroa_idx79, align 8, !tbaa !20
  %.sroa.12.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  store i32 0, ptr %.sroa.12.0..sroa_idx81, align 4, !tbaa !113
  %.sroa.13.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
end_hunk_2
begin_hunk_3_@__cxa_begin_catch

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #42
  ret void
}

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !209    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !119
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #42
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #42
  br label %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !204
  br label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPKN6google8protobuf15FieldDescriptorESaIS4_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #42
  br label %_ZNSt6vectorIS_IPKN6google8protobuf15FieldDescriptorESaIS4_EESaIS6_EED2Ev.exit

_ZNSt6vectorIS_IPKN6google8protobuf15FieldDescriptorESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #42, !inline_history !796
  br label %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !204
  br label %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #42, !inline_history !796
  br label %_ZN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorD2Ev.exit

_ZN6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparatorD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparator7IsMatchERKNS0_7MessageES6_iRKSt6vectorINS2_13SpecificFieldESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.012.016 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparator15IsMatchInternalERKNS0_7MessageES6_iRKSt6vectorINS2_13SpecificFieldESaIS8_EERKS7_IPKNS0_15FieldDescriptorESaISF_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.016, i32 noundef 0) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24 ; 2 uses
  %.not = icmp ne ptr %i.f, %i.d
  %or.cond.not = select i1 %i.e, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.e, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf4util18MessageDifferencer30MultipleFieldsMapKeyComparator15IsMatchInternalERKNS0_7MessageES6_iRKSt6vectorINS2_13SpecificFieldESaIS8_EERKS7_IPKNS0_15FieldDescriptorESaISF_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.43", align 8    ; 14 uses
  %i.a = sext i32 %6 to i64                       ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !131
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106  ; 3 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !107    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = sdiv exact i64 %i.j, 96
  %i.k = icmp ugt i64 %8, 96076792050570581
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i, !prof !108

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #41
  %.pre = load ptr, ptr %4, align 8, !tbaa !109
  %.pre98 = load ptr, ptr %i.e, align 8, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre98, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIN6google8protobuf4util18MessageDifferencer13SpecificFieldEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !110
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.08.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !116
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !200
  %i.w = load ptr, ptr %5, align 8, !tbaa !131
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = icmp eq i64 %i.ab, %i.a
  br i1 %i.ac, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 16
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !199
  %i.ai = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer15CompareMapFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull %i.d, ptr noundef nonnull %7)
          to label %_ZN6google8protobuf4util18MessageDifferencer20CompareRepeatedFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 32
  %.not95 = icmp eq i8 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199 ; 2 uses
  br i1 %.not95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer18CompareRepeatedRepERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull %i.d, ptr noundef nonnull %7)
          to label %_ZN6google8protobuf4util18MessageDifferencer20CompareRepeatedFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE.exit unwind label %bb.f, !inline_history !236

bb.i:                                             ; preds = %bb.g
  %i.aq = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer34CompareFieldValueUsingParentFieldsERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEiiPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull %i.d, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %7)
          to label %_ZN6google8protobuf4util18MessageDifferencer20CompareRepeatedFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE.exit unwind label %bb.f

bb.j:                                             ; preds = %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EEC2ERKS6_.exit
  %i.ar = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  %i.at = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.au = extractvalue { ptr, ptr } %i.at, 1      ; 2 uses
  %i.av = invoke noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.d)
          to label %bb.m unwind label %bb.q       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aw = invoke noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.d)
          to label %bb.n unwind label %bb.r       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %or.cond = or i1 %i.av, %i.aw
  br i1 %or.cond, label %bb.s, label %_ZN6google8protobuf4util18MessageDifferencer20CompareRepeatedFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE.exit

bb.o:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.r:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.s:                                             ; preds = %bb.n
  %i.bb = xor i1 %i.av, %i.aw
  br i1 %i.bb, label %_ZN6google8protobuf4util18MessageDifferencer20CompareRepeatedFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !106 ; 14 uses
  %i.bd = load ptr, ptr %i.r, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %1, ptr %i.bc, align 8, !tbaa !111
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !111
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !20
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.d, ptr %.sroa.975.0..sroa_idx, align 8, !tbaa !112
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !119
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store i32 -1, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !20
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 84
  store i32 -1, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !20
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !115
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store ptr %i.be, ptr %i.p, align 8, !tbaa !106
  br label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE9push_backERKS4_.exit

bb.v:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %7, align 8, !tbaa !107   ; 5 uses
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775776
  br i1 %i.bj, label %bb.w, label %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #39
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.bk = sdiv exact i64 %i.bi, 96                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 96076792050570581)
  %i.bo = select i1 %i.bm, i64 96076792050570581, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = mul nuw nsw i64 %i.bo, 96
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #41
          to label %.noexc64 unwind label %bb.aa  ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi ; 9 uses
  store ptr %1, ptr %i.br, align 8, !tbaa !111
  %.sroa.7.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %2, ptr %.sroa.7.0..sroa_idx69, align 8, !tbaa !111
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 %3, ptr %.sroa.8.0..sroa_idx71, align 8, !tbaa !20
  %.sroa.975.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.d, ptr %.sroa.975.0..sroa_idx76, align 8, !tbaa !112
  %.sroa.11.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %.sroa.11.0..sroa_idx78, align 8, !tbaa !119
  %.sroa.15.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.0..sroa_idx86, i8 0, i64 32, i1 false)
  %.sroa.16.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store i32 -1, ptr %.sroa.16.0..sroa_idx87, align 8, !tbaa !20
  %.sroa.17.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.br, i64 84
end_hunk_3
