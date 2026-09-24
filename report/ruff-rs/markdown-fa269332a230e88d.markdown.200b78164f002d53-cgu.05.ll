Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.05?download=true
inline.NumInlined: 145
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/markdown-1.0.0/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00Z\00\00\006\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs2KzzoC5ewhj_8markdown7messageNtB5_7MessageNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@4 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/markdown-1.0.0/src/util/edit_map.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00j\00\00\000\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00j\00\00\00\1E\00\00\00" }>, align 8
@7 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/markdown-1.0.0/src/util/location.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"h\00\00\00\00\00\00\00F\00\00\00!\00\00\00" }>, align 8
@9 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/markdown-1.0.0/src/subtokenize.rs\00", align 1
@10 = private unnamed_addr constant [4 x i8] c"\05\1Fi\A4", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\89\00\00\00\1E\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\94\00\00\00(\00\00\00" }>, align 8
@13 = private unnamed_addr constant [13 x i8] c"expected link", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\95\00\00\009\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\9C\00\00\00&\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\0F\01\00\00\17\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\0F\01\00\002\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\CD\00\00\00\14\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\D4\00\00\00\1A\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\D4\00\00\00;\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\D4\00\00\00I\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\DA\00\00\00)\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\DB\00\00\003\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\E5\00\00\00*\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\F0\00\00\000\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00\F0\00\00\00E\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00<\00\00\00\19\00\00\00" }>, align 8
@28 = private unnamed_addr constant [27 x i8] c"expected `link` on previous", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00?\00\00\00\0A\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00A\00\00\00\15\00\00\00" }>, align 8
@31 = private unnamed_addr constant [23 x i8] c"expected `link` on next", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"f\00\00\00\00\00\00\00A\00\00\000\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00&\00\00\00\15\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00&\00\00\000\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00.\00\00\001\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00\8A\00\00\00\1D\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"h\00\00\00\00\00\00\00\87\00\00\00-\00\00\00" }>, align 8
@38 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/markdown-1.0.0/src/construct/raw_text.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"m\00\00\00\00\00\00\00\09\01\00\00\1D\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"m\00\00\00\00\00\00\00\0A\01\00\00\1D\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown7message5PlaceEEEB1z_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown7message5PlaceEENtNtB7_3fmt5Debug3fmtB1m_ }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2KzzoC5ewhj_8markdown }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtBB_6string6StringENtB6_5Debug3fmtCs2KzzoC5ewhj_8markdown }>, align 8
@45 = private unnamed_addr constant [7 x i8] c"Message", align 1
@46 = private unnamed_addr constant [5 x i8] c"place", align 1
@47 = private unnamed_addr constant [6 x i8] c"reason", align 1
@48 = private unnamed_addr constant [7 x i8] c"rule_id", align 1
@49 = private unnamed_addr constant [6 x i8] c"source", align 1
@50 = private unnamed_addr constant [4 x i8] c"None", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown7message5PlaceENtB6_5Debug3fmtB18_ }>, align 8
@52 = private unnamed_addr constant [4 x i8] c"Some", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_EEEB2k_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_EEB1Y_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_EEB1Y_.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_EEB1Y_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_EEB1Y_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_ENtNtBO_4drop4Drop4dropB1L_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #13
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_ENtNtBO_4drop4Drop4dropB1L_.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_eEEp6OutputNtNtNtCs2KzzoC5ewhj_8markdown4util3mdx6SignalEL_ENtNtBO_4drop4Drop4dropB1L_.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown7message5PlaceEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !6, !noundef !3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #13
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_BY_EEECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_BC_EECs2KzzoC5ewhj_8markdown.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #15
          to label %.body4.i unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i3.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body4.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i3.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit6.i unwind label %bb.i

.body4.i:                                         ; preds = %bb.i, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.i ], [ %i.h, %bb.g ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #15
          to label %common.resume.i unwind label %bb.l

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i3.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit6.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i3.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_BC_EECs2KzzoC5ewhj_8markdown.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit6.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume.i:                                  ; preds = %bb.j, %.body4.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.j ], [ %.pn.i, %.body4.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.body4.i, %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_BC_EECs2KzzoC5ewhj_8markdown.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit6.i
end_hunk_0
begin_hunk_1_@_RNvCs2KzzoC5ewhj_8markdown8to_mdast:bb.a
bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit18: ; preds = %bb.n
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.q:                                             ; preds = %bb.h, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap10add_before(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map8add_impl(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %3, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map8add_impl(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 16 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !3 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !100
  store ptr %i.a, ptr %i.e, align 8, !noalias !100
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.t = icmp samesign ult i64 %i.r, 21
  br i1 %i.t, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEENCINvMB6_SBT_16sort_unstable_byNCNvMNtNtB1w_4util8edit_mapNtB2H_7EditMap7consume0E0EB1w_(ptr noalias noundef nonnull align 8 %i.p, i64 noundef range(i64 0, 230584300921369396) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit.thread

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEENCINvMB8_SB1m_16sort_unstable_byNCNvMNtNtB1Z_4util8edit_mapNtB3b_7EditMap7consume0E0EB1Z_(ptr noalias noundef nonnull align 8 %i.p, i64 noundef range(i64 0, 230584300921369396) %i.r, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100
  %i.u = icmp ult i64 %i.r, 230584300921369396
  call void @llvm.assume(i1 %i.u)
  br label %bb.e

_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit.thread, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.w = load i64, ptr %i.g, align 8, !range !9, !noundef !3
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !10, !noundef !3 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.x, label %bb.g, label %.lr.ph.preheader, !prof !11

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE16sort_unstable_byNCNvMNtNtB18_4util8edit_mapNtB26_7EditMap7consume0EB18_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjjEEECs2KzzoC5ewhj_8markdown.exit
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.aa, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #16
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !3, !noundef !3
  %i.ad = icmp samesign ule i64 %i.r, %i.z
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.z, ptr %i.n, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.af, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bf
  %.pre = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.not64.i = icmp eq i64 %i.aj, 0
  br i1 %.not64.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge, %.backedge.i
  %.sroa.0.062.i = phi i64 [ %.sroa.0.0.be.i, %.backedge.i ], [ 0, %._crit_edge ] ; 6 uses
  %.sroa.010.061.i = phi i64 [ %.sroa.010.0.be.i, %.backedge.i ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.020.060.i = phi i64 [ %.sroa.020.0.be.i, %.backedge.i ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.022.059.i = phi i64 [ %.sroa.022.0.be.i, %.backedge.i ], [ 0, %._crit_edge ] ; 4 uses
  %i.ak = icmp ult i64 %.sroa.0.062.i, %i.hk
  br i1 %i.ak, label %.lr.ph.i.preheader, label %._crit_edge.thread.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.sroa.0.062.i ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !102, !noalias !101, !noundef !3
  %.not.i125 = icmp ugt i64 %i.am, %.sroa.010.061.i
  br i1 %.not.i125, label %._crit_edge.thread.i, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph.i.preheader
  %exitcond.not.i310 = icmp eq i64 %.sroa.0.062.i, %i.gw
  br i1 %exitcond.not.i310, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph127, %.lr.ph.i, %.lr.ph127.preheader
  %.lcssa299 = phi ptr [ %i.al, %.lr.ph127.preheader ], [ %i.au, %.lr.ph127 ], [ %i.as, %.lr.ph.i ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %i.hk, %.lr.ph127.preheader ], [ %i.hk, %.lr.ph127 ], [ %i.at, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa299, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !102, !noalias !101, !noundef !3 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa299, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !102, !noalias !101, !noundef !3 ; 4 uses
  %i.ar = icmp ugt i64 %i.aq, %.sroa.022.059.i
  br i1 %i.ar, label %bb.h, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph127.preheader, %.lr.ph127
  %.sroa.0.139.i126311 = phi i64 [ %i.at, %.lr.ph127 ], [ %.sroa.0.062.i, %.lr.ph127.preheader ]
  %i.as = phi ptr [ %i.au, %.lr.ph127 ], [ %i.al, %.lr.ph127.preheader ]
  %i.at = add i64 %.sroa.0.139.i126311, 1         ; 4 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.at ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !102, !noalias !101, !noundef !3
  %.not.i = icmp ugt i64 %i.av, %.sroa.010.061.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph127

bb.h:                                             ; preds = %._crit_edge.i
  %i.aw = sub nuw i64 %i.aq, %.sroa.022.059.i
  br label %bb.o

._crit_edge.thread.i:                             ; preds = %.lr.ph.i.preheader, %._crit_edge.i, %.preheader.i
  %.sroa.0.1.lcssa80.i = phi i64 [ %.sroa.0.1.lcssa.i, %._crit_edge.i ], [ %.sroa.0.062.i, %.preheader.i ], [ %.sroa.0.062.i, %.lr.ph.i.preheader ] ; 8 uses
  %.sroa.020.1.lcssa78.i = phi i64 [ %i.ao, %._crit_edge.i ], [ %.sroa.020.060.i, %.preheader.i ], [ %.sroa.020.060.i, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.022.1.lcssa76.i = phi i64 [ %i.aq, %._crit_edge.i ], [ %.sroa.022.059.i, %.preheader.i ], [ %.sroa.022.059.i, %.lr.ph.i.preheader ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.ah, i64 %.sroa.010.061.i ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !101, !noalias !102, !noundef !3
  %.not31.i = icmp eq i64 %i.ay, 2
  br i1 %.not31.i, label %bb.o, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !9, !alias.scope !101, !noalias !102, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.bc = trunc nuw i64 %i.ba to i1
  br i1 %i.bc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.bb, align 8, !alias.scope !101, !noalias !102, !noundef !3 ; 7 uses
  %i.be = add i64 %.sroa.020.1.lcssa78.i, %.sroa.010.061.i
  %i.bf = sub i64 %i.be, %.sroa.022.1.lcssa76.i
  %i.bg = icmp ult i64 %i.bd, %i.aj
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw [80 x i8], ptr %i.ah, i64 %i.bd ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !12, !alias.scope !101, !noalias !102, !noundef !3
  %.not32.i = icmp eq i64 %i.bi, 2
  br i1 %.not32.i, label %.invoke, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 0, 115292150460684698) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16
          to label %.noexc unwind label %.loopexit.split-lp57

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  store i64 1, ptr %i.bh, align 8, !alias.scope !101, !noalias !102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bf, ptr %i.bj, align 8, !alias.scope !101, !noalias !102
  %i.bk = icmp ult i64 %.sroa.0.1.lcssa80.i, %i.hk
  br i1 %i.bk, label %.lr.ph50.i.preheader, label %._crit_edge51.i

.lr.ph50.i.preheader:                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.sroa.0.1.lcssa80.i ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !102, !noalias !101, !noundef !3
  %.not33.i134 = icmp ugt i64 %i.bm, %i.bd
  br i1 %.not33.i134, label %._crit_edge51.i, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.lr.ph50.i.preheader
  %exitcond67.not.i315 = icmp eq i64 %.sroa.0.1.lcssa80.i, %i.gw
  br i1 %exitcond67.not.i315, label %._crit_edge51.i.loopexit, label %.lr.ph50.i

.invoke:                                          ; preds = %._crit_edge51.i, %bb.k
  %i.bn = phi ptr [ @34, %bb.k ], [ @35, %._crit_edge51.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #16
          to label %.cont unwind label %.loopexit.split-lp57

.cont:                                            ; preds = %.invoke
  unreachable

._crit_edge51.i.loopexit:                         ; preds = %.lr.ph50.i, %.lr.ph136, %.lr.ph136.preheader
  %.lcssa300 = phi ptr [ %i.bl, %.lr.ph136.preheader ], [ %i.bt, %.lr.ph50.i ], [ %i.bv, %.lr.ph136 ] ; 2 uses
  %.sroa.0.2.lcssa.i.ph = phi i64 [ %i.hk, %.lr.ph136.preheader ], [ %i.bu, %.lr.ph50.i ], [ %i.hk, %.lr.ph136 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa300, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !102, !noalias !101, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa300, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !102, !noalias !101, !noundef !3
  br label %._crit_edge51.i

._crit_edge51.i:                                  ; preds = %._crit_edge51.i.loopexit, %.lr.ph50.i.preheader, %bb.m
  %.sroa.022.2.lcssa.i = phi i64 [ %.sroa.022.1.lcssa76.i, %bb.m ], [ %.sroa.022.1.lcssa76.i, %.lr.ph50.i.preheader ], [ %i.br, %._crit_edge51.i.loopexit ] ; 2 uses
  %.sroa.020.2.lcssa.i = phi i64 [ %.sroa.020.1.lcssa78.i, %bb.m ], [ %.sroa.020.1.lcssa78.i, %.lr.ph50.i.preheader ], [ %i.bp, %._crit_edge51.i.loopexit ] ; 2 uses
  %.sroa.0.2.lcssa.i = phi i64 [ %.sroa.0.1.lcssa80.i, %bb.m ], [ %.sroa.0.1.lcssa80.i, %.lr.ph50.i.preheader ], [ %.sroa.0.2.lcssa.i.ph, %._crit_edge51.i.loopexit ]
  %i.bs = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !101, !noalias !102, !noundef !3
  %.not34.i = icmp eq i64 %i.bs, 2
  br i1 %.not34.i, label %.invoke, label %bb.n, !prof !11

.lr.ph50.i:                                       ; preds = %.lr.ph136.preheader, %.lr.ph136
  %.sroa.0.248.i135316 = phi i64 [ %i.bu, %.lr.ph136 ], [ %.sroa.0.1.lcssa80.i, %.lr.ph136.preheader ]
  %i.bt = phi ptr [ %i.bv, %.lr.ph136 ], [ %i.bl, %.lr.ph136.preheader ]
  %i.bu = add i64 %.sroa.0.248.i135316, 1         ; 4 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.bu ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !102, !noalias !101, !noundef !3
  %.not33.i = icmp ugt i64 %i.bw, %i.bd
  br i1 %.not33.i, label %._crit_edge51.i.loopexit, label %.lr.ph136

bb.n:                                             ; preds = %._crit_edge51.i
  %i.bx = sub i64 %i.bd, %.sroa.022.2.lcssa.i
  %i.by = add i64 %i.bx, %.sroa.020.2.lcssa.i
  store i64 1, ptr %i.az, align 8, !alias.scope !101, !noalias !102
  store i64 %i.by, ptr %i.bb, align 8, !alias.scope !101, !noalias !102
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.o, %bb.n
  %.sroa.022.0.be.i = phi i64 [ %.sroa.022.1.lcssa75.i, %bb.o ], [ %.sroa.022.2.lcssa.i, %bb.n ]
  %.sroa.020.0.be.i = phi i64 [ %.sroa.020.1.lcssa77.i, %bb.o ], [ %.sroa.020.2.lcssa.i, %bb.n ]
  %.sroa.010.0.be.i = phi i64 [ %.sroa.010.1.i, %bb.o ], [ %i.bd, %bb.n ] ; 2 uses
  %.sroa.0.0.be.i = phi i64 [ %.sroa.0.1.lcssa79.i, %bb.o ], [ %.sroa.0.2.lcssa.i, %bb.n ]
  %i.bz = icmp ult i64 %.sroa.010.0.be.i, %i.aj
  br i1 %i.bz, label %.preheader.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit.loopexit

.lr.ph136:                                        ; preds = %.lr.ph50.i
  %exitcond67.not.i = icmp eq i64 %i.bu, %i.gw
  br i1 %exitcond67.not.i, label %._crit_edge51.i.loopexit, label %.lr.ph50.i

bb.o:                                             ; preds = %bb.i, %._crit_edge.thread.i, %bb.h
  %.sroa.0.1.lcssa79.i = phi i64 [ %.sroa.0.1.lcssa.i, %bb.h ], [ %.sroa.0.1.lcssa80.i, %bb.i ], [ %.sroa.0.1.lcssa80.i, %._crit_edge.thread.i ]
  %.sroa.020.1.lcssa77.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.020.1.lcssa78.i, %bb.i ], [ %.sroa.020.1.lcssa78.i, %._crit_edge.thread.i ]
  %.sroa.022.1.lcssa75.i = phi i64 [ %i.aq, %bb.h ], [ %.sroa.022.1.lcssa76.i, %bb.i ], [ %.sroa.022.1.lcssa76.i, %._crit_edge.thread.i ]
  %.pn.i = phi i64 [ %i.aw, %bb.h ], [ 1, %bb.i ], [ 1, %._crit_edge.thread.i ]
  %.sroa.010.1.i = add i64 %.pn.i, %.sroa.010.061.i
  br label %.backedge.i

.lr.ph127:                                        ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.at, %i.gw
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

.body34:                                          ; preds = %.loopexit56, %.loopexit.split-lp57, %bb.ac, %.body
  %.pn25 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.en, %bb.ac ], [ %lpad.loopexit58, %.loopexit56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp57 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjjEEECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.n) #15
          to label %common.resume unwind label %bb.am

.loopexit56:                                      ; preds = %bb.be
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp57:                             ; preds = %.invoke, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit, %bb.q, %bb.l, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit.loopexit: ; preds = %.backedge.i
  %.pre204 = load i64, ptr %i.ai, align 8
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit

_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit: ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit.loopexit, %._crit_edge
  %i.ca = phi i64 [ %.pre204, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit.loopexit ], [ 0, %._crit_edge ] ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 115292150460684698
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cc = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.cd = or disjoint i64 %i.cc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.cd, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.p unwind label %.loopexit.split-lp57

bb.p:                                             ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map11shift_links.exit
  %i.ce = load i64, ptr %i.f, align 8, !range !9, !noundef !3
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !10, !noundef !3 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.cf, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.cj = load i64, ptr %i.ci, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ch, i64 %i.cj) #16
          to label %bb.ao unwind label %.loopexit.split-lp57

bb.r:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3
  %.not = icmp samesign ult i64 %i.cc, %i.ch
  call void @llvm.assume(i1 %.not)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ch, ptr %i.m, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 10 uses
  store i64 0, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.not23321 = icmp eq i64 %i.r, 0
  br i1 %.not23321, label %._crit_edge325, label %.lr.ph324

bb.s:                                             ; preds = %bb.bd
  %.not23 = icmp eq i64 %i.dd, 0
  br i1 %.not23, label %._crit_edge325, label %.lr.ph324

._crit_edge325:                                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.cv = load i64, ptr %i.ai, align 8, !alias.scope !104, !noalias !105, !noundef !3 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 115292150460684698
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !106
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 -115292150460684697, 115292150460684698) %i.cv, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %._crit_edge325
  %i.cx = load i64, ptr %i.d, align 8, !range !9, !noalias !106, !noundef !3
  %i.cy = trunc nuw i64 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !10, !noalias !106, !noundef !3 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.cy, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %.noexc29
  %i.dc = load i64, ptr %i.db, align 8, !noalias !106
  br label %.invoke273

.lr.ph324:                                        ; preds = %bb.r, %bb.s
  %.sroa.09.0322 = phi i64 [ %i.dd, %bb.s ], [ %i.r, %bb.r ]
  %i.dd = add nsw i64 %.sroa.09.0322, -1          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.de = icmp ult i64 %i.dd, %i.r
  br i1 %i.de, label %bb.ap, label %bb.an

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bb, %bb.av, %bb.aj, %bb.w, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.er, %bb.ah ], [ %i.fu, %bb.av ], [ %i.do, %bb.w ], [ %i.eu, %bb.aj ], [ %i.gq, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit53, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.m) #15
          to label %.body34 unwind label %bb.am

.loopexit:                                        ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.ax, %bb.aq, %bb.bd
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke273, %bb.as, %._crit_edge325, %bb.an, %._crit_edge144, %bb.y
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.noexc29
  %i.df = load ptr, ptr %i.db, align 8, !noalias !106, !nonnull !3, !noundef !3 ; 2 uses
  %i.dg = icmp ule i64 %i.cv, %i.da
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !106
  store i64 %i.da, ptr %i.j, align 8, !alias.scope !103, !noalias !107
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.df, ptr %i.dh, align 8, !alias.scope !103, !noalias !107
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.ai, align 8, !alias.scope !104, !noalias !105
  store i64 %i.cv, ptr %i.di, align 8, !alias.scope !103, !noalias !107
  %i.dj = load ptr, ptr %i.ag, align 8, !alias.scope !104, !noalias !105, !nonnull !3, !noundef !3
  %i.dk = mul nuw nsw i64 %i.cv, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.dj, i64 %i.dk, i1 false), !noalias !106
  %i.dl = load i64, ptr %i.cm, align 8, !alias.scope !108, !noalias !109, !noundef !3 ; 3 uses
  %i.dm = load i64, ptr %i.m, align 8, !range !4, !alias.scope !108, !noalias !109, !noundef !3
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.v, label %bb.y

end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume:bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an, %bb.q
  unreachable

bb.ap:                                            ; preds = %.lr.ph324
  %i.ez = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.dd ; 5 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noundef !3
  %i.fd = add i64 %i.fc, %i.fa                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.fe = load i64, ptr %i.ai, align 8, !alias.scope !112, !noalias !113, !noundef !3 ; 4 uses
  %i.ff = icmp ult i64 %i.fe, 115292150460684698
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp ugt i64 %i.fd, %i.fe
  br i1 %i.fg, label %bb.as, label %bb.aq, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.fh = sub nuw nsw i64 %i.fe, %i.fd            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 -115292150460684697, 115292150460684698) %i.fh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %bb.aq
  %i.fi = load i64, ptr %i.c, align 8, !range !9, !noalias !114, !noundef !3
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = load i64, ptr %i.cn, align 8, !range !10, !noalias !114, !noundef !3 ; 3 uses
  br i1 %i.fj, label %bb.ar, label %bb.at, !prof !11

bb.ar:                                            ; preds = %.noexc39
  %i.fl = load i64, ptr %i.co, align 8, !noalias !114
  br label %.invoke273

bb.as:                                            ; preds = %bb.ap
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef %i.fd, i64 noundef %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %.noexc39
  %i.fm = load ptr, ptr %i.co, align 8, !noalias !114, !nonnull !3, !noundef !3 ; 2 uses
  %i.fn = icmp ule i64 %i.fh, %i.fk
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  store i64 %i.fk, ptr %i.l, align 8, !alias.scope !111, !noalias !115
  store ptr %i.fm, ptr %i.cp, align 8, !alias.scope !111, !noalias !115
  store i64 %i.fd, ptr %i.ai, align 8, !alias.scope !112, !noalias !113
  store i64 %i.fh, ptr %i.cq, align 8, !alias.scope !111, !noalias !115
  %i.fo = load ptr, ptr %i.ag, align 8, !alias.scope !112, !noalias !113, !nonnull !3, !noundef !3
  %i.fp = getelementptr inbounds nuw [80 x i8], ptr %i.fo, i64 %i.fd
  %i.fq = mul nuw nsw i64 %i.fh, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr nonnull align 8 %i.fp, i64 %i.fq, i1 false), !noalias !114
  %i.fr = load i64, ptr %i.cm, align 8, !alias.scope !116, !noalias !117, !noundef !3 ; 3 uses
  %i.fs = load i64, ptr %i.m, align 8, !range !4, !alias.scope !116, !noalias !117, !noundef !3
  %i.ft = icmp eq i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE8grow_oneB15_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ax unwind label %bb.av, !noalias !117

bb.av:                                            ; preds = %bb.au
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #15
          to label %.body unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ax:                                            ; preds = %bb.at, %bb.au
  %i.fw = load ptr, ptr %i.cl, align 8, !alias.scope !116, !noalias !117, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.fy = add i64 %i.fr, 1
  store i64 %i.fy, ptr %i.cm, align 8, !alias.scope !116, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !119, !noalias !120, !noundef !3 ; 5 uses
  %i.gb = icmp ult i64 %i.ga, 115292150460684698
  call void @llvm.assume(i1 %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 -115292150460684697, 115292150460684698) %i.ga, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %bb.ax
  %i.gc = load i64, ptr %i.b, align 8, !range !9, !noalias !121, !noundef !3
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = load i64, ptr %i.cr, align 8, !range !10, !noalias !121, !noundef !3 ; 3 uses
  br i1 %i.gd, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %.noexc46
  %i.gf = load i64, ptr %i.cs, align 8, !noalias !121
  br label %.invoke273

.invoke273:                                       ; preds = %bb.t, %bb.ar, %bb.ay
  %i.gg = phi i64 [ %i.ge, %bb.ay ], [ %i.fk, %bb.ar ], [ %i.da, %bb.t ]
  %i.gh = phi i64 [ %i.gf, %bb.ay ], [ %i.fl, %bb.ar ], [ %i.dc, %bb.t ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gh) #16
          to label %.cont274 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont274:                                         ; preds = %.invoke273
  unreachable

bb.az:                                            ; preds = %.noexc46
  %i.gi = load ptr, ptr %i.cs, align 8, !noalias !121, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = icmp ule i64 %i.ga, %i.ge
  call void @llvm.assume(i1 %i.gj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  store i64 %i.ge, ptr %i.k, align 8, !alias.scope !118, !noalias !122
  store ptr %i.gi, ptr %i.ct, align 8, !alias.scope !118, !noalias !122
  store i64 0, ptr %i.fz, align 8, !alias.scope !119, !noalias !120
  store i64 %i.ga, ptr %i.cu, align 8, !alias.scope !118, !noalias !122
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !119, !noalias !120, !nonnull !3, !noundef !3
  %i.gm = mul nuw nsw i64 %i.ga, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr nonnull align 8 %i.gl, i64 %i.gm, i1 false), !noalias !121
  %i.gn = load i64, ptr %i.cm, align 8, !alias.scope !123, !noalias !124, !noundef !3 ; 3 uses
  %i.go = load i64, ptr %i.m, align 8, !range !4, !alias.scope !123, !noalias !124, !noundef !3
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE8grow_oneB15_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bd unwind label %bb.bb, !noalias !124

bb.bb:                                            ; preds = %bb.ba
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #15
          to label %.body unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.bd:                                            ; preds = %bb.az, %bb.ba
  %i.gs = load ptr, ptr %i.cl, align 8, !alias.scope !123, !noalias !124, !nonnull !3, !noundef !3
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.gu = add i64 %i.gn, 1
  store i64 %i.gu, ptr %i.cm, align 8, !alias.scope !123, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gv = load i64, ptr %i.ez, align 8, !noundef !3
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8truncateBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gv)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %i.gw = phi i64 [ %i.hk, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.0123 = phi i64 [ %i.hl, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.03.0122 = phi i64 [ %i.he, %bb.bf ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.0121 = phi i64 [ %i.ha, %bb.bf ], [ 0, %.lr.ph.preheader ]
  %i.gx = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.sroa.0.0123 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !noundef !3
  %i.ha = add i64 %i.gz, %.sroa.06.0121           ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !3 ; 2 uses
  %i.hd = icmp ult i64 %i.hc, 115292150460684698
  call void @llvm.assume(i1 %i.hd)
  %i.he = add i64 %i.hc, %.sroa.03.0122           ; 3 uses
  %i.hf = load i64, ptr %i.gx, align 8, !noundef !3
  %i.hg = load i64, ptr %i.n, align 8, !range !4, !alias.scope !125, !noalias !126, !noundef !3
  %i.hh = icmp eq i64 %i.gw, %i.hg
  br i1 %i.hh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjjEE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bf unwind label %.loopexit56

bb.bf:                                            ; preds = %.lr.ph, %bb.be
  %i.hi = load ptr, ptr %i.ae, align 8, !alias.scope !125, !noalias !126, !nonnull !3, !noundef !3
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.gw ; 3 uses
  store i64 %i.hf, ptr %i.hj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.ha, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i64 %i.he, ptr %.sroa.5.0..sroa_idx, align 8
  %i.hk = add i64 %i.gw, 1                        ; 8 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !125, !noalias !126
  %i.hl = add nuw nsw i64 %.sroa.0.0123, 1        ; 2 uses
  %i.hm = icmp samesign ult i64 %i.hl, %i.r
  br i1 %i.hm, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location17relative_to_point(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.not11.i = icmp eq i64 %3, 0
  br i1 %.not11.i, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location8to_point.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.a = icmp eq i64 %.sroa.01.08.i, 0
  br i1 %i.a, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location8to_point.exit, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.01.08.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.08.i
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !131, !noundef !3
  %.not.i = icmp ugt i64 %i.c, %4
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add nuw nsw i64 %.sroa.01.08.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %3
  br i1 %exitcond.not.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.sroa.01.0.lcssa16.i = phi i64 [ %.sroa.01.08.i, %._crit_edge.i ], [ %3, %bb.b ]
  %i.e = getelementptr [16 x i8], ptr %2, i64 %.sroa.01.0.lcssa16.i ; 2 uses
  %5 = getelementptr i8, ptr %i.e, i64 -16
  %i.f = load i64, ptr %5, align 8, !alias.scope !131, !noundef !3
  %i.g = sub i64 %4, %i.f
  %i.h = getelementptr i8, ptr %i.e, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !131, !noundef !3
  %i.j = add i64 %i.g, %i.i                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.l, align 8, !noundef !3 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %.not.i3 = icmp eq i64 %.val2, 0
  br i1 %.not.i3, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location8to_point.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr [8 x i8], ptr %.val, i64 %.val2
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !noalias !132, !noundef !3
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %.preheader.i, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location8to_point.exit

.preheader.i:                                     ; preds = %bb.d
  %i.q = icmp ult i64 %.val2, 1152921504606846976
  tail call void @llvm.assume(i1 %i.q)
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not11.i5 = icmp eq i64 %.sroa.0.05.i, 0
  br i1 %.not11.i5, label %bb.h, label %.thread.i

bb.f:                                             ; preds = %bb.g, %.preheader.i
  %.sroa.0.05.i = phi i64 [ 0, %.preheader.i ], [ %i.u, %bb.g ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.05.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !132, !noundef !3
  %i.t = icmp ugt i64 %i.s, %i.j
  br i1 %i.t, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw nsw i64 %.sroa.0.05.i, 1         ; 2 uses
  %exitcond.not.i4 = icmp eq i64 %i.u, %.val2
  br i1 %exitcond.not.i4, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.g, %bb.e
  %.sroa.0.03.i = phi i64 [ %.sroa.0.05.i, %bb.e ], [ %.val2, %bb.g ] ; 2 uses
  %i.v = add nsw i64 %.sroa.0.03.i, -1            ; 3 uses
  %i.w = icmp ult i64 %i.v, %.val2
  br i1 %i.w, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.e
  %.sroa.0.04.i = phi i64 [ %i.ac, %bb.i ], [ 1, %bb.e ]
  %.sroa.07.0.i = phi i64 [ %i.ab, %bb.i ], [ 0, %bb.e ]
  %i.x = add i64 %i.j, 1
  %i.y = sub i64 %i.x, %.sroa.07.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.04.i, ptr %i.z, align 8, !alias.scope !132
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !132
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !132
  br label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location8to_point.exit

bb.i:                                             ; preds = %.thread.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.v
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !132, !noundef !3
  %i.ac = add nuw nsw i64 %.sroa.0.03.i, 1
  br label %bb.h

bb.j:                                             ; preds = %.thread.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %.val2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !132
  unreachable

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location8to_point.exit: ; preds = %bb.a, %._crit_edge.i, %bb.h, %bb.d, %bb.c
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.d ], [ 0, %._crit_edge.i ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  %.pre26 = load i64, ptr %i.a, align 8, !range !4, !alias.scope !139
  %i.b = icmp eq i64 %i.x, %.pre26
  %i.c = add i64 %.sroa.0.1, 2                    ; 2 uses
  br i1 %i.b, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.sroa.0.0.lcssa31 = phi i64 [ %i.c, %._crit_edge ], [ 1, %bb.a ]
  %i.d = phi i64 [ %i.x, %._crit_edge ], [ 0, %bb.a ]
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %._crit_edge.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8location8LocationEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #15
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.sroa.0.0.lcssa30 = phi i64 [ %i.c, %._crit_edge ], [ %.sroa.0.0.lcssa31, %._crit_edge.thread ]
  %i.e = phi i64 [ %i.x, %._crit_edge ], [ %i.d, %._crit_edge.thread ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !139, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store i64 %.sroa.0.0.lcssa30, ptr %i.g, align 8
  %i.h = add i64 %i.e, 1
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %i.i = phi i64 [ %i.x, %bb.j ], [ 0, %bb.a ]    ; 6 uses
  %.sroa.0.023 = phi i64 [ %i.y, %bb.j ], [ 0, %bb.a ] ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.023
  %i.k = load i8, ptr %i.j, align 1, !noundef !3
  switch i8 %i.k, label %bb.j [
    i8 13, label %bb.d
    i8 10, label %bb.k
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.sroa.0.023, 1          ; 6 uses
  %i.m = icmp ult i64 %i.l, %2
  br i1 %i.m, label %bb.g, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !range !4, !alias.scope !140
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge24, %bb.g
  %i.n = phi i64 [ %.pre, %._crit_edge24 ], [ %.pre25, %bb.g ]
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split unwind label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.q = load i8, ptr %i.p, align 1, !noundef !3
  %i.r = icmp eq i8 %i.q, 10
  %.pre25 = load i64, ptr %i.a, align 8, !range !4 ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i64 %.sroa.0.023, 2              ; 2 uses
  %i.t = icmp eq i64 %i.i, %.pre25
  br i1 %i.t, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split unwind label %.loopexit

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.e, %bb.f, %bb.k, %bb.l
  %.sink = phi i64 [ %i.aa, %bb.k ], [ %i.l, %bb.e ], [ %i.aa, %bb.l ], [ %i.l, %bb.f ], [ %i.s, %bb.i ], [ %i.s, %bb.h ]
  %.sroa.0.1.ph = phi i64 [ %.sroa.0.023, %bb.k ], [ %.sroa.0.023, %bb.e ], [ %.sroa.0.023, %bb.l ], [ %.sroa.0.023, %bb.f ], [ %i.l, %bb.i ], [ %i.l, %bb.h ]
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.i
  store i64 %.sink, ptr %i.v, align 8
  %i.w = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %.lr.ph
  %i.x = phi i64 [ %i.i, %.lr.ph ], [ %i.w, %.sink.split ] ; 4 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.023, %.lr.ph ], [ %.sroa.0.1.ph, %.sink.split ] ; 2 uses
  %i.y = add nuw i64 %.sroa.0.1, 1                ; 2 uses
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %.lr.ph, label %._crit_edge

bb.k:                                             ; preds = %.lr.ph
  %i.aa = add nuw nsw i64 %.sroa.0.023, 1         ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !range !4, !alias.scope !141, !noundef !3
  %i.ac = icmp eq i64 %i.i, %i.ab
  br i1 %i.ac, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.sink.split unwind label %.loopexit

bb.m:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize11subtokenize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias noundef readonly captures(address_is_null) dereferenceable_or_null(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.626 = alloca [48 x i8], align 8          ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.h = alloca [664 x i8], align 8               ; 61 uses
  %i.i = alloca [56 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.335.0..sroa_idx, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 1, ptr %i.k, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 3 uses
  %i.o = icmp ult i64 %i.n, 115292150460684698
  tail call void @llvm.assume(i1 %i.o)
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not105 = icmp eq ptr %3, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 652
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 648
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 650
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 472 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize11subtokenize:.split
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 409
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 410
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 417
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 653
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !align !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 47
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.p, align 8
  br label %bb.a

._crit_edge:                                      ; preds = %bb.g, %.split
  invoke void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %.loopexit.split-lp139

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %i.ai = phi i64 [ %i.n, %.lr.ph ], [ %i.ao, %bb.g ] ; 3 uses
  %i.aj = phi ptr [ %.pre, %.lr.ph ], [ %i.ap, %bb.g ] ; 4 uses
  %.sroa.0.0176 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.g ] ; 6 uses
  %.sroa.331.0175 = phi i64 [ 0, %.lr.ph ], [ %.sroa.331.1, %bb.g ] ; 3 uses
  %.sroa.030.0174 = phi i64 [ 0, %.lr.ph ], [ %.sroa.030.1, %bb.g ] ; 3 uses
  %i.ak = getelementptr [80 x i8], ptr %i.aj, i64 %.sroa.0.0176 ; 7 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !12, !noundef !3
  %.not206 = icmp eq i64 %i.al, 0
  br i1 %.not206, label %bb.h, label %bb.g

bb.b:                                             ; preds = %.loopexit138, %.loopexit.split-lp139, %.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn125, %.thread ], [ %lpad.loopexit140, %.loopexit138 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp139 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown11subtokenize9SubresultEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.i) #15
          to label %bb.ao unwind label %bb.am

.loopexit138:                                     ; preds = %bb.ak
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp139:                            ; preds = %._crit_edge, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit121 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i, %bb.at, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.dw, %bb.at ], [ %i.am, %bb.d ], [ %.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit121: ; preds = %bb.c, %bb.as
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.f:                                             ; preds = %bb.v
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.i, %bb.al
  %i.ao = phi i64 [ %.pre195, %bb.al ], [ %i.ai, %bb.i ], [ %i.ai, %bb.a ] ; 3 uses
  %i.ap = phi ptr [ %i.bw, %bb.al ], [ %i.aj, %bb.i ], [ %i.aj, %bb.a ]
  %.sroa.030.1 = phi i64 [ %i.dq, %bb.al ], [ %.sroa.030.0174, %bb.i ], [ %.sroa.030.0174, %bb.a ]
  %.sroa.331.1 = phi i64 [ %i.dr, %bb.al ], [ %.sroa.331.0175, %bb.i ], [ %.sroa.331.0175, %bb.a ]
  %i.aq = add nuw nsw i64 %.sroa.0.0176, 1        ; 2 uses
  %i.ar = icmp ult i64 %i.ao, 115292150460684698
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ult i64 %i.aq, %i.ao
  br i1 %i.as, label %bb.a, label %._crit_edge

bb.h:                                             ; preds = %bb.a
  br i1 %.not105, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.au = load i8, ptr %i.at, align 8, !range !148, !noundef !3
  %i.av = load i8, ptr %3, align 1, !range !148, !noundef !3
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.015.0.copyload = load i64, ptr %i.ax, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false)
  store i64 0, ptr %i.q, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.442.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8
  store i64 %.sroa.015.0.copyload, ptr %i.r, align 8
  store i64 %.sroa.015.0.copyload, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i8 1, ptr %i.t, align 4
  store i64 0, ptr %i.u, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.445.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.546.0..sroa_idx, align 8
  store i8 0, ptr %i.v, align 8
  store i8 0, ptr %i.w, align 2
  store i64 %.sroa.015.0.copyload, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 0, ptr %i.y, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.451.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.448.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.549.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.584.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.486.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.587.0..sroa_idx, align 8
  store ptr %2, ptr %i.z, align 8
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %.sroa.555.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.555.sroa.4.0..sroa.555.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.555.sroa.5.0..sroa.555.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.656.sroa.4.0..sroa.656.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.656.sroa.5.0..sroa.656.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(95) %.sroa.15.0..sroa_idx, i8 0, i64 95, i1 false)
  store i8 -1, ptr %.sroa.33.0..sroa_idx, align 1
  store i8 -1, ptr %.sroa.34.0..sroa_idx, align 8
  store i8 -92, ptr %.sroa.35.0..sroa_idx, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.36.0..sroa_idx, i8 30, i64 6, i1 false)
  store i8 0, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.43.0..sroa_idx, align 1
  store i32 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !148, !noundef !3 ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.az, 2
  %switch.select = select i1 %switch.selectcmp, i16 353, i16 356
  %switch.selectcmp110 = icmp eq i8 %i.az, 1
  %switch.select111 = select i1 %switch.selectcmp110, i16 34, i16 %switch.select
  store i16 %switch.select111, ptr %i.ab, align 8
  store i64 -9223372036854775808, ptr %i.g, align 8
  %i.ba = load i8, ptr %i.ae, align 1, !range !13, !noundef !3
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = icmp samesign ugt i64 %.sroa.0.0176, 2
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.m, %bb.l, %bb.j
  %.pre195 = load i64, ptr %i.m, align 8          ; 6 uses
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ak, i64 -8
  %i.be = load i8, ptr %i.bd, align 8, !range !13, !noundef !3
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.k

.loopexit130:                                     ; preds = %bb.z
  %lpad.loopexit132 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp131:                            ; preds = %bb.aj, %bb.t
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr i8, ptr %i.ak, i64 -7
  %i.bh = load i8, ptr %i.bg, align 1, !range !14, !noundef !3
  %i.bi = icmp eq i8 %i.bh, -106
  br i1 %i.bi, label %bb.n, label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bj = add nsw i64 %.sroa.0.0176, -2
  %i.bk = invoke noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip8opt_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aj, i64 noundef %i.ai, i64 noundef %i.bj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.bm = icmp ult i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %i.bn, i64 %i.bk ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load i8, ptr %i.bp, align 8, !range !13, !noundef !3
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.q, label %bb.k

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 73
  %i.bt = load i8, ptr %i.bs, align 1, !range !14, !noundef !3
  %i.bu = icmp eq i8 %i.bt, 109
  br i1 %i.bu, label %bb.r, label %bb.k

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %.sroa.27.0..sroa_idx, align 1
  br label %bb.k

bb.s:                                             ; preds = %bb.k, %bb.aa
  %.sroa.3.0173 = phi i64 [ %.sroa.0.0176, %bb.k ], [ %i.cr, %bb.aa ] ; 4 uses
  %i.bv = icmp ult i64 %.sroa.3.0173, %.pre195
  br i1 %i.bv, label %bb.u, label %.invoke

bb.t:                                             ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  invoke void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5flush(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(664) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i1 noundef zeroext true)
          to label %bb.ab unwind label %.loopexit.split-lp131

bb.u:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %.sroa.3.0173 ; 6 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !12, !noundef !3
  switch i64 %i.by, label %bb.x [
    i64 2, label %bb.v
    i64 1, label %bb.w
  ], !prof !149

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false)
  invoke void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer11define_skip(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.y unwind label %.loopexit

bb.x:                                             ; preds = %bb.u, %bb.y
  %i.ca = add nuw i64 %.sroa.3.0173, 1            ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %.pre195
  br i1 %i.cb, label %bb.z, label %.invoke

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %i.ca ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  invoke void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4push(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(664) %i.h, i64 noundef %i.ce, i64 noundef %i.cg, i64 noundef %i.ci, i64 noundef %i.ck, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.aa unwind label %.loopexit130

.invoke:                                          ; preds = %bb.o, %bb.x, %bb.s
  %i.cl = phi i64 [ %.sroa.3.0173, %bb.s ], [ %i.ca, %bb.x ], [ %i.bk, %bb.o ]
  %i.cm = phi i64 [ %.pre195, %bb.x ], [ %.pre195, %bb.s ], [ %i.bl, %bb.o ]
  %i.cn = phi ptr [ @12, %bb.s ], [ @15, %bb.x ], [ @11, %bb.o ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !9, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = trunc nuw i64 %i.cp to i1
  br i1 %i.cs, label %bb.s, label %bb.t

bb.ab:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = load i64, ptr %i.b, align 8, !range !7, !noundef !3 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.626, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.489.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.626, i64 48, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEBF_(ptr noalias noundef align 8 dereferenceable(664) %i.h)
          to label %bb.an unwind label %.loopexit.split-lp139

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.626, i64 48, i1 false)
  store i64 %i.ct, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  %i.cw = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.cx = load i64, ptr %i.af, align 8, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cx)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.ad
  %i.cy = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !150, !noundef !3 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.noexc
  %i.da = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !150, !nonnull !3, !noundef !3
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cy
  %i.dc = mul i64 %i.cx, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull readonly align 8 %i.cw, i64 %i.dc, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !150
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag, %bb.ad, %bb.ai
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown11subtokenize9SubresultEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #15
          to label %.thread unwind label %bb.am

bb.ag:                                            ; preds = %bb.ae, %.noexc
  %i.de = phi i64 [ %.pre.i, %bb.ae ], [ %i.cy, %.noexc ]
  %i.df = add i64 %i.de, %i.cx
  store i64 %i.df, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !150
  store i64 0, ptr %i.af, align 8
  %i.dg = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.dh = load i64, ptr %i.ah, align 8, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.dh)
          to label %.noexc114 unwind label %bb.af

.noexc114:                                        ; preds = %bb.ag
  %i.di = load i64, ptr %.sroa.513.0..sroa_idx, align 8, !alias.scope !151, !noundef !3 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 384307168202282326
  call void @llvm.assume(i1 %i.dj)
  %.not.i112 = icmp eq i64 %i.dh, 0
  br i1 %.not.i112, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc114
  %i.dk = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !151, !nonnull !3, !noundef !3
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.di
  %i.dm = mul i64 %i.dh, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull readonly align 8 %i.dg, i64 %i.dm, i1 false)
  %.pre.i113 = load i64, ptr %.sroa.513.0..sroa_idx, align 8, !alias.scope !151
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.noexc114
  %i.dn = phi i64 [ %.pre.i113, %bb.ah ], [ %i.di, %.noexc114 ]
  %i.do = add i64 %i.dn, %i.dh
  store i64 %i.do, ptr %.sroa.513.0..sroa_idx, align 8, !alias.scope !151
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.k, align 8
  %i.dp = invoke { i64, i64 } @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize13divide_events(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bw, i64 noundef %.pre195, i64 noundef %.sroa.0.0176, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %.sroa.030.0174, i64 noundef %.sroa.331.0175)
          to label %bb.aj unwind label %bb.af     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.dq = extractvalue { i64, i64 } %i.dp, 0
  %i.dr = extractvalue { i64, i64 } %i.dp, 1
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown11subtokenize9SubresultEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.ak unwind label %.loopexit.split-lp131

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEBF_(ptr noalias noundef align 8 dereferenceable(664) %i.h)
          to label %bb.al unwind label %.loopexit138

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

bb.am:                                            ; preds = %bb.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i, %.thread, %bb.af, %bb.b
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.am
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.an:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown11subtokenize9SubresultEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.i)
          to label %bb.as unwind label %bb.ar

bb.ao:                                            ; preds = %bb.ar, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.b ], [ %i.dv, %bb.ar ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.am

bb.ar:                                            ; preds = %bb.an
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.as:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit121 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread:                                          ; preds = %.loopexit130, %.loopexit.split-lp131, %.loopexit.split-lp, %bb.av, %bb.af
  %.pn125 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dd, %bb.af ], [ %lpad.phi, %bb.av ], [ %lpad.loopexit132, %.loopexit130 ], [ %lpad.loopexit.split-lp133, %.loopexit.split-lp131 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEBF_(ptr noalias noundef align 8 dereferenceable(664) %i.h) #15
          to label %bb.b unwind label %bb.am

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.n
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.v
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit135, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dy = load i64, ptr %i.g, align 8, !range !152, !alias.scope !153, !noundef !3
  %i.dz = icmp sgt i64 %i.dy, -1
  br i1 %i.dz, label %bb.av, label %.thread

bb.av:                                            ; preds = %.loopexit.split-lp
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.thread unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize13divide_events(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 115292150460684698) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 9 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 9 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  %.not141 = icmp eq i64 %i.g, 0
  br i1 %.not141, label %._crit_edge140, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3 ; 3 uses
  %i.k = sub i64 %6, %5                           ; 2 uses
  br label %bb.p

bb.b:                                             ; preds = %bb.ae
  %.pre.pre = load i64, ptr %i.e, align 8         ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !range !4, !alias.scope !162, !noundef !3
  %i.m = icmp eq i64 %.pre.pre, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !162, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre.pre ; 2 uses
  store i64 %.sroa.0.1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.013.1, ptr %i.p, align 8
  %i.q = add i64 %.pre.pre, 1                     ; 4 uses
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !162
  %i.r = icmp ult i64 %i.q, 576460752303423488
  call void @llvm.assume(i1 %i.r)
  %.not136 = icmp eq i64 %i.q, 0
  br i1 %.not136, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3
  br label %bb.j

.loopexit:                                        ; preds = %bb.l, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke293, %.invoke, %bb.n, %bb.m, %bb.c
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit69, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

._crit_edge140.loopexit:                          ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add.exit
  %.pre205 = load i64, ptr %i.e, align 8
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %bb.a, %._crit_edge140.loopexit, %bb.d
  %i.aa = phi i64 [ %.pre205, %._crit_edge140.loopexit ], [ 0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488
  call void @llvm.assume(i1 %i.ab)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2KzzoC5ewhj_8markdown.exit58 unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge140
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %lpad.phi, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2KzzoC5ewhj_8markdown.exit58: ; preds = %._crit_edge140
  %i.ae = add i64 %i.g, %6
  %i.af = shl nuw nsw i64 %i.aa, 1
  %i.ag = add i64 %i.af, %5
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = insertvalue { i64, i64 } poison, i64 %i.ag, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %i.ae, 1
  ret { i64, i64 } %i.ai

bb.j:                                             ; preds = %.lr.ph139, %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add.exit
  %.sroa.029.0137 = phi i64 [ %i.q, %.lr.ph139 ], [ %i.ak, %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add.exit ]
  %i.aj = phi i64 [ %i.g, %.lr.ph139 ], [ %i.ar, %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add.exit ] ; 3 uses
  %i.ak = add nsw i64 %.sroa.029.0137, -1         ; 5 uses
  %i.al = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %.invoke293

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ak ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.as = icmp ugt i64 %i.ar, %i.aj
  br i1 %i.as, label %bb.n, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.at = sub nuw nsw i64 %i.aj, %i.ar            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !165
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 -115292150460684697, 115292150460684698) %i.at, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc59 unwind label %.loopexit

.noexc59:                                         ; preds = %bb.l
  %i.au = load i64, ptr %i.a, align 8, !range !9, !noalias !165, !noundef !3
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = load i64, ptr %i.s, align 8, !range !10, !noalias !165, !noundef !3 ; 3 uses
  br i1 %i.av, label %bb.m, label %bb.o, !prof !11

bb.m:                                             ; preds = %.noexc59
  %i.ax = load i64, ptr %i.t, align 8, !noalias !165
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ax) #16
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef %i.ar, i64 noundef %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.noexc59
  %i.ay = load ptr, ptr %i.t, align 8, !noalias !165, !nonnull !3, !noundef !3 ; 2 uses
  %i.az = icmp ule i64 %i.at, %i.aw
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !165
  store i64 %i.aw, ptr %i.b, align 8, !alias.scope !163, !noalias !166
  store ptr %i.ay, ptr %i.u, align 8, !alias.scope !163, !noalias !166
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !164, !noalias !167
  store i64 %i.at, ptr %i.v, align 8, !alias.scope !163, !noalias !166
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.x, i64 %i.ar
  %i.bb = mul nuw nsw i64 %i.at, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.ba, i64 %i.bb, i1 false), !noalias !165
  invoke fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map8add_impl(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.ap, i64 noundef 2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i1 noundef zeroext false)
          to label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add.exit unwind label %.loopexit

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %._crit_edge140.loopexit, label %bb.j

bb.p:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.0.0134 = phi i64 [ %3, %.lr.ph ], [ %.sroa.0.1, %bb.ae ] ; 7 uses
  %.sroa.07.0133 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %bb.ae ] ; 3 uses
  %.sroa.013.0132 = phi i64 [ 0, %.lr.ph ], [ %.sroa.013.1, %bb.ae ] ; 3 uses
  %.sroa.024.0131 = phi i64 [ 0, %.lr.ph ], [ %.sroa.024.1, %bb.ae ] ; 3 uses
  %.sroa.3.0129 = phi i64 [ undef, %.lr.ph ], [ %.sroa.3.1, %bb.ae ] ; 6 uses
  %i.bc = add i64 %.sroa.0.0134, 1                ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %2
  br i1 %i.bd, label %bb.q, label %.invoke293

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.07.0133 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !3 ; 2 uses
  %i.bk = icmp ugt i64 %i.bg, %i.bj
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = icmp eq i64 %i.bg, %i.bj
  br i1 %i.bl, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.u, %bb.q
  %i.bm = load i64, ptr %i.e, align 8, !alias.scope !168, !noundef !3 ; 3 uses
  %i.bn = load i64, ptr %i.c, align 8, !range !4, !alias.scope !168, !noundef !3
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bs = load i64, ptr %i.br, align 8, !noundef !3
  %i.bt = icmp ugt i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.s, label %bb.z

bb.v:                                             ; preds = %bb.s, %bb.t
  %i.bu = load ptr, ptr %i.d, align 8, !alias.scope !168, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bm ; 2 uses
  store i64 %.sroa.0.0134, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.013.0132, ptr %i.bw, align 8
  %i.bx = add i64 %i.bm, 1
  store i64 %i.bx, ptr %i.e, align 8, !alias.scope !168
  %i.by = icmp ult i64 %.sroa.0.0134, %2
  br i1 %i.by, label %bb.w, label %.invoke293

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.sroa.0.0134 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !range !12, !noundef !3
  %.not51 = icmp eq i64 %i.ca, 2
  br i1 %.not51, label %.invoke, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !9, !noundef !3
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.y, label %.invoke, !prof !8

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.r, %bb.y, %bb.u
  %.sroa.013.1 = phi i64 [ %.sroa.07.0133, %bb.y ], [ %.sroa.013.0132, %bb.u ], [ %.sroa.013.0132, %bb.r ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.cf, %bb.y ], [ %.sroa.0.0134, %bb.u ], [ %.sroa.0.0134, %bb.r ] ; 4 uses
  %i.cg = load i64, ptr %i.be, align 8, !range !12, !noundef !3
  switch i64 %i.cg, label %bb.ad [
    i64 1, label %bb.aa
    i64 2, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ch = trunc nuw i64 %.sroa.024.0131 to i1
  br i1 %i.ch, label %bb.ab, label %.invoke, !prof !8

bb.ab:                                            ; preds = %bb.aa
  %i.ci = icmp ult i64 %.sroa.3.0129, %i.g
  br i1 %i.ci, label %bb.ac, label %.invoke293

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.3.0129 ; 3 uses
  %i.ck = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 576460752303423488
  call void @llvm.assume(i1 %i.cl)
  %i.cm = load i64, ptr %i.cj, align 8, !range !12, !noundef !3
  %.not53 = icmp eq i64 %i.cm, 2
  br i1 %.not53, label %.invoke, label %.thread228, !prof !11

.thread228:                                       ; preds = %bb.ac
  %i.cn = add nuw nsw i64 %.sroa.3.0129, 2
  %i.co = add i64 %i.cn, %.sroa.0.1
  %i.cp = shl nuw nsw i64 %i.ck, 1
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = add i64 %i.k, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %i.cr, ptr %i.ct, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %.thread228
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !range !9, !noundef !3
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.aj, %bb.ad
  %.sroa.3.1 = phi i64 [ %i.dh, %bb.aj ], [ %.sroa.3.0129, %bb.ad ], [ %.sroa.3.0129, %bb.z ]
  %.sroa.024.1 = phi i64 [ %i.dc, %bb.aj ], [ %.sroa.024.0131, %bb.ad ], [ %.sroa.024.0131, %bb.z ]
  %i.cx = add nuw nsw i64 %.sroa.07.0133, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %i.g
  br i1 %exitcond.not, label %bb.b, label %bb.p

bb.af:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !3 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.g
  br i1 %i.da, label %bb.ag, label %.invoke293

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.cz ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !12, !noundef !3 ; 3 uses
  %.not55 = icmp eq i64 %i.dc, 2
  br i1 %.not55, label %.invoke, label %bb.ah, !prof !11

.invoke293:                                       ; preds = %bb.af, %bb.ab, %bb.v, %bb.p, %bb.j
  %i.dd = phi i64 [ %i.ak, %bb.j ], [ %.sroa.0.0134, %bb.v ], [ %i.bc, %bb.p ], [ %i.cz, %bb.af ], [ %.sroa.3.0129, %bb.ab ]
  %i.de = phi i64 [ %i.al, %bb.j ], [ %2, %bb.v ], [ %2, %bb.p ], [ %i.g, %bb.af ], [ %i.g, %bb.ab ]
  %i.df = phi ptr [ @16, %bb.j ], [ @19, %bb.v ], [ @18, %bb.p ], [ @25, %bb.af ], [ @23, %bb.ab ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df) #16
          to label %.cont294 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont294:                                         ; preds = %.invoke293
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = trunc nuw i64 %i.dc to i1
  br i1 %i.di, label %bb.ai, label %bb.aj

.invoke:                                          ; preds = %bb.ag, %bb.ac, %bb.aa, %bb.x, %bb.w
  %i.dj = phi ptr [ @24, %bb.ac ], [ @22, %bb.aa ], [ @21, %bb.x ], [ @20, %bb.w ], [ @26, %bb.ag ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, 576460752303423488
  call void @llvm.assume(i1 %i.dl)
  %i.dm = add i64 %i.k, %.sroa.0.1
  %i.dn = add i64 %i.dm, %i.dh
  %i.do = shl nuw nsw i64 %i.dk, 1
  %i.dp = sub i64 %i.dn, %i.do
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sroa.5.0 = phi i64 [ %i.dp, %bb.ai ], [ undef, %bb.ah ]
  %.sroa.025.0 = phi i64 [ 1, %bb.ai ], [ 0, %bb.ah ]
  store i64 %.sroa.025.0, ptr %i.db, align 8
  store i64 %.sroa.5.0, ptr %i.dg, align 8
  br label %bb.ae

bb.ak:                                            ; preds = %bb.f
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.e, %bb.ak
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize4link(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, -2                           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.b = icmp ult i64 %i.a, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !12, !alias.scope !171, !noundef !3
  %.not.i = icmp eq i64 %i.d, 2
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #16, !noalias !171
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.e, align 8, !alias.scope !171
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %i.f, align 8, !alias.scope !171
  %i.g = icmp samesign ult i64 %2, %1
  br i1 %i.g, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #16, !noalias !171
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !12, !alias.scope !171, !noundef !3
  %.not5.i = icmp eq i64 %i.i, 2
  br i1 %.not5.i, label %bb.h, label %_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize7link_to.exit, !prof !11

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #16, !noalias !171
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #16, !noalias !171
  unreachable

_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize7link_to.exit: ; preds = %bb.f
  store i64 1, ptr %i.h, align 8, !alias.scope !171
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.a, ptr %i.j, align 8, !alias.scope !171
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown6parser5parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.625 = alloca [48 x i8], align 8          ; 4 uses
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [120 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.619 = alloca [48 x i8], align 8          ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [664 x i8], align 8               ; 63 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noundef !3
  %.not = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %3, align 8
  %.not93 = icmp eq ptr %i.m, null
  %or.cond = select i1 %.not, i1 %.not93, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8locationNtB2_8Location3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %.sroa.0.0, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %3, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 %2, ptr %i.q, align 8
  store i64 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 424 ; 5 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  store i64 1, ptr %i.u, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store i64 1, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 652
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 448 ; 6 uses
  store i64 0, ptr %i.w, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 648
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 650
  store i8 0, ptr %i.y, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  store i64 1, ptr %i.z, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store i64 1, ptr %.sroa.510.0..sroa_idx11, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 472 ; 7 uses
  store i64 0, ptr %i.aa, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx13, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 496 ; 5 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.546.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 520 ; 5 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 536
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 544 ; 5 uses
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.585.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.478.0..sroa_idx, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 560
  store i64 0, ptr %.sroa.579.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 568
  store ptr %i.j, ptr %i.ae, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.650.sroa.4.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.650.sroa.4.0..sroa.650.0..sroa_idx.sroa_idx, align 8
  %.sroa.650.sroa.5.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.751.sroa.4.0..sroa.751.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.sroa.5.0..sroa.650.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.751.sroa.4.0..sroa.751.0..sroa_idx.sroa_idx, align 8
  %.sroa.751.sroa.5.0..sroa.751.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.751.sroa.5.0..sroa.751.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store i64 0, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store i64 -1, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(95) %.sroa.15.0..sroa_idx, i8 0, i64 95, i1 false)
  store i8 -1, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  store i8 -1, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 409
  store i8 -92, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 410
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.36.0..sroa_idx, i8 30, i64 6, i1 false)
  store i8 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 417
  store i8 0, ptr %.sroa.43.0..sroa_idx, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 653
  store i32 0, ptr %i.af, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i16 59, ptr %i.ag, align 8
  store i64 -9223372036854775808, ptr %i.f, align 8
  invoke void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4push(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(664) %i.h, i64 noundef 0, i64 noundef 0, i64 noundef %2, i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.body, %bb.e
  %.sroa.030.0 = phi i1 [ %.sroa.030.1, %bb.e ], [ false, %.body ]
  %.sroa.033.0 = phi i8 [ %.sroa.033.1, %bb.e ], [ 1, %.body ]
  %.pn97 = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %.pn95, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.s) #15
          to label %bb.bh unwind label %bb.af

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit, %bb.f, %bb.c
  %.sroa.030.1 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit ], [ true, %bb.f ], [ true, %bb.c ]
  %.sroa.033.1 = phi i8 [ %.sroa.033.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit ], [ 1, %bb.f ], [ 1, %bb.c ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
end_hunk_3
begin_hunk_4_@_RNvNtCs2KzzoC5ewhj_8markdown6parser5parse:bb.a
          to label %bb.bj unwind label %bb.af

bb.bl:                                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #15
          to label %bb.bm unwind label %bb.af

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #15
          to label %bb.bn unwind label %bb.af

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer13TokenizeStateEBF_(ptr noalias noundef align 8 dereferenceable(424) %i.h) #15
          to label %bb.bb unwind label %bb.af

bb.bo:                                            ; preds = %bb.bp, %bb.bb
  resume { ptr, i32 } %.pn109

bb.bp:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown6parser10ParseStateEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.j) #15
          to label %bb.bo unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util8edit_map8add_impl(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 8 uses
  %i.j = icmp ult i64 %i.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.j)
  %.not45 = icmp eq i64 %i.i, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  br label %bb.j

bb.d:                                             ; preds = %bb.s, %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.h, %.thread35, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.bn, %bb.ab ], [ %eh.lpad-body27, %.thread35 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.l

._crit_edge:                                      ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i64 %1, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.p, align 8
  %i.q = load i64, ptr %0, align 8, !range !4, !alias.scope !185, !noalias !186, !noundef !3
  %i.r = icmp eq i64 %i.i, %i.q
  br i1 %i.r, label %bb.g, label %bb.k

bb.g:                                             ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.k unwind label %bb.h, !noalias !186

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #15
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.044 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.m ] ; 4 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.0.044 ; 8 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.v, %1
  br i1 %i.w, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.g, %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !185, !noalias !186, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.aa = add nuw nsw i64 %i.i, 1
  store i64 %i.aa, ptr %i.h, align 8, !alias.scope !185, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit28, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit
  ret void

bb.m:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i64 %.sroa.0.044, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.n:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  %i.ae = add i64 %i.ad, %2
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = icmp samesign ult i64 %.sroa.0.044, %i.i ; 2 uses
  br i1 %4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.af, label %bb.q, label %.invoke

bb.p:                                             ; preds = %bb.n
  br i1 %i.af, label %bb.t, label %.invoke

bb.q:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE7reserveBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.ak)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !187, !noundef !3 ; 3 uses
  %i.an = icmp ult i64 %i.am, 115292150460684698
  tail call void @llvm.assume(i1 %i.an)
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !187, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.ap, i64 %i.am
  %i.ar = mul i64 %i.ak, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull readonly align 8 %i.ai, i64 %i.ar, i1 false)
  %.pre.i = load i64, ptr %i.al, align 8, !alias.scope !187
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc
  %i.as = phi i64 [ %.pre.i, %bb.r ], [ %i.am, %.noexc ]
  %i.at = add i64 %i.as, %i.ak
  store i64 %i.at, ptr %i.al, align 8, !alias.scope !187
  store i64 0, ptr %i.aj, align 8
  br label %bb.d

bb.t:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE7reserveBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ax)
          to label %.noexc22 unwind label %bb.ab

.noexc22:                                         ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !188, !noundef !3 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 115292150460684698
  tail call void @llvm.assume(i1 %i.ba)
  %.not.i20 = icmp eq i64 %i.ax, 0
  br i1 %.not.i20, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc22
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !188, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw [80 x i8], ptr %i.bc, i64 %i.az
  %i.be = mul i64 %i.ax, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull readonly align 8 %i.av, i64 %i.be, i1 false)
  %.pre.i21 = load i64, ptr %i.ay, align 8, !alias.scope !188
  br label %bb.v

.invoke:                                          ; preds = %bb.p, %bb.o
  %i.bf = phi ptr [ @36, %bb.o ], [ @37, %bb.p ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.044, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf) #16
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %.noexc22, %bb.u
  %i.bg = phi i64 [ %.pre.i21, %bb.u ], [ %i.az, %.noexc22 ]
  %i.bh = add i64 %i.bg, %i.ax
  store i64 %i.bh, ptr %i.ay, align 8, !alias.scope !188
  store i64 0, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.thread35 unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit28 unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread35

.thread35:                                        ; preds = %bb.z, %bb.w
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.bl, %bb.z ], [ %i.bj, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit28: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.aa:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ab:                                            ; preds = %.invoke, %bb.t, %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %3) #15
          to label %common.resume unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct12mdx_jsx_flow3end(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load i8, ptr %i.e, align 8, !range !13, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.i = load i8, ptr %i.h, align 1, !noundef !3
  switch i8 %i.i, label %bb.d [
    i8 10, label %bb.c
    i8 60, label %bb.e
    i8 123, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 654
  store i8 0, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 410
  store i8 30, ptr %i.k, align 2
  br label %bb.g

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 654
  store i8 0, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 410
  store i8 30, ptr %i.m, align 2
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i16 284, ptr %i.n, align 8
  store i64 -9223372036854775808, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 286, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %i.c, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 293, ptr %i.p, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !6, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !align !6, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 61
  %i.v = load i8, ptr %i.u, align 1, !range !13, !noundef !3
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.d

bb.g:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ -9223372036854775807, %bb.h ], [ -9223372036854775807, %bb.e ], [ -9223372036854775805, %bb.d ], [ -9223372036854775806, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 284, ptr %i.x, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 286, ptr %i.y, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 273, ptr %i.z, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct12mdx_jsx_flow5after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !3
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.g = load i8, ptr %i.f, align 1, !noundef !3
  switch i8 %i.g, label %bb.d [
    i8 9, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 285, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.m, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink = phi i16 [ 345, %bb.c ], [ 285, %bb.b ], [ 285, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.n, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct12mdx_jsx_flow5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
end_hunk_4
begin_hunk_5_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct12mdx_jsx_flow5start:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct12mdx_jsx_flow6before(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !3
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 60
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 284, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 286, ptr %i.j, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i16 [ 293, %bb.b ], [ 286, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.k, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct29partial_non_lazy_continuation5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 10
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 105)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 105)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 319, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ -9223372036854775808, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8raw_text13sequence_open(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !noundef !3  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !3
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, %i.b
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.b, 36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 1
  %or.cond6 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond6, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 341, ptr %i.p, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !align !6, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !align !6, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 67
  %i.v = load i8, ptr %i.u, align 1, !range !13, !noundef !3
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8
  store i64 0, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 410
  store i8 30, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 411
  store i8 30, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i8 30, ptr %i.z, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 411
  %i.ab = load i8, ptr %i.aa, align 1, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 342, ptr %i.ac, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi i64 [ -9223372036854775805, %bb.e ], [ -9223372036854775807, %bb.f ], [ -9223372036854775808, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8raw_text14sequence_close(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !3
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, %i.b
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 411 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 344, ptr %i.s, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 5 uses
  %i.v = icmp ult i64 %i.u, 115292150460684698
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nsw i64 %i.u, -2                     ; 2 uses
  %i.x = icmp samesign ugt i64 %i.u, 1
  br i1 %i.x, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 410 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.z)
  store i8 0, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 30, ptr %i.y, align 2
  store i8 30, ptr %i.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i8 30, ptr %i.aa, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.ae = load i8, ptr %i.ad, align 4, !range !14, !noundef !3 ; 2 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 73
  store i8 %i.ae, ptr %i.ag, align 1
  %i.ah = add nsw i64 %i.u, -1                    ; 3 uses
  %i.ai = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.ak, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 73
  store i8 %i.ae, ptr %i.am, align 1
  store i64 0, ptr %i.m, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 342, ptr %i.an, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #16
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.c
  %.sink = phi i64 [ -9223372036854775806, %bb.e ], [ -9223372036854775807, %bb.h ], [ -9223372036854775808, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8raw_text4data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = icmp eq i8 %i.e, 10
  %not. = xor i1 %i.c, true
  %or.cond.not = select i1 %not., i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.e, %i.h
  %or.cond = select i1 %or.cond.not, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.k = load i8, ptr %i.j, align 4, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.k)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i16 [ 342, %bb.b ], [ 343, %bb.c ]
  %storemerge = phi i64 [ -9223372036854775807, %bb.b ], [ -9223372036854775808, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.l, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8raw_text5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !6, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  %i.f = load i8, ptr %i.e, align 1, !range !13, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 59
  %i.i = load i8, ptr %i.h, align 1, !range !13, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.l = load i8, ptr %i.k, align 8, !range !13, !noundef !3
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 96
  %or.cond = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.q = phi i1 [ true, %bb.c ], [ false, %bb.f ] ; 3 uses
  %i.r = phi i8 [ 96, %bb.c ], [ 36, %bb.f ]      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 650
  %i.t = load i8, ptr %i.s, align 2, !range !13, !noundef !3
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.split, label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.w = load i8, ptr %i.v, align 8, !range !13, !noundef !3
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.z = load i8, ptr %i.y, align 1, !noundef !3
  %i.aa = icmp eq i8 %i.z, 36
  br i1 %i.aa, label %bb.d, label %bb.i

.split:                                           ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 651
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !3
  %.not = icmp eq i8 %i.ac, %i.r
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.split
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 115292150460684698
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr [80 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = getelementptr i8, ptr %i.aj, i64 -7
  %i.al = load i8, ptr %i.ak, align 1, !range !14, !noundef !3
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.g, %bb.h, %bb.j
  %storemerge = phi i64 [ -9223372036854775807, %bb.j ], [ -9223372036854775805, %bb.h ], [ -9223372036854775805, %bb.g ], [ -9223372036854775805, %bb.e ], [ -9223372036854775805, %bb.f ], [ -9223372036854775805, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %.split, %bb.d
  %.sink8 = select i1 %i.q, i8 26, i8 118         ; 2 uses
  %.sink7 = select i1 %i.q, i8 28, i8 120
  %.sink = select i1 %i.q, i8 27, i8 119
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 410
  store i8 %.sink8, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 411 ; 2 uses
  store i8 %.sink7, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i8 %.sink, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 %i.r, ptr %i.aq, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %.sink8)
  %i.ar = load i8, ptr %i.ao, align 1, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 341, ptr %i.as, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8raw_text7between(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1, !noundef !3  ; 2 uses
  %i.f = icmp eq i8 %i.e, 10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 410
  store i8 30, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 411
  store i8 30, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 412
  store i8 30, ptr %i.l, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.c
  %.sink = phi i64 [ -9223372036854775807, %bb.g ], [ -9223372036854775807, %bb.h ], [ -9223372036854775808, %bb.e ], [ -9223372036854775805, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 105)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 105)
  store i16 342, ptr %i.g, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.n = load i8, ptr %i.m, align 8, !noundef !3
  %i.o = icmp eq i8 %i.e, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.q = load i8, ptr %i.p, align 4, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.q)
  store i16 343, ptr %i.g, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 411
  %i.s = load i8, ptr %i.r, align 1, !range !14, !noundef !3
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef %i.s)
  store i16 344, ptr %i.g, align 8
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs2KzzoC5ewhj_8markdown7messageNtB5_7MessageNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown7message5PlaceEENtNtB7_3fmt5Debug3fmtB1m_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !6, !noundef !3
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEENCINvMB6_SBT_16sort_unstable_byNCNvMNtNtB1w_4util8edit_mapNtB2H_7EditMap7consume0E0EB1w_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjjINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEENCINvMB8_SB1m_16sort_unstable_byNCNvMNtNtB1Z_4util8edit_mapNtB3b_7EditMap7consume0E0EB1Z_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtBJ_3ops4drop4Drop4dropB1o_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer10LabelStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer14ContainerStateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer5LabelENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtBQ_3ops4drop4Drop4dropB1H_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer10LabelStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer14ContainerStateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer5LabelENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs2KzzoC5ewhj_8markdown7to_html7compile(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 115292150460684698), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast7compile(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 115292150460684698), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE7reserveBH_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjIBu_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEE8truncateBO_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8truncateBH_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEE8grow_oneB15_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEE8grow_oneB18_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjjEE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip8opt_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 115292150460684698), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer11define_skip(ptr noalias noundef align 8 dereferenceable(664), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4push(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(664), i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5flush(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(664), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef align 8 dereferenceable(664), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0
end_hunk_5
