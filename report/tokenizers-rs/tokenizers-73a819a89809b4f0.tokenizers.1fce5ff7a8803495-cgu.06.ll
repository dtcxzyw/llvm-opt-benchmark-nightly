Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers:bb.a
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !720
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCs5PtHgSLqj5O_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces1_1__NtB3c_16WhitespaceHelperNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @52, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces1_1__NtB26_16WhitespaceHelperNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @52, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtNtB7_5model3BPENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias noundef writable sret([304 x i8]) align 8 captures(address) dereferenceable(304) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serialization10BPEVisitorEB3d_(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(address) dereferenceable(304) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @53, i64 noundef 10)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtNtB7_5model3BPENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBb_(ptr dead_on_unwind noalias noundef writable sret([304 x i8]) align 8 captures(address) dereferenceable(304) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serialization10BPEVisitorEB27_(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(address) dereferenceable(304) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @53, i64 noundef 10)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serializationNtB7_9WordLevelNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serialization16WordLevelVisitorEB3d_(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @54, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serializationNtB7_9WordLevelNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBb_(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serialization16WordLevelVisitorEB27_(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @54, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serializationNtB7_9WordPieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serialization16WordPieceVisitorEB3d_(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @56, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serializationNtB7_9WordPieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBb_(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serialization16WordPieceVisitorEB27_(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @56, i64 noundef 5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB8_6string9MustBeStrTINtNtB8_8alphabet3lenKj4_ETINtB1c_4charKc46_EIB1B_Kc75_EIB1B_Kc73_EIB1B_Kc65_EEEENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB3c_6string9MustBeStrpENtB22_11Deserialize11deserialize16MustBeStrVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 4)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB8_6string9MustBeStrTINtNtB8_8alphabet3lenKj4_ETINtB1c_4charKc46_EIB1B_Kc75_EIB1B_Kc73_EIB1B_Kc65_EEEENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB26_6string9MustBeStrpENtBW_11Deserialize11deserialize16MustBeStrVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 4)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB8_6string9MustBeStrTINtNtB8_8alphabet3lenKjc_ETINtB1c_4charKc42_EIB1B_Kc79_EIB1B_Kc74_EIB1B_Kc65_ETIB1B_Kc46_EIB1B_Kc61_EETIB1B_Kc6c_EB2O_IB1B_Kc62_EB2B_IB1B_Kc63_EIB1B_Kc6b_EEEEENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB3c_6string9MustBeStrpENtB22_11Deserialize11deserialize16MustBeStrVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 12)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB8_6string9MustBeStrTINtNtB8_8alphabet3lenKjc_ETINtB1c_4charKc42_EIB1B_Kc79_EIB1B_Kc74_EIB1B_Kc65_ETIB1B_Kc46_EIB1B_Kc61_EETIB1B_Kc6c_EB2O_IB1B_Kc62_EB2B_IB1B_Kc63_EIB1B_Kc6b_EEEEENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB26_6string9MustBeStrpENtBW_11Deserialize11deserialize16MustBeStrVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 12)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetReEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBQ_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load atomic ptr, ptr @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !721 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1B_7get_src0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.g

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !721, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !721, !nonnull !3, !align !20, !noundef !3
  %i.k = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !721 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !4

bb.c:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.m = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.g

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.0.i1.i = phi ptr [ %i.k, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !3, !noalias !721, !nonnull !3
  %i.p = invoke noundef i64 %i.o(ptr noundef nonnull %i.h)
          to label %.noexc4 unwind label %bb.g, !inline_history !724

.noexc4:                                          ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, i64 noundef %i.p)
          to label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit unwind label %bb.g

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %.noexc4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBO_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f

bb.e:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g, %bb.d
  %.pn10 = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.u, %bb.g ]
  resume { ptr, i32 } %.pn10

bb.g:                                             ; preds = %.noexc4, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsg_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_15WhitespaceSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces5_1__NtB3c_21WhitespaceSplitHelperNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @52, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsg_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_15WhitespaceSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces5_1__NtB26_21WhitespaceSplitHelperNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @52, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderINtNtNtB8_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1Y_10BpeTrainer8do_trains_0INtB10_13CollectResultB1F_EEINtNtB8_8plumbing6FolderRjE12consume_iterINtNtBa_3vec10SliceDrainB47_EEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.3.i = alloca [24 x i8], align 8          ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %3, ptr %i.l, align 8
  %i.m = icmp eq ptr %2, %3
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.c

bb.b:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.n, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.b ], [ %.pn.pn.i, %bb.n ], [ %.pn.pn.i, %bb.f ]
  invoke void @_RNvXsf_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderINtNtNtBG_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2w_10BpeTrainer8do_trains_0INtB1y_13CollectResultB2d_EEEB2C_.exit unwind label %bb.p

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %i.v = phi ptr [ %2, %.lr.ph ], [ %i.bi, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.k, align 8, !alias.scope !725
  %i.x = load ptr, ptr %i.v, align 8, !noalias !725, !nonnull !3, !align !20, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %.val = load i64, ptr %i.x, align 8, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !728, !noalias !731, !nonnull !3, !align !20, !noundef !3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !733
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !737
  store i64 %.val, ptr %i.c, align 8, !noalias !737
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !734, !noalias !739, !nonnull !3, !align !20, !noundef !3
  %i.aa = load i64, ptr %i.z, align 8, !noalias !737, !noundef !3
  %i.ab = icmp ult i64 %.val, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !59

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #29
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !733

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !734, !noalias !739, !nonnull !3, !align !20, !noundef !3
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !737, !noundef !3
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.val
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !737
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !734, !noalias !739, !nonnull !3, !align !20, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !737, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !noalias !737, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !734, !noalias !739, !nonnull !3, !align !740, !noundef !3
  %i.ao = load i32, ptr %i.an, align 4, !noalias !737, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !734, !noalias !739, !nonnull !3, !align !20, !noundef !3
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !737, !noundef !3
  invoke void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word5merge(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.ao, i64 noundef %i.ar)
          to label %.noexc9.i unwind label %.loopexit, !noalias !733

.noexc9.i:                                        ; preds = %bb.e
  %i.as = load ptr, ptr %i.o, align 8, !noalias !737, !nonnull !3, !noundef !3 ; 3 uses
  %i.at = load i64, ptr %i.p, align 8, !noalias !737, !noundef !3 ; 2 uses
  %i.au = icmp ult i64 %i.at, 768614336404564651
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %i.at
  %i.aw = load i64, ptr %i.a, align 8, !range !21, !noalias !737, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !737
  store ptr %i.as, ptr %i.b, align 8, !noalias !737
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !737
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !737
  store ptr %i.av, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !737
  store ptr %i.c, ptr %i.q, align 8, !noalias !737
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTTTmmElEjEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB13_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3b_10BpeTrainer8do_trains_00EE9from_iterB3h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.g unwind label %.loopexit, !noalias !733

bb.f:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %.critedge.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %i.az, %.critedge.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ax = load i64, ptr %i.j, align 8, !range !109, !alias.scope !728, !noalias !731, !noundef !3
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %.body, label %bb.n

.loopexit:                                        ; preds = %bb.e, %.noexc9.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.g:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !741, !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !733
  %i.ay = invoke { ptr, i64 } @_RNvXs5_NtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumerINtB5_15CollectConsumerTTTmmElEjEEINtNtB9_8plumbing17UnindexedConsumerB1e_E14split_off_leftCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.h unwind label %bb.m, !noalias !731 ; 2 uses

.critedge.i:                                      ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ba = extractvalue { ptr, i64 } %i.ay, 0
  %i.bb = extractvalue { ptr, i64 } %i.ay, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !733
  invoke void @_RINvXs2_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtNtBY_7collect8consumer15CollectConsumerBL_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %bb.i unwind label %.critedge.i, !noalias !731

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !733
  %i.bc = load i64, ptr %i.j, align 8, !range !109, !alias.scope !728, !noalias !731, !noundef !3
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !733
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !733
  invoke void @_RNvXs6_NtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTTTmmElEjEEE6reduceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.3.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !733
  br label %bb.o

bb.l:                                             ; preds = %bb.n, %bb.m
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !731
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec8IntoIterTTTmmElEjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #30
          to label %bb.f unwind label %bb.l, !noalias !731

bb.n:                                             ; preds = %bb.f
  invoke void @_RNvXs2_NtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumerINtB5_13CollectResultTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.l, !noalias !731

._crit_edge:                                      ; preds = %bb.o, %bb.a
  invoke void @_RNvXsf_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec10SliceDrainRjEECs2JiOgHzbbc7_10tokenizers.exit6 unwind label %bb.q

bb.o:                                             ; preds = %.noexc, %bb.j
  %i.bg = load ptr, ptr %i.r, align 8, !alias.scope !728, !noalias !731, !noundef !3
  %i.bh = load i64, ptr %i.t, align 8, !alias.scope !728, !noalias !731, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, i64 24, i1 false), !noalias !728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.bg, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %i.bh, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.bi = load ptr, ptr %i.k, align 8, !alias.scope !745, !nonnull !3, !noundef !3 ; 2 uses
  %i.bj = load ptr, ptr %i.l, align 8, !alias.scope !745, !nonnull !3, !noundef !3
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %._crit_edge, label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec10SliceDrainRjEECs2JiOgHzbbc7_10tokenizers.exit6: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderINtNtNtBG_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2w_10BpeTrainer8do_trains_0INtB1y_13CollectResultB2d_EEEB2C_.exit: ; preds = %bb.q, %bb.r, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bm, %bb.r ], [ %i.bm, %bb.q ]
  resume { ptr, i32 } %.pn10

bb.q:                                             ; preds = %._crit_edge
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i64, ptr %1, align 8, !range !109, !alias.scope !747, !noundef !3
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderINtNtNtBG_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2w_10BpeTrainer8do_trains_0INtB1y_13CollectResultB2d_EEEB2C_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs2_NtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumerINtB5_13CollectResultTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderINtNtNtBG_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2w_10BpeTrainer8do_trains_0INtB1y_13CollectResultB2d_EEEB2C_.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderNtNtB8_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1A_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB30_3vec3VecTTTmmElEjEEEEINtNtB8_8plumbing6FolderRjE12consume_iterINtNtBa_3vec10SliceDrainB4N_EEB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.3.i = alloca [24 x i8], align 8          ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %3, ptr %i.k, align 8
  %i.l = icmp eq ptr %2, %3
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.critedge.i, %bb.l, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn.pn.i, %bb.l ], [ %.pn.pn.i, %.critedge.i ]
  invoke void @_RNvXsf_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderNtNtBG_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB28_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3y_3vec3VecTTTmmElEjEEEEEB2e_.exit unwind label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.t = phi ptr [ %2, %.lr.ph ], [ %i.ba, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.j, align 8, !alias.scope !752
  %i.v = load ptr, ptr %i.t, align 8, !noalias !752, !nonnull !3, !align !20, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.val = load i64, ptr %i.v, align 8, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.w = load ptr, ptr %i.m, align 8, !alias.scope !755, !noalias !758, !nonnull !3, !align !20, !noundef !3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !760
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !764
  store i64 %.val, ptr %i.c, align 8, !noalias !764
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !761, !noalias !766, !nonnull !3, !align !20, !noundef !3
  %i.y = load i64, ptr %i.x, align 8, !noalias !764, !noundef !3
  %i.z = icmp ult i64 %.val, %i.y
  br i1 %i.z, label %bb.e, label %bb.d, !prof !59

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #29
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !760

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !761, !noalias !766, !nonnull !3, !align !20, !noundef !3
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !764, !noundef !3
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.val
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !764
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !761, !noalias !766, !nonnull !3, !align !20, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !764, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !764, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !761, !noalias !766, !nonnull !3, !align !740, !noundef !3
  %i.am = load i32, ptr %i.al, align 4, !noalias !764, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !761, !noalias !766, !nonnull !3, !align !20, !noundef !3
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !764, !noundef !3
  invoke void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word5merge(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.am, i64 noundef %i.ap)
          to label %.noexc9.i unwind label %.loopexit, !noalias !760

.noexc9.i:                                        ; preds = %bb.e
  %i.aq = load ptr, ptr %i.n, align 8, !noalias !764, !nonnull !3, !noundef !3 ; 3 uses
  %i.ar = load i64, ptr %i.o, align 8, !noalias !764, !noundef !3 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 768614336404564651
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %i.ar
  %i.au = load i64, ptr %i.a, align 8, !range !21, !noalias !764, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !764
  store ptr %i.aq, ptr %i.b, align 8, !noalias !764
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !764
  store i64 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !764
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !764
  store ptr %i.c, ptr %i.p, align 8, !noalias !764
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecTTTmmElEjEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB13_ENCNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3b_10BpeTrainer8do_trains_00EE9from_iterB3h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.g unwind label %.loopexit, !noalias !760

.critedge.i:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn.pn.i = phi { ptr, i32 } [ %i.aw, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.av = load i64, ptr %i.i, align 8, !range !109, !alias.scope !755, !noalias !758, !noundef !3
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.body, label %bb.l

.loopexit:                                        ; preds = %bb.e, %.noexc9.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.f:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.g:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !760
  invoke void @_RINvXs2_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter16ParallelIterator15drive_unindexedNtNtBY_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.f, !noalias !760

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !760
  %i.ax = load i64, ptr %i.i, align 8, !range !109, !alias.scope !755, !noalias !758, !noundef !3
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !760
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !760
  invoke void @_RNvXsg_NtNtCsgbNVBrIJ05E_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecTTTmmElEjEEEE6reduceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.3.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !760
  br label %bb.m

bb.k:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !758
  unreachable

bb.l:                                             ; preds = %.critedge.i
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.k, !noalias !758

._crit_edge:                                      ; preds = %bb.m, %bb.a
  invoke void @_RNvXsf_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec10SliceDrainRjEECs2JiOgHzbbc7_10tokenizers.exit6 unwind label %bb.o

bb.m:                                             ; preds = %.noexc, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, i64 24, i1 false), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 1, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ba = load ptr, ptr %i.j, align 8, !alias.scope !767, !nonnull !3, !noundef !3 ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !alias.scope !767, !nonnull !3, !noundef !3
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %._crit_edge, label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec10SliceDrainRjEECs2JiOgHzbbc7_10tokenizers.exit6: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void

bb.n:                                             ; preds = %bb.p, %.body
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderNtNtBG_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB28_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3y_3vec3VecTTTmmElEjEEEEEB2e_.exit: ; preds = %bb.o, %bb.p, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.be, %bb.p ], [ %i.be, %bb.o ]
  resume { ptr, i32 } %.pn10

bb.o:                                             ; preds = %._crit_edge
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load i64, ptr %1, align 8, !range !109, !alias.scope !769, !noundef !3
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderNtNtBG_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB28_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3y_3vec3VecTTTmmElEjEEEEEB2e_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderNtNtBG_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB28_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3y_3vec3VecTTTmmElEjEEEEEB2e_.exit unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map7FlatMapINtNtNtBa_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1B_10BpeTrainer8do_trains_0ENtB8_16ParallelIterator7collectINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEEB1H_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXNtNtCsgbNVBrIJ05E_5rayon4iter13from_par_iterINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEINtB5_20FromParallelIteratorB1h_E13from_par_iterINtNtB5_8flat_map7FlatMapINtNtNtB7_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3o_10BpeTrainer8do_trains_0EEB3u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtCshIVG2s6J0nm_9rand_core11SeedableRng12try_from_rngNtNtBV_2os5OsRngECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsv_NtCs4NRVxsYgnAr_4core5arrayAhj20_NtNtB7_7default7Default7defaultCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.b)
  %i.c = load atomic ptr, ptr @_RNvNtNtCs92LSZ8LqIn5_9getrandom8backends27linux_android_with_fallback12GETRANDOM_FN acquire, align 8, !noalias !774 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RNvNtNtCs92LSZ8LqIn5_9getrandom8backends27linux_android_with_fallback4init(), !noalias !774
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.02.0.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %bb.g
  %.sroa.0.030.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.g ], [ %i.b, %bb.c ] ; 3 uses
  %.sroa.6.029.i.i.i.i = phi i64 [ %.sroa.6.1.i.i.i.i, %bb.g ], [ 32, %bb.c ] ; 4 uses
  %i.g = call noundef i64 %.sroa.02.0.i.i.i(ptr noundef nonnull %.sroa.0.030.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.029.i.i.i.i, i32 noundef 0) #28, !noalias !781, !inline_history !784 ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.i = icmp eq i64 %i.g, -1
  br i1 %i.i, label %bb.f, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.j = icmp ult i64 %.sroa.6.029.i.i.i.i, %i.g
  br i1 %i.j, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.k = call noundef i32 @_RNvNtNtNtCs92LSZ8LqIn5_9getrandom8backends8use_file9util_libc13last_os_error(), !noalias !781 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, -4
  br i1 %.not.i.i.i.i, label %bb.g, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread, !prof !14

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.6.1.i.i.i.i = phi i64 [ %i.m, %bb.h ], [ %.sroa.6.029.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.n, %bb.h ], [ %.sroa.0.030.i.i.i.i, %bb.f ]
  %i.l = icmp eq i64 %.sroa.6.1.i.i.i.i, 0
  br i1 %i.l, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread8, label %.preheader.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.m = sub nuw nsw i64 %.sroa.6.029.i.i.i.i, %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i, i64 %i.g
  br label %bb.g

_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit: ; preds = %bb.c
  %i.o = call noundef i32 @_RNvNtNtCs92LSZ8LqIn5_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) 32) ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread8, label %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread

_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread: ; preds = %bb.f, %bb.d, %bb.e, %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit
  %.sroa.0.0.i.i.i7 = phi i32 [ %i.o, %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit ], [ 65538, %bb.e ], [ 65538, %bb.d ], [ %i.k, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.i.i.i7, ptr %i.p, align 4
  br label %bb.i

_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread8: ; preds = %bb.g, %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvNtCse8lV02w4rfA_11rand_chacha4guts11init_chacha(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @208, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread8, %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread
  %storemerge = phi i32 [ 1, %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread ], [ 0, %_RNvXs1_NtCshIVG2s6J0nm_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes.exit.thread8 ]
  store i32 %storemerge, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serialization10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18SeqRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serialization10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serialization16WordPieceVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18SeqRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serialization16WordPieceVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces1_1__NtBa_16WhitespaceHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1B_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %spec.select.i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.b, align 1, !alias.scope !785
  store i8 0, ptr %0, align 8, !alias.scope !785
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces3_1__NtBa_19WhitespaceSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1E_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces3_1__NtB8_19WhitespaceSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1C_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevelNtNtB9_9tokenizer5Model4save:bb.a

bb.z:                                             ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #30
          to label %.body54 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.w
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 24, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ac, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68, !prof !19

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc67 unwind label %bb.v

.noexc67:                                         ; preds = %bb.ac
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.525.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread100 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread100:                                       ; preds = %bb.ad
  %.val62103 = load i32, ptr %i.i, align 4, !range !244, !noundef !3
  %i.bm = call noundef i32 @close(i32 noundef %.val62103) #28 ; 0 uses
  br label %.body83

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.af unwind label %bb.h

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val61 = load i32, ptr %i.i, align 4, !range !244, !noundef !3
  %i.bn = call noundef i32 @close(i32 noundef %.val61) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit88 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body83, %bb.ar, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.ar ], [ %i.bo, %bb.ag ], [ %.pn52, %.body83 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit88: ; preds = %bb.af, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ai:                                            ; preds = %bb.x
  store ptr %i.bb, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.br, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i77 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread104 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread104:                                       ; preds = %bb.aj
  %.val62107 = load i32, ptr %i.i, align 4, !range !244, !noundef !3
  %i.bu = call noundef i32 @close(i32 noundef %.val62107) #28 ; 0 uses
  br label %.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i77: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit82 unwind label %.thread108

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit82: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i77, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val60 = load i32, ptr %i.i, align 4, !range !244, !noundef !3
  %i.bv = call noundef i32 @close(i32 noundef %.val60) #28 ; 0 uses
  br label %bb.an

bb.al:                                            ; preds = %.thread, %.body54, %.body83
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.am:                                            ; preds = %bb.q
  store ptr %i.av, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @94, ptr %i.by, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit82

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit82, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body83 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.an
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f

bb.aq:                                            ; preds = %bb.k
  store ptr %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.cc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit88 unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread:                                          ; preds = %bb.m, %bb.i, %.thread108, %.thread104, %.thread96, %.thread92
  %.pn5091 = phi { ptr, i32 } [ %i.bs, %.thread104 ], [ %lpad.thr_comm, %.thread108 ], [ %eh.lpad-body55, %.thread92 ], [ %i.ay, %.thread96 ], [ %i.ag, %bb.i ], [ %i.an, %bb.m ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.k) #30
          to label %.body83 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevelNtNtB9_9tokenizer5Model8tokenize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %4 = alloca [24 x i8], align 8                  ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.011 = alloca [24 x i8], align 8          ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1554, !noalias !1557, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold47, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1565, !noalias !1566, !noundef !3 ; 4 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1565, !noalias !1566, !nonnull !3, !noundef !3 ; 4 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !1569 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !1572
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.g, !prof !4

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.ai = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 48, i64 noundef range(i64 1, 9) 8) #28 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.f, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !19

bb.f:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %4, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.k

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ak = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.al = lshr i64 %i.ak, 57
  %i.am = trunc nuw nsw i64 %i.al to i8
  %i.an = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i28 = phi i64 [ 0, %bb.g ], [ %i.bf, %bb.j ]
  %.pn.i.i.i29 = phi i64 [ %i.ak, %bb.g ], [ %i.bg, %bb.j ]
  %.sroa.01.0.i.i.i30 = and i64 %.pn.i.i.i29, %i.k ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i30
  %.sroa.0.0.copyload.i26.i.i31 = load <16 x i8>, ptr %i.ap, align 1, !noalias !1575 ; 2 uses
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i31, %i.ao
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not.i.not32.i.i32 = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not32.i.i32, label %._crit_edge.i.i36, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i34 = phi i16 [ %i.be, %bb.i ], [ %i.ar, %bb.h ] ; 3 uses
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i34, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.01.0.i.i.i30, %i.at
  %i.av = and i64 %i.au, %i.k
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  %i.az = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay), !noalias !1583
  br i1 %i.az, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.i, !prof !59

._crit_edge.i.i36:                                ; preds = %bb.i, %bb.h
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i31, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %select.unfold47, !prof !4

bb.i:                                             ; preds = %.lr.ph.i.i33
  %i.bd = add i16 %.sroa.06.0.i33.i.i34, -1
  %i.be = and i16 %i.bd, %.sroa.06.0.i33.i.i34    ; 2 uses
  %.not.i.not.i.i35 = icmp eq i16 %i.be, 0
  br i1 %.not.i.not.i.i35, label %._crit_edge.i.i36, label %.lr.ph.i.i33

bb.j:                                             ; preds = %._crit_edge.i.i36
  %i.bf = add i64 %.sroa.9.0.i.i.i28, 16          ; 2 uses
  %i.bg = add i64 %.sroa.01.0.i.i.i30, %i.bf
  br label %bb.h

bb.k:                                             ; preds = %bb.m, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.bi = load i64, ptr %4, align 8, !range !109, !noundef !3
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !110, !noundef !3 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.m, label %bb.n, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.bn = load i64, ptr %i.bm, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bn) #29
          to label %bb.r unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.bm, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bp = icmp ule i64 %3, %i.bl
  tail call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not25 = icmp eq i64 %3, 0
  br i1 %.not25, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  store i64 %i.bl, ptr %i.ai, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.bo, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %3, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 %3, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 %i.ah, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.o

bb.q:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit41, %bb.w, %bb.o
  ret void

bb.r:                                             ; preds = %bb.m
  unreachable

bb.s:                                             ; preds = %bb.v, %bb.k
  %.sink = phi ptr [ %i.bs, %bb.v ], [ %i.ai, %bb.k ]
  %.pn = phi { ptr, i32 } [ %i.by, %bb.v ], [ %i.bh, %bb.k ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 8) #28
  resume { ptr, i32 } %.pn

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i33
  %i.bq = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.br = load i32, ptr %i.bq, align 4, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bs = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 48, i64 noundef range(i64 1, 9) 8) #28 ; 7 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.t, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit40, !prof !19

bb.t:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit40: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.w unwind label %bb.v

select.unfold47:                                  ; preds = %._crit_edge.i.i36, %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bu = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1, i64 noundef range(i64 1, 9) 1) #28 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.u, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit41, !prof !19

bb.u:                                             ; preds = %select.unfold47
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #29
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit41: ; preds = %select.unfold47
  store i8 0, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @92, ptr %i.bx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.v:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit40
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.w:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011, i64 24, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 0, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i64 %3, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 %i.br, ptr %.sroa.614.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011)
  store i64 1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevelNtNtB9_9tokenizer5Model9get_vocab(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_mEE9from_iterINtB7_8IntoIterB15_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model11get_trainer(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece7trainerNtB5_16WordPieceTrainer7builder(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.a)
  call void @_RNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece7trainerNtB4_23WordPieceTrainerBuilder5build(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(192) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model11id_to_token(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1586, !noalias !1589, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1597, !noalias !1598, !noundef !3 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1597, !noalias !1598, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !1601 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownmINtB2_10EquivalentmE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !1604
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %select.unfold, !prof !4

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model11token_to_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1607, !noalias !1610, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1618, !noalias !1619, !noundef !3 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !1618, !noalias !1619, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !1622 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.x = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !noalias !1625
  br i1 %i.x, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !4

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !noundef !3
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.3.0 = phi i32 [ %i.ag, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i32 [ 1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit ], [ 0, %bb.a ], [ 0, %._crit_edge.i.i ]
  %i.ah = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ai = insertvalue { i32, i32 } %i.ah, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model4save(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly captures(address, read_provenance) %4, i64 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model4save:bb.a
bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bh, ptr %i.d, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bj = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.z, label %bb.ak, !prof !19

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc63 unwind label %bb.aa

.noexc63:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #30
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.x
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.thread89

bb.af:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 24, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ag, label %bb.ah, !prof !19

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc68 unwind label %.thread89

.noexc68:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.511.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val59 = load i32, ptr %i.k, align 4, !range !244, !noundef !3
  %i.br = call noundef i32 @close(i32 noundef %.val59) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit80 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body76, %bb.au, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.au ], [ %i.bs, %bb.ai ], [ %.pn52, %.body76 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit80: ; preds = %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ak:                                            ; preds = %bb.y
  store ptr %i.bh, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.bv, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit75 unwind label %.thread89

bb.an:                                            ; preds = %bb.al
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit75: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val58 = load i32, ptr %i.k, align 4, !range !244, !noundef !3
  %i.by = call noundef i32 @close(i32 noundef %.val58) #28 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit75, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body76 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f

bb.ar:                                            ; preds = %.body54, %bb.as, %.body, %.body76
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.as:                                            ; preds = %bb.t, %bb.s
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtBG_6string6StringRmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #30
          to label %.thread unwind label %bb.ar

bb.at:                                            ; preds = %bb.j
  store ptr %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.cd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ao

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit80 unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body54:                                          ; preds = %bb.l, %bb.h, %.thread
  %.pn50 = phi { ptr, i32 } [ %.pn.pn, %.thread ], [ %i.ag, %bb.h ], [ %i.an, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m) #30
          to label %.body76 unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model8tokenize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %4 = alloca [24 x i8], align 8                  ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.049 = alloca [24 x i8], align 8          ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 22 uses
  %i.f = alloca [48 x i8], align 8                ; 20 uses
  %5 = alloca [24 x i8], align 8                  ; 18 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.01 = alloca [24 x i8], align 8           ; 5 uses
  %i.h = icmp ult i64 %3, 32
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp ugt i64 %.sroa.0.0.i, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = load ptr, ptr %i.t, align 8, !nonnull !3 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.024.sroa.5.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.024.sroa.6.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.525.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.628.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.731.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.544.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.ad = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 48, i64 noundef range(i64 1, 9) 8) #28 ; 8 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !19

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ca unwind label %bb.bz

bb.g:                                             ; preds = %.lr.ph, %bb.ba
  %.sroa.09.0340 = phi i64 [ 0, %.lr.ph ], [ %.sroa.014.0278, %bb.ba ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -1, ptr %i.f, align 8
  %i.af = icmp eq i64 %.sroa.09.0340, 0           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.09.0340 ; 3 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.ba, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit168, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bu

bb.i:                                             ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128
  %.sroa.014.0339 = phi i64 [ %3, %bb.g ], [ %i.dh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1631, !noundef !3
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.j
  %.not6.i = icmp ult i64 %.sroa.014.0339, %3
  br i1 %.not6.i, label %bb.l, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.aj = icmp eq i64 %.sroa.014.0339, %3
  br i1 %i.aj, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.014.0339
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !1631, !noundef !3
  %i.am = icmp sgt i8 %i.al, -65
  br i1 %i.am, label %bb.m, label %bb.n

.loopexit253:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit138
  %.sroa.014.0278 = phi i64 [ %.sroa.014.0339, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit138 ], [ %i.dh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128 ] ; 2 uses
  %i.an = load i64, ptr %i.f, align 8, !range !111, !noundef !3 ; 2 uses
  %.not99 = icmp eq i64 %i.an, -1
  br i1 %.not99, label %bb.be, label %bb.aw

.thread219.loopexit:                              ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i124
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread219.loopexit.split-lp.loopexit:            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i133
  %lpad.loopexit264 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread219.loopexit.split-lp.loopexit.split-lp:   ; preds = %bb.n
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.l, %.split7.i
  %i.ao = sub nuw i64 %.sroa.014.0339, %.sroa.09.0340 ; 2 uses
  store ptr %i.ag, ptr %i.p, align 8
  store i64 %i.ao, ptr %i.q, align 8
  store i64 -1, ptr %i.e, align 8
  br i1 %i.af, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.j, %.split7.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.09.0340, i64 noundef %.sroa.014.0339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #29
          to label %bb.o unwind label %.thread219.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.al, %select.unfold, %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.r, ptr %i.c, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.s, align 8
  store ptr @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.470.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @113, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp249.loopexit

bb.q:                                             ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ap = phi i64 [ %i.ao, %bb.m ], [ %.pre401, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit ]
  %i.aq = phi ptr [ %i.ag, %bb.m ], [ %.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit ]
  %i.ar = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE12contains_keyeECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ap)
          to label %bb.v unwind label %.loopexit.split-lp249.loopexit

.loopexit.split-lp249:                            ; preds = %.loopexit248, %.loopexit.split-lp249.loopexit.split-lp.loopexit, %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp249.loopexit, %.body129, %.body
  %.pn103 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body130, %.body129 ], [ %lpad.loopexit250, %.loopexit248 ], [ %lpad.loopexit254, %.loopexit.split-lp249.loopexit ], [ %lpad.loopexit261, %.loopexit.split-lp249.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.e) #30
          to label %.thread unwind label %bb.bv

.loopexit248:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249

.loopexit.split-lp249.loopexit:                   ; preds = %bb.p, %bb.q
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249

.loopexit.split-lp249.loopexit.split-lp.loopexit: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, %bb.aa
  %lpad.loopexit261 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249

.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp: ; preds = %select.unfold, %bb.al
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.as = load i64, ptr %i.e, align 8, !range !111, !alias.scope !1634, !noundef !3
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.au, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.loopexit.split-lp249

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.pre = load ptr, ptr %i.p, align 8
  %.pre401 = load i64, ptr %i.q, align 8
  br label %bb.q

bb.v:                                             ; preds = %bb.q
  br i1 %i.ar, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = load i64, ptr %i.e, align 8, !range !111, !noundef !3
  %.not94 = icmp eq i64 %i.ax, -1
  %i.ay = load ptr, ptr %i.p, align 8, !nonnull !3
  %i.az = load i64, ptr %i.q, align 8             ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az ; 4 uses
  %i.bb = icmp samesign eq i64 %i.az, 0
  br i1 %i.bb, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1637, !noundef !3
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i: ; preds = %bb.x
  %i.bf = icmp ne i64 %i.az, 1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 -2
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !1637, !noundef !3 ; 3 uses
  %i.bi = and i8 %i.bh, 31
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = icmp slt i8 %i.bh, -64
  br i1 %i.bk, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i, label %bb.ae

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i
  %i.bl = icmp ne i64 %i.az, 2
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 -3
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !1637, !noundef !3 ; 3 uses
  %i.bo = and i8 %i.bn, 15
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = icmp slt i8 %i.bn, -64
  br i1 %i.bq, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i, label %bb.y

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i
  %i.br = icmp ne i64 %i.az, 3
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !1637, !noundef !3
  %i.bu = and i8 %i.bt, 7
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 6
  %i.bx = and i8 %i.bn, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by
  br label %bb.y

bb.y:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i
  %.sroa.010.1.i = phi i32 [ %i.bz, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit21.i ], [ %i.bp, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit19.i ]
  %i.ca = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.cb = and i8 %i.bh, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc
  br label %bb.ae

bb.z:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr %i.p, align 8, !nonnull !3 ; 2 uses
  %i.cf = load i64, ptr %i.q, align 8             ; 2 uses
  br i1 %i.w, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cf)
          to label %.noexc121 unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit ; 2 uses

.noexc121:                                        ; preds = %bb.aa
  %i.ch = lshr i64 %i.cg, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  %i.cj = insertelement <16 x i8> poison, i8 %i.ci, i64 0
  %i.ck = shufflevector <16 x i8> %i.cj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.noexc121
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc121 ], [ %i.db, %bb.ad ]
  %.pn.i.i.i = phi i64 [ %i.cg, %.noexc121 ], [ %i.dc, %bb.ad ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.z    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !1640 ; 2 uses
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.ck
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.i33.i.i = phi i16 [ %i.da, %bb.ac ], [ %i.cn, %bb.ab ] ; 3 uses
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.01.0.i.i.i, %i.cp
  %i.cr = and i64 %i.cq, %i.z
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -32
  %i.cv = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cu)
          to label %.noexc122 unwind label %.loopexit248

.noexc122:                                        ; preds = %.lr.ph.i.i
  br i1 %i.cv, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ac, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.ac, %bb.ab
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.ad, label %select.unfold, !prof !4

bb.ac:                                            ; preds = %.noexc122
  %i.cz = add i16 %.sroa.06.0.i33.i.i, -1
  %i.da = and i16 %i.cz, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.db = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dc = add i64 %.sroa.01.0.i.i.i, %i.db
  br label %bb.ab

bb.ae:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i, %bb.y
  %.sroa.010.0.i = phi i32 [ %i.cd, %bb.y ], [ %i.bj, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs2JiOgHzbbc7_10tokenizers.exit17.i ] ; 3 uses
  %or.cond.i = icmp ult i32 %.sroa.010.0.i, 2
  br i1 %or.cond.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = icmp ult i32 %.sroa.010.0.i, 32
  br i1 %i.dd, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = icmp ult i32 %.sroa.010.0.i, 1024
  %..i.i.neg = select i1 %i.de, i64 -3, i64 -4
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit: ; preds = %bb.x, %bb.w, %bb.ag, %bb.af, %bb.ae
  %.sroa.02.0.i.neg = phi i64 [ -1, %bb.ae ], [ -2, %bb.af ], [ %..i.i.neg, %bb.ag ], [ -1, %bb.w ], [ -1, %bb.x ]
  br i1 %.not94, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128, label %bb.ah

bb.ah:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i124 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i124: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128 unwind label %.thread219.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit128: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB10_9WordPieceNtNtB14_9tokenizer5Model8tokenize0EB14_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i124
  %i.dh = add i64 %.sroa.02.0.i.neg, %.sroa.014.0339 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.di = icmp ult i64 %.sroa.09.0340, %i.dh
  br i1 %i.di, label %bb.i, label %.loopexit253

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc122
  %i.dj = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !3 ; 2 uses
  %i.dl = load ptr, ptr %i.p, align 8, !nonnull !3
  %i.dm = load i64, ptr %i.q, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %4, i64 noundef %i.dm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit

select.unfold:                                    ; preds = %bb.z, %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #29
          to label %bb.o unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  %i.dn = load i64, ptr %4, align 8, !range !109, !noundef !3
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = load i64, ptr %i.ab, align 8, !range !110, !noundef !3 ; 4 uses
  br i1 %i.do, label %bb.al, label %bb.am, !prof !4

bb.al:                                            ; preds = %bb.ak
  %i.dq = load i64, ptr %i.ac, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dp, i64 %i.dq) #29
          to label %bb.o unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.dr = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ds = icmp ule i64 %i.dm, %i.dp
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not98 = icmp eq i64 %i.dm, 0
  br i1 %.not98, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.ar, %bb.am
  %i.dt = load i64, ptr %i.f, align 8, !range !111, !alias.scope !1648, !noundef !3
  %i.du = icmp eq i64 %i.dt, -1
  br i1 %i.du, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB11_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body129 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB11_.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %i.dl, i64 %i.dm, i1 false)
  br label %bb.an

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.body129:                                         ; preds = %bb.ap, %bb.as
  %eh.lpad-body130 = phi { ptr, i32 } [ %i.dx, %bb.as ], [ %i.dv, %bb.ap ]
  store i64 %i.dp, ptr %i.f, align 8
  store ptr %i.dr, ptr %.sroa.024.sroa.5.0..sroa_idx84, align 8
  store i64 %i.dm, ptr %.sroa.024.sroa.6.0..sroa_idx86, align 8
  store i64 %.sroa.09.0340, ptr %.sroa.525.0..sroa_idx26, align 8
  store i64 %.sroa.014.0339, ptr %.sroa.628.0..sroa_idx29, align 8
  store i32 %i.dk, ptr %.sroa.731.0..sroa_idx32, align 8
  br label %.loopexit.split-lp249

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB11_.exit: ; preds = %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i
  store i64 %i.dp, ptr %i.f, align 8
  store ptr %i.dr, ptr %.sroa.024.sroa.5.0..sroa_idx84, align 8
  store i64 %i.dm, ptr %.sroa.024.sroa.6.0..sroa_idx86, align 8
  store i64 %.sroa.09.0340, ptr %.sroa.525.0..sroa_idx26, align 8
  store i64 %.sroa.014.0339, ptr %.sroa.628.0..sroa_idx29, align 8
  store i32 %i.dk, ptr %.sroa.731.0..sroa_idx32, align 8
  %i.dy = load i64, ptr %i.e, align 8, !range !111, !alias.scope !1651, !noundef !3
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit138, label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB11_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i133 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i133: ; preds = %bb.at
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit138 unwind label %.thread219.loopexit.split-lp.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit138: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB11_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit253

bb.aw:                                            ; preds = %.loopexit253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.544.0..sroa_idx45, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.024.sroa.5.0..sroa_idx84, i64 40, i1 false)
  store i64 %i.an, ptr %i.b, align 8
  %i.ec = load i64, ptr %i.o, align 8, !alias.scope !1654, !noalias !1657, !noundef !3 ; 3 uses
  %i.ed = load i64, ptr %5, align 8, !range !21, !alias.scope !1654, !noalias !1657, !noundef !3
  %i.ee = icmp eq i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ba unwind label %bb.ay, !noalias !1657

bb.ay:                                            ; preds = %bb.ax
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #30
          to label %.thread216 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  %i.eh = load ptr, ptr %i.n, align 8, !alias.scope !1654, !noalias !1657, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [48 x i8], ptr %i.eh, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ej = add i64 %i.ec, 1
  store i64 %i.ej, ptr %i.o, align 8, !alias.scope !1654, !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ek = icmp ult i64 %.sroa.014.0278, %3
  br i1 %i.ek, label %bb.g, label %._crit_edge

.thread216:                                       ; preds = %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i175, %bb.ay, %.body169, %.body141
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.ay ], [ %.pn103.pn209, %.thread ], [ %i.en, %.body141 ], [ %.pn, %.body169 ], [ %.pn103.pn209, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i175 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %.thread216
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %.body149 unwind label %bb.bd

bb.bc:                                            ; preds = %.thread216
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.bv

bb.bd:                                            ; preds = %bb.bb
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body141:                                         ; preds = %bb.bf
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.thread216

bb.be:                                            ; preds = %.loopexit253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.eo = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 48, i64 noundef range(i64 1, 9) 8) #28 ; 8 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.bf, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit152, !prof !19

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc151 unwind label %.body141

.noexc151:                                        ; preds = %bb.bf
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit152: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.bh unwind label %bb.bg

.body169:                                         ; preds = %bb.bp, %bb.bg, %bb.bm
  %.pn = phi { ptr, i32 } [ %lpad.phi247, %bb.bm ], [ %i.eq, %bb.bg ], [ %i.fu, %bb.bp ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef 48, i64 noundef 8) #28
  br label %.thread216

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit152
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.bh:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit152
  br i1 %i.w, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit111, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.er = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc165 unwind label %.loopexit.split-lp244 ; 2 uses

.noexc165:                                        ; preds = %bb.bi
  %i.es = lshr i64 %i.er, 57
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ev = shufflevector <16 x i8> %i.eu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.noexc165
  %.sroa.9.0.i.i.i153 = phi i64 [ 0, %.noexc165 ], [ %i.fm, %bb.bl ]
  %.pn.i.i.i154 = phi i64 [ %i.er, %.noexc165 ], [ %i.fn, %bb.bl ]
  %.sroa.01.0.i.i.i155 = and i64 %.pn.i.i.i154, %i.z ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i155
  %.sroa.0.0.copyload.i26.i.i156 = load <16 x i8>, ptr %i.ew, align 1, !noalias !1659 ; 2 uses
  %i.ex = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i156, %i.ev
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i.not32.i.i157 = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not32.i.i157, label %._crit_edge.i.i161, label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %bb.bj, %bb.bk
  %.sroa.06.0.i33.i.i159 = phi i16 [ %i.fl, %bb.bk ], [ %i.ey, %bb.bj ] ; 3 uses
  %i.ez = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i159, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.01.0.i.i.i155, %i.fa
  %i.fc = and i64 %i.fb, %i.z
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -32
  %i.fg = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ff)
          to label %.noexc166 unwind label %.loopexit243

.noexc166:                                        ; preds = %.lr.ph.i.i158
  br i1 %i.fg, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.bk, !prof !59

._crit_edge.i.i161:                               ; preds = %bb.bk, %bb.bj
  %i.fh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i156, splat (i8 -1)
  %i.fi = bitcast <16 x i1> %i.fh to i16
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.bl, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit111, !prof !4

bb.bk:                                            ; preds = %.noexc166
  %i.fk = add i16 %.sroa.06.0.i33.i.i159, -1
  %i.fl = and i16 %i.fk, %.sroa.06.0.i33.i.i159   ; 2 uses
  %.not.i.not.i.i160 = icmp eq i16 %i.fl, 0
  br i1 %.not.i.not.i.i160, label %._crit_edge.i.i161, label %.lr.ph.i.i158

bb.bl:                                            ; preds = %._crit_edge.i.i161
  %i.fm = add i64 %.sroa.9.0.i.i.i153, 16         ; 2 uses
  %i.fn = add i64 %.sroa.01.0.i.i.i155, %i.fm
  br label %bb.bj

.loopexit243:                                     ; preds = %.lr.ph.i.i158
  %lpad.loopexit245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp244:                            ; preds = %bb.bi
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp244, %.loopexit243
  %lpad.phi247 = phi { ptr, i32 } [ %lpad.loopexit245, %.loopexit243 ], [ %lpad.loopexit.split-lp246, %.loopexit.split-lp244 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #30
          to label %.body169 unwind label %bb.bv

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc166
  %i.fo = getelementptr inbounds i8, ptr %i.fe, i64 -8
  %i.fp = load i32, ptr %i.fo, align 4, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, i64 24, i1 false)
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 0, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i64 %3, ptr %.sroa.651.0..sroa_idx, align 8
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i32 %i.fp, ptr %.sroa.752.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.049)
  store i64 1, ptr %0, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eo, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.648.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit168 unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body198, %bb.bc, %bb.bs, %bb.bn
  %common.resume.op = phi { ptr, i32 } [ %i.fw, %bb.bs ], [ %i.fq, %bb.bn ], [ %.pn108, %.body198 ], [ %.pn103.pn.pn, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit168: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.h

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit111: ; preds = %._crit_edge.i.i161, %bb.bh
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @161, ptr %i.ft, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit111
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body169 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit111
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.br unwind label %bb.bg

bb.br:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.049)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef 48, i64 noundef 8) #28
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit173 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit173: ; preds = %bb.br
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bu

bb.bu:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit195, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit201, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit173, %bb.h
  ret void

bb.bv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i175, %bb.bc, %bb.cf, %bb.bm, %.loopexit.split-lp249
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body149

.body149:                                         ; preds = %bb.bx, %bb.bv, %bb.bb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread:                                          ; preds = %.thread219.loopexit, %.thread219.loopexit.split-lp.loopexit.split-lp, %.thread219.loopexit.split-lp.loopexit, %bb.au, %bb.ai, %.loopexit.split-lp249
  %.pn103.pn209 = phi { ptr, i32 } [ %i.df, %bb.ai ], [ %i.ea, %bb.au ], [ %.pn103, %.loopexit.split-lp249 ], [ %lpad.loopexit257, %.thread219.loopexit ], [ %lpad.loopexit264, %.thread219.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp265, %.thread219.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fz = load i64, ptr %i.f, align 8, !range !111, !alias.scope !1667, !noundef !3
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %.thread216, label %bb.bw

bb.bw:                                            ; preds = %.thread
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i175 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body149 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_.exit.i175: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.thread216 unwind label %bb.bv

.body198:                                         ; preds = %bb.cg, %bb.bz, %bb.cf
  %.pn108 = phi { ptr, i32 } [ %lpad.phi, %bb.cf ], [ %i.gd, %bb.bz ], [ %i.hn, %bb.cg ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 48, i64 noundef 8) #28
  br label %common.resume

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i197, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body198

bb.ca:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !1670, !noalias !1673, !noundef !3
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gj = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc193 unwind label %.loopexit.split-lp ; 2 uses

.noexc193:                                        ; preds = %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.gk = lshr i64 %i.gj, 57
  %i.gl = trunc nuw nsw i64 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !1681, !noalias !1682, !noundef !3 ; 2 uses
  %i.go = load ptr, ptr %i.ge, align 8, !alias.scope !1681, !noalias !1682, !nonnull !3, !noundef !3 ; 2 uses
  %i.gp = insertelement <16 x i8> poison, i8 %i.gl, i64 0
  %i.gq = shufflevector <16 x i8> %i.gp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %.noexc193
  %.sroa.9.0.i.i.i180 = phi i64 [ 0, %.noexc193 ], [ %i.hh, %bb.ce ]
  %.pn.i.i.i181 = phi i64 [ %i.gj, %.noexc193 ], [ %i.hi, %bb.ce ]
  %.sroa.01.0.i.i.i182 = and i64 %.pn.i.i.i181, %i.gn ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sroa.01.0.i.i.i182
  %.sroa.0.0.copyload.i26.i.i183 = load <16 x i8>, ptr %i.gr, align 1, !noalias !1685 ; 2 uses
  %i.gs = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i183, %i.gq
  %i.gt = bitcast <16 x i1> %i.gs to i16          ; 2 uses
  %.not.i.not32.i.i184 = icmp eq i16 %i.gt, 0
  br i1 %.not.i.not32.i.i184, label %._crit_edge.i.i188, label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %bb.cc, %bb.cd
  %.sroa.06.0.i33.i.i186 = phi i16 [ %i.hg, %bb.cd ], [ %i.gt, %bb.cc ] ; 3 uses
  %i.gu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i186, i1 true)
  %i.gv = zext nneg i16 %i.gu to i64
  %i.gw = add i64 %.sroa.01.0.i.i.i182, %i.gv
  %i.gx = and i64 %i.gw, %i.gn
  %i.gy = sub nsw i64 0, %i.gx
  %i.gz = getelementptr inbounds [32 x i8], ptr %i.go, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -32
  %i.hb = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ha)
          to label %.noexc194 unwind label %.loopexit

.noexc194:                                        ; preds = %.lr.ph.i.i185
  br i1 %i.hb, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit195, label %bb.cd, !prof !59

._crit_edge.i.i188:                               ; preds = %bb.cd, %bb.cc
  %i.hc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i183, splat (i8 -1)
  %i.hd = bitcast <16 x i1> %i.hc to i16
  %i.he = icmp eq i16 %i.hd, 0
  br i1 %i.he, label %bb.ce, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit, !prof !4

bb.cd:                                            ; preds = %.noexc194
  %i.hf = add i16 %.sroa.06.0.i33.i.i186, -1
  %i.hg = and i16 %i.hf, %.sroa.06.0.i33.i.i186   ; 2 uses
  %.not.i.not.i.i187 = icmp eq i16 %i.hg, 0
  br i1 %.not.i.not.i.i187, label %._crit_edge.i.i188, label %.lr.ph.i.i185

bb.ce:                                            ; preds = %._crit_edge.i.i188
  %i.hh = add i64 %.sroa.9.0.i.i.i180, 16         ; 2 uses
  %i.hi = add i64 %.sroa.01.0.i.i.i182, %i.hh
  br label %bb.cc

.loopexit:                                        ; preds = %.lr.ph.i.i185
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp:                               ; preds = %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #30
          to label %.body198 unwind label %bb.bv

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit195: ; preds = %.noexc194
  %i.hj = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %i.hk = load i32, ptr %i.hj, align 4, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, i64 24, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %3, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 %i.hk, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  store i64 1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.bu

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit: ; preds = %._crit_edge.i.i188, %bb.ca
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @161, ptr %i.hm, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i197 unwind label %bb.cg

bb.cg:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body198 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i197: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece5ErrorE3newBJ_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit201 unwind label %bb.bz

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit201: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 48, i64 noundef 8) #28
  br label %bb.bu
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPieceNtNtB9_9tokenizer5Model9get_vocab(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_mEE9from_iterINtB7_8IntoIterB15_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularyNtB5_15AddedVocabularyNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularyNtB5_15AddedVocabulary3new(ptr noalias noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [304 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.b)
  call void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder5build(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %i.d = load i64, ptr %i.c, align 8, !range !199, !alias.scope !1691, !noalias !1693, !noundef !3
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model3BPEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2u_4SyncEL_EE6unwrapBP_.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1695
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !alias.scope !1691, !noalias !1693
  store <2 x ptr> %i.g, ptr %i.a, align 16, !noalias !1695
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #29
          to label %bb.d unwind label %bb.c, !noalias !1696

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %bb.f unwind label %bb.e, !noalias !1696

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1696
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model3BPEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2u_4SyncEL_EE6unwrapBP_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull readonly align 8 dereferenceable(304) %i.c, i64 304, i1 false), !alias.scope !1696, !noalias !1697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers6models3bpeNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !263, !noundef !3
  switch i64 %i.f, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.e, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 2, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 9, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 13)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.c, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.b, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 25, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.a, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 14)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtB9_5utils4onig8SysRegexENtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtB9_5utils4onig8SysRegexNtB5_7Pattern12find_matches(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.c = load i64, ptr %i.a, align 8, !range !111, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = icmp ult ptr %i.h, inttoptr (i64 384307168202282326 to ptr)
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB3b_6InvertRNtNtNtB3f_5utils4onig8SysRegexENtB3b_7Pattern12find_matches0EE9from_iterB3f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexENtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 56)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !104, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 13, i64 15
  %.1 = select i1 %i.b, ptr @167, ptr @185
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model11get_trainer(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(address) dereferenceable(256) %0, ptr nofree noundef nonnull readnone align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5_10BpeTrainerNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model11id_to_token(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1705, !noalias !1708, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1716, !noalias !1717, !noundef !3 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1716, !noalias !1717, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !1720 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownmINtB2_10EquivalentmE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !1723
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %select.unfold, !prof !4

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -24
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getmECs2JiOgHzbbc7_10tokenizers.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model11token_to_id(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1726, !noalias !1729, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = tail call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1737, !noalias !1738, !noundef !3 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !1737, !noalias !1738, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !1741 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.x = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !noalias !1744
  br i1 %i.x, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, label %bb.d, !prof !59

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread, !prof !4

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !noundef !3
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.3.0 = phi i32 [ %i.ag, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i32 [ 1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit ], [ 0, %bb.a ], [ 0, %._crit_edge.i.i ]
  %i.ah = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ai = insertvalue { i32, i32 } %i.ah, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPENtNtBb_9tokenizer5Model4save(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly captures(address, read_provenance) %4, i64 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %6 = alloca [24 x i8], align 8                  ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [4 x i8], align 4                 ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [4 x i8], align 4                ; 11 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 13 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %4, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %5, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.451.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @154, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert194 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.pre195 = load i64, ptr %.phi.trans.insert194, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.aj = load i64, ptr %i.j, align 8, !range !109, !noundef !3
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !110, !noundef !3 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !4

bb.c:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %i.an, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = icmp samesign ugt i64 %i.am, 9
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ap, ptr noundef nonnull align 1 dereferenceable(10) @153, i64 10, i1 false)
  store i64 %i.am, ptr %i.ag, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ap, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 10, ptr %.sroa.647.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %.split, %bb.d
  %i.ar = phi i64 [ %.pre195, %.split ], [ 10, %bb.d ]
  %i.as = phi ptr [ %.pre, %.split ], [ %i.ap, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %2, ptr %i.ac, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %3, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.as, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.ar, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  invoke void @_RINvXsE_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBufINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorRRNtB6_4PathE9from_iterINtNtNtBR_5slice4iter4IterB1J_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aw)
          to label %bb.g unwind label %bb.f

.body170:                                         ; preds = %.split210, %bb.ck, %bb.f, %.thread, %.body
  %.pn115 = phi { ptr, i32 } [ %.pn109, %.body ], [ %.pn113180, %.thread ], [ %i.ax, %bb.f ], [ %i.fg, %bb.ck ], [ %lpad.thr_comm.split-lp213, %.split210 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #30
          to label %common.resume unwind label %bb.bt

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i169, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body170

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.i unwind label %bb.h

.body.thread:                                     ; preds = %bb.r, %bb.cf
  %.pn111.ph = phi { ptr, i32 } [ %i.ez, %bb.cf ], [ %i.bv, %bb.r ]
  %.val139193 = load i32, ptr %i.ab, align 4, !range !244, !noundef !3
  %i.ay = call noundef i32 @close(i32 noundef %.val139193) #28 ; 0 uses
  br label %.thread

.body:                                            ; preds = %.body125
  %.val139 = load i32, ptr %i.ab, align 4, !range !244, !noundef !3
  %i.az = call noundef i32 @close(i32 noundef %.val139) #28 ; 0 uses
  br i1 %.sroa.044.4, label %.thread, label %.body170

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.aa, align 8, !range !507, !noundef !3
  %i.bc = trunc nuw i32 %i.bb to i1
  br i1 %i.bc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.be, ptr %i.c, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.k, label %bb.cm, !prof !19

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #30
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !range !244, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i32 %i.bk, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bl = load ptr, ptr %i.ah, align 8, !nonnull !3, !align !20, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  store ptr %i.bm, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCs5PtHgSLqj5O_10serde_json3ser6to_vecNtNtCs2JiOgHzbbc7_10tokenizers6models16OrderedVocabIterEBJ_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %bb.o unwind label %.split210.thread

.split210.thread:                                 ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i162
  %lpad.thr_comm212 = landingpad { ptr, i32 }
          cleanup
  %.val139211216 = load i32, ptr %i.ab, align 4, !range !244, !noundef !3
  %i.bn = call noundef i32 @close(i32 noundef %.val139211216) #28 ; 0 uses
  br label %.thread

.split210:                                        ; preds = %bb.bo
  %lpad.thr_comm.split-lp213 = landingpad { ptr, i32 }
          cleanup
  %.val139211 = load i32, ptr %i.ab, align 4, !range !244, !noundef !3
  %i.bo = call noundef i32 @close(i32 noundef %.val139211) #28 ; 0 uses
  br label %.body170

bb.o:                                             ; preds = %bb.n
  %i.bp = load i64, ptr %i.i, align 8, !range !111, !noundef !3 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -1
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 4 uses
  br i1 %i.bq, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.bs, ptr %i.h, align 8, !noalias !1747
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bt = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.q, label %bb.ci, !prof !19

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc140 unwind label %bb.r

.noexc140:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #30
          to label %.body.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.t:                                             ; preds = %bb.o
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.659.0.copyload = load i64, ptr %.sroa.659.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.bp, ptr %i.y, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.bs, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.659.0.copyload, ptr %.sroa.522.0..sroa_idx, align 8
  %i.bx = invoke noundef ptr @_RNvYNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB6_2io5Write9write_allCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %.sroa.659.0.copyload)
          to label %bb.v unwind label %bb.u       ; 3 uses

.body125:                                         ; preds = %bb.cc, %bb.y, %bb.u, %.body154
  %.sroa.044.4 = phi i1 [ true, %.body154 ], [ true, %bb.y ], [ %.sroa.044.5, %bb.u ], [ true, %bb.cc ]
  %.pn109 = phi { ptr, i32 } [ %.pn107, %.body154 ], [ %i.cb, %bb.y ], [ %i.by, %bb.u ], [ %i.ex, %bb.cc ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #30
          to label %.body unwind label %bb.bt

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ab, %bb.bn, %bb.ae, %bb.ac, %bb.t
  %.sroa.044.5 = phi i1 [ true, %bb.t ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ false, %bb.bn ], [ true, %bb.ab ], [ true, %bb.ae ], [ true, %bb.ac ]
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body125

bb.v:                                             ; preds = %bb.t
  %.not99 = icmp eq ptr %i.bx, null
  br i1 %.not99, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bx, ptr %i.d, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bz = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.x, label %bb.ch, !prof !19

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc142 unwind label %bb.y

.noexc142:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #30
          to label %.body125 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %4, ptr %i.w, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %5, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.w, ptr %i.u, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.469.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @189, ptr noundef nonnull %i.u)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.u

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %6, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.u

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load i64, ptr %6, align 8, !range !109, !noundef !3
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !110, !noundef !3 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.ae, label %bb.af, !prof !4

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load i64, ptr %i.ci, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #29
          to label %bb.ah unwind label %bb.u

bb.af:                                            ; preds = %bb.ad
  %i.ck = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.ch, 9
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ck, ptr noundef nonnull align 1 dereferenceable(10) @188, i64 10, i1 false)
  store i64 %i.ch, ptr %i.x, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ck, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 10, ptr %.sroa.665.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit, %bb.af
  %i.cm = phi i64 [ %.pre199, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit ], [ 10, %bb.af ]
  %i.cn = phi ptr [ %.pre197, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ck, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %2, ptr %i.s, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %3, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.cn, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.cm, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RINvXsE_NtCs2AWtUsOyxgP_3std4pathNtB6_7PathBufINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorRRNtB6_4PathE9from_iterINtNtNtBR_5slice4iter4IterB1J_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull %i.s, ptr noundef nonnull %i.cr)
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.phi.trans.insert196 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre197 = load ptr, ptr %.phi.trans.insert196, align 8
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.pre199 = load i64, ptr %.phi.trans.insert198, align 8
  br label %bb.ag

.body154:                                         ; preds = %bb.bz, %bb.ai, %.body122
  %.pn107 = phi { ptr, i32 } [ %i.cs, %bb.ai ], [ %.pn105, %.body122 ], [ %i.et, %bb.bz ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #30
          to label %.body125 unwind label %bb.bt

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body122

bb.al:                                            ; preds = %bb.aj
  %i.cu = load i32, ptr %i.q, align 8, !range !507, !noundef !3
  %i.cv = trunc nuw i32 %i.cu to i1
  br i1 %i.cv, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.cx, ptr %i.e, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.cy = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.an, label %bb.cb, !prof !19

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc145 unwind label %bb.ao

.noexc145:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #30
          to label %.body122 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aq:                                            ; preds = %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !range !244, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i32 %i.dd, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.de = load ptr, ptr %i.ah, align 8, !nonnull !3, !align !20, !noundef !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 232
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapTmmEB13_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.df)
          to label %bb.as unwind label %bb.ar

.body152:                                         ; preds = %bb.bv, %.body117, %.thread188, %bb.ar, %.thread184
  %.pn103 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread188 ], [ %eh.lpad-body120187, %.thread184 ], [ %i.dh, %bb.ar ], [ %eh.lpad-body118, %.body117 ], [ %i.er, %bb.bv ]
  %.val138 = load i32, ptr %i.r, align 4, !range !244, !noundef !3
  %i.dg = call noundef i32 @close(i32 noundef %.val138) #28 ; 0 uses
  br label %.body122

bb.ar:                                            ; preds = %bb.bw, %bb.as, %bb.aq
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRTmmERmEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB12_B12_ENCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB3B_3BPENtNtB3H_9tokenizer5Model4save0EE9from_iterB3H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1750
  store ptr %i.a, ptr %i.b, align 8, !noalias !1750
  %i.dm = icmp samesign ult i64 %i.dl, 2
  br i1 %i.dm, label %bb.ay, label %bb.au, !prof !59

bb.au:                                            ; preds = %bb.at
  %i.dn = icmp samesign ult i64 %i.dl, 21
  br i1 %i.dn, label %bb.aw, label %bb.av, !prof !59

bb.av:                                            ; preds = %bb.au
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRTmmERmENCINvMB6_SBT_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1K_3BPENtNtB1Q_9tokenizer5Model4saves_0E0EB1Q_(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef range(i64 0, 576460752303423488) %i.dl, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ay unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRTmmERmENCINvMB8_SB1m_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2e_3BPENtNtB2k_9tokenizer5Model4saves_0E0EB2k_(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef range(i64 0, 576460752303423488) %i.dl, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ay unwind label %bb.ax

.thread188:                                       ; preds = %bb.br, %bb.bm, %bb.bl, %bb.be
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.ax:                                            ; preds = %bb.ay, %bb.av, %bb.aw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread184

bb.ay:                                            ; preds = %bb.at, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1750
  %i.do = invoke noundef ptr @_RNvYNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB6_2io5Write9write_allCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 14)
          to label %bb.az unwind label %bb.ax     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  %.not100 = icmp eq ptr %i.do, null
  br i1 %.not100, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.do, ptr %i.f, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.dp = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 8, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.bb, label %bb.bu, !prof !19

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc149 unwind label %bb.bc

.noexc149:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #30
          to label %.thread184 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.be:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dt = load ptr, ptr %i.di, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.du = load i64, ptr %i.p, align 8, !range !21, !noundef !3
  %i.dv = load i64, ptr %i.dk, align 8, !noundef !3 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 576460752303423488
  call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dv
  store ptr null, ptr %i.l, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.dt, ptr %.sroa.785.0..sroa_idx, align 8
  %.sroa.785.sroa.4.0..sroa.785.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.dt, ptr %.sroa.785.sroa.4.0..sroa.785.0..sroa_idx.sroa_idx, align 8
  %.sroa.785.sroa.5.0..sroa.785.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %i.du, ptr %.sroa.785.sroa.5.0..sroa.785.0..sroa_idx.sroa_idx, align 8
  %.sroa.785.sroa.6.0..sroa.785.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %i.dx, ptr %.sroa.785.sroa.6.0..sroa.785.0..sroa_idx.sroa_idx, align 8
  %.sroa.785.sroa.7.0..sroa.785.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %i.ah, ptr %.sroa.785.sroa.7.0..sroa.785.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterTRTmmERmEEBQ_NCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB3b_3BPENtNtB3h_9tokenizer5Model4saves0_0EE9from_iterB3h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.l)
          to label %bb.bf unwind label %.thread188

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !3, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !3
  %i.ec = invoke noundef ptr @_RNvYNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB6_2io5Write9write_allCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.eb)
          to label %bb.bh unwind label %bb.bg     ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.body117:                                         ; preds = %bb.bj, %bb.bg
  %eh.lpad-body118 = phi { ptr, i32 } [ %i.ed, %bb.bg ], [ %i.ef, %bb.bj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m) #30
          to label %.body152 unwind label %bb.bt

bb.bh:                                            ; preds = %bb.bf
  %.not101 = icmp eq ptr %i.ec, null
  br i1 %.not101, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ec, ptr %i.g, align 8
  %i.ee = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 8)
          to label %bb.br unwind label %bb.bj     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #30
          to label %.body117 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bl:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m)
          to label %bb.bm unwind label %.thread188

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.eh = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 48)
          to label %bb.bn unwind label %.thread188 ; 3 uses

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 2, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.541.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val137 = load i32, ptr %i.r, align 4, !range !244, !noundef !3
  %i.ej = call noundef i32 @close(i32 noundef %.val137) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bo unwind label %bb.u

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.bp unwind label %.split210

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val136 = load i32, ptr %i.ab, align 4, !range !244, !noundef !3
  %i.ek = call noundef i32 @close(i32 noundef %.val136) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit176, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  ret void

bb.br:                                            ; preds = %bb.bi
  store ptr %i.ec, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.em, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m)
          to label %bb.bs unwind label %.thread188

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRTmmERmEEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRTmmERmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.bw, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val135 = load i32, ptr %i.r, align 4, !range !244, !noundef !3
  %i.en = call noundef i32 @close(i32 noundef %.val135) #28 ; 0 uses
  br label %bb.by

bb.bt:                                            ; preds = %.thread, %.body122, %.thread184, %.body117, %.body154, %.body125, %.body170
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bu:                                            ; preds = %bb.ba
  store ptr %i.do, ptr %i.dp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.eq, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRTmmERmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRTmmERmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body152 unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRTmmERmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRTmmERmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.bx:                                            ; preds = %bb.bv
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.by:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRTmmERmEEECs2JiOgHzbbc7_10tokenizers.exit, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body154 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

.thread184:                                       ; preds = %bb.bc, %bb.ax
  %eh.lpad-body120187 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ax ], [ %i.dr, %bb.bc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRTmmERmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.p) #30
          to label %.body152 unwind label %bb.bt

bb.cb:                                            ; preds = %bb.am
  store ptr %i.cx, ptr %i.cy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.ew, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.by

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body125 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ch, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i162 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.thread unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i162: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit167 unwind label %.split210.thread

.body122:                                         ; preds = %bb.ao, %bb.ak, %.body152
  %.pn105 = phi { ptr, i32 } [ %.pn103, %.body152 ], [ %i.ct, %bb.ak ], [ %i.da, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.t) #30
          to label %.body154 unwind label %bb.bt

bb.ch:                                            ; preds = %bb.w
  store ptr %i.bx, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.fc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ce

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit167: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i162, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val134 = load i32, ptr %i.ab, align 4, !range !244, !noundef !3
  %i.fd = call noundef i32 @close(i32 noundef %.val134) #28 ; 0 uses
  br label %bb.cj

bb.ci:                                            ; preds = %bb.p
  store ptr %i.bs, ptr %i.bt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @94, ptr %i.ff, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit167

bb.cj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit167, %bb.cm
end_hunk_3
