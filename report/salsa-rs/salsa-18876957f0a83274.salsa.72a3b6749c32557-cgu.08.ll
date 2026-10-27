Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.08?download=true
inline.NumInlined: 240
inline.NumDeleted: 151
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtBg_14IngredientImplpE11clear_memos5inner00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableBi_, ptr @_RNCNCNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtBb_14IngredientImplpE11clear_memos5inner00Bd_, ptr @_RNCNCNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtBb_14IngredientImplpE11clear_memos5inner00Bd_ }>, align 8
@1 = private unnamed_addr constant [13 x i8] c"src/zalsa.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\0C\00\00\00\00\00\00\00\1A\01\00\00%\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\0C\00\00\00\00\00\00\00\1B\01\00\00\0D\00\00\00" }>, align 8
@4 = private unnamed_addr constant [18 x i8] c"src/table/memo.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\11\00\00\00\00\00\00\00\19\01\00\00\0E\00\00\00" }>, align 8
@6 = private unnamed_addr constant [52 x i8] c"attempted to insert an object that is already linked", align 1
@7 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/intrusive-collections-0.10.3/src/linked_list.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00\BB\04\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant [16 x i8] c"src/interned.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0F\00\00\00\00\00\00\00f\05\00\00\1A\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0F\00\00\00\00\00\00\00q\05\00\00\17\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0F\00\00\00\00\00\00\00n\05\00\00\1B\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0F\00\00\00\00\00\00\00n\05\00\003\00\00\00" }>, align 8
@_RNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtB8_14IngredientImplpE18specify_and_record010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtBa_14IngredientImplpE18specify_and_record010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@14 = private unnamed_addr constant [31 x i8] c"\1Ainconsistent type-id for `\C0\01`\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\11\00\00\00\00\00\00\00\1B\02\00\00\05\00\00\00" }>, align 8
@16 = private unnamed_addr constant [24 x i8] c"src/function/specify.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\17\00\00\00\00\00\00\00\AD\00\00\00/\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtBc_10MemoHeader16mark_as_verified0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableBg_, ptr @_RNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB7_10MemoHeader16mark_as_verified0Bb_, ptr @_RNCNvMs0_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB7_10MemoHeader16mark_as_verified0Bb_ }>, align 8
@19 = private unnamed_addr constant [45 x i8] c"\1Eexpected a query assigned by `\C0\08`, not `\C0\01`\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"\17\00\00\00\00\00\00\00\AE\00\00\00\0E\00\00\00" }>, align 8
@_RNvNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtB6_14IngredientImplpE18specify_and_record10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtB8_14IngredientImplpE18specify_and_record10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\0F\00\00\00\00\00\00\00P\03\00\00!\00\00\00" }>, align 8
@22 = private unnamed_addr constant [33 x i8] c"event src/function/specify.rs:145", align 1
@23 = private unnamed_addr constant [24 x i8] c"salsa::function::specify", align 1
@24 = private unnamed_addr constant [7 x i8] c"message", align 1
@25 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @24, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa }>, align 8
@27 = private unnamed_addr constant [23 x i8] c"src/function/specify.rs", align 1
@_RNvNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtBa_14IngredientImplpE18specify_and_record010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\91\00\00\00", ptr @22, [8 x i8] c"!\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @25, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtB8_14IngredientImplpE18specify_and_record010___CALLSITE, ptr @26, ptr @23, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @27, [9 x i8] c"\17\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvNtCsC8CapfvpQ1_5salsa8interned10new_shards6SHARDS = internal global <{ [8 x i8], [4 x i8], [4 x i8] }> <{ [8 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@28 = private unnamed_addr constant [35 x i8] c"enabled src/function/specify.rs:145", align 1
@_RNvNvNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtB8_14IngredientImplpE18specify_and_record10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\91\00\00\00", ptr @28, [8 x i8] c"#\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMNtNtCsC8CapfvpQ1_5salsa8function7specifyINtB6_14IngredientImplpE18specify_and_record10___CALLSITE, ptr @26, ptr @23, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @27, [9 x i8] c"\17\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@29 = private unnamed_addr constant [8 x i8] c"\03Id(\C0\01)\00", align 1
@30 = private unnamed_addr constant [11 x i8] c"\03Id(\C0\01g\C0\01)\00", align 1
@31 = private unnamed_addr constant [83 x i8] c"internal error: entered unreachable code: DummyMemo is never stored in a memo table", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\11\00\00\00\00\00\00\00\F9\00\00\00\09\00\00\00" }>, align 8
@33 = private unnamed_addr constant [63 x i8] c"internal error: entered unreachable code: should never get here", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\11\00\00\00\00\00\00\00-\02\00\00\09\00\00\00" }>, align 8
@35 = private unnamed_addr constant [9 x i8] c"MemoTable", align 1
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtB6_5Debug3fmtBA_ }>, align 8
@37 = private unnamed_addr constant [8 x i8] c"Assigned", align 1
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesNtB6_5Debug3fmtBA_ }>, align 8
@39 = private unnamed_addr constant [7 x i8] c"Derived", align 1
@40 = private unnamed_addr constant [16 x i8] c"DerivedUntracked", align 1
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@42 = private unnamed_addr constant [19 x i8] c"MemoIngredientIndex", align 1
@43 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 9095862890740116924 to ptr), ptr inttoptr (i64 5234688151291832568 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEB1g_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #27
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #27
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1k_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1k_.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEEB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !noalias !18
  store ptr %3, ptr %i.a, align 8, !noalias !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8, !noalias !18
  %i.e = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !18
  %i.f = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !18
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8, !alias.scope !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8, !alias.scope !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8, !alias.scope !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8, !alias.scope !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8, !alias.scope !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i.i, ptr %i.k, align 8, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 40         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc18
  %.sroa.13.2 = phi ptr [ %i.ag, %.noexc18 ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.7.2 = phi ptr [ %i.ai, %.noexc18 ], [ %i.h, %.critedge ] ; 3 uses
  %.sroa.0.0.i17 = phi ptr [ %i.k, %.noexc18 ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -40 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -40 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.l = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -8
  %i.m = load i8, ptr %i.l, align 8, !range !47, !alias.scope !48, !noalias !49, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -8
  %i.o = load i8, ptr %i.n, align 8, !range !47, !alias.scope !50, !noalias !49, !noundef !3 ; 2 uses
  %i.p = sub nsw i8 %i.m, %i.o
  %i.q = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader
  %i.r = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %.noexc18 unwind label %.loopexit ; 2 uses

.noexc18:                                         ; preds = %.noexc
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.q, 0
  %i.u = extractvalue { ptr, i64 } %i.r, 0
  %i.v = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.v)
  %i.w = tail call i32 @memcmp(ptr %i.t, ptr %i.u, i64 %spec.store.select.i.i.i), !noalias !49 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %i.s, %i.v
  %spec.select.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = icmp eq i8 %i.m, %i.o
  %i.ab = icmp slt i64 %spec.select.i.i.i, 0
  %i.ac = icmp eq i8 %i.p, -1
  %i.ad = select i1 %i.aa, i1 %i.ab, i1 %i.ac     ; 3 uses
  %..i = select i1 %i.ad, ptr %i.i, ptr %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %..i, i64 40, i1 false), !noalias !49
  %i.ae = xor i1 %i.ad, true
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.af ; 3 uses
  %i.ah = zext i1 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.ah ; 3 uses
  %i.aj = icmp eq ptr %i.ag, %0
  %i.ak = icmp eq ptr %i.ai, %2
  %or.cond.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCINvMs1_B1c_NtB1c_5Zalsa3newNtNtB1e_13database_impl12DatabaseImplE0E0EB1e_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc24
  %.sroa.13.3 = phi ptr [ %i.bj, %.noexc24 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.bg, %.noexc24 ], [ %2, %.critedge ] ; 5 uses
  %.sroa.0.02.i = phi ptr [ %i.bi, %.noexc24 ], [ %i.e, %.critedge ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32
  %i.am = load i8, ptr %i.al, align 8, !range !47, !alias.scope !55, !noalias !56, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 32
  %i.ao = load i8, ptr %i.an, align 8, !range !47, !alias.scope !57, !noalias !56, !noundef !3 ; 2 uses
  %i.ap = sub nsw i8 %i.am, %i.ao
  %i.aq = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.02.i)
          to label %.noexc23 unwind label %.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %.lr.ph.i
  %i.ar = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.2)
          to label %.noexc24 unwind label %.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %.noexc23
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.aq, 0
  %i.au = extractvalue { ptr, i64 } %i.ar, 0
  %i.av = extractvalue { ptr, i64 } %i.ar, 1      ; 2 uses
  %spec.store.select.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.av)
  %i.aw = tail call i32 @memcmp(ptr %i.at, ptr %i.au, i64 %spec.store.select.i.i.i20), !noalias !56 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.as, %i.av
  %spec.select.i.i.i21 = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = icmp eq i8 %i.am, %i.ao
  %i.bb = icmp slt i64 %spec.select.i.i.i21, 0
  %i.bc = icmp eq i8 %i.ap, -1
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc     ; 3 uses
  %i.be = xor i1 %i.bd, true
  %spec.select.i = select i1 %i.bd, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(40) %spec.select.i, i64 40, i1 false), !noalias !56
  %i.bf = zext i1 %i.be to i64
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.2, i64 %i.bf ; 3 uses
  %i.bh = zext i1 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i, i64 %i.bh ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsC8CapfvpQ1_5salsa8function8eviction3lruNtB2_3Lru6insert:bb.a
  %.sroa.0.0.insert.ext.i = zext i32 %1 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.f = mul i64 %.sroa.0.0.insert.insert.i, -1065810590584100411 ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 26) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !145, !noundef !3 ; 6 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !145, !nonnull !3, !noundef !3 ; 8 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ah, %bb.f ]
  %.pn.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.ai, %bb.f ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.k ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !146 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.05.0.i33.i.i.i = phi i16 [ %i.ag, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val2.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !147, !nonnull !3, !noundef !3 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 16
  %.val1.i.i.i.i.i = load i32, ptr %i.y, align 4, !noalias !147
  %i.z = getelementptr i8, ptr %.val2.i.i.i.i, i64 20
  %.val2.i.i.i.i.i = load i32, ptr %i.z, align 4, !noalias !147, !noundef !3
  %i.aa = icmp eq i32 %2, %.val2.i.i.i.i.i
  %i.ab = icmp eq i32 %1, %.val1.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.m, label %bb.e, !prof !8

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g, !prof !9

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.af = add i16 %.sroa.05.0.i33.i.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.05.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i.i, %i.ah
  br label %bb.d

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !141, !noalias !148, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i.i, %bb.g
  %i.an = phi ptr [ %i.by, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !150, !noalias !148, !noundef !3 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !151, !noundef !3
  store ptr %i.ap, ptr %i.al, align 8, !alias.scope !150, !noalias !148
  br label %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !152
  %i.aq = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #27, !noalias !152 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i, !prof !9

_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.sink6.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.aq, %bb.j ] ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sink6.i.i.i.i, align 8, !noalias !151
  %.sroa.4.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx4.i.i.i.i, align 8, !noalias !151
  %i.as = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 16
  store i32 %1, ptr %i.as, align 8, !noalias !153
  %i.at = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 20
  store i32 %2, ptr %i.at, align 4, !noalias !153
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noalias !153, !nonnull !3, !noundef !3
  store ptr %i.an, ptr %.sink6.i.i.i.i, align 8, !noalias !153
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx4.i.i.i.i, align 8, !noalias !153
  store ptr %.sink6.i.i.i.i, ptr %i.au, align 8, !noalias !153
  %i.aw = load ptr, ptr %.sroa.4.0..sroa_idx4.i.i.i.i, align 8, !noalias !153, !nonnull !3, !noundef !3
  store ptr %.sink6.i.i.i.i, ptr %i.aw, align 8, !noalias !153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %.sroa.0.07.i.i.i.i.i = and i64 %i.k, %i.g      ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 1, !noalias !155
  %i.ay = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !10

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.az, %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.bb
  %i.bd = and i64 %i.bc, %i.k                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !156, !noundef !3 ; 2 uses
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.k, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i, !prof !9

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.val72.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !156
  %i.bh = icmp slt <16 x i8> %.val72.i.i.i.i.i.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i6.i.i.i.i.i = icmp ne i16 %i.bi, 0
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bi, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bk
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !156
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i ]
  %i.bl = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCs4EKqXNOBxpl_8hashlink15linked_hash_map13allocate_nodeNtNtCsC8CapfvpQ1_5salsa2id2IduEB11_.exit.i.i.i ]
  %i.bm = add i64 %i.bl, 16                       ; 2 uses
  %i.bn = add i64 %i.bm, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = and i64 %i.bn, %i.k      ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !155
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !11

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i: ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %i.br = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.bf, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.bk, %bb.k ], [ %i.bd, %._crit_edge.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !157, !noalias !148, !noundef !3 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = trunc i8 %i.br to i1
  %or.cond.i.i.i.i = and i1 %i.bu, %i.bv
  br i1 %or.cond.i.i.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE7reserveNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB38_21insert_hashed_nocheck0E0EB2s_.exit.i.i.i.i, label %_RNvMss_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1e_.exit.i, !prof !12

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE7reserveNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB38_21insert_hashed_nocheck0E0EB2s_.exit.i.i.i.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i
  %i.bw = invoke { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3g_21insert_hashed_nocheck0E0EB2s_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i1 noundef zeroext true)
          to label %.noexc2 unwind label %bb.n    ; 0 uses

.noexc2:                                          ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE7reserveNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB38_21insert_hashed_nocheck0E0EB2s_.exit.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !157, !noalias !158 ; 3 uses
  %.val8.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !157, !noalias !158, !noundef !3 ; 2 uses
  %i.bx = tail call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i.i.i.i, i64 %.val8.i.i.i.i, i64 noundef %i.g), !noalias !158 ; 2 uses
  %.phi.trans.insert9.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 %i.bx
  %.pre10.i.i.i.i = load i8, ptr %.phi.trans.insert9.i.i.i.i, align 1, !noalias !159
  %.pre11.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !160, !noalias !158
  br label %_RNvMss_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1e_.exit.i

bb.l:                                             ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !161
  %i.by = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #27, !noalias !161 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.invoke, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !9

.invoke:                                          ; preds = %bb.l, %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.l
  %.sroa.4.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.by, ptr %i.by, align 8, !noalias !153
  store ptr %i.by, ptr %.sroa.4.0..sroa_idx10.i.i.i, align 8, !noalias !153
  store ptr %i.by, ptr %i.ak, align 8, !alias.scope !141, !noalias !148
  br label %bb.h

_RNvMss_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1e_.exit.i: ; preds = %.noexc2, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i
  %i.ca = phi i64 [ %.val8.i.i.i.i, %.noexc2 ], [ %i.k, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.cb = phi i64 [ %.pre11.i.i.i.i, %.noexc2 ], [ %i.bt, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.cc = phi i8 [ %.pre10.i.i.i.i, %.noexc2 ], [ %i.br, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.cd = phi ptr [ %.val7.i.i.i.i, %.noexc2 ], [ %i.l, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.bx, %.noexc2 ], [ %.sroa.0.0.i5.i.i.i.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.0.0.i.i.i.i
  %i.cf = and i8 %i.cc, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = sub i64 %i.cb, %i.cg
  store i64 %i.ch, ptr %i.bs, align 8, !alias.scope !160, !noalias !158
  %i.ci = add i64 %.sroa.0.0.i.i.i.i, -16
  %i.cj = and i64 %i.ci, %i.ca
  store i8 %i.i, ptr %i.ce, align 1, !noalias !159
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.i, ptr %i.cl, align 1, !noalias !159
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !160, !noalias !158, !noundef !3
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !alias.scope !160, !noalias !158
  %i.cp = sub nsw i64 0, %.sroa.0.0.i.i.i.i
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  store ptr %.sink6.i.i.i.i, ptr %i.cr, align 8, !noalias !159
  br label %_RNvMs0_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_13LinkedHashMapNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1a_.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !141, !nonnull !3, !noundef !3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 8 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !141, !nonnull !3, !noundef !3
  store ptr %i.ct, ptr %i.cv, align 8, !noalias !141
  %i.cw = load ptr, ptr %i.cu, align 8, !noalias !141, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !noalias !141
  %i.cy = load ptr, ptr %i.cs, align 8, !alias.scope !141, !nonnull !3, !noundef !3 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !141, !nonnull !3, !noundef !3
  store ptr %i.cy, ptr %.val2.i.i.i.i, align 8, !noalias !141
  store ptr %i.da, ptr %i.cu, align 8, !noalias !141
  store ptr %.val2.i.i.i.i, ptr %i.cz, align 8, !noalias !141
  %i.db = load ptr, ptr %i.cu, align 8, !noalias !141, !nonnull !3, !noundef !3
  store ptr %.val2.i.i.i.i, ptr %i.db, align 8, !noalias !141
  br label %_RNvMs0_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_13LinkedHashMapNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1a_.exit

bb.n:                                             ; preds = %.invoke, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE7reserveNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB38_21insert_hashed_nocheck0E0EB2s_.exit.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.de = extractvalue { i8, i1 } %i.dd, 1
  br i1 %i.de, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_set13LinkedHashSetNtNtCsC8CapfvpQ1_5salsa2id2IdINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEEB3a_.exit, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_set13LinkedHashSetNtNtCsC8CapfvpQ1_5salsa2id2IdINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEEB3a_.exit unwind label %bb.q

_RNvMs0_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_13LinkedHashMapNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1a_.exit: ; preds = %bb.m, %_RNvMss_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1e_.exit.i
  %i.df = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.dg = extractvalue { i8, i1 } %i.df, 1
  br i1 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_set13LinkedHashSetNtNtCsC8CapfvpQ1_5salsa2id2IdINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEEB3a_.exit5, label %bb.p, !prof !8

bb.p:                                             ; preds = %_RNvMs0_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_13LinkedHashMapNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1a_.exit
  tail call void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_set13LinkedHashSetNtNtCsC8CapfvpQ1_5salsa2id2IdINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEEB3a_.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_set13LinkedHashSetNtNtCsC8CapfvpQ1_5salsa2id2IdINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEEB3a_.exit5: ; preds = %_RNvMs0_NtCs4EKqXNOBxpl_8hashlink15linked_hash_mapINtB5_13LinkedHashMapNtNtCsC8CapfvpQ1_5salsa2id2IduINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertB1a_.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.o
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_set13LinkedHashSetNtNtCsC8CapfvpQ1_5salsa2id2IdINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEEB3a_.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %i.dc
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_14MemoTableTypes3set(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !166, !noundef !3 ; 7 uses
  %i.d = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i64 %i.c, %i.a
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !4, !alias.scope !166, !noundef !3
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, 4294967296) %i.a, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28, !noalias !167
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !166, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.a ; 3 uses
  %i.k = icmp samesign ugt i64 %i.c, %i.a
  br i1 %i.k, label %bb.f, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeE10insert_mutBJ_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = sub nuw nsw i64 %i.c, %i.a
  %i.n = mul nuw nsw i64 %i.m, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %i.n, i1 false), !noalias !168
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeE10insert_mutBJ_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeE10insert_mutBJ_.exit: ; preds = %bb.e, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = add nuw nsw i64 %i.c, 1
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !166
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_18MemoTableWithTypes12memory_usage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.c

bb.b:                                             ; preds = %bb.g, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.ai, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #29
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !nonnull !3, !align !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.014 = phi ptr [ %i.g, %.lr.ph ], [ %i.r, %.backedge ] ; 2 uses
  %.sroa.7.013 = phi i64 [ 0, %.lr.ph ], [ %i.s, %.backedge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.013, 1
  %i.t = load atomic ptr, ptr %.sroa.0.014 acquire, align 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.backedge, label %bb.e

.thread:                                          ; preds = %.backedge, %bb.a, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.p, align 8, !noundef !3
  %i.w = icmp ult i64 %.sroa.7.013, %i.v
  br i1 %i.w, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.e, %bb.l
  %i.x = icmp eq ptr %i.r, %i.m
  br i1 %i.x, label %.thread, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.7.013
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = invoke { ptr, ptr } %i.aa(ptr noundef nonnull %i.t)
          to label %bb.g unwind label %bb.b       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %2 = extractvalue { ptr, ptr } %i.ab, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !3, !nonnull !3
  invoke void %i.ae(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull %i.ac)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !172, !noundef !3 ; 3 uses
  %i.ag = load i64, ptr %i.b, align 8, !range !4, !alias.scope !172, !noundef !3
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.j, !noalias !173

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #29
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !172, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.ak, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.al, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  %i.am = add i64 %i.af, 1
  store i64 %i.am, ptr %i.d, align 8, !alias.scope !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge

bb.m:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB4_15LazyMemoEntries10initialize(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = tail call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1H_8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCNvMs_BR_NtBR_15LazyMemoEntries10initialize0EEBV_(i64 noundef 0, i64 noundef %i.b) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = cmpxchg ptr %0, ptr null, ptr %i.d release acquire, align 8 ; 2 uses
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  %i.g = extractvalue { ptr, i1 } %i.e, 0         ; 2 uses
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEEB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEEB1g_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.h, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 8) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEEB1g_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEEB1g_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.02.0 = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.c ]
  %i.k = load i64, ptr %i.a, align 8, !noundef !3
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %i.k, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !176
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !3
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !9

bb.b:                                             ; preds = %._crit_edge
  %.val72.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val72.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !176
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE6removeB1f_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !13, !noundef !3 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !3
  %i.h = icmp eq ptr %i.g, %i.b
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %.val11 = load ptr, ptr %i.i, align 8           ; 4 uses
  br i1 %i.h, label %bb.g, label %.thread

bb.c:                                             ; preds = %bb.b
  %.val6 = load ptr, ptr %i.b, align 8, !noundef !3
  store ptr %.val6, ptr %i.c, align 8
  br label %.critedge

.thread:                                          ; preds = %.critedge, %bb.g
  %.val = load ptr, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.val11, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.not6.i = icmp eq ptr %.val11, null
  br i1 %.not6.i, label %_RINvNtCsj8k30Q1C9TB_21intrusive_collections11linked_list6removeNtB2_7LinkOpsECsC8CapfvpQ1_5salsa.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.val, ptr %.val11, align 8
  br label %_RINvNtCsj8k30Q1C9TB_21intrusive_collections11linked_list6removeNtB2_7LinkOpsECsC8CapfvpQ1_5salsa.exit

_RINvNtCsj8k30Q1C9TB_21intrusive_collections11linked_list6removeNtB2_7LinkOpsECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  store ptr %.val, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  store ptr %.val11, ptr %i.f, align 8
  br label %.thread

bb.h:                                             ; preds = %bb.a, %_RINvNtCsj8k30Q1C9TB_21intrusive_collections11linked_list6removeNtB2_7LinkOpsECsC8CapfvpQ1_5salsa.exit
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue11record_cold(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

end_hunk_1
begin_hunk_2_@_RNvNtNtCsC8CapfvpQ1_5salsa5table4memo18type_assert_failed:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsC8CapfvpQ1_5salsa8function7specify24validate_specified_value(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i32, ptr %i.g, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !189, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  %i.k = zext i32 %i.h to i64                     ; 3 uses
  %i.l = load atomic ptr, ptr %i.j acquire, align 8, !noalias !190 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !190, !noundef !3
  %.not.i = icmp ugt i64 %i.o, %i.k
  br i1 %.not.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.q = load ptr, ptr %3, align 8, !alias.scope !189, !nonnull !3, !align !13, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !190, !noundef !3
  %i.t = icmp ugt i64 %i.s, %i.k
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !noalias !190 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.w)
  %i.x = load i32, ptr %i.f, align 8, !range !14, !noundef !3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !3
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.i, !prof !8

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.af, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsC_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginRefNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.e, align 4, !range !15, !noundef !3
  %i.ah = load i32, ptr %1, align 4, !range !15, !noundef !3
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 4, !noundef !3
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexBM_EBQ_(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ap = load ptr, ptr %i.ao, align 8, !noundef !3
  %.not7 = icmp eq ptr %i.ap, null
  br i1 %.not7, label %bb.l, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @18)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load i64, ptr %i.aq, align 8, !range !6, !noundef !3
  call void @_RNvMs1_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.u, i64 noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 29
  call void @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues5store(ptr noundef nonnull %i.as, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtB7_14IngredientImplpE11clear_memos5inner(ptr noundef nonnull align 8 %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 dereferenceable(16) %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %.sroa.42.i.i.i.i = alloca ptr, align 8         ; 5 uses
  %.sroa.7.i.i.i.i = alloca ptr, align 8          ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.g, align 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !223, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !223
  %i.i = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.i, i64 0, i64 %.val1.i
  %.sroa.0.0.i.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !223, !nonnull !3, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !223, !noundef !3
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !224
  store ptr %.sroa.0.0.i.i, ptr %i.e, align 8, !noalias !225
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.p, align 8, !noalias !225
  store ptr %i.l, ptr %i.d, align 8, !noalias !225
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !225
  %i.r = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.s = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %.noexc
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !224
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i.i, label %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.y = zext i32 %1 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.019.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.z, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i ] ; 4 uses
  %i.z = add nuw i64 %.sroa.0.019.i.i, 1          ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.0.019.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.019.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !227, !noalias !229 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !230, !noalias !229, !noundef !3 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !alias.scope !230, !noalias !229
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.ae = invoke { ptr, ptr } %.val.i.i.i.i.i(ptr noundef nonnull %i.ac)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !210 ; 2 uses

.noexc4:                                          ; preds = %bb.c
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = invoke noundef i32 @_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize(i64 noundef %.sroa.0.019.i.i)
          to label %bb.e unwind label %bb.d, !noalias !231

bb.d:                                             ; preds = %.noexc4
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEB1g_(ptr nonnull %i.af, ptr nonnull %i.ag) #29
          to label %.body unwind label %bb.f, !noalias !231

bb.e:                                             ; preds = %.noexc4
  store ptr %i.af, ptr %.sroa.42.i.i.i.i, align 8, !alias.scope !228, !noalias !232
  %i.aj = zext i32 %i.ah to i64
  br label %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !231
  unreachable

_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i: ; preds = %bb.e, %bb.b
  %.sroa.0.0.i.i.i2.i = phi i64 [ 0, %bb.b ], [ %i.aj, %bb.e ] ; 3 uses
  %.sink4.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.42.i.i.i.i, %bb.b ], [ %.sroa.7.i.i.i.i, %bb.e ]
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.ag, %bb.e ]
  store ptr %.sink.i.i.i.i.i, ptr %.sink4.i.sroa.phi.i.i.i.i, align 8, !alias.scope !228, !noalias !232
  %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i = load ptr, ptr %.sroa.42.i.i.i.i, align 8, !noalias !232, !noundef !3 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i
  %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.i.i.i.i, align 8, !noalias !232, !nonnull !3, !noundef !3 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.al = load i64, ptr %i.t, align 8, !noalias !234, !noundef !3 ; 2 uses
  %i.am = icmp ugt i64 %i.al, %i.y
  br i1 %i.am, label %bb.h, label %.invoke.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.u, align 8, !noalias !234, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.y ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !234, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, %.sroa.0.0.i.i.i2.i
  br i1 %i.ar, label %bb.i, label %.invoke.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.as = phi i64 [ %i.y, %bb.g ], [ %.sroa.0.0.i.i.i2.i, %bb.h ]
  %i.at = phi i64 [ %i.al, %bb.g ], [ %i.aq, %bb.h ]
  %i.au = phi ptr [ @2, %bb.g ], [ @3, %bb.h ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au) #28
          to label %.cont.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !234

.cont.i.i.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i.i.i
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.k, %.invoke.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEB1g_(ptr nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, ptr nonnull readonly align 8 dereferenceable(56) %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i) #29
          to label %.body unwind label %bb.r, !noalias !235

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !234, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.0.0.i.i.i2.i
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !234, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !234
  store i32 %4, ptr %i.c, align 4, !noalias !234
  store i32 %5, ptr %i.v, align 4, !noalias !234
  store i32 %i.ay, ptr %i.w, align 4, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  store ptr %i.c, ptr %i.b, align 8, !noalias !234
  %i.az = load ptr, ptr %i.x, align 8, !noalias !234, !noundef !3
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0)
          to label %bb.k unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !234

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !3, !alias.scope !233, !noalias !236, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !234
  invoke void %i.bb(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.l unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !234

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !234
  %i.bc = load ptr, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i, align 8, !invariant.load !3, !alias.scope !233, !noalias !236 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.bc(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i)
          to label %bb.n unwind label %bb.p, !noalias !234

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !4, !invariant.load !3, !alias.scope !233, !noalias !236 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !5, !invariant.load !3, !alias.scope !233, !noalias !236
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #27, !noalias !234
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !4, !invariant.load !3, !alias.scope !233, !noalias !236 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.i.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !5, !invariant.load !3, !alias.scope !233, !noalias !236
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #27, !noalias !234
  br label %.body

bb.r:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !234
  unreachable

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i: ; preds = %bb.o, %bb.n, %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond.not.i.i = icmp eq i64 %i.z, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i, label %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %.noexc, %bb.a
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, %.noexc3
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.bp = load ptr, ptr %3, align 8, !alias.scope !239, !noundef !3 ; 2 uses
  store ptr null, ptr %3, align 8, !alias.scope !239
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit, label %bb.s

bb.s:                                             ; preds = %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit
  %i.br = load i64, ptr %i.h, align 8, !alias.scope !239, !noundef !3 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = shl nuw nsw i64 %i.br, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef range(i64 1, -9223372036854775808) %i.bt, i64 noundef 8) #27, !noalias !239
  br label %_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit

_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit: ; preds = %bb.t, %bb.s, %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.p, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %bb.d ], [ %i.bi, %bb.p ], [ %i.bi, %bb.q ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtBa_14IngredientImplpE11clear_memos5innerNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f)
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtB7_14IngredientImplpE12insert_value5inner(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br i1 %4, label %bb.c, label %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit

_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit: ; preds = %bb.g, %bb.f, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !252, !nonnull !3, !noundef !3 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val6.i.i = load i64, ptr %i.a, align 8, !alias.scope !252, !noundef !3 ; 4 uses
  %.sroa.0.07.i.i.i = and i64 %.val6.i.i, %1      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.b, align 1, !noalias !253
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !10

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.d, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i.i.i, %i.f
  %i.h = and i64 %i.g, %.val6.i.i                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noalias !254, !noundef !3 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, !prof !9

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !254
  %i.l = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.o
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !254
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ 0, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.r, %.val6.i.i     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !253
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !11

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %i.v = phi i8 [ %.pre.i.i, %bb.b ], [ %i.j, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !252, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = trunc i8 %i.v to i1
  %or.cond.i.i = and i1 %i.y, %i.z
  br i1 %or.cond.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i, label %_RNvNtCsC8CapfvpQ1_5salsa8interned20insert_unique_erased.exit, !prof !12

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i
  %i.aa = tail call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1, ptr noundef nonnull %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %6, i1 noundef zeroext true) ; 0 uses
  %.val7.i.i = load ptr, ptr %0, align 8, !alias.scope !252 ; 3 uses
  %.val8.i.i = load i64, ptr %i.a, align 8, !alias.scope !252, !noundef !3 ; 2 uses
  %i.ab = tail call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i.i, i64 %.val8.i.i, i64 noundef %1) ; 2 uses
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.ab
  %.pre10.i.i = load i8, ptr %.phi.trans.insert9.i.i, align 1, !noalias !255
  %.pre11.i.i = load i64, ptr %i.w, align 8, !alias.scope !256
  br label %_RNvNtCsC8CapfvpQ1_5salsa8interned20insert_unique_erased.exit

_RNvNtCsC8CapfvpQ1_5salsa8interned20insert_unique_erased.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i
  %i.ac = phi i64 [ %.val8.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %.val6.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.ad = phi i64 [ %.pre11.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %i.x, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.ae = phi i8 [ %.pre10.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %i.v, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.af = phi ptr [ %.val7.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %.val.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ab, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %.sroa.0.0.i5.i.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  %i.ag = lshr i64 %1, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i.i
  %i.aj = and i8 %i.ae, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = sub i64 %i.ad, %i.ak
  store i64 %i.al, ptr %i.w, align 8, !alias.scope !256
  %i.am = add i64 %.sroa.0.0.i.i, -16
  %i.an = and i64 %i.am, %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !noalias !255
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store i8 %i.ah, ptr %i.ap, align 1, !noalias !255
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !256, !noundef !3
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !alias.scope !256
  %i.at = sub nsw i64 0, %.sroa.0.0.i.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  store ptr %2, ptr %i.av, align 8, !noalias !255
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !noundef !3
  %cond.i.i.i = icmp eq ptr %i.aw, inttoptr (i64 1 to ptr)
  br i1 %cond.i.i.i, label %bb.d, label %_RNvXs4_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listNtB5_7LinkOpsNtNtB7_8link_ops7LinkOps12acquire_link.exit.i.i

_RNvXs4_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listNtB5_7LinkOpsNtNtB7_8link_ops7LinkOps12acquire_link.exit.i.i: ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %7, align 8, !noundef !3  ; 3 uses
  %.not6.i5.i = icmp eq ptr %i.ax, null
  br i1 %.not6.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %3, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.ax, ptr %3, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.az, align 8
  store ptr %3, ptr %7, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !3
  %.not1.i = icmp eq ptr %i.bb, null
  br i1 %.not1.i, label %bb.g, label %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit

bb.g:                                             ; preds = %bb.f
  store ptr %3, ptr %i.ba, align 8
  br label %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtB7_14IngredientImplpE18find_reusable_slot5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef range(i64 1, 0) %2, ptr noalias noundef align 8 dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %.not.i17 = icmp eq ptr %i.e, null
  br i1 %.not.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %storemerge18 = phi ptr [ %i.e, %.lr.ph ], [ %i.aa, %bb.h ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge18, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !6, !noundef !3
  %i.k = load i64, ptr %i.f, align 8, !noalias !259, !noundef !3 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 3
  br i1 %i.l, label %bb.c, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !noalias !259, !nonnull !3, !noundef !3
  %i.n = load i64, ptr %i.g, align 8, !noalias !259, !noundef !3
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i: ; preds = %bb.b, %bb.c
  %.sink12.i.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ]
  %.sink11.i.i = phi i64 [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.not.i11 = icmp eq i64 %.sink11.i.i, 0
  br i1 %.not.i11, label %_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit.thread, label %_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit

_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i
  %i.o = getelementptr [8 x i8], ptr %.sink12.i.i, i64 %.sink11.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp ult i64 %i.j, %i.q
  br i1 %i.s, label %bb.d, label %_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit.thread

._crit_edge:                                      ; preds = %bb.h, %bb.a
  store i32 0, ptr %0, align 8
  br label %bb.g

_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit.thread: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E6tripleBM_.exit.i, %_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit
  store i32 0, ptr %0, align 8
  br label %bb.g

bb.d:                                             ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge18, i64 20
  %i.u = load i32, ptr %i.t, align 4, !noundef !3 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i32 %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge18, i64 16
  %i.y = load i32, ptr %i.x, align 8, !range !15, !noundef !3 ; 2 uses
  store i32 %i.y, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.u, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.w, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %storemerge18, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = call fastcc noundef ptr @_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE6removeB1f_(ptr noalias noundef align 8 dereferenceable(16) %i.a)
  %.not9 = icmp eq ptr %i.z, null
  br i1 %.not9, label %bb.i, label %bb.h, !prof !9

bb.g:                                             ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue8is_stale.exit.thread, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.d, align 8, !noundef !3 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.aa, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa2id2IdINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = icmp eq <2 x i32> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %.sroa.0.0.i = select i1 %i.e, i1 %i.d, i1 false
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtBa_14IngredientImplpE11clear_memos5innerNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !13, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  %.val.i = load ptr, ptr %.val1, align 8, !noundef !3 ; 2 uses
  %i.i = getelementptr i8, ptr %.val1, i64 8
  %.val3.i = load i64, ptr %i.i, align 8
  %i.j = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.j, i64 0, i64 %.val3.i
  %.sroa.0.0.i.i = select i1 %i.j, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !267
  store ptr %i.e, ptr %i.b, align 8, !noalias !268
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.l, align 8, !noalias !268
  store ptr %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !268
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !268
  %i.n = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !268
  %i.o = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !268
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !267
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_RNvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i
  %.sroa.8.013.i = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.p = add nuw i64 %.sroa.8.013.i, 1            ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.8.013.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.8.013.i ; 2 uses
  %.val4.i = load ptr, ptr %i.q, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !269, !noundef !3 ; 2 uses
  store ptr null, ptr %i.r, align 8, !alias.scope !269
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.u = call { ptr, ptr } %.val4.i(ptr noundef nonnull %i.s), !noalias !269, !inline_history !266 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.x(ptr noundef nonnull %i.v)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !5, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #27
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ad

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i, label %_RNvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit, label %.lr.ph.i

_RNvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEEB1C_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsC8CapfvpQ1_5salsa2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !3 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = load i32, ptr %0, align 4, !range !15, !noundef !3
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !align !13, !noundef !3
  %i.n = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @29, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load i32, ptr %0, align 4, !range !15, !noundef !3
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.g, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.q, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.r = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !align !13, !noundef !3
  %i.u = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.n, %bb.b ], [ %i.u, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_15LazyMemoEntriesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !272, !noundef !3 ; 2 uses
  store ptr null, ptr %0, align 8, !alias.scope !272
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !272, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef 8) #27, !noalias !272
  br label %_RNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit

_RNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB4_15LazyMemoEntries5clear.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_3pin3PinRNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge11EdgeCondvarENtB6_5Debug3fmtBV_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !13, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge11EdgeCondvarNtB6_5Debug3fmtBE_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa2id2IdNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !7, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !276, !noundef !3 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !278
  %i.j = load i32, ptr %i.f, align 4, !range !15, !alias.scope !276, !noundef !3
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.e, align 4, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !278
  store ptr %i.e, ptr %i.d, align 8, !noalias !278
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !278
  %i.l = load ptr, ptr %1, align 8, !alias.scope !277, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !277, !nonnull !3, !align !13, !noundef !3
  %i.o = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @29, ptr noundef nonnull %i.d), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !278
  br label %_RNvXs0_NtCsC8CapfvpQ1_5salsa2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !278
  %i.p = load i32, ptr %i.f, align 4, !range !15, !alias.scope !276, !noundef !3
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.c, align 4, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !278
  store i32 %i.h, ptr %i.b, align 4, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !278
  store ptr %i.c, ptr %i.a, align 8, !noalias !278
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !278
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.r, align 8, !noalias !278
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !278
  %i.s = load ptr, ptr %1, align 8, !alias.scope !277, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !277, !nonnull !3, !align !13, !noundef !3
  %i.v = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @30, ptr noundef nonnull %i.a), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !278
  br label %_RNvXs0_NtCsC8CapfvpQ1_5salsa2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXs0_NtCsC8CapfvpQ1_5salsa2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.o, %bb.b ], [ %i.v, %bb.c ]
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB5_9DummyMemoNtB5_4Memo9has_value(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
end_hunk_2
