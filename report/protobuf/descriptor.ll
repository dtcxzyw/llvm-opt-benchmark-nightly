inline.NumInlined: 22184
inline.NumDeleted: 7878
begin_hunk_0_@_ZN6google8protobuf14DescriptorPool6Tables24RollbackToLastCheckpointERNS1_18DeferredValidationE:bb.a

_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE6resizeEm.exit: ; preds = %bb.ay, %bb.az, %bb.ba, %_ZSt8_DestroyIPSt4pairIPKN6google8protobuf10DescriptorEiES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ma = load i32, ptr %i.d, align 4, !tbaa !173
  %i.mb = sext i32 %i.ma to i64                   ; 4 uses
  %.val7.i = load ptr, ptr %i.lz, align 8, !tbaa !81 ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf14DescriptorPool6Tables24RollbackToLastCheckpointERNS1_18DeferredValidationE:bb.a
  br i1 %i.mh, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE6resizeEm.exit
  %i.mi = sub nuw nsw i64 %i.mb, %i.mg            ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !86
  %i.ml = ptrtoint ptr %i.mk to i64
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf14DescriptorPool6Tables24RollbackToLastCheckpointERNS1_18DeferredValidationE:bb.a
  %i.mn = ashr exact i64 %i.mm, 3                 ; 2 uses
  %i.mo = icmp ult i64 %i.mg, 1152921504606846976
  call void @llvm.assume(i1 %i.mo)
  %6 = xor i64 %i.mg, 1152921504606846975         ; 2 uses
  %i.mp = icmp ule i64 %i.mn, %6
  call void @llvm.assume(i1 %i.mp)
  %.not28.i.i = icmp ult i64 %i.mn, %i.mi
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf14DescriptorPool6Tables24RollbackToLastCheckpointERNS1_18DeferredValidationE:bb.a
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf12_GLOBAL__N_114FlatAllocationIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_14SourceCodeInfoENS2_20FileDescriptorTablesENS2_10FeatureSetENS2_14MessageOptionsENS2_12FieldOptionsENS2_11EnumOptionsENS2_16EnumValueOptionsENS2_21ExtensionRangeOptionsENS2_12OneofOptionsENS2_14ServiceOptionsENS2_13MethodOptionsENS2_11FileOptionsEEEENS2_14DescriptorPool6Tables16FlatAllocDeleterEESaISR_EE6resizeEm.exit

bb.bc:                                            ; preds = %bb.bb
  %7 = icmp ult i64 %6, %i.mi
  br i1 %7, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf12_GLOBAL__N_114FlatAllocationIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_14SourceCodeInfoENS2_20FileDescriptorTablesENS2_10FeatureSetENS2_14MessageOptionsENS2_12FieldOptionsENS2_11EnumOptionsENS2_16EnumValueOptionsENS2_21ExtensionRangeOptionsENS2_12OneofOptionsENS2_14ServiceOptionsENS2_13MethodOptionsENS2_11FileOptionsEEEENS2_14DescriptorPool6Tables16FlatAllocDeleterEESaISR_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS0_14FileDescriptorERKNS0_19FileDescriptorProtoE:bb.a
  %i.jh = ashr exact i64 %i.jg, 3
  %i.ji = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jh, i1 true)
  %i.jj = shl nuw nsw i64 %i.ji, 1
  %6 = xor i64 %i.jj, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_T1_"(ptr %.val36, ptr nonnull %.val, i64 noundef %6)
  %i.jk = icmp sgt i64 %i.jg, 128
  %scevgep.i.i.i = getelementptr i8, ptr %.val36, i64 8 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 576460752303423487           ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_8
