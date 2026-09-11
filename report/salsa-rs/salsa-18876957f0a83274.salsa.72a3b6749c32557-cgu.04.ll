Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.04?download=true
inline.NumInlined: 176
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@13 = private unnamed_addr constant [7 x i8] c"message", align 1
@14 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @13, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa }>, align 8
@16 = private unnamed_addr constant [21 x i8] c"src/function/fetch.rs", align 1
@_RNvNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtBa_14IngredientImplpE16fetch_cold_cycles1_010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\D4\00\00\00", ptr @11, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtB8_14IngredientImplpE16fetch_cold_cycles1_010___CALLSITE, ptr @15, ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @16, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@17 = private unnamed_addr constant [31 x i8] c"event src/function/fetch.rs:223", align 1
@_RNvNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtBa_14IngredientImplpE16fetch_cold_cycles3_010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\DF\00\00\00", ptr @17, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtB8_14IngredientImplpE16fetch_cold_cycles3_010___CALLSITE, ptr @15, ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @16, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@18 = private unnamed_addr constant [36 x i8] c"salsa::function::maybe_changed_after", align 1
@19 = private unnamed_addr constant [35 x i8] c"src/function/maybe_changed_after.rs", align 1
@20 = private unnamed_addr constant [45 x i8] c"event src/function/maybe_changed_after.rs:102", align 1
@_RNvNvNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterINtBc_14IngredientImplpE19maybe_changed_after010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00f\00\00\00", ptr @20, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @18, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterINtBa_14IngredientImplpE19maybe_changed_after010___CALLSITE, ptr @15, ptr @18, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @19, [9 x i8] c"#\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvNtCsC8CapfvpQ1_5salsa5cycle17empty_cycle_heads17EMPTY_CYCLE_HEADS = global <{ [8 x i8], [4 x i8], [4 x i8] }> <{ [8 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@21 = private unnamed_addr constant [33 x i8] c"enabled src/function/fetch.rs:212", align 1
@_RNvNvNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtB8_14IngredientImplpE16fetch_cold_cycle10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\D4\00\00\00", ptr @21, [8 x i8] c"!\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtB6_14IngredientImplpE16fetch_cold_cycle10___CALLSITE, ptr @15, ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @16, [9 x i8] c"\15\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@22 = private unnamed_addr constant [33 x i8] c"enabled src/function/fetch.rs:223", align 1
@_RNvNvNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtB8_14IngredientImplpE16fetch_cold_cycles_10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\DF\00\00\00", ptr @22, [8 x i8] c"!\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMNtNtCsC8CapfvpQ1_5salsa8function5fetchINtB6_14IngredientImplpE16fetch_cold_cycles_10___CALLSITE, ptr @15, ptr @12, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @16, [9 x i8] c"\15\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@23 = private unnamed_addr constant [47 x i8] c"enabled src/function/maybe_changed_after.rs:102", align 1
@_RNvNvNvMs_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterINtBa_14IngredientImplpE19maybe_changed_after10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00f\00\00\00", ptr @23, [8 x i8] c"/\00\00\00\00\00\00\00", ptr @18, [8 x i8] c"$\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs_NtNtCsC8CapfvpQ1_5salsa8function19maybe_changed_afterINtB8_14IngredientImplpE19maybe_changed_after10___CALLSITE, ptr @15, ptr @18, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @19, [9 x i8] c"#\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@24 = private unnamed_addr constant [4 x i8] c"Memo", align 1
@25 = private unnamed_addr constant [4 x i8] c"None", align 1
@26 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @25, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@28 = private unnamed_addr constant [13 x i8] c"Some(<value>)", align 1
@29 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @28, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@30 = private unnamed_addr constant [5 x i8] c"value", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXse_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@32 = private unnamed_addr constant [11 x i8] c"verified_at", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14QueryRevisionsEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsz_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryRevisionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@34 = private unnamed_addr constant [9 x i8] c"revisions", align 1
@35 = private unnamed_addr constant [14 x i8] c"IterationStamp", align 1
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@37 = private unnamed_addr constant [9 x i8] c"iteration", align 1
@38 = private unnamed_addr constant [12 x i8] c"cancellation", align 1
@39 = private unnamed_addr constant [40 x i8] c"cycle heads must be function ingredients", align 1
@40 = private unnamed_addr constant [21 x i8] c"src/function/memo.rs\00", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"\14\00\00\00\00\00\00\00\1A\02\00\00\0E\00\00\00" }>, align 8
@42 = private unnamed_addr constant [24 x i8] c"cycle head memo to exist", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @40, [16 x i8] c"\14\00\00\00\00\00\00\00'\02\00\00\16\00\00\00" }>, align 8
@_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER = external global { i64, i64 }
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@45 = private unnamed_addr constant [14 x i8] c"AtomicRevision", align 1
@46 = private unnamed_addr constant [4 x i8] c"data", align 1
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomicbENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@48 = private unnamed_addr constant [28 x i8] c"AtomicInputAccumulatedValues", align 1
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20AtomicIterationStampNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@51 = private unnamed_addr constant [9 x i8] c"CycleHead", align 1
@52 = private unnamed_addr constant [18 x i8] c"database_key_index", align 1
@53 = private unnamed_addr constant [7 x i8] c"removed", align 1
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomictENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@55 = private unnamed_addr constant [20 x i8] c"AtomicIterationStamp", align 1
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsC8CapfvpQ1_5salsa10durabilityNtB2_10DurabilityNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14OriginAndExtraEBF_, [16 x i8] c"\0D\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXse_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValuesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@60 = private unnamed_addr constant [14 x i8] c"QueryRevisions", align 1
@61 = private unnamed_addr constant [10 x i8] c"changed_at", align 1
@62 = private unnamed_addr constant [10 x i8] c"durability", align 1
@63 = private unnamed_addr constant [16 x i8] c"origin_and_extra", align 1
@64 = private unnamed_addr constant [18 x i8] c"accumulated_inputs", align 1
@65 = private unnamed_addr constant [14 x i8] c"verified_final", align 1
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtB6_5Debug3fmtB18_ }>, align 8
@67 = private unnamed_addr constant [10 x i8] c"CycleHeads", align 1
@68 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 9095862890740116924 to ptr), ptr inttoptr (i64 5234688151291832568 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1P_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1P_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #24
          to label %common.resume.i.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i.i:                                ; preds = %bb.c, %bb.b
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14OriginAndExtraEBF_(ptr noalias noundef dereferenceable(13) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsb_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local14QueryRevisionsEBF_(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(13) %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBY_2id2IdENCINvMB6_SBT_16sort_unstable_byNCNvMs1_BW_NtBW_11IdentityMap5drain0E0EBY_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !39, !noalias !40, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !40, !noalias !39, !noundef !3 ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %.split, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

.split:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !40, !noalias !39, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !39, !noalias !40, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !4, !alias.scope !40, !noalias !39, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !range !4, !alias.scope !39, !noalias !40, !noundef !3 ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.l
  %i.p = icmp ult i32 %i.n, %i.l
  %i.q = icmp ult i32 %i.j, %i.h
  %spec.select.i = select i1 %i.o, i1 %i.q, i1 %i.p
  br i1 %spec.select.i, label %.preheader, label %.preheader17

.preheader:                                       ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %.split
  %.not27 = icmp eq i64 %1, 2
  br i1 %.not27, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph23

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit: ; preds = %bb.b
  %i.r = icmp ult i32 %i.c, %i.e
  br i1 %i.r, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %i.s = phi i32 [ %i.v, %bb.c ], [ %i.c, %.preheader17 ] ; 2 uses
  %.sroa.01.0.i19 = phi i64 [ %i.ak, %bb.c ], [ 2, %.preheader17 ] ; 5 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 3 uses
  %3 = add nsw i64 %.sroa.01.0.i19, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !45, !noalias !46, !noundef !3 ; 3 uses
  %i.w = icmp eq i32 %i.v, %i.s
  br i1 %i.w, label %.split11, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5

.split11:                                         ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !46, !noalias !45, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !45, !noalias !46, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !range !4, !alias.scope !46, !noalias !45, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !range !4, !alias.scope !45, !noalias !46, !noundef !3 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.ad
  %i.ah = icmp ult i32 %i.af, %i.ad
  %i.ai = icmp ult i32 %i.ab, %i.z
  %spec.select.i4 = select i1 %i.ag, i1 %i.ai, i1 %i.ah
  br i1 %spec.select.i4, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %bb.c

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5: ; preds = %.lr.ph
  %i.aj = icmp ult i32 %i.v, %i.s
  br i1 %i.aj, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %bb.c

bb.c:                                             ; preds = %.split11, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5
  %i.ak = add nuw nsw i64 %.sroa.01.0.i19, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph

.lr.ph23:                                         ; preds = %.preheader, %bb.d
  %i.al = phi i32 [ %i.ao, %bb.d ], [ %i.c, %.preheader ] ; 2 uses
  %.sroa.01.1.i22 = phi i64 [ %i.bd, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.1.i22 ; 3 uses
  %5 = add nsw i64 %.sroa.01.1.i22, -1            ; 2 uses
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !51, !noalias !52, !noundef !3 ; 3 uses
  %i.ap = icmp eq i32 %i.ao, %i.al
  br i1 %i.ap, label %.split12, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8

.split12:                                         ; preds = %.lr.ph23
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !52, !noalias !51, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !51, !noalias !52, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !range !4, !alias.scope !52, !noalias !51, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !range !4, !alias.scope !51, !noalias !52, !noundef !3 ; 2 uses
  %i.az = icmp eq i32 %i.ay, %i.aw
  %i.ba = icmp ult i32 %i.ay, %i.aw
  %i.bb = icmp ult i32 %i.au, %i.as
  %spec.select.i7 = select i1 %i.az, i1 %i.bb, i1 %i.ba
  br i1 %spec.select.i7, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8: ; preds = %.lr.ph23
  %i.bc = icmp ult i32 %i.ao, %i.al
  br i1 %i.bc, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit

bb.d:                                             ; preds = %.split12, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8
  %i.bd = add nuw nsw i64 %.sroa.01.1.i22, 1      ; 2 uses
  %exitcond31.not = icmp eq i64 %i.bd, %1
  br i1 %exitcond31.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph23

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5, %bb.c, %.split11, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8, %bb.d, %.split12, %.preheader17, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader17 ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8 ], [ true, %.split12 ], [ true, %bb.d ], [ false, %.split11 ], [ false, %bb.c ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader17 ], [ %.sroa.01.1.i22, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8 ], [ %1, %bb.d ], [ %.sroa.01.1.i22, %.split12 ], [ %.sroa.01.0.i19, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5 ], [ %1, %bb.c ], [ %.sroa.01.0.i19, %.split11 ] ; 2 uses
  %i.be = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit
  %i.bg = or i64 %1, 1
  %i.bh = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = xor i32 %i.bj, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i32 noundef %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB15_2id2IdEEB15_.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.bl = lshr i64 %1, 1
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB15_2id2IdEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.br, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB15_2id2IdEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bn = xor i64 %.sroa.0.017.i.i, -1
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.bp = getelementptr [24 x i8], ptr %i.bm, i64 %i.bn
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB15_2id2IdEEB15_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB15_2id2IdEEB15_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.br = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.bl
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !alias.scope !63, !noalias !64, !noundef !3 ; 3 uses
  %.val7 = load i64, ptr %0, align 8, !alias.scope !64, !noalias !63, !noundef !3
  %i.c = icmp ult i64 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i64 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i64, ptr %i.d, align 8, !alias.scope !63, !noalias !64, !noundef !3 ; 2 uses
  %i.e = icmp ult i64 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i64, ptr %i.g, align 8, !alias.scope !63, !noalias !64, !noundef !3 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit
  br i1 %i.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !67, !noalias !66
  %wide.load40 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !67, !noalias !66
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load41 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !68, !noalias !65
  %wide.load42 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !68, !noalias !65
  %reverse = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse43 = shufflevector <2 x i64> %wide.load42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !67, !noalias !66
  store <2 x i64> %reverse43, ptr %i.v, align 8, !alias.scope !67, !noalias !66
  %reverse44 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse45 = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse44, ptr %i.w, align 8, !alias.scope !68, !noalias !65
  store <2 x i64> %reverse45, ptr %i.x, align 8, !alias.scope !68, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !67, !noalias !66, !noundef !3
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !68, !noalias !65
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !67, !noalias !66
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !68, !noalias !65
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCsC8CapfvpQ1_5salsa.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit11.i.i, !llvm.loop !62
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB7_10MemoHeader16mark_as_verified0Bb_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  store i8 0, ptr %i.a, align 8
  call void @_RNvMNtCsC8CapfvpQ1_5salsa5eventNtB2_5Event3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtBc_10MemoHeader16mark_as_verified0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableBg_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.b, i64 12, i1 false), !noalias !78
  store i8 0, ptr %i.a, align 8, !noalias !77
  call void @_RNvMNtCsC8CapfvpQ1_5salsa5eventNtB2_5Event3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsC8CapfvpQ1_5salsa8function12diff_outputsNtNtB4_4memo10MemoHeader12diff_outputs(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  %i.b = alloca [16 x i8], align 4                ; 12 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.512 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 13 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 14 uses
  %i.l = alloca [12 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.n)
  %i.o = load i32, ptr %i.m, align 8, !range !6, !noundef !3
end_hunk_0
