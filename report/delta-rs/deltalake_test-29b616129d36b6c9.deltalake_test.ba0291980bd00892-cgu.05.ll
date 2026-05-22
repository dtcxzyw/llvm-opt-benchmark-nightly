inline.NumInlined: 294
inline.NumDeleted: 122
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] c"<\00\00\00", align 4
@1 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@3 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_str, ptr @_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write10write_char, ptr @_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCsfY7SmN0bPrO_14deltalake_test, ptr @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@6 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@7 = private unnamed_addr constant [74 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/io/mod.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"I\00\00\00\00\00\00\00\88\02\00\00\11\00\00\00" }>, align 8
@9 = private unnamed_addr constant [6 x i8] c"\01 \C0\01\0A\00", align 1
@10 = private unnamed_addr constant [4 x i8] c">\00\00\00", align 4
@11 = private unnamed_addr constant <{ [13 x i8], [3 x i8], [1 x i8], [7 x i8] }> <{ [13 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\13", [3 x i8] undef, [1 x i8] c"\13", [7 x i8] undef }>, align 8
@12 = private unnamed_addr constant [12 x i8] c"Invalid path", align 1
@13 = private unnamed_addr constant [52 x i8] c"\06Path \22\C0*\22 does not exist or you don't have access!\00", align 1
@14 = private unnamed_addr constant [45 x i8] c"Path does not exist Or you don't have access!", align 1
@15 = private unnamed_addr constant [31 x i8] c"\06Path \22\C0\15\22 is not a directory!\00", align 1
@16 = private unnamed_addr constant [24 x i8] c"Path is not a directory!", align 1
@17 = private unnamed_addr constant [19 x i8] c"Invalid folder from", align 1
@18 = private unnamed_addr constant [1 x i8] c",", align 1
@19 = private unnamed_addr constant [38 x i8] c"\10Unknown scheme: \C0\11. Known schemes: \C0\00", align 1
@20 = private unnamed_addr constant [32 x i8] c"\10Could not parse \C0\0B as a URL: \C0\00", align 1
@21 = private unnamed_addr constant [47 x i8] c"\22Could not create local directory: \C0\08\0AError: \C0\00", align 1
@22 = private unnamed_addr constant [106 x i8] c"3Could not construct a URL from the canonical path: \C03.\0ASomething must be very wrong with the table path.\00", align 1
@23 = private unnamed_addr constant [37 x i8] c"\18Invalid table location: \C0\08\0AError: \C0\00", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@25 = private unnamed_addr constant [1 x i8] c"/", align 1
@26 = private unnamed_addr constant [1 x i8] c".", align 1
@27 = private unnamed_addr constant [2 x i8] c"..", align 1
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRuNtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@29 = private unnamed_addr constant [16 x i8] c"StripPrefixError", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test }>, align 8
@31 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@32 = private unnamed_addr constant [76 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/string.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"K\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@34 = private unnamed_addr constant [5 x i8] c"Error", align 1
@35 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/url-2.5.8/src/lib.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"Y\00\00\00\00\00\00\00O\0B\00\00\0B\00\00\00" }>, align 8
@37 = private unnamed_addr constant [2 x i8] c"()", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMNtCs3TL38MOHY2H_17pretty_assertions7printerNtB3_14LatentDeletion5flushNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr captures(address, read_provenance) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @0, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsk_NtCsbvkFyIu7lgC_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.k, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @1, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtCsfxCIOvQJdVR_5yansi5colorNtNtB7_5style5StyleINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_5ColorE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 4)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.d, %.split
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.n

bb.d:                                             ; preds = %.split
  store ptr %i.d, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @2, ptr noundef nonnull %i.b)
          to label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit unwind label %bb.c

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.p, %bb.f ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.h:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit23 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit23: ; preds = %bb.h
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !3, !noalias !4, !nonnull !3
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 1) #18, !noalias !4, !inline_history !7
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit23
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit23, %bb.k
  %.sroa.0.1.ph = phi i1 [ false, %bb.k ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit23 ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.sroa.0.1 = phi i1 [ false, %bb.b ], [ %.sroa.0.1.ph, %bb.l ]
  ret i1 %.sroa.0.1

bb.n:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre9ends_withcECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8
  store i32 0, ptr %i.a, align 4, !noalias !8
  %i.b = icmp samesign ult i32 %2, 128
  %.sink1.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sink1.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %2, 2048
  %i.d = trunc i32 %2 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 2 uses
  %i.g = lshr i32 %2, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %2, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %2, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %2 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !11, !noalias !8
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !11, !noalias !8
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %2, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.l, -32
  store i8 %i.u, ptr %i.a, align 4, !alias.scope !11, !noalias !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.v, align 1, !alias.scope !11, !noalias !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.w, align 2, !alias.scope !11, !noalias !8
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !11, !noalias !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.x, align 1, !alias.scope !11, !noalias !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.y, align 2, !alias.scope !11, !noalias !8
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit.sink.split

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit.sink.split: ; preds = %bb.g, %bb.d
  %.sink1.sroa.phi = phi ptr [ %.sink1.sroa.gep, %bb.d ], [ %.sink1.sroa.gep2, %bb.g ]
  %.sroa.0.05.i.i.ph = phi i64 [ 2, %bb.d ], [ 4, %bb.g ]
  store i8 %i.f, ptr %.sink1.sroa.phi, align 1, !alias.scope !11, !noalias !8
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit: ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit.sink.split, %bb.c, %bb.f
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 3, %bb.f ], [ %.sroa.0.05.i.i.ph, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit.sink.split ]
  %i.z = call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8
  ret i1 %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB7_4Path4joinReECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path5__join(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5color5ColorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, i32 range(i32 4, 6) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  call void @_RNvXs0_NtCsfxCIOvQJdVR_5yansi5colorNtNtB7_5style5StyleINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_5ColorE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 range(i32 4, 6) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = call noundef zeroext i1 @_RNvXs1_NtCsfxCIOvQJdVR_5yansi5styleNtB5_5StyleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3 ; 3 uses
  br i1 %i.f, label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
  br i1 %i.h, label %bb.e, label %bb.c

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !15, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !15, !nonnull !3, !align !14, !noundef !3
  %i.l = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @2, ptr noundef nonnull %i.b), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3
  %i.n = call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
  br i1 %i.n, label %bb.e, label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14: ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !18, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !18, !nonnull !3, !align !14, !noundef !3
  %i.s = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, %bb.d, %bb.c, %bb.b
  %.sroa.03.0 = phi i1 [ %i.l, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ true, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit14 ]
  ret i1 %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5style5StyleECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = call noundef zeroext i1 @_RNvXs1_NtCsfxCIOvQJdVR_5yansi5styleNtB5_5StyleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3 ; 3 uses
  br i1 %i.f, label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
  br i1 %i.h, label %bb.e, label %bb.c

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !28, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !28, !nonnull !3, !align !14, !noundef !3
  %i.l = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @2, ptr noundef nonnull %i.b), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3
  %i.n = call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
  br i1 %i.n, label %bb.e, label %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10

_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10: ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !nonnull !3, !align !14, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !31, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !31, !nonnull !3, !align !14, !noundef !3
  %i.s = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.l, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ], [ true, %_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit10 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.c = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !34, !noundef !3 ; 2 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit, !prof !37

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std3env3varReECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtCs2pqxYH9ZEk8_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.059.i = alloca [48 x i8], align 8        ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [176 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 12 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [176 x i8], align 8               ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 14 uses
  %i.ab = alloca [24 x i8], align 8               ; 14 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [56 x i8], align 8               ; 13 uses
  %i.ae = alloca [48 x i8], align 8               ; 4 uses
  %i.af = alloca [176 x i8], align 8              ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 4 uses
  %i.ah = alloca [176 x i8], align 8              ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [176 x i8], align 8              ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [48 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [48 x i8], align 8               ; 12 uses
  %i.ap = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.7424 = alloca [32 x i8], align 8         ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 12 uses
  %i.as = alloca [24 x i8], align 8               ; 13 uses
  %i.at = alloca [24 x i8], align 8               ; 14 uses
  %.sroa.8251 = alloca [16 x i8], align 8         ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 10 uses
  %i.av = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.7247 = alloca [40 x i8], align 8         ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.7243 = alloca [40 x i8], align 8         ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 12 uses
  %i.ay = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 10 uses
  %i.ba = alloca [56 x i8], align 8               ; 18 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 7 uses
  %i.bb = alloca [56 x i8], align 8               ; 14 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [64 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [48 x i8], align 8               ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [48 x i8], align 8               ; 4 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 9 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtB4_4path4PathECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.br = load i64, ptr %i.ak, align 8, !range !96, !noundef !3
  %.not.i = icmp eq i64 %i.br, 2
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val94 = load ptr, ptr %i.bs, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %.val94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.bt = load i64, ptr %i.aj, align 8, !range !94, !noundef !3
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.bv = tail call noundef zeroext i1 @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path6is_dir(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 -9223372036854775808, ptr %i.bl, align 8
  call void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.dk

bb.e:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !3, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr %i.bx, ptr %i.bq, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bz, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %i.bq, ptr %i.bo, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.448.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bp, ptr noundef nonnull @13, ptr noundef nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i64 -9223372036854775808, ptr %i.bm, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !3
  invoke void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp) #16
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.o, %bb.f, %bb.gk, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.mw, %bb.gk ], [ %i.cg, %bb.h ], [ %i.cx, %bb.q ], [ %i.cf, %bb.f ], [ %.pn84, %.body ], [ %i.cw, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.dk

bb.j:                                             ; preds = %.body132, %.body204, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit.thread, %bb.gi, %.body181, %.thread308.thread, %bb.ep, %.thread315, %bb.ee, %.body122, %.body127, %.body, %bb.o, %bb.f
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.cj = load i64, ptr %i.ai, align 8, !range !94, !noundef !3
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.be, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !167
  call void @_RNvXsi_NtCs2pqxYH9ZEk8_3std4pathNtB5_10ComponentsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be), !noalias !172
  %i.cl = load i8, ptr %i.ad, align 8, !range !173, !noalias !167, !noundef !3 ; 2 uses
  %.not2.i = icmp eq i8 %i.cl, 10
  br i1 %.not2.i, label %bb.y, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %.sroa.7279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0277.0.copyload = phi i8 [ %i.cl, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %.sroa.7279.0.copyload = load ptr, ptr %.sroa.7279.0..sroa_idx, align 8, !noalias !167
  %.sroa.8280.0.copyload = load i64, ptr %.sroa.8280.0..sroa_idx, align 8, !noalias !167
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !167
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !167
  call void @_RNvXsi_NtCs2pqxYH9ZEk8_3std4pathNtB5_10ComponentsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.be), !noalias !172
  %i.cm = load i8, ptr %i.ad, align 8, !range !173, !noalias !167, !noundef !3 ; 2 uses
  %.not.i100 = icmp eq i8 %i.cm, 10
  br i1 %.not.i100, label %bb.s, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 -9223372036854775804, ptr %i.bf, align 8
  call void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.dk

bb.n:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !3, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr %i.co, ptr %i.bk, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.cq, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr %i.bk, ptr %i.bi, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.454.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, ptr noundef nonnull @15, ptr noundef nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 -9223372036854775804, ptr %i.bg, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !3, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !3
  invoke void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj) #16
          to label %common.resume unwind label %bb.j

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit102 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit102: ; preds = %bb.p
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.dk

bb.s:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.cz = icmp samesign ugt i8 %.sroa.0277.0.copyload, 5
  %i.da = zext nneg i8 %.sroa.0277.0.copyload to i64
  %i.db = add nsw i64 %i.da, -5
  %i.dc = select i1 %i.cz, i64 %i.db, i64 0       ; 2 uses
  switch i64 %i.dc, label %bb.t [
    i64 0, label %bb.x
    i64 1, label %_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit
    i64 2, label %bb.u
    i64 3, label %bb.v
    i64 4, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  br label %_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit

bb.v:                                             ; preds = %bb.s
  br label %_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit

bb.w:                                             ; preds = %bb.s
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w
  %.sroa.10.0.copyload.lcssa.sink = phi ptr [ %.sroa.7279.0.copyload, %bb.w ], [ %.sroa.10.0.copyload, %bb.s ] ; 2 uses
  %.sroa.6.0.i.ph = phi i64 [ %.sroa.8280.0.copyload, %bb.w ], [ %.sroa.11.0.copyload, %bb.s ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.lcssa.sink) ]
  br label %_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit

_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit: ; preds = %bb.x, %bb.s, %bb.u, %bb.v
  %.sroa.6.0.i = phi i64 [ 2, %bb.v ], [ %i.dc, %bb.s ], [ 1, %bb.u ], [ %.sroa.6.0.i.ph, %bb.x ]
  %.sroa.0.0.i = phi ptr [ @27, %bb.v ], [ @25, %bb.s ], [ @26, %bb.u ], [ %.sroa.10.0.copyload.lcssa.sink, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i = load i64, ptr %i.de, align 8, !noundef !3
  call void @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtB4_4path4PathECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.di)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 -9223372036854775804, ptr %i.bd, align 8
  call void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dk

.body:                                            ; preds = %bb.gm, %.body132, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit, %.body166.i, %bb.dd, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit.thread
  %.pn84 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit ], [ %.pn82293, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit.thread ], [ %.pn73, %.body132 ], [ %i.dj, %bb.z ], [ %i.ii, %bb.dd ], [ %.pn127.i, %.body166.i ], [ %i.my, %bb.gm ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #16
          to label %common.resume unwind label %bb.j

bb.z:                                             ; preds = %bb.gn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test.exit170.i, %bb.ac, %bb.ab, %_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %_RNvMs4_NtCs2pqxYH9ZEk8_3std4pathNtB5_9Component9as_os_str.exit
  %i.dk = load i64, ptr %i.ah, align 8, !range !96, !noundef !3
  %.not.i103 = icmp eq i64 %i.dk, 2               ; 2 uses
  br i1 %.not.i103, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit104

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val98 = load ptr, ptr %i.dl, align 8, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %.val98)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit104 unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit104: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.dn = load i8, ptr %i.dm, align 2, !range !174
  %i.do = trunc nuw i8 %i.dn to i1                ; 2 uses
  %or.cond = select i1 %.not.i103, i1 %i.do, i1 false
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 19
  %i.dq = load i8, ptr %i.dp, align 1, !range !174
  %i.dr = trunc nuw i8 %i.dq to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.dr
  br i1 %or.cond5, label %_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.ac

_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit104
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !3 ; 2 uses
  %.not62 = icmp eq i64 %i.dt, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  br i1 %.not62, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit104
  invoke void @_RNvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBuf5__push(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.6.0.i)
          to label %_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.z

bb.ad:                                            ; preds = %_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECsfY7SmN0bPrO_14deltalake_test.exit
  %i.du = add i64 %i.dt, 1
  %i.dv = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 1) %i.du, i64 1)
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECsfY7SmN0bPrO_14deltalake_test.exit, %bb.ad
  %.sroa.057.0 = phi i64 [ %i.dv, %bb.ad ], [ 0, %_RINvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str5OsStrECsfY7SmN0bPrO_14deltalake_test.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %1, ptr %i.ac, align 8, !noalias !178
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %i.dw, align 8, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !178
  store i64 0, ptr %i.ab, align 8, !noalias !178
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dx, align 8, !noalias !178
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 6 uses
  store i64 0, ptr %i.dy, align 8, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !178
  store i64 0, ptr %i.aa, align 8, !noalias !178
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dz, align 8, !noalias !178
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 6 uses
  store i64 0, ptr %i.ea, align 8, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !178
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ag unwind label %bb.af, !noalias !175

.body161.i:                                       ; preds = %bb.cz, %bb.cr, %bb.bl, %.body156.i, %bb.be, %bb.av, %bb.an, %bb.af
  %.pn125.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.an ], [ %lpad.thr_comm.i, %bb.cz ], [ %i.eb, %bb.af ], [ %.pn121.i, %bb.bl ], [ %i.fl, %bb.be ], [ %i.ey, %bb.av ], [ %.pn121.i, %.body156.i ], [ %i.ia, %bb.cr ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #16
          to label %.body166.i unwind label %bb.cm, !noalias !175

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i, %bb.ak, %bb.ai, %bb.ah, %bb.ae
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

bb.ag:                                            ; preds = %bb.ae
  %i.ec = load i64, ptr %i.k, align 8, !range !94, !noalias !178, !noundef !3
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !178
  store i64 -9223372036854775801, ptr %i.y, align 8, !noalias !178
  invoke void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 12)
          to label %bb.db unwind label %bb.af, !noalias !175

bb.ai:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !178, !nonnull !3, !noundef !3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !178, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !178
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.eh, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aj unwind label %bb.af, !noalias !175

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load i64, ptr %i.j, align 8, !range !94, !noalias !178, !noundef !3
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !95, !noalias !178, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ej, label %bb.ak, label %bb.al, !prof !37

bb.ak:                                            ; preds = %bb.aj
  %i.en = load i64, ptr %i.em, align 8, !noalias !178
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.el, i64 %i.en) #19
          to label %bb.da unwind label %bb.af, !noalias !175

bb.al:                                            ; preds = %bb.aj
  %i.eo = load ptr, ptr %i.em, align 8, !noalias !178, !nonnull !3, !noundef !3 ; 2 uses
  %i.ep = icmp ule i64 %i.eh, %i.el
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !178
  %.not.i106 = icmp eq i64 %i.eh, 0
  br i1 %.not.i106, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %i.ef, i64 %i.eh, i1 false), !noalias !175
  br label %bb.ao

bb.an:                                            ; preds = %bb.cn, %bb.bp, %bb.bi, %bb.bg
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

bb.ao:                                            ; preds = %bb.am, %bb.al
  store i64 %i.el, ptr %i.x, align 8, !noalias !178
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.eo, ptr %.sroa.465.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.eh, ptr %.sroa.666.0..sroa_idx.i, align 8, !noalias !178
  %i.eq = invoke noundef zeroext i1 @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path6is_dir(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ap unwind label %bb.cz, !noalias !175

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.eq, label %bb.az, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !178
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtB4_4path4PathECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ar unwind label %bb.cz, !noalias !175

bb.ar:                                            ; preds = %bb.aq
  %i.er = load i64, ptr %i.m, align 8, !range !96, !noalias !178, !noundef !3
  %i.es = icmp eq i64 %i.er, 2
  br i1 %i.es, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !178, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !178
  invoke void @_RNvXs4_NtCsbW3aFIxube3_8fs_extra5errorNtB5_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.eu)
          to label %bb.ay unwind label %bb.cz, !noalias !175

bb.at:                                            ; preds = %bb.ar
  %.sroa.15101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.15101.0.copyload.i = load i64, ptr %.sroa.15101.0..sroa_idx.i, align 8, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !178
  %i.ev = load i64, ptr %i.ea, align 8, !alias.scope !180, !noalias !183, !noundef !3 ; 3 uses
  %i.ew = load i64, ptr %i.aa, align 8, !range !38, !alias.scope !180, !noalias !183, !noundef !3
end_hunk_1
begin_hunk_2_@_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char:bb.a
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !469
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !472
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !475, !noalias !472, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !475, !noalias !472, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !475, !noalias !472
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !475, !noalias !472
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !14, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs2pqxYH9ZEk8_3std2ioINtB5_5BytesNtNtB7_2fs4FileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !485
  store i8 0, ptr %i.a, align 1, !noalias !485
  %i.b = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull %i.a, i64 noundef 1), !noalias !488 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i
  %i.f = phi ptr [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i ], [ %i.d, %bb.a ] ; 8 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %bb.g
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !299

default.unreachable:                              ; preds = %.lr.ph.i.i
  unreachable

._crit_edge.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i, %bb.a
  %.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i ]
  %i.i = icmp eq ptr %.lcssa.i.i, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  store i8 2, ptr %0, align 8, !alias.scope !488, !noalias !489
  br label %_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioNtNtB7_2fs4FileNtB5_12SpecReadByte14spec_read_byteCsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.a, align 1, !noalias !485, !noundef !3
  store i8 0, ptr %0, align 8, !alias.scope !488, !noalias !489
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !488, !noalias !489
  br label %_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioNtNtB7_2fs4FileNtB5_12SpecReadByte14spec_read_byteCsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %.mask46.i.i = and i64 %i.g, -4294967296
  %i.k = icmp eq i64 %.mask46.i.i, 17179869184
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !490, !noalias !488, !noundef !3
  %i.n = icmp eq i8 %i.m, 35
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 8, !range !490, !noalias !488, !noundef !3
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.r = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.r)
  %.mask.i.i = and i64 %i.g, -4294967296
  %i.s = icmp eq i64 %.mask.i.i, 150323855360
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  store i8 1, ptr %0, align 8, !alias.scope !488, !noalias !489
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  br label %_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioNtNtB7_2fs4FileNtB5_12SpecReadByte14spec_read_byteCsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %i.f), !noalias !488
  %i.t = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull %i.a, i64 noundef 1), !noalias !488 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioNtNtB7_2fs4FileNtB5_12SpecReadByte14spec_read_byteCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !485
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCsbvkFyIu7lgC_4core3fmtuNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  %.sink2.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sink2.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 2 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !491
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !491
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %1, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.l, -32
  store i8 %i.u, ptr %i.a, align 4, !alias.scope !491
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.v, align 1, !alias.scope !491
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.w, align 2, !alias.scope !491
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !491
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.x, align 1, !alias.scope !491
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.y, align 2, !alias.scope !491
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit.sink.split

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit.sink.split: ; preds = %bb.g, %bb.d
  %.sink2.sroa.phi = phi ptr [ %.sink2.sroa.gep, %bb.d ], [ %.sink2.sroa.gep3, %bb.g ]
  %.sroa.0.05.i.ph = phi i64 [ 2, %bb.d ], [ 4, %bb.g ]
  store i8 %i.f, ptr %.sink2.sroa.phi, align 1, !alias.scope !491
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit.sink.split, %bb.c, %bb.f
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 3, %bb.f ], [ %.sroa.0.05.i.ph, %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit.sink.split ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.z = load ptr, ptr %0, align 8, !alias.scope !494, !noalias !497, !nonnull !3, !noundef !3
  %i.aa = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !494 ; 3 uses
  %.not.i = icmp ne ptr %i.aa, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsfY7SmN0bPrO_14deltalake_test.exit

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ab, align 8, !alias.scope !494, !noalias !497, !noundef !3 ; 2 uses
  %i.ac = icmp eq ptr %.val.i, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr nonnull %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.j, !noalias !494

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !494, !noalias !497
  resume { ptr, i32 } %i.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !494, !noalias !497
  br label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsfY7SmN0bPrO_14deltalake_test.exit

_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsfY7SmN0bPrO_14deltalake_test.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !499
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCsbvkFyIu7lgC_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsfxCIOvQJdVR_5yansi5colorNtNtB7_5style5StyleINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_5ColorE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path13__strip_prefix(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsfxCIOvQJdVR_5yansi5styleNtB5_5StyleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCsbvkFyIu7lgC_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBuf5__push(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2pqxYH9ZEk8_3std3env4__var(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs2EMQEx3u6w6_4diff5lines(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs2EMQEx3u6w6_4diff5chars(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtB4_4path4PathECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2fs14create_dir_allRNtNtB4_4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsbW3aFIxube3_8fs_extra5errorNtB5_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path6is_dir(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs8read_dirRNtNtB4_4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsB_NtCs2pqxYH9ZEk8_3std2fsNtB5_7ReadDirNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsC_NtCs2pqxYH9ZEk8_3std2fsNtB5_8DirEntry4path(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsbW3aFIxube3_8fs_extra5errorNtB4_5Error3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs8read_dirRRNtNtB4_4path4PathECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbW3aFIxube3_8fs_extra4file4copyRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCsbW3aFIxube3_8fs_extra5errorNtB5_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs2pqxYH9ZEk8_3std4path16StripPrefixErrorE4from(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2fs10create_dirRNtNtB4_4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCs2EMQEx3u6w6_4diff6ResultcEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCs2EMQEx3u6w6_4diff6ResultcEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtCs2EMQEx3u6w6_4diff6ResultReEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2pqxYH9ZEk8_3std2fs12canonicalizeNtNtB4_4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url19from_directory_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

end_hunk_2
