Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/salsa-c68a43423e9593bc.salsa.9940d987241daddc-cgu.14?download=true
inline.NumInlined: 187
inline.NumDeleted: 123
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8
@_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_struct010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE10new_struct010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_structs0_010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE10new_structs0_010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE6update010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE8allocates_010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE10new_struct10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_struct10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE10new_structs_10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_structs_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE8allocate10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocate10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB7_14IngredientImplpE3new6SHARDS = local_unnamed_addr global <{ [8 x i8], [4 x i8], [4 x i8] }> <{ [8 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@2 = private unnamed_addr constant [113 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:522", align 1
@3 = private unnamed_addr constant [21 x i8] c"salsa::tracked_struct", align 1
@4 = private unnamed_addr constant [7 x i8] c"message", align 1
@5 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @4, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsd9Lm8bEdjjY_5salsa }>, align 8
@7 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs", align 1
@_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE10new_struct010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\0A\02\00\00", ptr @2, [8 x i8] c"q\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_struct010___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@8 = private unnamed_addr constant [113 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:548", align 1
@_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE10new_structs0_010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00$\02\00\00", ptr @8, [8 x i8] c"q\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_structs0_010___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@9 = private unnamed_addr constant [113 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:681", align 1
@_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE6update010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\A9\02\00\00", ptr @9, [8 x i8] c"q\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update010___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@10 = private unnamed_addr constant [113 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:583", align 1
@_RNvNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtBb_14IngredientImplpE8allocates_010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00G\02\00\00", ptr @10, [8 x i8] c"q\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocates_010___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@11 = private unnamed_addr constant [115 x i8] c"enabled /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:522", align 1
@_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_struct10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\0A\02\00\00", ptr @11, [8 x i8] c"s\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE10new_struct10___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@12 = private unnamed_addr constant [115 x i8] c"enabled /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:548", align 1
@_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE10new_structs_10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00$\02\00\00", ptr @12, [8 x i8] c"s\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE10new_structs_10___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@13 = private unnamed_addr constant [115 x i8] c"enabled /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:681", align 1
@_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE6update10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\A9\02\00\00", ptr @13, [8 x i8] c"s\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE6update10___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@14 = private unnamed_addr constant [115 x i8] c"enabled /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.27.2/src/tracked_struct.rs:583", align 1
@_RNvNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB9_14IngredientImplpE8allocate10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00G\02\00\00", ptr @14, [8 x i8] c"s\00\00\00\00\00\00\00", ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB7_14IngredientImplpE8allocate10___CALLSITE, ptr @6, ptr @3, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"g\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtB6_5Debug3fmtBA_ }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa2id2IdNtB6_5Debug3fmtBA_ }>, align 8
@_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER = external global { i64, i64 }
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsd_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_15IngredientIndexNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13DisambiguatorNtB6_5Debug3fmtBA_ }>, align 8
@20 = private unnamed_addr constant [8 x i8] c"Identity", align 1
@21 = private unnamed_addr constant [16 x i8] c"ingredient_index", align 1
@22 = private unnamed_addr constant [4 x i8] c"hash", align 1
@23 = private unnamed_addr constant [13 x i8] c"disambiguator", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRmNtB6_5Debug3fmtCsd9Lm8bEdjjY_5salsa }>, align 8
@25 = private unnamed_addr constant [15 x i8] c"IngredientIndex", align 1
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRyNtB6_5Debug3fmtCsd9Lm8bEdjjY_5salsa }>, align 8
@27 = private unnamed_addr constant [12 x i8] c"IdentityHash", align 1
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB5_8IdentityNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa2idNtB5_2IdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRbNtB6_5Debug3fmtCsd9Lm8bEdjjY_5salsa }>, align 8
@31 = private unnamed_addr constant [12 x i8] c"TrackedEntry", align 1
@32 = private unnamed_addr constant [8 x i8] c"identity", align 1
@33 = private unnamed_addr constant [2 x i8] c"id", align 1
@34 = private unnamed_addr constant [6 x i8] c"active", align 1
@35 = private unnamed_addr constant [13 x i8] c"Disambiguator", align 1
@36 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB6_11IdentityMap15mark_all_activeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtB1q_5slice4iter4IterTNtB6_8IdentityNtNtB8_2id2IdEEEEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit.thread, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.08 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.52.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 16
  %.sroa.52.0.copyload = load i32, ptr %.sroa.52.0..sroa.0.0..sroa_idx, align 8, !noalias !21 ; 2 uses
  %.not = icmp eq i32 %.sroa.52.0.copyload, 0
  br i1 %.not, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit
  %.sroa.8.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 20
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa.0.0..sroa_idx, align 4, !noalias !21
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08, i64 16, i1 false)
  %i.d = call fastcc { i32, i32 } @_RNvMs1_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB5_11IdentityMap12insert_entry(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) %i.a, i32 noundef %.sroa.52.0.copyload, i32 noundef %.sroa.8.0.copyload, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit.thread, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit.thread: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1w_2id2IdEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB6_16DisambiguatorMap4seedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1j_5slice4iter4IterTNtB6_8IdentityNtNtB8_2id2IdEENCNvMNtB8_12active_queryNtB2Y_11ActiveQuery14seed_iteration0EEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.b, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.d = load i32, ptr %i.c, align 8, !noundef !5
  %i.e = load i64, ptr %.sroa.0.05, align 8, !noundef !5
  %i.f = tail call noundef i32 @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB5_16DisambiguatorMap12disambiguate(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i32 noundef %i.d) ; 0 uses
  %i.g = icmp eq ptr %i.b, %2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsaH4Z5sDJ4bD_9hashbrown5tableINtB5_9HashTablejE6retainNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB17_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0EB1S_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !38, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !38, !nonnull !5, !noundef !5 ; 3 uses
  %.val24.i = load <16 x i8>, ptr %i.e, align 16, !noalias !39
  %i.f = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %1, align 8, !alias.scope !40, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.14.014 = phi i64 [ %i.c, %.lr.ph ], [ %i.z, %bb.e ]
  %.sroa.10.013 = phi i16 [ %i.g, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.6.012 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.6.1, %bb.e ] ; 2 uses
  %.sroa.06.011 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.06.1, %bb.e ] ; 2 uses
  %.not10.i = icmp eq i16 %.sroa.10.013, 0
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsh_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsd9Lm8bEdjjY_5salsa.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.o = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.6.012, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.06.011, %bb.b ]
  %.val68.i = load <16 x i8>, ptr %i.o, align 16, !noalias !41
  %i.q = icmp sgt <16 x i8> %.val68.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -128 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.q to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsh_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsd9Lm8bEdjjY_5salsa.exit

_RINvMsh_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsd9Lm8bEdjjY_5salsa.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.06.1 = phi ptr [ %.sroa.06.011, %bb.b ], [ %i.r, %.lr.ph.i ] ; 3 uses
  %.sroa.6.1 = phi ptr [ %.sroa.6.012, %bb.b ], [ %i.s, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %.sroa.10.013, %bb.b ], [ %.cast.i, %.lr.ph.i ] ; 3 uses
  %i.t = add i16 %.lcssa.i, -1
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = and i16 %i.t, %.lcssa.i
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [8 x i8], ptr %.sroa.06.1, i64 %i.x ; 2 uses
  %i.z = add i64 %.sroa.14.014, -1                ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !42, !noundef !5 ; 3 uses
  %.not.i4 = icmp ult i64 %i.ab, %i.i
  br i1 %.not.i4, label %_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit, label %_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread

_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread: ; preds = %_RINvMsh_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsd9Lm8bEdjjY_5salsa.exit
  %i.ac = sub i64 %i.ab, %i.k
  store i64 %i.ac, ptr %i.aa, align 8, !alias.scope !42
  br label %bb.e

_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit: ; preds = %_RINvMsh_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsd9Lm8bEdjjY_5salsa.exit
  %i.ad = icmp ult i64 %i.ab, %i.m
  br i1 %i.ad, label %bb.e, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.c:                                             ; preds = %_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !43, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.1) ]
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.aj = add nsw i64 %i.ai, -16
  %i.ak = load i64, ptr %i.a, align 8, !alias.scope !45, !noundef !5
  %i.al = and i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.al ; 2 uses
  %.sroa.0.0.copyload.i23.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !46
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai ; 2 uses
  %.sroa.0.0.copyload.i724.i.i = load <16 x i8>, ptr %i.ap, align 1, !noalias !47
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ao, i1 false)
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 false)
  %narrow.i.i = add nuw nsw i16 %i.at, %i.as
  %i.au = icmp samesign ugt i16 %narrow.i.i, 15
  br i1 %i.au, label %_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsd9Lm8bEdjjY_5salsa.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.n, align 8, !alias.scope !45, !noundef !5
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.n, align 8, !alias.scope !45
  br label %_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsd9Lm8bEdjjY_5salsa.exit

_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsd9Lm8bEdjjY_5salsa.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.d ], [ -128, %bb.c ] ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.ap, align 1, !noalias !45
  %i.ax = getelementptr i8, ptr %i.am, i64 16
  store i8 %.sroa.0.0.i.i, ptr %i.ax, align 1, !noalias !45
  %i.ay = load i64, ptr %i.b, align 8, !alias.scope !45, !noundef !5
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.b, align 8, !alias.scope !45
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread, %_RNCNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB6_4CoreNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit, %_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsd9Lm8bEdjjY_5salsa.exit
  %i.ba = icmp eq i64 %i.z, 0
  br i1 %i.ba, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table5DrainNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsn_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_7RawIterNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryE13drop_elementsBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !52, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown3raw8RawDrainNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryEEB1l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !52, !nonnull !5, !noundef !5
  %i.f = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 -1, i64 %i.f, i1 false)
  %.pre.i.i = load i64, ptr %i.b, align 8, !alias.scope !52
  %.pre.fr.i.i = freeze i64 %.pre.i.i             ; 3 uses
  %i.g = icmp ult i64 %.pre.fr.i.i, 8
  %i.h = add i64 %.pre.fr.i.i, 1
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %spec.select.i.i = select i1 %i.g, i64 %.pre.fr.i.i, i64 %i.j
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown3raw8RawDrainNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryEEB1l_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown3raw8RawDrainNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryEEB1l_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8, !alias.scope !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !52, !nonnull !5, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdEEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBK_2id2IdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBR_2id2IdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1k_2id2IdEEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBR_2id2IdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtB1k_2id2IdEEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtBb_6option4IterRINtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph8SmallSetNtNtB1u_3key16DatabaseKeyIndexKj4_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB7_7flattenINtB3R_13FlattenCompatppE13iter_try_fold7flattenB1m_uINtNtNtBb_3ops12control_flow11ControlFlowTB2n_jEENCINvNvXsi_B3R_B44_B2Y_8try_fold7flattenINtNtNtBb_5slice4iter4IterB2n_EuB4V_NCINvNvB2Y_8find_map5checkRB2n_B5A_NCNvNvMB1q_NtB1q_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0E0E0B4V_EB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !90 ; 2 uses
  store ptr null, ptr %1, align 8, !alias.scope !90
  %.not17.i = icmp eq ptr %.promoted.i, null
  br i1 %.not17.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option4IterRINtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph8SmallSetNtNtBL_3key16DatabaseKeyIndexKj4_EENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2j_8adapters6copied13copy_try_foldBD_uINtNtNtB8_3ops12control_flow11ControlFlowTB1E_jEENCINvNvMsg_NtB39_7flattenINtB4M_13FlattenCompatppE13iter_try_fold7flattenBD_uB3O_NCINvNvXsi_B4M_B50_B2d_8try_fold7flattenINtNtNtB8_5slice4iter4IterB1E_EuB3O_NCINvNvB2d_8find_map5checkRB1E_B4t_NCNvNvMBH_NtBH_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0E0E0E0B3O_EBL_.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %2, align 8, !alias.scope !88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5.us.i = load ptr, ptr %.promoted.i, align 8, !noalias !91, !nonnull !5, !align !6, !noundef !5
  %i.e = tail call { ptr, ptr } @_RNvXs2_NtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphRINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val5.us.i), !noalias !92 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 3 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 3 uses
  store ptr %i.f, ptr %3, align 8, !alias.scope !93, !noalias !94
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !93, !noalias !94
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.loopexit.us.i, label %.lr.ph.i.i.i.i.us.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.split.us.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i), "nonnull"(ptr %.val1.i.i.i) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.us.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.us.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !alias.scope !97, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.i, i64 12, i1 false), !noalias !100
  %i.k = load i64, ptr %.val1.i.i.i, align 8, !range !7, !noalias !101, !noundef !5
  call void @_RNvNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %i.k), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  %i.l = load i32, ptr %i.b, align 8, !noalias !98, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.us.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.us.i, label %bb.c, label %.split.us.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  %i.m = icmp eq ptr %i.j, %i.g
  br i1 %i.m, label %.loopexit.us.i, label %bb.b

.loopexit.us.i:                                   ; preds = %bb.c, %.lr.ph.split.us.i
  store ptr null, ptr %1, align 8, !alias.scope !90
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option4IterRINtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph8SmallSetNtNtBL_3key16DatabaseKeyIndexKj4_EENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2j_8adapters6copied13copy_try_foldBD_uINtNtNtB8_3ops12control_flow11ControlFlowTB1E_jEENCINvNvMsg_NtB39_7flattenINtB4M_13FlattenCompatppE13iter_try_fold7flattenBD_uB3O_NCINvNvXsi_B4M_B50_B2d_8try_fold7flattenINtNtNtB8_5slice4iter4IterB1E_EuB3O_NCINvNvB2d_8find_map5checkRB1E_B4t_NCNvNvMBH_NtBH_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0E0E0E0B3O_EBL_.exit

.split.us.i:                                      ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i.i.i.i, i64 20, i1 false), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option4IterRINtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph8SmallSetNtNtBL_3key16DatabaseKeyIndexKj4_EENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2j_8adapters6copied13copy_try_foldBD_uINtNtNtB8_3ops12control_flow11ControlFlowTB1E_jEENCINvNvMsg_NtB39_7flattenINtB4M_13FlattenCompatppE13iter_try_fold7flattenBD_uB3O_NCINvNvXsi_B4M_B50_B2d_8try_fold7flattenINtNtNtB8_5slice4iter4IterB1E_EuB3O_NCINvNvB2d_8find_map5checkRB1E_B4t_NCNvNvMBH_NtBH_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0E0E0E0B3O_EBL_.exit

_RINvYINtNtCshzWfHUSfYae_4core6option4IterRINtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph8SmallSetNtNtBL_3key16DatabaseKeyIndexKj4_EENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2j_8adapters6copied13copy_try_foldBD_uINtNtNtB8_3ops12control_flow11ControlFlowTB1E_jEENCINvNvMsg_NtB39_7flattenINtB4M_13FlattenCompatppE13iter_try_fold7flattenBD_uB3O_NCINvNvXsi_B4M_B50_B2d_8try_fold7flattenINtNtNtB8_5slice4iter4IterB1E_EuB3O_NCINvNvB2d_8find_map5checkRB1E_B4t_NCNvNvMBH_NtBH_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0E0E0E0B3O_EBL_.exit: ; preds = %bb.a, %.loopexit.us.i, %.split.us.i
  %storemerge.i = phi i32 [ %i.l, %.split.us.i ], [ 0, %.loopexit.us.i ], [ 0, %bb.a ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !86
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldB1s_uNCNvMsl_B1u_NtB1u_10QueryEdges12iter_outputs0NCINvNtB7_3map8map_foldB1s_NtNtB1w_3key16DatabaseKeyIndexuNvMsi_B1u_B1s_3keyNCIB4e_B4C_TB4C_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB5R_8IndexSetB4C_INtNtBb_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtB2j_7collect12FromIteratorB4C_E9from_iterINtB4g_3MapINtB2Y_6FilterBP_B3s_EB57_EE0NCINvNvB2f_8for_each4callB5A_NCINvXsb_NtB5T_3mapINtB9O_8IndexMapB4C_uB6E_EINtB7R_6ExtendB5A_E6extendIB8z_B8y_B5I_EE0E0E0E0E0EB1w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters6copied9copy_foldBQ_uNCINvNtB2u_6filter11filter_foldBQ_uNCNvMsl_BS_NtBS_10QueryEdges12iter_outputs0NCINvNtB2u_3map8map_foldBQ_NtNtBU_3key16DatabaseKeyIndexuNvMsi_BS_BQ_3keyNCIB4n_B4L_TB4L_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB5X_8IndexSetB4L_INtNtBb_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtB1G_7collect12FromIteratorB4L_E9from_iterINtB4p_3MapINtB39_6FilterINtB2s_6CopiedBF_EB3D_EB5f_EE0NCINvNvB1C_8for_each4callB5G_NCINvXsb_NtB5Z_3mapINtBa9_8IndexMapB4L_uB6K_EINtB7X_6ExtendB5G_E6extendIB8F_B8E_B5O_EE0E0E0E0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 12
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuNCINvNtB6_6filter11filter_foldBY_uNCNvMsl_B10_NtB10_10QueryEdges12iter_outputs0NCINvNtB6_3map8map_foldBY_NtNtB12_3key16DatabaseKeyIndexuNvMsi_B10_BY_3keyNCIB34_B3r_TB3r_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB4F_8IndexSetB3r_INtNtBa_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtNtB8_6traits7collect12FromIteratorB3r_E9from_iterINtB36_3MapINtB1P_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2i_EB3W_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB4o_NCINvXsb_NtB4H_3mapINtB9L_8IndexMapB3r_uB5s_EINtB6F_6ExtendB4o_E6extendIB7v_B7u_B4w_EE0E0E0E0E0E0B12_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuNCINvNtB6_6filter11filter_foldBY_uNCNvMsl_B10_NtB10_10QueryEdges12iter_outputs0NCINvNtB6_3map8map_foldBY_NtNtB12_3key16DatabaseKeyIndexuNvMsi_B10_BY_3keyNCIB34_B3r_TB3r_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB4F_8IndexSetB3r_INtNtBa_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtNtB8_6traits7collect12FromIteratorB3r_E9from_iterINtB36_3MapINtB1P_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2i_EB3W_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB4o_NCINvXsb_NtB4H_3mapINtB9L_8IndexMapB3r_uB5s_EINtB6F_6ExtendB4o_E6extendIB7v_B7u_B4w_EE0E0E0E0E0E0B12_.exit.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !118, !noalias !119 ; 2 uses
  %.not.i.i.i.i = icmp slt i32 %.sroa.5.0.copyload.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuNCINvNtB6_6filter11filter_foldBY_uNCNvMsl_B10_NtB10_10QueryEdges12iter_outputs0NCINvNtB6_3map8map_foldBY_NtNtB12_3key16DatabaseKeyIndexuNvMsi_B10_BY_3keyNCIB34_B3r_TB3r_uEuNCINvXs6_NtCs3gqD4ldeioo_8indexmap3setINtB4F_8IndexSetB3r_INtNtBa_4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtNtB8_6traits7collect12FromIteratorB3r_E9from_iterINtB36_3MapINtB1P_6FilterINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2i_EB3W_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB4o_NCINvXsb_NtB4H_3mapINtB9L_8IndexMapB3r_uB5s_EINtB6F_6ExtendB4o_E6extendIB7v_B7u_B4w_EE0E0E0E0E0E0B12_.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB5_16DisambiguatorMap12disambiguate:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !293, !noundef !5
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !293
  %i.bs = sub nsw i64 0, %.sroa.0.0.i.i
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bg, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24
  store i64 %1, ptr %i.bu, align 8, !noalias !294
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds i8, ptr %i.bt, i64 -16
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i3, align 8, !noalias !294
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  store i32 0, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !294
  br label %bb.f

_RINvMs2_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit: ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtBU_13DisambiguatorEE4findNCINvMs2_NtBa_9raw_entryINtB2k_18RawEntryBuilderMutBS_B1K_uE6searchNCNvMs2_BU_NtBU_16DisambiguatorMap12disambiguate0E0E0BW_.exit.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %.pre = load i32, ptr %i.bv, align 4
  br label %bb.f

bb.f:                                             ; preds = %_RINvMs2_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit
  %i.bw = phi i32 [ 0, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit ], [ %.pre, %_RINvMs2_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.51.0..sroa_idx.i, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit ], [ %i.bv, %_RINvMs2_NtCsaH4Z5sDJ4bD_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit ]
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %.sroa.0.0, align 4
  ret i32 %i.bw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa14tracked_structNtB5_16DisambiguatorMap5clear(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !297, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB1c_13DisambiguatorEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !297, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !297, !nonnull !5, !noundef !5
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !297
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.j = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.k = add i64 %.pre.fr.i.i.i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i.i = select i1 %i.j, i64 %.pre.fr.i.i.i.i, i64 %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !297, !noundef !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !297, !nonnull !5, !noundef !5
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !297
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !297
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !297
  br label %_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !297
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !297
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !300
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !8

bb.b:                                             ; preds = %._crit_edge
  %.val62.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val62.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !300
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !14
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %.val.i = load ptr, ptr %.val1, align 8, !noundef !5 ; 2 uses
  %i.h = getelementptr i8, ptr %.val1, i64 8
  %.val3.i = load i64, ptr %i.h, align 8
  %i.i = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.i, i64 0, i64 %.val3.i
  %.sroa.0.0.i.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  call void @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEEB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %i.j)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8 ; 2 uses
  %i.k = icmp ult i64 %.sroa.52.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.k, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i, label %_RNvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.41.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i
  %.sroa.52.012.i = phi i64 [ %.sroa.52.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i ], [ %i.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i ] ; 3 uses
  %i.l = add i64 %.sroa.52.012.i, 1               ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.52.012.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload.i, i64 %.sroa.52.012.i ; 2 uses
  %.val4.i = load ptr, ptr %i.m, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !303, !noundef !5 ; 2 uses
  store ptr null, ptr %i.n, align 8, !alias.scope !303
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.q = call { ptr, ptr } %.val4.i(ptr noundef nonnull %i.o), !noalias !303, !inline_history !0 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 4 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.t(ptr noundef nonnull %i.r)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !15, !invariant.load !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !15, !invariant.load !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #28
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_.exit4.i.i.i

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i: ; preds = %bb.e, %bb.d, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i
  %exitcond.not.i = icmp eq i64 %i.l, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i

_RNvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %.val.i = load ptr, ptr %.val1, align 8, !noundef !5 ; 2 uses
  %i.h = getelementptr i8, ptr %.val1, i64 8
  %.val3.i = load i64, ptr %i.h, align 8
  %i.i = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.i, i64 0, i64 %.val3.i
  %.sroa.0.0.i.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  call void @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEEB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %i.j)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8 ; 2 uses
  %i.k = icmp ult i64 %.sroa.52.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.k, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i, label %_RNvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.41.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i
  %.sroa.52.012.i = phi i64 [ %.sroa.52.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.lr.ph.i ], [ %i.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i ] ; 3 uses
  %i.l = add i64 %.sroa.52.012.i, 1               ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.52.012.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload.i, i64 %.sroa.52.012.i ; 2 uses
  %.val4.i = load ptr, ptr %i.m, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !306, !noundef !5 ; 2 uses
  store ptr null, ptr %i.n, align 8, !alias.scope !306
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.q = call { ptr, ptr } %.val4.i(ptr noundef nonnull %i.o), !noalias !306, !inline_history !0 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 4 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.t(ptr noundef nonnull %i.r)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !15, !invariant.load !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !invariant.load !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !15, !invariant.load !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #28
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_.exit4.i.i.i

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i: ; preds = %bb.e, %bb.d, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i
  %exitcond.not.i = icmp eq i64 %i.l, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextB1s_.exit.i

_RNvMs5_NtNtCsd9Lm8bEdjjY_5salsa5table4memoNtB5_21MemoTableWithTypesMut4drop.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo4MemoEL_EEEB1D_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTB1Q_jENCNvNvMNtNtB1U_7runtime16dependency_graphNtB2O_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0INtB7_5FnMutTuB1P_EE8call_mutB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !316
  %i.e = load i64, ptr %.val1, align 8, !range !7, !noalias !315, !noundef !5
  call void @_RNvNvMNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graphNtB4_15DependencyGraph23unblock_transfer_target19find_blocked_thread(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %i.e), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !315
  %i.f = load i32, ptr %i.b, align 8, !noalias !314, !noundef !5
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !318
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTB1h_jENCNvNvMNtNtB1l_7runtime16dependency_graphNtB2f_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0B1l_.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !alias.scope !313
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTB1h_jENCNvNvMNtNtB1l_7runtime16dependency_graphNtB2f_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0B1l_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsd9Lm8bEdjjY_5salsa3key16DatabaseKeyIndexTB1h_jENCNvNvMNtNtB1l_7runtime16dependency_graphNtB2f_15DependencyGraph23unblock_transfer_target19find_blocked_thread0E0B1l_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !314
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryENtB6_5Debug3fmtB1j_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !326
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9debug_set(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !326
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !328, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !328, !noundef !5
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 1
  %.val24.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !329
  %i.i = icmp sgt <16 x i8> %.val24.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !328, !noundef !5
  store ptr %i.d, ptr %i.a, align 8, !noalias !326
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.l, ptr %.sroa.71.0..sroa_idx.i, align 8, !noalias !326
  %i.m = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryINtNtCsaH4Z5sDJ4bD_9hashbrown5table4IterB13_EEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !326
  %i.n = call noundef zeroext i1 @_RNvMs5_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !326
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12IdentityHashNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  store ptr %i.b, ptr %i.a, align 8, !noalias !333
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 16, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !333
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct12TrackedEntryNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.a, align 8, !noalias !337
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 8, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 2, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !337
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct13DisambiguatorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !341, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !342
  store ptr %i.b, ptr %i.a, align 8, !noalias !342
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !342
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store ptr %i.d, ptr %i.a, align 8, !noalias !346
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 16, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTNtNtCsd9Lm8bEdjjY_5salsa14tracked_struct8IdentityNtNtBB_2id2IdENtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !350
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !350
  store ptr %i.d, ptr %i.b, align 8, !noalias !350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !350
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.a, align 8, !noalias !350
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsA_NtCsd9Lm8bEdjjY_5salsa8internedINtNtCsbSS6DM8SDEO_5alloc6borrow3CowNtNtCscAsMj0W7j8b_3std4path4PathEINtB5_6LookupNtB1c_7PathBufE10into_owned(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !16, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
