Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils-9175e8ec4cfd27fd.coreutils.a1a616a2f0f8387f-cgu.0?download=true
inline.NumInlined: 40
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [37 x i8] c"\1CLocalization parse error at \C0\02: \C0\01\0A\00", align 1
@1 = private unnamed_addr constant [45 x i8] c"(Could not init the localization system: \C0\01\0A\00", align 1
@_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE = external global { { { { { i64 } } } }, { { { { i32 } } } }, i32, i64 }
@2 = private unnamed_addr constant [30 x i8] c"\C0\17: unrecognized option '\C0\02'\0A\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"ls", align 1
@4 = private unnamed_addr constant [4 x i8] c"test", align 1
@5 = private unnamed_addr constant [34 x i8] c"\1Ccoreutils: unknown program '\C0\02'\0A\00", align 1

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdSs45UTkAAB_9coreutils(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit
    i64 1, label %bb.e
  ], !prof !4

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !5
  store i8 3, ptr %i.a, align 8, !alias.scope !5
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #7
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdSs45UTkAAB_9coreutils(i64 %.0.val, ptr captures(address) %.8.val) unnamed_addr #0 {
bb.a:
  %.0.val.off = add i64 %.0.val, -1
  %switch = icmp ult i64 %.0.val.off, -2
  br i1 %switch, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef range(i64 1, -9223372036854775807) 1) #7
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation19unrecognized_option(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdSs45UTkAAB_9coreutils, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsb_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsdSs45UTkAAB_9coreutils, ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @2, ptr noundef nonnull %i.a) #7
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdSs45UTkAAB_9coreutils(ptr %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val7 = load i64, ptr %i.b, align 8, !range !8, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val8 = load ptr, ptr %i.h, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsdSs45UTkAAB_9coreutils(i64 %.val7, ptr %.val8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation26setup_localization_or_exit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 18 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %.sink12.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %.sink12.i.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  switch i64 %1, label %bb.e [
    i64 1, label %bb.b
    i64 3, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %lhsc.i = load i8, ptr %0, align 1, !alias.scope !10
  %i.h = icmp eq i8 %lhsc.i, 91
  br i1 %i.h, label %_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i16, ptr %0, align 1
  %i.j = xor i16 %i.i, 26980
  %i.k = getelementptr i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 114
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.s = load i32, ptr %0, align 1
  %i.t = icmp ne i32 %i.s, 1919509622
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  br label %_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit

_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.4.0.i = phi i64 [ %1, %bb.e ], [ 4, %bb.b ], [ 2, %bb.d ], [ 2, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %0, %bb.e ], [ @4, %bb.b ], [ @3, %bb.d ], [ @3, %bb.c ]
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale18setup_localization(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.4.0.i) #7
  %i.w = load i64, ptr %i.g, align 8, !range !13, !noundef !9 ; 5 uses
  %.not = icmp eq i64 %i.w, -1
  br i1 %.not, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = icmp ne i64 %i.w, 4
  tail call void @llvm.assume(i1 %i.x)
  %.inv.i = icmp samesign ult i64 %i.w, 2
  br i1 %.inv.i, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14
  store i64 %i.w, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14
  store ptr %i.e, ptr %i.d, align 8, !noalias !14
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.z, align 8, !noalias !14
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs2_NtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errorsNtB5_11ParserErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !14
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio7__eprint(ptr noundef nonnull @0, ptr noundef nonnull %i.d) #7, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14
  %.val.i = load i64, ptr %i.e, align 8, !range !17, !noalias !14, !noundef !9 ; 2 uses
  %i.aa = icmp eq i64 %.val.i, 0
  br i1 %i.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val11.i = load ptr, ptr %i.ab, align 8, !noalias !14, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #7, !noalias !14
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.ad = load i32, ptr %i.ac, align 8, !range !24, !alias.scope !25, !noalias !14, !noundef !9
  switch i32 %i.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 14, label %bb.k
    i32 15, label %bb.l
    i32 16, label %bb.m
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.val.sink.i.i.i = phi i64 [ %.val2.i.i.i, %bb.l ], [ %.val4.i.i.i, %bb.k ], [ %.val6.i.i.i, %bb.j ], [ %.val8.i.i.i, %bb.i ], [ %.val10.i.i.i, %bb.h ], [ %.val.i.i.i, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val1.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !25, !noalias !14, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #7, !noalias !26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val10.i.i.i = load i64, ptr %i.af, align 8, !range !17, !alias.scope !25, !noalias !14, !noundef !9 ; 2 uses
  %i.ag = icmp eq i64 %.val10.i.i.i, 0
  br i1 %i.ag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val8.i.i.i = load i64, ptr %i.ah, align 8, !range !17, !alias.scope !25, !noalias !14, !noundef !9 ; 2 uses
  %i.ai = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val6.i.i.i = load i64, ptr %i.aj, align 8, !range !17, !alias.scope !25, !noalias !14, !noundef !9 ; 2 uses
  %i.ak = icmp eq i64 %.val6.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val4.i.i.i = load i64, ptr %i.al, align 8, !range !17, !alias.scope !25, !noalias !14, !noundef !9 ; 2 uses
  %i.am = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val2.i.i.i = load i64, ptr %i.an, align 8, !range !17, !alias.scope !25, !noalias !14, !noundef !9 ; 2 uses
  %i.ao = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i.i.i = load i64, ptr %i.ap, align 8, !range !17, !alias.scope !25, !noalias !14, !noundef !9 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14
  br label %bb.ac

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14
  store i64 %i.w, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14
  store ptr %i.c, ptr %i.b, align 8, !noalias !14
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods6localeNtB5_17LocalizationErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio7__eprint(ptr noundef nonnull @1, ptr noundef nonnull %i.b) #7, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.ar = load i64, ptr %i.c, align 8, !range !30, !alias.scope !27, !noalias !14, !noundef !9 ; 3 uses
  %i.as = icmp ne i64 %i.ar, 4
  call void @llvm.assume(i1 %i.as)
  %i.at = add nsw i64 %i.ar, -2
  %.inv.i.i = icmp samesign ult i64 %i.ar, 2
  %i.au = select i1 %.inv.i.i, i64 2, i64 %i.at
  switch i64 %i.au, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.aa
    i64 4, label %bb.ab
  ]

bb.o:                                             ; preds = %bb.n
  %.val9.i.i = load i64, ptr %.sroa.6.0..sroa_idx3, align 8, !range !17, !alias.scope !27, !noalias !14, !noundef !9 ; 2 uses
  %i.av = icmp eq i64 %.val9.i.i, 0
  br i1 %i.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !27, !noalias !14, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  %i.ax = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.ay = and i64 %i.ax, 3
  switch i64 %i.ay, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i
    i64 3, label %bb.q
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i
    i64 1, label %bb.r
  ], !prof !4

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.az = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ba = and i64 %i.ax, 1095216660480
  %i.bb = icmp ne i64 %i.ba, 1095216660480
  call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 %i.bb)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !alias.scope !32, !noalias !31
  store i8 3, ptr %i.a, align 8, !alias.scope !32, !noalias !31
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #7, !noalias !31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  %.val11.i.i = load i64, ptr %.sroa.6.0..sroa_idx3, align 8, !range !17, !alias.scope !27, !noalias !14, !noundef !9 ; 2 uses
  %i.be = icmp eq i64 %.val11.i.i, 0
  br i1 %i.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i

bb.s:                                             ; preds = %bb.n
  %.val7.i.i = load i64, ptr %.sroa.6.0..sroa_idx3, align 8, !range !17, !alias.scope !27, !noalias !14, !noundef !9 ; 2 uses
  %i.bf = icmp eq i64 %.val7.i.i, 0
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i

bb.t:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.bh = load i32, ptr %i.bg, align 8, !range !24, !alias.scope !41, !noalias !14, !noundef !9
  switch i32 %i.bh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 14, label %bb.x
    i32 15, label %bb.y
    i32 16, label %bb.z
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.val.sink.i.i.i.i = phi i64 [ %.val2.i.i.i.i, %bb.y ], [ %.val4.i.i.i.i, %bb.x ], [ %.val6.i.i.i.i, %bb.w ], [ %.val8.i.i.i.i, %bb.v ], [ %.val10.i.i.i.i, %bb.u ], [ %.val.i.i.i.i, %bb.z ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val1.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !41, !noalias !14, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #7, !noalias !42
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val10.i.i.i.i = load i64, ptr %i.bj, align 8, !range !17, !alias.scope !41, !noalias !14, !noundef !9 ; 2 uses
  %i.bk = icmp eq i64 %.val10.i.i.i.i, 0
  br i1 %i.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val8.i.i.i.i = load i64, ptr %i.bl, align 8, !range !17, !alias.scope !41, !noalias !14, !noundef !9 ; 2 uses
  %i.bm = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.bm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val6.i.i.i.i = load i64, ptr %i.bn, align 8, !range !17, !alias.scope !41, !noalias !14, !noundef !9 ; 2 uses
  %i.bo = icmp eq i64 %.val6.i.i.i.i, 0
  br i1 %i.bo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i

bb.x:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val4.i.i.i.i = load i64, ptr %i.bp, align 8, !range !17, !alias.scope !41, !noalias !14, !noundef !9 ; 2 uses
  %i.bq = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i

bb.y:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val2.i.i.i.i = load i64, ptr %i.br, align 8, !range !17, !alias.scope !41, !noalias !14, !noundef !9 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i

bb.z:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i.i.i.i = load i64, ptr %i.bt, align 8, !range !17, !alias.scope !41, !noalias !14, !noundef !9 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdSs45UTkAAB_9coreutils.exit.sink.split.i.i.i.i, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val5.i.i = load i64, ptr %i.bv, align 8, !range !17, !alias.scope !27, !noalias !14, !noundef !9 ; 2 uses
  %i.bw = icmp eq i64 %.val5.i.i, 0
  br i1 %i.bw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i

bb.aa:                                            ; preds = %bb.n
  %.val3.i.i = load i64, ptr %.sroa.6.0..sroa_idx3, align 8, !range !17, !alias.scope !27, !noalias !14, !noundef !9 ; 2 uses
  %i.bx = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i

bb.ab:                                            ; preds = %bb.n
  %.val1.i.i = load i64, ptr %.sroa.6.0..sroa_idx3, align 8, !range !17, !alias.scope !27, !noalias !14, !noundef !9 ; 2 uses
  %i.by = icmp eq i64 %.val1.i.i, 0
  br i1 %i.by, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i: ; preds = %bb.ab, %bb.aa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, %bb.s, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i, %bb.o
  %.sink12.i.sroa.phi = phi ptr [ %.sink12.i.sroa.gep, %bb.aa ], [ %.sink12.i.sroa.gep, %bb.o ], [ %.sink12.i.sroa.gep, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i ], [ %.sink12.i.sroa.gep, %bb.s ], [ %.sink12.i.sroa.gep9, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i ], [ %.sink12.i.sroa.gep, %bb.ab ]
  %.val9.i.sink.i = phi i64 [ %.val3.i.i, %bb.aa ], [ %.val9.i.i, %bb.o ], [ %.val11.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i ], [ %.val7.i.i, %bb.s ], [ %.val5.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i ], [ %.val1.i.i, %bb.ab ]
  %.val10.i.i = load ptr, ptr %.sink12.i.sroa.phi, align 8, !alias.scope !27, !noalias !14, !nonnull !9, !noundef !9
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i, i64 noundef %.val9.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #7, !noalias !31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.sink.split.i, %bb.ab, %bb.aa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i.i, %bb.s, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdSs45UTkAAB_9coreutils.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils.exit.i
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 99) #8, !noalias !14
  unreachable

bb.ad:                                            ; preds = %_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation4name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #7 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d) #7
  %i.e = load i64, ptr %i.a, align 8, !range !43, !noundef !9
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.sroa.4.1 = select i1 %i.f, i64 undef, i64 %i.j
  %.sroa.0.1 = select i1 %i.f, ptr null, ptr %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %.sroa.4.1, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define void @_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation9not_found(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @5, ptr noundef nonnull %i.a) #7
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdSs45UTkAAB_9coreutils(ptr %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdSs45UTkAAB_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #7
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsdSs45UTkAAB_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #7
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #7
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errorsNtB5_11ParserErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods6localeNtB5_17LocalizationErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale18setup_localization(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdSs45UTkAAB_9coreutils: argument 0"}
!7 = distinct !{!7, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdSs45UTkAAB_9coreutils"}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name: argument 0"}
!12 = distinct !{!12, !"_RNvNtNtCsdSs45UTkAAB_9coreutils6common10validation23get_canonical_util_name"}
!13 = !{i64 -1, i64 8}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNCNvNtNtCsdSs45UTkAAB_9coreutils6common10validation26setup_localization_or_exit0B7_: argument 0"}
!16 = distinct !{!16, !"_RNCNvNtNtCsdSs45UTkAAB_9coreutils6common10validation26setup_localization_or_exit0B7_"}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils: argument 0"}
!20 = distinct !{!20, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors9ErrorKindECsdSs45UTkAAB_9coreutils: argument 0"}
!23 = distinct !{!23, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors9ErrorKindECsdSs45UTkAAB_9coreutils"}
!24 = !{i32 0, i32 21}
!25 = !{!22, !19}
!26 = !{!22, !19, !15}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils: argument 0"}
!29 = distinct !{!29, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorECsdSs45UTkAAB_9coreutils"}
!30 = !{i64 0, i64 8}
!31 = !{!28, !15}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdSs45UTkAAB_9coreutils: argument 0"}
!34 = distinct !{!34, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsdSs45UTkAAB_9coreutils"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils: argument 0"}
!37 = distinct !{!37, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsdSs45UTkAAB_9coreutils"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors9ErrorKindECsdSs45UTkAAB_9coreutils: argument 0"}
!40 = distinct !{!40, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors9ErrorKindECsdSs45UTkAAB_9coreutils"}
!41 = !{!39, !36, !28}
!42 = !{!39, !36, !28, !15}
!43 = !{i64 0, i64 2}
end_hunk_0
