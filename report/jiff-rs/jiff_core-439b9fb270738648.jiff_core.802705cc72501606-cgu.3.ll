Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.3?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs3oUPovFnLWP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant [27 x i8] c"always valid Unix epoch day", align 1
@3 = private unnamed_addr constant [34 x i8] c"crates/jiff-core/src/tz/offset.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"!\00\00\00\00\00\00\00\C7\00\00\00\14\00\00\00" }>, align 8
@5 = private unnamed_addr constant [38 x i8] c"crates/jiff-core/src/tz/tzif/query.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00V\01\00\00\0A\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\008\01\00\00#\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\008\01\00\00\0A\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00+\01\00\00\19\00\00\00" }>, align 8
@10 = private unnamed_addr constant [24 x i8] c"transitions is non-empty", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\FF\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [21 x i8] c"non-empty transitions", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00?\00\00\00'\00\00\00" }>, align 8
@14 = private unnamed_addr constant [82 x i8] c"internal error: entered unreachable code: impossible to come before Timestamp::MIN", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00H\00\00\00\15\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\F2\00\00\00\19\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\CC\00\00\00\09\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\89\00\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant [81 x i8] c"internal error: entered unreachable code: impossible to come before DateTime::MIN", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\8B\00\00\00\17\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\99\00\00\00*\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\9C\00\00\00<\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\A4\00\00\00+\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"%\00\00\00\00\00\00\00\A7\00\00\00<\00\00\00" }>, align 8
@25 = private unnamed_addr constant [30 x i8] c"weekday must be in range 1..=7", align 1
@26 = private unnamed_addr constant [35 x i8] c"crates/jiff-core/src/civil/date.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\22\00\00\00\00\00\00\00\EC\02\00\00\09\00\00\00" }>, align 8
@28 = private unnamed_addr constant [16 x i8] c"always in bounds", align 1
@29 = private unnamed_addr constant [36 x i8] c"crates/jiff-core/src/tz/tzif/mod.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"#\00\00\00\00\00\00\00\C5\01\00\00\09\00\00\00" }>, align 8
@31 = private unnamed_addr constant [4 x i8] c"TZif", align 1
@32 = private unnamed_addr constant [20 x i8] c"valid Unix epoch day", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\22\00\00\00\00\00\00\002\05\00\00\05\00\00\00" }>, align 8
@34 = private unnamed_addr constant [12 x i8] c"UnixEpochDay", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt }>, align 8
@36 = private unnamed_addr constant [21 x i8] c"\C3 \00\00i\04\00\02-W\C3 \00\00i\02\00\01-\C0\00", align 1
@37 = private unnamed_addr constant [8 x i8] c"DateTime", align 1
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_5Debug3fmt }>, align 8
@39 = private unnamed_addr constant [4 x i8] c"bits", align 1
@40 = private unnamed_addr constant [53 x i8] c"\C3 \00\00i\04\00\01-\C3 \00\00i\02\00\01-\C3 \00\00i\02\00\01T\C3 \00\00i\02\00\01:\C3 \00\00i\02\00\01:\C3 \00\00i\02\00\00", align 1
@41 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt }>, align 8
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsb09rMIQFAXO_9jiff_core }>, align 8
@44 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@45 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@46 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@47 = private unnamed_addr constant [8 x i8] c"\C3 \00\00i\04\00\00", align 1
@48 = private unnamed_addr constant [10 x i8] c"\01-\C3 \00\00i\06\00\00", align 1
@49 = private unnamed_addr constant [19 x i8] c"\01-\C3 \00\00i\02\00\01-\C3 \00\00i\02\00\00", align 1
@50 = private unnamed_addr constant [26 x i8] c"\C3 \00\00i\02\00\01:\C3 \00\00i\02\00\01:\C3 \00\00i\02\00\00", align 1
@51 = private unnamed_addr constant [35 x i8] c"crates/jiff-core/src/civil/time.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"\22\00\00\00\00\00\00\00\EF\00\00\00C\00\00\00" }>, align 8
@53 = private unnamed_addr constant [4 x i8] c"\01.\C0\00", align 1

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.67 = alloca [7 x i8], align 1            ; 2 uses
  %i.a = tail call fastcc { i64, ptr } @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone18to_local_time_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, i64 noundef %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 4 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, i64 noundef %2, i32 noundef %3)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0 = load i64, ptr %.sroa.6.0.in, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i8, ptr %i.e, align 4, !noundef !4
  %i.g = zext i8 %i.f to i64                      ; 3 uses
  %i.h = icmp ugt i64 %.sroa.6.0, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.03.0, i64 %i.g ; 6 uses
  %i.j = load i8, ptr %i.i, align 8, !range !5, !noundef !4 ; 2 uses
  switch i8 %i.j, label %default.unreachable13 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %.sroa.6.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

default.unreachable13:                            ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.67, ptr noundef nonnull align 1 dereferenceable(7) %i.k, i64 7, i1 false)
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !6, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !6, !noundef !4 ; 5 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.h
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !9
  %i.u = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !9 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.s) #19, !noalias !14
  unreachable

_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit: ; preds = %bb.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.h ], [ %i.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i, ptr nonnull readonly align 1 %i.q, i64 range(i64 0, -9223372036854775808) %i.s, i1 false), !noalias !6
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit, %bb.g, %bb.f
  %.sroa.7.0 = phi ptr [ undef, %bb.f ], [ %i.m, %bb.g ], [ %.sroa.01.0.i.i.i, %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit ]
  %.sroa.9.0 = phi i64 [ undef, %bb.f ], [ %i.o, %bb.g ], [ %i.s, %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit ]
  %i.w = load i32, ptr %i.c, align 4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.y = load i8, ptr %i.x, align 2, !range !15, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.w, ptr %i.z, align 8
  store i8 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.67, i64 7, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.610.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.y, ptr %i.aa, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15next_transition(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.629 = alloca [7 x i8], align 1           ; 2 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4 ; 9 uses
  %i.a = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.a, label %bb.c, label %.preheader.i, !prof !16

.preheader.i:                                     ; preds = %bb.a
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.04.0 = load ptr, ptr %.sroa.04.0.in, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.3.0, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.h, %.lr.ph.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.b, align 8, !alias.scope !17, !noalias !20, !noundef !4 ; 2 uses
  %.not45 = icmp eq i64 %.val14.i, %2             ; 2 uses
  br i1 %.not45, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit, label %bb.b

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.sroa.3.0, %.preheader.i ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.c = lshr i64 %.sroa.01.017.i, 1              ; 2 uses
  %i.d = add nuw i64 %i.c, %.sroa.05.016.i        ; 3 uses
  %i.e = icmp ult i64 %i.d, %.sroa.3.0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0, i64 %i.d
  %.val12.i = load i64, ptr %i.f, align 8, !alias.scope !17, !noalias !20, !noundef !4
  %i.g = icmp sgt i64 %.val12.i, %2
  %i.h = select i1 %i.g, i64 %.sroa.05.016.i, i64 %i.d, !unpredictable !4 ; 2 uses
  %i.i = sub i64 %.sroa.01.017.i, %i.c            ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = icmp slt i64 %.val14.i, %2
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.l ; 2 uses
  %i.n = icmp ule i64 %i.m, %.sroa.3.0
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit: ; preds = %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %.sroa.05.0.lcssa.i, %._crit_edge.i ], [ %i.m, %bb.b ]
  %i.o = zext i1 %.not45 to i64
  %.sroa.09.0 = add nuw nsw i64 %.sroa.4.0.i, %i.o ; 3 uses
  %i.p = icmp eq i64 %.sroa.09.0, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17
  unreachable

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 2, ptr %i.q, align 4
  br label %bb.y

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit
  %.not = icmp ult i64 %.sroa.09.0, %.sroa.3.0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !22, !noundef !4
  %.not38 = icmp eq i8 %i.s, -1
  br i1 %.not38, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.i
  %.sroa.09.1 = phi i64 [ %i.u, %bb.i ], [ %.sroa.09.0, %bb.e ] ; 6 uses
  %i.t = icmp ult i64 %.sroa.09.1, %.sroa.3.0
  br i1 %i.t, label %bb.j, label %bb.n

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone15next_transition(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.r, i64 noundef %2, i32 noundef %3)
  br label %bb.y

bb.i:                                             ; preds = %bb.f
  %i.u = add i64 %.sroa.3.0, -1
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0, i64 %.sroa.09.1
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.i39 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !23, !nonnull !4, !noundef !4
  %.sroa.6.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !alias.scope !23, !noundef !4 ; 2 uses
  %.sroa.65.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.65.0.i = load i64, ptr %.sroa.65.0.in.i, align 8, !alias.scope !23, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %.sroa.09.1, %.sroa.65.0.i
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.03.0.i = load ptr, ptr %.sroa.03.0.in.i, align 8, !alias.scope !23, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03.0.i, i64 %.sroa.09.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !23, !noundef !4
  %i.ab = zext i8 %i.aa to i64                    ; 3 uses
  %i.ac = icmp ugt i64 %.sroa.6.0.i, %i.ab
  br i1 %i.ac, label %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit, label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.1, i64 noundef %.sroa.65.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !23
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.sroa.6.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !23
  unreachable

_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit: ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i39, i64 %i.ab ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %.sroa.626.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.626.0 = load i64, ptr %.sroa.626.0.in, align 8, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load i8, ptr %i.af, align 4, !noundef !4
  %i.ah = zext i8 %i.ag to i64                    ; 3 uses
  %i.ai = icmp ugt i64 %.sroa.626.0, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.1, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
  unreachable

bb.o:                                             ; preds = %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  %.sroa.024.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.024.0, i64 %i.ah ; 6 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !5, !noundef !4 ; 3 uses
  switch i8 %i.ak, label %default.unreachable51 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

bb.p:                                             ; preds = %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %.sroa.626.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

default.unreachable51:                            ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.629, ptr noundef nonnull align 1 dereferenceable(7) %i.al, i64 7, i1 false)
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !26, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !26, !noundef !4 ; 5 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.s
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !29
  %i.av = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.at, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !29 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.t, label %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit

bb.t:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.at) #19, !noalias !34
  unreachable

_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit: ; preds = %bb.s, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.s ], [ %i.av, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i, ptr nonnull readonly align 1 %i.ar, i64 range(i64 0, -9223372036854775808) %i.at, i1 false), !noalias !26
  br label %bb.u

bb.u:                                             ; preds = %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit, %bb.r, %bb.q
  %.sroa.7.0 = phi ptr [ undef, %bb.q ], [ %i.an, %bb.r ], [ %.sroa.01.0.i.i.i, %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit ] ; 3 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.q ], [ %i.ap, %bb.r ], [ %i.at, %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit ] ; 3 uses
  %i.ax = add i64 %i.w, 377705023201
  %or.cond.i = icmp ult i64 %i.ax, 631107230402
  br i1 %or.cond.i, label %bb.x, label %bb.v, !prof !35

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #17
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %switch.i.i.i = icmp samesign ult i8 %i.ak, 2
  %i.az = icmp eq i64 %.sroa.9.0, 0
  %or.cond = or i1 %switch.i.i.i, %i.az
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb09rMIQFAXO_9jiff_core2tz10OffsetInfoEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %.sroa.9.0, i64 noundef 1) #18, !noalias !36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb09rMIQFAXO_9jiff_core2tz10OffsetInfoEBF_.exit

bb.x:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.bb = load i8, ptr %i.ba, align 2, !range !15, !noundef !4
  %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.629, i64 7, i1 false)
  store i64 %i.w, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.sroa.3.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ak, ptr %.sroa.523.sroa.3.0..sroa.523.0..sroa_idx.sroa_idx, align 8
  %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0, ptr %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx, align 8
  %.sroa.523.sroa.6.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.523.sroa.6.0..sroa.523.0..sroa_idx.sroa_idx, align 8
  %.sroa.523.sroa.7.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ae, ptr %.sroa.523.sroa.7.0..sroa.523.0..sroa_idx.sroa_idx, align 8
  %.sroa.523.sroa.8.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.bb, ptr %.sroa.523.sroa.8.0..sroa.523.0..sroa_idx.sroa_idx, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.h, %bb.d, %bb.x
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb09rMIQFAXO_9jiff_core2tz10OffsetInfoEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.w
  resume { ptr, i32 } %i.ay
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone18to_local_time_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4 ; 6 uses
  %.not = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.a = add i64 %.sroa.5.0, -1                   ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.not.i = icmp eq i64 %.sroa.5.0, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.e, align 8, !alias.scope !43, !noalias !46, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val14.i, %1
  br i1 %i.f, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit, label %bb.d

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.sroa.5.0, %.preheader.i ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.017.i, 1              ; 2 uses
  %i.h = add nuw i64 %i.g, %.sroa.05.016.i        ; 3 uses
  %i.i = icmp ult i64 %i.h, %.sroa.5.0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0, i64 %i.h
  %.val12.i = load i64, ptr %i.j, align 8, !alias.scope !43, !noalias !46, !noundef !4
  %i.k = icmp sgt i64 %.val12.i, %1
  %i.l = select i1 %i.k, i64 %.sroa.05.016.i, i64 %i.h, !unpredictable !4 ; 2 uses
  %i.m = sub i64 %.sroa.01.017.i, %i.g            ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.o = icmp slt i64 %.val14.i, %1
  %i.p = zext i1 %i.o to i64
  %i.q = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.p ; 3 uses
  %i.r = icmp ule i64 %i.q, %.sroa.5.0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 165 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = add nsw i64 %i.q, -1
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit: ; preds = %._crit_edge.i, %bb.f
  %.sroa.013.1 = phi i64 [ %i.t, %bb.f ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.u = icmp ult i64 %.sroa.013.1, %i.a
  br i1 %i.u, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit
  %.sroa.013.124 = phi i64 [ %.sroa.013.1, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit ], [ %i.a, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !22, !noundef !4
  %.not18 = icmp eq i8 %i.w, -1
  br i1 %.not18, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit
  %.sroa.013.125 = phi i64 [ %.sroa.013.124, %.thread ], [ %.sroa.013.1, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.i19 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %.sroa.6.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !alias.scope !48, !noundef !4 ; 2 uses
  %.sroa.65.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.65.0.i = load i64, ptr %.sroa.65.0.in.i, align 8, !alias.scope !48, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %.sroa.013.125, %.sroa.65.0.i
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.03.0.i = load ptr, ptr %.sroa.03.0.in.i, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03.0.i, i64 %.sroa.013.125
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !48, !noundef !4
  %i.ab = zext i8 %i.aa to i64                    ; 3 uses
  %i.ac = icmp ugt i64 %.sroa.6.0.i, %i.ab
  br i1 %i.ac, label %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.013.125, i64 noundef %.sroa.65.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !48
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.sroa.6.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !48
  unreachable

_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i19, i64 %i.ab
  br label %bb.k

bb.k:                                             ; preds = %.thread, %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  %.sroa.3.0 = phi ptr [ %i.ad, %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit ], [ %i.v, %.thread ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit ], [ 1, %.thread ]
  %i.ae = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.af = insertvalue { i64, ptr } %i.ae, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.af
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone19previous_transition(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.626 = alloca [7 x i8], align 1           ; 2 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4 ; 8 uses
  %i.a = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.a, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.preheader.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = add i64 %2, 1
  %. = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -377705023201)
  %.sroa.01.0 = tail call i64 @llvm.smin.i64(i64 %., i64 253402207200)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %2, %bb.b ], [ %.sroa.01.0, %bb.d ] ; 3 uses
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.05.0 = load ptr, ptr %.sroa.05.0.in, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.3.0, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05.0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.d, align 8, !alias.scope !51, !noalias !54, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val14.i, %.sroa.0.0
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit, label %bb.e

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.sroa.3.0, %.preheader.i ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = lshr i64 %.sroa.01.017.i, 1              ; 2 uses
  %i.g = add nuw i64 %i.f, %.sroa.05.016.i        ; 3 uses
  %i.h = icmp ult i64 %i.g, %.sroa.3.0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05.0, i64 %i.g
  %.val12.i = load i64, ptr %i.i, align 8, !alias.scope !51, !noalias !54, !noundef !4
  %i.j = icmp sgt i64 %.val12.i, %.sroa.0.0
  %i.k = select i1 %i.j, i64 %.sroa.05.016.i, i64 %i.g, !unpredictable !4 ; 2 uses
  %i.l = sub i64 %.sroa.01.017.i, %i.f            ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.n = icmp slt i64 %.val14.i, %.sroa.0.0
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.o ; 2 uses
  %i.q = icmp ule i64 %i.p, %.sroa.3.0
  tail call void @llvm.assume(i1 %i.q)
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit: ; preds = %._crit_edge.i, %bb.e
  %.sroa.4.0.i = phi i64 [ %.sroa.05.0.lcssa.i, %._crit_edge.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.r = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.r, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit
  %i.s = add nsw i64 %.sroa.4.0.i, -1             ; 7 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.4.0.i, %.sroa.3.0
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !22, !noundef !4
  %.not = icmp eq i8 %i.w, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone19previous_transition(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.v, i64 noundef %2, i32 noundef %3)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = load i8, ptr %i.x, align 4, !range !5, !noundef !4
  %.not37 = icmp eq i8 %i.y, 2
  br i1 %.not37, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.z = icmp ult i64 %i.s, %.sroa.3.0
  br i1 %i.z, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05.0, i64 %i.s
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.i38 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !56, !nonnull !4, !noundef !4
  %.sroa.6.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !alias.scope !56, !noundef !4 ; 2 uses
  %.sroa.65.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.65.0.i = load i64, ptr %.sroa.65.0.in.i, align 8, !alias.scope !56, !noundef !4 ; 2 uses
  %i.ac = icmp ult i64 %i.s, %.sroa.65.0.i
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.03.0.i = load ptr, ptr %.sroa.03.0.in.i, align 8, !alias.scope !56, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03.0.i, i64 %i.s
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !noalias !56, !noundef !4
  %i.ag = zext i8 %i.af to i64                    ; 3 uses
  %i.ah = icmp ugt i64 %.sroa.6.0.i, %i.ag
  br i1 %i.ah, label %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.sroa.65.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !56
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %.sroa.6.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !56
  unreachable

_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i38, i64 %i.ag ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !4
  %.sroa.623.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.623.0 = load i64, ptr %.sroa.623.0.in, align 8, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !noundef !4
  %i.am = zext i8 %i.al to i64                    ; 3 uses
  %i.an = icmp ugt i64 %.sroa.623.0, %i.am
  br i1 %i.an, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
  unreachable

bb.p:                                             ; preds = %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  %.sroa.021.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.0 = load ptr, ptr %.sroa.021.0.in, align 8, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.sroa.021.0, i64 %i.am ; 6 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !5, !noundef !4 ; 3 uses
  switch i8 %i.ap, label %default.unreachable49 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
  ]

bb.q:                                             ; preds = %_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %.sroa.623.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

default.unreachable49:                            ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.626, ptr noundef nonnull align 1 dereferenceable(7) %i.aq, i64 7, i1 false)
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !59, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !59, !noundef !4 ; 5 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.t
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !62
  %i.ba = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !62 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.u, label %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit

bb.u:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.ay) #19, !noalias !67
  unreachable

_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit: ; preds = %bb.t, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.t ], [ %i.ba, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, -9223372036854775808) %i.ay, i1 false), !noalias !59
  br label %bb.v

bb.v:                                             ; preds = %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit, %bb.s, %bb.r
  %.sroa.7.0 = phi ptr [ undef, %bb.r ], [ %i.as, %bb.s ], [ %.sroa.01.0.i.i.i, %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit ] ; 3 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.r ], [ %i.au, %bb.s ], [ %i.ay, %_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsb09rMIQFAXO_9jiff_core.exit ] ; 3 uses
  %i.bc = add i64 %i.ab, 377705023201
  %or.cond.i = icmp ult i64 %i.bc, 631107230402
  br i1 %or.cond.i, label %bb.y, label %bb.w, !prof !35

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #17
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %switch.i.i.i = icmp samesign ult i8 %i.ap, 2
  %i.be = icmp eq i64 %.sroa.9.0, 0
  %or.cond = or i1 %switch.i.i.i, %i.be
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb09rMIQFAXO_9jiff_core2tz10OffsetInfoEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %.sroa.9.0, i64 noundef 1) #18, !noalias !68
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb09rMIQFAXO_9jiff_core2tz10OffsetInfoEBF_.exit

bb.y:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bg = load i8, ptr %i.bf, align 2, !range !15, !noundef !4
  %.sroa.520.sroa.4.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.520.sroa.4.0..sroa.520.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.626, i64 7, i1 false)
  store i64 %i.ab, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.sroa.3.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ap, ptr %.sroa.520.sroa.3.0..sroa.520.0..sroa_idx.sroa_idx, align 8
  %.sroa.520.sroa.5.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0, ptr %.sroa.520.sroa.5.0..sroa.520.0..sroa_idx.sroa_idx, align 8
  %.sroa.520.sroa.6.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.520.sroa.6.0..sroa.520.0..sroa_idx.sroa_idx, align 8
  %.sroa.520.sroa.7.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.aj, ptr %.sroa.520.sroa.7.0..sroa.520.0..sroa_idx.sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit, %bb.y
  %.sink = phi i8 [ %i.bg, %bb.y ], [ 2, %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit ], [ 2, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sink, ptr %i.bh, align 4
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.i
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb09rMIQFAXO_9jiff_core2tz10OffsetInfoEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone22to_ambiguous_timestamp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx61, align 2
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.662.0.copyload = load i16, ptr %.sroa.662.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 11
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1
  %i.a = sext i16 %.sroa.662.0.copyload to i64
  %i.b = shl nsw i64 %i.a, 48
  %i.c = sext i8 %.sroa.7.0.copyload to i64
  %i.d = shl nsw i64 %i.c, 40
  %i.e = sext i8 %.sroa.8.0.copyload to i64
  %i.f = shl nsw i64 %i.e, 32
  %i.g = sext i8 %.sroa.3.0.copyload to i64
  %i.h = shl nsw i64 %i.g, 24
  %i.i = sext i8 %.sroa.4.0.copyload to i64
  %i.j = shl nsw i64 %i.i, 16
  %i.k = sext i8 %.sroa.5.0.copyload to i64
  %i.l = shl nsw i64 %i.k, 8
  %i.m = or i64 %i.j, %i.h
  %i.n = or i64 %i.m, %i.l
  %i.o = or i64 %i.n, %i.b
  %i.p = or i64 %i.o, %i.d
  %i.q = or i64 %i.p, %i.f                        ; 5 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.in = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.0 = load i64, ptr %.sroa.4.0.in, align 8, !noundef !4 ; 5 uses
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.6.0 = load i64, ptr %.sroa.6.0.in, align 8, !noundef !4 ; 4 uses
  switch i64 %.sroa.4.0, label %.lr.ph.i [
    i64 0, label %bb.b
    i64 1, label %._crit_edge.i
  ], !prof !75

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
  unreachable

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.y, %.lr.ph.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.r, align 8, !alias.scope !76, !noalias !79, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val14.i, %i.q
  br i1 %i.s, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.4.0, %bb.a ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.t = lshr i64 %.sroa.01.017.i, 1              ; 2 uses
  %i.u = add nuw i64 %i.t, %.sroa.05.016.i        ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.u
  %.val12.i = load i64, ptr %i.w, align 8, !alias.scope !76, !noalias !79, !noundef !4
  %i.x = icmp sgt i64 %.val12.i, %i.q
  %i.y = select i1 %i.x, i64 %.sroa.05.016.i, i64 %i.u, !unpredictable !4 ; 2 uses
  %i.z = sub i64 %.sroa.01.017.i, %i.t            ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 1
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ab = icmp slt i64 %.val14.i, %i.q
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.ac ; 3 uses
  %i.ae = icmp ule i64 %i.ad, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.g, label %bb.h, !prof !16

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit: ; preds = %._crit_edge.i, %bb.h
  %.sroa.015.0 = phi i64 [ %i.am, %bb.h ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !81, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !alias.scope !81, !noundef !4 ; 6 uses
  %.sroa.65.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.65.0.i = load i64, ptr %.sroa.65.0.in.i, align 8, !alias.scope !81, !noundef !4 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.015.0, %.sroa.65.0.i
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.03.0.i = load ptr, ptr %.sroa.03.0.in.i, align 8, !alias.scope !81, !nonnull !4, !noundef !4
  %i.ah = getelementptr [2 x i8], ptr %.sroa.03.0.i, i64 %.sroa.015.0 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !81, !noundef !4
  %i.ak = zext i8 %i.aj to i64                    ; 3 uses
  %i.al = icmp ugt i64 %.sroa.6.0.i, %i.ak
  br i1 %i.al, label %bb.i, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0, i64 noundef %.sroa.65.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !81
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.sroa.6.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !81
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #17
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.am = add nsw i64 %i.ad, -1
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit

bb.i:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 4, !noundef !4 ; 3 uses
  %i.ap = load i8, ptr %i.ah, align 1, !range !5, !noundef !4
  switch i8 %i.ap, label %default.unreachable73 [
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 0, label %bb.l
  ]

default.unreachable73:                            ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ult i64 %.sroa.015.0, %.sroa.6.0
  br i1 %i.aq, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp ult i64 %.sroa.015.0, %.sroa.6.0
  br i1 %i.ar, label %bb.s, label %bb.t

bb.l:                                             ; preds = %bb.s, %bb.m, %bb.i
  %i.as = add i64 %.sroa.4.0, -1
  %i.at = icmp eq i64 %.sroa.015.0, %i.as
  br i1 %i.at, label %bb.y, label %bb.z

bb.m:                                             ; preds = %bb.j
end_hunk_0
