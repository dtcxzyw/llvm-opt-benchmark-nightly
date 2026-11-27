Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.e2829154be41ae6-cgu.1?download=true
inline.NumInlined: 115
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs1dm7fboTpfS_11qlog_dancer, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1dm7fboTpfS_11qlog_dancer, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1dm7fboTpfS_11qlog_dancer }>, align 8, !dbg !2142

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs1dm7fboTpfS_11qlog_dancer(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 !dbg !8298 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !8303, !DIExpression(), !8308)
    #dbg_value(i64 %1, !8304, !DIExpression(), !8308)
    #dbg_value(ptr %2, !8305, !DIExpression(), !8308)
    #dbg_value(i8 %3, !8306, !DIExpression(), !8308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8309
  store ptr %0, ptr %i.a, align 8, !dbg !8309
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3), !dbg !8310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8311
  ret i64 %i.b, !dbg !8312
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs1dm7fboTpfS_11qlog_dancer(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8324 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 15 uses
    #dbg_value(ptr %0, !8406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8414)
    #dbg_value(ptr %1, !8406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8414)
    #dbg_value(i64 %2, !8407, !DIExpression(), !8414)
    #dbg_value(ptr %3, !8408, !DIExpression(), !8414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8415), !dbg !8510
    #dbg_value(ptr poison, !8418, !DIExpression(), !8350)
    #dbg_value(ptr poison, !8482, !DIExpression(), !8353)
    #dbg_value(ptr undef, !8482, !DIExpression(), !8353)
    #dbg_value(ptr undef, !8418, !DIExpression(), !8350)
    #dbg_declare(ptr %i.a, !8470, !DIExpression(), !8354)
    #dbg_value(ptr %0, !8471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8355)
    #dbg_value(ptr %1, !8471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8355)
    #dbg_value(i64 %2, !8472, !DIExpression(), !8355)
    #dbg_value(ptr %3, !8478, !DIExpression(), !8355)
    #dbg_value(ptr null, !8473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8355)
    #dbg_value(i64 undef, !8473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8355)
    #dbg_value(ptr poison, !8474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8356)
    #dbg_value(i64 poison, !8474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8356)
    #dbg_value(ptr poison, !8475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8356)
    #dbg_value(i64 poison, !8475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8356)
    #dbg_value(ptr poison, !8476, !DIExpression(), !8356)
    #dbg_value(ptr poison, !8488, !DIExpression(), !8359)
    #dbg_value(ptr poison, !8493, !DIExpression(), !8362)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !8511
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8511, !alias.scope !8415, !nonnull !2162, !align !2241, !noundef !2162 ; 3 uses
    #dbg_value(ptr %i.d, !8476, !DIExpression(), !8356)
    #dbg_value(ptr %i.d, !8488, !DIExpression(), !8359)
    #dbg_value(ptr %i.d, !8493, !DIExpression(), !8362)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !8512
  %i.f = load i64, ptr %i.e, align 8, !dbg !8512, !alias.scope !8415, !noundef !2162
    #dbg_value(i64 %i.f, !8475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8356)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !8512
  %i.h = load ptr, ptr %i.g, align 8, !dbg !8512, !alias.scope !8415, !nonnull !2162, !noundef !2162
    #dbg_value(ptr %i.h, !8475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8356)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !8513
  %i.j = load i64, ptr %i.i, align 8, !dbg !8513, !alias.scope !8415, !noundef !2162
    #dbg_value(i64 %i.j, !8474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8356)
  %i.k = load ptr, ptr %3, align 8, !dbg !8513, !alias.scope !8415, !nonnull !2162, !noundef !2162
    #dbg_value(ptr %i.k, !8474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8356)
    #dbg_value(i64 2, !8477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8363)
    #dbg_value(i64 2, !8477, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8363)
    #dbg_value(ptr undef, !8477, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8363)
    #dbg_value(i64 undef, !8477, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !8363)
    #dbg_value(i64 3, !8477, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !8363)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !8477, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !8363)
    #dbg_value(i64 0, !8477, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !8363)
    #dbg_value(i32 poison, !8477, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !8363)
    #dbg_value(i32 poison, !8477, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !8363)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !8477, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !8363)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !8477, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !8363)
    #dbg_value(ptr %0, !8477, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !8363)
    #dbg_value(ptr %1, !8477, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !8363)
    #dbg_value(i64 %2, !8477, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !8363)
    #dbg_value(ptr %i.k, !8477, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !8363)
    #dbg_value(i64 %i.j, !8477, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !8363)
    #dbg_value(i64 0, !8477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8363)
    #dbg_value(ptr %i.h, !8477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8363)
    #dbg_value(i64 %i.f, !8477, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8363)
  %i.l = load ptr, ptr %i.d, align 8, !dbg !8514, !noalias !8415, !nonnull !2162, !noundef !2162
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8514
  %i.n = load i64, ptr %i.m, align 8, !dbg !8514, !noalias !8415, !noundef !2162
    #dbg_value(i64 0, !8477, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8363)
    #dbg_value(ptr %i.l, !8477, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8363)
    #dbg_value(i64 %i.n, !8477, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !8363)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8515
  %i.p = load i32, ptr %i.o, align 8, !dbg !8515, !noalias !8415, !noundef !2162
    #dbg_value(i32 1, !8477, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !8363)
    #dbg_value(i32 %i.p, !8477, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !8363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8516, !noalias !8415
    #dbg_value(ptr undef, !8418, !DIExpression(), !8350)
    #dbg_value(ptr undef, !8482, !DIExpression(), !8353)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !8517
  store i64 %2, ptr %i.q, align 8, !dbg !8517, !noalias !8415
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !8517
  store ptr %i.k, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !8517, !noalias !8415
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !8517
  store i64 %i.j, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !8517, !noalias !8415
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !8517
  store ptr %0, ptr %i.r, align 8, !dbg !8517, !noalias !8415
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !8517
  store ptr %1, ptr %i.s, align 8, !dbg !8517, !noalias !8415
  store i64 0, ptr %i.b, align 8, !dbg !8517, !noalias !8415
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8517
  store ptr %i.h, ptr %.sroa.435.0..sroa_idx.i, align 8, !dbg !8517, !noalias !8415
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8517
  store i64 %i.f, ptr %.sroa.536.0..sroa_idx.i, align 8, !dbg !8517, !noalias !8415
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8517
  store i64 0, ptr %i.t, align 8, !dbg !8517, !noalias !8415
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !8517
  store ptr %i.l, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !8517, !noalias !8415
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !8517
  store i64 %i.n, ptr %.sroa.542.0..sroa_idx.i, align 8, !dbg !8517, !noalias !8415
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !8517
  %4 = zext i32 %i.p to i64, !dbg !8517
  %5 = shl nuw i64 %4, 32, !dbg !8517
  %6 = or disjoint i64 %5, 1, !dbg !8517
  store i64 %6, ptr %i.u, align 8, !dbg !8517, !noalias !8415
  call void @_RNvXs0_NtCsixltGIj4kJ4_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !8518, !noalias !8415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8519, !noalias !8415
  ret void, !dbg !8520
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1dm7fboTpfS_11qlog_dancer(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 !dbg !8522 {
bb.a:
    #dbg_value(ptr %0, !8532, !DIExpression(), !8537)
    #dbg_value(ptr %0, !8538, !DIExpression(), !8525)
  tail call void %0(), !dbg !8549, !inline_history !8526
  tail call void asm sideeffect "", "~{memory}"() #20, !dbg !8550, !srcloc !8543
  ret void, !dbg !8551
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1dm7fboTpfS_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 !dbg !23 {
bb.a:
    #dbg_value(ptr %0, !2258, !DIExpression(DW_OP_deref), !8552)
  %i.a = load ptr, ptr %0, align 8, !dbg !8553, !nonnull !2162, !noundef !2162
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1dm7fboTpfS_11qlog_dancer(ptr noundef nonnull %i.a) #21, !dbg !8554
  ret i32 0, !dbg !8555
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs1dm7fboTpfS_11qlog_dancer(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8556 {
bb.a:
    #dbg_value(ptr %0, !8568, !DIExpression(), !8573)
  %i.a = load ptr, ptr %0, align 8, !dbg !8580, !nonnull !2162, !noundef !2162
    #dbg_value(ptr %i.a, !2258, !DIExpression(), !8560)
    #dbg_value(ptr %i.a, !8576, !DIExpression(), !8561)
    #dbg_value(ptr undef, !2258, !DIExpression(DW_OP_deref), !8562)
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1dm7fboTpfS_11qlog_dancer(ptr noundef nonnull readonly %i.a) #21, !dbg !8581, !noalias !8579
  ret i32 0, !dbg !8580
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsaTqK2fWTXJW_11qlog_dancer11seriesstore11SeriesStoreE8grow_oneCs1dm7fboTpfS_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 !dbg !8582 {
bb.a:
    #dbg_value(ptr %0, !8586, !DIExpression(), !8588)
    #dbg_value(i64 8, !8589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8595)
    #dbg_value(i64 1184, !8589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8595)
    #dbg_value(ptr %0, !8591, !DIExpression(), !8595)
  %i.a = load i64, ptr %0, align 8, !dbg !8598, !range !3015, !noundef !2162
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1dm7fboTpfS_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a), !dbg !8599 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !8599 ; 2 uses
  %.not = icmp eq i64 %i.c, -1, !dbg !8600
  br i1 %.not, label %bb.c, label %bb.b, !dbg !8601, !prof !8596

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !8599
    #dbg_value(i64 %i.c, !8592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8597)
    #dbg_value(i64 %i.d, !8592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8597)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #22, !dbg !8602
  unreachable, !dbg !8602

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !8603
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1dm7fboTpfS_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #4 !dbg !8609 {
bb.a:
    #dbg_value(ptr poison, !8666, !DIExpression(), !8676)
    #dbg_value(i64 %1, !8667, !DIExpression(), !8676)
    #dbg_value(i64 %1, !8677, !DIExpression(), !8681)
    #dbg_value(i64 %1, !8682, !DIExpression(), !8687)
    #dbg_value(i64 %1, !8688, !DIExpression(), !8694)
    #dbg_value(i64 %1, !8695, !DIExpression(), !8699)
    #dbg_value(i64 8, !8668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8676)
    #dbg_value(i64 1184, !8668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8676)
    #dbg_value(i64 1184, !8678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8681)
    #dbg_value(i64 1184, !8689, !DIExpression(), !8694)
    #dbg_value(i64 1184, !8696, !DIExpression(), !8699)
    #dbg_value(i64 8, !8678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8681)
    #dbg_value(ptr poison, !8683, !DIExpression(), !8700)
  %i.a = mul nuw nsw i64 %1, 1184, !dbg !8774     ; 4 uses
    #dbg_value(i1 poison, !8691, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8701)
    #dbg_value(i1 poison, !8702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8705)
    #dbg_value(i64 %i.a, !8684, !DIExpression(), !8706)
    #dbg_value(i64 %i.a, !8690, !DIExpression(), !8701)
  %or.cond.not = icmp ugt i64 %1, 7790010166262479, !dbg !8775
  br i1 %or.cond.not, label %bb.f, label %bb.b, !dbg !8775, !prof !3109

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 8, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8707)
    #dbg_value(i64 %i.a, !8669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8707)
    #dbg_value(ptr poison, !3110, !DIExpression(), !8618)
    #dbg_value(i64 8, !3127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8618)
    #dbg_value(i64 1184, !3127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8618)
    #dbg_value(i64 1184, !3131, !DIExpression(), !8620)
  %i.b = icmp eq i64 %.0.val, 0, !dbg !8776
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit, !dbg !8776

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
    #dbg_value(i64 %.0.val, !3134, !DIExpression(), !8620)
  %i.c = mul nuw i64 %.0.val, 1184, !dbg !8777
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %.8.val, !8673, !DIExpression(), !8708)
    #dbg_value(i64 poison, !8674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8708)
    #dbg_value(i64 %i.c, !8674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8708)
    #dbg_value(ptr poison, !8709, !DIExpression(), !8623)
    #dbg_value(ptr poison, !8716, !DIExpression(), !8626)
    #dbg_value(ptr %.8.val, !8712, !DIExpression(), !8623)
    #dbg_value(ptr %.8.val, !8720, !DIExpression(), !8626)
    #dbg_value(i64 8, !8713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8623)
    #dbg_value(i64 8, !8721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8626)
    #dbg_value(i64 %i.c, !8713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8623)
    #dbg_value(i64 %i.c, !8721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8626)
    #dbg_value(i64 8, !8714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8623)
    #dbg_value(i64 8, !8722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8626)
    #dbg_value(i64 %i.a, !8714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8623)
    #dbg_value(i64 %i.a, !8722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8626)
    #dbg_value(i8 0, !8723, !DIExpression(), !8626)
    #dbg_value(ptr poison, !8725, !DIExpression(), !8639)
    #dbg_value(ptr %.8.val, !8728, !DIExpression(), !8639)
    #dbg_value(ptr %.8.val, !8744, !DIExpression(), !8642)
    #dbg_value(i64 8, !8729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8639)
    #dbg_value(i64 8, !8747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8642)
    #dbg_value(i64 %i.c, !8729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8639)
    #dbg_value(i64 %i.c, !8747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8642)
    #dbg_value(i64 8, !8730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8639)
    #dbg_value(i64 %i.a, !8730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8639)
    #dbg_value(i1 false, !8731, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8639)
    #dbg_value(i64 %i.c, !8732, !DIExpression(), !8643)
    #dbg_value(ptr poison, !8733, !DIExpression(), !8644)
    #dbg_value(i64 %i.a, !8734, !DIExpression(), !8645)
    #dbg_value(i64 %i.a, !8748, !DIExpression(), !8642)
  %i.d = icmp uge i64 %1, %.0.val, !dbg !8778
    #dbg_value(i1 true, !8750, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8648)
  tail call void @llvm.assume(i1 %i.d), !dbg !8779
  %i.e = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #20, !dbg !8780
    #dbg_value(ptr poison, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8754)
    #dbg_value(ptr poison, !8755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8771)
    #dbg_value(i64 poison, !8672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8754)
    #dbg_value(i64 poison, !8755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8771)
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !8781

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !3151, !DIExpression(), !8654)
    #dbg_value(ptr poison, !3156, !DIExpression(), !8656)
    #dbg_value(i64 8, !3154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8654)
    #dbg_value(i64 8, !3160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8656)
    #dbg_value(i64 %i.a, !3154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8654)
    #dbg_value(i64 %i.a, !3160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8656)
    #dbg_value(i8 0, !3161, !DIExpression(), !8656)
    #dbg_value(i64 8, !3163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8658)
    #dbg_value(i64 8, !3174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8660)
    #dbg_value(i64 %i.a, !3163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8658)
    #dbg_value(i64 %i.a, !3174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8660)
    #dbg_value(i1 false, !3167, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8658)
    #dbg_value(i64 %i.a, !3168, !DIExpression(), !8661)
  %i.f = icmp eq i64 %1, 0, !dbg !8782
  br i1 %i.f, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !8782

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !8783
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !8784
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !8785

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !8755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8771)
    #dbg_value(ptr %.pn8, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8754)
    #dbg_value(i64 poison, !8755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8771)
    #dbg_value(i64 poison, !8672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8754)
    #dbg_value(ptr poison, !8766, !DIExpression(), !8772)
  %i.h = icmp eq ptr %.pn8, null, !dbg !8786
  br i1 %i.h, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, !dbg !8787

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8788
  store i64 8, ptr %i.i, align 8, !dbg !8788
  br label %bb.f, !dbg !8789

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
    #dbg_value(i64 %i.a, !8672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8754)
    #dbg_value(i64 %i.a, !8755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8771)
    #dbg_value(ptr %.pn810, !8767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8773)
    #dbg_value(i64 %i.a, !8767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8773)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8790
  store ptr %.pn810, ptr %i.j, align 8, !dbg !8790
  br label %bb.f, !dbg !8791

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !8676
  store i64 %.sink11, ptr %i.k, align 8, !dbg !8676
  store i64 %.sink, ptr %0, align 8, !dbg !8676
  ret void, !dbg !8792
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1dm7fboTpfS_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !8809 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !8840, !DIExpression(), !8863)
end_hunk_0
