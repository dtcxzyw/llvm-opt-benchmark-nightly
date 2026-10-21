Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_syntax-f1f61ff0feae2508.regex_syntax.535bfd884d6d4f8f-cgu.12?download=true
inline.NumInlined: 80
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@1 = private unnamed_addr constant [36 x i8] c"unicode-perl feature must be enabled", align 1
@2 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-syntax-0.8.11/src/lib.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"c\00\00\00\00\00\00\00_\01\00\00\1E\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@5 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtCs79ICTHwG85D_12regex_syntax7unicodeNtB5_16UnicodeWordErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@7 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-syntax-0.8.11/src/utf8.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\B8\01\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\B5\01\00\00+\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"d\00\00\00\00\00\00\00\B4\01\00\00-\00\00\00" }>, align 8
@11 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-syntax-0.8.11/src/debug.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"e\00\00\00\00\00\00\00h\00\00\00+\00\00\00" }>, align 8
@13 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/index.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\003\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"O\00\00\00\00\00\00\00\07\04\00\007\00\00\00" }>, align 8
@16 = private unnamed_addr constant [3 x i8] c"' '", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"e\00\00\00\00\00\00\00\18\00\00\00=\00\00\00" }>, align 8
@18 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"e\00\00\00\00\00\00\00\15\00\00\00\0D\00\00\00" }>, align 8
@20 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@21 = private unnamed_addr constant [4 x i8] c"\C0\C0\C0\00", align 1
@22 = private unnamed_addr constant [5 x i8] c"\C0\C0\C0\C0\00", align 1
@23 = private unnamed_addr constant [9 x i8] c"\01[\C0\01-\C0\01]\00", align 1
@24 = private unnamed_addr constant [6 x i8] c"\01[\C0\01]\00", align 1
@25 = private unnamed_addr constant [21 x i8] c"\0CScalarRange(\C0\02, \C0\01)\00", align 1
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCs79ICTHwG85D_12regex_syntax }>, align 8
@27 = private unnamed_addr constant [16 x i8] c"UnicodeWordError", align 1
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs79ICTHwG85D_12regex_syntax }>, align 8
@30 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@31 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@32 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@33 = private unnamed_addr constant [1 x i8] c"\22", align 1
@34 = private unnamed_addr constant [2 x i8] c"\\0", align 1
@35 = private unnamed_addr constant [11 x i8] c"\02\\x\C3 \00\00i\02\00\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"e\00\00\00\00\00\00\002\00\00\00\1B\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"e\00\00\00\00\00\00\00.\00\00\00#\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs79ICTHwG85D_12regex_syntax, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs79ICTHwG85D_12regex_syntax }>, align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs79ICTHwG85D_12regex_syntax(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs79ICTHwG85D_12regex_syntax.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs79ICTHwG85D_12regex_syntax.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs79ICTHwG85D_12regex_syntax.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs79ICTHwG85D_12regex_syntax.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs79ICTHwG85D_12regex_syntax(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18, !noalias !11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18, !noalias !11
  unreachable

_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs79ICTHwG85D_12regex_syntax(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  br i1 %i.a, label %bb.b, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18, !noalias !14
  unreachable

_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs79ICTHwG85D_12regex_syntax(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.b = add i64 %1, -1                           ; 4 uses
  %i.c = icmp samesign ult i32 %2, 128
  %i.d = icmp samesign ult i32 %2, 65536
  %i.e = trunc i32 %2 to i8                       ; 2 uses
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %2, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %2, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %2, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  %i.s = or disjoint i8 %i.m, -32
  %i.t = or disjoint i8 %i.i, -64
  %.pre15.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !25 ; 4 uses
  br i1 %i.c, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us.i.i.i.i, label %.split.i.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us.i.i.i.i: ; preds = %bb.b, %.noexc3
  %i.u = phi i64 [ %i.y, %.noexc3 ], [ %.pre15.i.i.i.i, %bb.b ] ; 3 uses
  %.sroa.01.0.us.i.i.i.i = phi i64 [ %i.aa, %.noexc3 ], [ %i.b, %bb.b ] ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us.i.i.i.i
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 %i.e, ptr %i.x, align 1
  %i.y = add nuw i64 %i.u, 1                      ; 2 uses
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !25
  %i.z = icmp eq i64 %.sroa.01.0.us.i.i.i.i, 0
  %i.aa = add i64 %.sroa.01.0.us.i.i.i.i, -1
  br i1 %i.z, label %_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.b
  %i.ab = icmp samesign ult i32 %2, 2048
  br i1 %i.ab, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us4.i.i.i.i, label %.split.split.i.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us4.i.i.i.i: ; preds = %.split.i.i.i.i, %.noexc4
  %i.ac = phi i64 [ %i.ah, %.noexc4 ], [ %.pre15.i.i.i.i, %.split.i.i.i.i ] ; 3 uses
  %.sroa.01.0.us3.i.i.i.i = phi i64 [ %i.aj, %.noexc4 ], [ %i.b, %.split.i.i.i.i ] ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  call void @llvm.assume(i1 %i.ad)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us4.i.i.i.i
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac ; 2 uses
  store i8 %i.t, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.g, ptr %i.ag, align 1
  %i.ah = add nuw i64 %i.ac, 2                    ; 2 uses
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !25
  %i.ai = icmp eq i64 %.sroa.01.0.us3.i.i.i.i, 0
  %i.aj = add i64 %.sroa.01.0.us3.i.i.i.i, -1
  br i1 %i.ai, label %_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us4.i.i.i.i

.split.split.i.i.i.i:                             ; preds = %.split.i.i.i.i
  br i1 %i.d, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us7.i.i.i.i, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.i.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us7.i.i.i.i: ; preds = %.split.split.i.i.i.i, %.noexc5
  %i.ak = phi i64 [ %i.aq, %.noexc5 ], [ %.pre15.i.i.i.i, %.split.split.i.i.i.i ] ; 3 uses
  %.sroa.01.0.us6.i.i.i.i = phi i64 [ %i.as, %.noexc5 ], [ %i.b, %.split.split.i.i.i.i ] ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 3)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us7.i.i.i.i
  %i.am = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak ; 3 uses
  store i8 %i.s, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.k, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i8 %i.g, ptr %i.ap, align 1
  %i.aq = add nuw i64 %i.ak, 3                    ; 2 uses
  store i64 %i.aq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !25
  %i.ar = icmp eq i64 %.sroa.01.0.us6.i.i.i.i, 0
  %i.as = add i64 %.sroa.01.0.us6.i.i.i.i, -1
  br i1 %i.ar, label %_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us7.i.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.i.i.i.i: ; preds = %.split.split.i.i.i.i, %.noexc6
  %i.at = phi i64 [ %i.ba, %.noexc6 ], [ %.pre15.i.i.i.i, %.split.split.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bc, %.noexc6 ], [ %i.b, %.split.split.i.i.i.i ] ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 4)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.i.i.i.i
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at ; 4 uses
  store i8 %i.r, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.o, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.k, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 %i.g, ptr %i.az, align 1
  %i.ba = add nuw i64 %i.at, 4                    ; 2 uses
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !25
  %i.bb = icmp eq i64 %.sroa.01.0.i.i.i.i, 0
  %i.bc = add i64 %.sroa.01.0.i.i.i.i, -1
  br i1 %i.bb, label %_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax.exit, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us7.i.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us4.i.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.us.i.i.i.i, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs79ICTHwG85D_12regex_syntax.exit.i.i.i.i, %bb.a
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #19
          to label %bb.d unwind label %bb.c

_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters4take4TakeINtNtNtBR_7sources6repeat6RepeatcEEECs79ICTHwG85D_12regex_syntax.exit: ; preds = %.noexc6, %.noexc5, %.noexc4, %.noexc3, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp52
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs79ICTHwG85D_12regex_syntax11escape_into(ptr noalias noundef nonnull readonly captures(address) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit
  %.sroa.0.08 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.1.ph, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 1 ; 3 uses
  %i.f = load i8, ptr %.sroa.0.08, align 1, !noalias !32, !noundef !4 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit12.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = icmp ne ptr %i.e, %i.a
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.e, align 1, !noalias !32, !noundef !4
  %i.m = shl nuw nsw i32 %i.i, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.f, -33
  br i1 %i.q, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit14.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.f to i32
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit12.i
  %i.s = icmp ne ptr %i.k, %i.a
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 3 ; 3 uses
  %i.u = load i8, ptr %i.k, align 1, !noalias !32, !noundef !4
  %i.v = shl nuw nsw i32 %i.o, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = shl nuw nsw i32 %i.i, 12
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ab, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit16.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit14.i
  %i.ac = icmp ne ptr %i.t, %i.a
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !noalias !32, !noundef !4
  %i.af = shl nuw nsw i32 %i.i, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.y, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit12.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.k, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit12.i ], [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit14.i ], [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit16.i ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit12.i ], [ %i.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit14.i ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs79ICTHwG85D_12regex_syntax.exit16.i ], [ %i.r, %bb.c ] ; 10 uses
  %i.am = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %i.c, align 8, !noundef !4 ; 8 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  switch i32 %.sroa.4.0.i.ph, label %bb.e [
    i32 92, label %.thread
    i32 46, label %.thread
    i32 43, label %.thread
    i32 42, label %.thread
    i32 63, label %.thread
    i32 40, label %.thread
    i32 41, label %.thread
    i32 124, label %.thread
    i32 91, label %.thread
    i32 93, label %.thread
    i32 123, label %.thread
    i32 125, label %.thread
    i32 94, label %.thread
    i32 36, label %.thread
    i32 35, label %.thread
    i32 38, label %.thread
    i32 45, label %.thread
    i32 126, label %.thread
  ]

._crit_edge:                                      ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit, %bb.a
  ret void

.thread:                                          ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.ap = load ptr, ptr %i.d, align 8, !alias.scope !33, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 92, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %i.an, 1                ; 2 uses
  store i64 %i.ar, ptr %i.c, align 8, !alias.scope !33
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048 ; 2 uses
  %i.au = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536 ; 2 uses
  %..i = select i1 %i.au, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.at, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.0.0.ph.i)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !34, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an ; 9 uses
  %i.ax = trunc i32 %.sroa.4.0.i.ph to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128              ; 3 uses
  %i.ba = lshr i32 %.sroa.4.0.i.ph, 6
  %i.bb = trunc i32 %i.ba to i8                   ; 2 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = or disjoint i8 %i.bc, -128              ; 2 uses
  %i.be = lshr i32 %.sroa.4.0.i.ph, 12
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = lshr i32 %.sroa.4.0.i.ph, 18
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, -16
  br i1 %i.at, label %bb.h, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.e
  %i.bl = phi i64 [ %i.ar, %.thread ], [ %i.an, %bb.e ] ; 2 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.bm = load ptr, ptr %i.d, align 8, !alias.scope !34, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  %i.bo = trunc nuw nsw i32 %.sroa.4.0.i.ph to i8
  store i8 %i.bo, ptr %i.bn, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.bp = or disjoint i8 %i.bb, -64
  store i8 %i.bp, ptr %i.aw, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.az, ptr %i.bq, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = or disjoint i8 %i.bf, -32
  store i8 %i.br, ptr %i.aw, align 1
end_hunk_0
