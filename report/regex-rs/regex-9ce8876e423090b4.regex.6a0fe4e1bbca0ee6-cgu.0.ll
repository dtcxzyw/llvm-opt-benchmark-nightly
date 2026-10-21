Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex-9ce8876e423090b4.regex.6a0fe4e1bbca0ee6-cgu.0?download=true
inline.NumInlined: 417
inline.NumDeleted: 202
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrack7VisitedECs96z5GJ9HwjO_5regex:bb.a
    #dbg_value(i64 %i.g, !2872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12412)
    #dbg_value(i64 %i.g, !2868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12414)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !12429, !noalias !12421
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs96z5GJ9HwjO_5regex.exit, !dbg !12430

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECs96z5GJ9HwjO_5regex.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a, !dbg !12422

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs96z5GJ9HwjO_5regex.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !12431
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state17StateBuilderEmptyECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !773 {
bb.a:
    #dbg_value(ptr %0, !3808, !DIExpression(), !12476)
    #dbg_value(ptr %0, !3247, !DIExpression(), !12433)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b, !dbg !12481

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %0, align 8, !dbg !12481, !range !2815, !alias.scope !12477, !noundef !1140 ; 2 uses
    #dbg_value(ptr poison, !3254, !DIExpression(), !12439)
    #dbg_value(ptr poison, !3260, !DIExpression(), !12441)
    #dbg_value(ptr poison, !2828, !DIExpression(), !12443)
    #dbg_value(i64 1, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12443)
    #dbg_value(i64 1, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12443)
    #dbg_value(ptr poison, !2837, !DIExpression(), !12445)
    #dbg_value(i64 1, !2854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12445)
    #dbg_value(i64 1, !2854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12445)
  %i.b = icmp eq i64 %.val3.i, 0, !dbg !12482
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs96z5GJ9HwjO_5regex.exit.i, label %bb.c, !dbg !12482

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12481
  %.val4.i = load ptr, ptr %i.c, align 8, !dbg !12481, !alias.scope !12478, !nonnull !1140, !noundef !1140
    #dbg_value(ptr %.val4.i, !2834, !DIExpression(), !12446)
    #dbg_value(i64 1, !2835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12446)
    #dbg_value(i64 %.val3.i, !2835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12446)
    #dbg_value(ptr poison, !2882, !DIExpression(), !12448)
    #dbg_value(ptr poison, !2877, !DIExpression(), !12450)
    #dbg_value(ptr %.val4.i, !2883, !DIExpression(), !12448)
    #dbg_value(ptr %.val4.i, !2878, !DIExpression(), !12450)
    #dbg_value(ptr %.val4.i, !2871, !DIExpression(), !12452)
    #dbg_value(ptr %.val4.i, !2867, !DIExpression(), !12454)
    #dbg_value(i64 1, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12448)
    #dbg_value(i64 1, !2879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12450)
    #dbg_value(i64 1, !2872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12452)
    #dbg_value(i64 1, !2868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12454)
    #dbg_value(i64 %.val3.i, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12448)
    #dbg_value(i64 %.val3.i, !2879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12450)
    #dbg_value(i64 %.val3.i, !2872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12452)
    #dbg_value(i64 %.val3.i, !2868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12454)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !dbg !12483, !noalias !12479
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs96z5GJ9HwjO_5regex.exit.i, !dbg !12484

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !dbg !12481, !range !2815, !alias.scope !12477, !noundef !1140 ; 2 uses
    #dbg_value(ptr poison, !3254, !DIExpression(), !12458)
    #dbg_value(ptr poison, !3260, !DIExpression(), !12460)
    #dbg_value(ptr poison, !2828, !DIExpression(), !12462)
    #dbg_value(i64 1, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12462)
    #dbg_value(i64 1, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12462)
    #dbg_value(ptr poison, !2837, !DIExpression(), !12464)
    #dbg_value(i64 1, !2854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(i64 1, !2854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12464)
  %i.d = icmp eq i64 %.val.i, 0, !dbg !12485
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs96z5GJ9HwjO_5regex.exit, label %bb.e, !dbg !12485

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12481
  %.val2.i = load ptr, ptr %i.e, align 8, !dbg !12481, !alias.scope !12478, !nonnull !1140, !noundef !1140
    #dbg_value(ptr %.val2.i, !2834, !DIExpression(), !12465)
    #dbg_value(i64 1, !2835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12465)
    #dbg_value(i64 %.val.i, !2835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12465)
    #dbg_value(ptr poison, !2882, !DIExpression(), !12467)
    #dbg_value(ptr poison, !2877, !DIExpression(), !12469)
    #dbg_value(ptr %.val2.i, !2883, !DIExpression(), !12467)
    #dbg_value(ptr %.val2.i, !2878, !DIExpression(), !12469)
    #dbg_value(ptr %.val2.i, !2871, !DIExpression(), !12471)
    #dbg_value(ptr %.val2.i, !2867, !DIExpression(), !12473)
    #dbg_value(i64 1, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12467)
    #dbg_value(i64 1, !2879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12469)
    #dbg_value(i64 1, !2872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12471)
    #dbg_value(i64 1, !2868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12473)
    #dbg_value(i64 %.val.i, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12467)
    #dbg_value(i64 %.val.i, !2879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12469)
    #dbg_value(i64 %.val.i, !2872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12471)
    #dbg_value(i64 %.val.i, !2868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12473)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !dbg !12486, !noalias !12480
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs96z5GJ9HwjO_5regex.exit, !dbg !12487

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs96z5GJ9HwjO_5regex.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a, !dbg !12481

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs96z5GJ9HwjO_5regex.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !12488
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12490 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !12552, !DIExpression(), !12558)
    #dbg_value(i64 %1, !12553, !DIExpression(), !12558)
    #dbg_value(i64 %2, !12554, !DIExpression(), !12558)
    #dbg_value(i64 %3, !12555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12558)
    #dbg_value(i64 %4, !12555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12559), !dbg !12636
    #dbg_value(ptr %0, !12560, !DIExpression(), !12511)
    #dbg_value(ptr %0, !12596, !DIExpression(), !12514)
    #dbg_value(i64 %1, !12574, !DIExpression(), !12511)
    #dbg_value(i64 %1, !12603, !DIExpression(), !12517)
    #dbg_value(i64 %2, !12575, !DIExpression(), !12511)
    #dbg_value(i64 %2, !12604, !DIExpression(), !12517)
    #dbg_value(i64 %3, !12576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12511)
    #dbg_value(i64 %4, !12576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12511)
    #dbg_declare(ptr %i.a, !12606, !DIExpression(), !12526)
    #dbg_value(i64 %4, !12624, !DIExpression(), !12529)
  %i.b = icmp eq i64 %4, 0, !dbg !12637
  br i1 %i.b, label %bb.e, label %bb.b, !dbg !12637, !prof !2579

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1, !dbg !12638              ; 2 uses
  %i.d = icmp ult i64 %i.c, %1, !dbg !12638
    #dbg_value(i1 %i.d, !12628, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12532)
  br i1 %i.d, label %bb.e, label %bb.c, !dbg !12639

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.c, !12577, !DIExpression(), !12533)
    #dbg_value(i64 %i.c, !12630, !DIExpression(), !12536)
  %i.e = load i64, ptr %0, align 8, !dbg !12640, !range !2815, !alias.scope !12559, !noundef !1140 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1, !dbg !12640
    #dbg_value(i64 %i.f, !12631, !DIExpression(), !12536)
    #dbg_value(ptr undef, !3862, !DIExpression(DW_OP_deref), !12538)
    #dbg_value(ptr undef, !3864, !DIExpression(DW_OP_deref), !12538)
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f), !dbg !12641
    #dbg_value(i64 %..i.i, !12580, !DIExpression(), !12539)
    #dbg_value(i64 %..i.i, !12630, !DIExpression(), !12541)
  %i.g = icmp eq i64 %4, 1, !dbg !12642
  %i.h = icmp ult i64 %4, 1025, !dbg !12642
  %..i = select i1 %i.h, i64 4, i64 1, !dbg !12642
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i, !dbg !12642
    #dbg_value(i64 %.sroa.08.0.i, !12631, !DIExpression(), !12541)
    #dbg_value(ptr undef, !3862, !DIExpression(DW_OP_deref), !12543)
    #dbg_value(ptr undef, !3864, !DIExpression(DW_OP_deref), !12543)
  %..i49.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i), !dbg !12643 ; 3 uses
    #dbg_value(i64 %..i49.i, !12581, !DIExpression(), !12544)
    #dbg_value(i64 %..i49.i, !12601, !DIExpression(), !12514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12644, !noalias !12559
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12645 ; 2 uses
  %.val48.i = load ptr, ptr %i.i, align 8, !dbg !12645, !alias.scope !12559
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val48.i, i64 noundef %..i49.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !dbg !12645, !noalias !12559
  %i.j = load i64, ptr %i.a, align 8, !dbg !12646, !range !2615, !noalias !12559, !noundef !1140
  %i.k = trunc nuw i64 %i.j to i1, !dbg !12647
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12648 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f, !dbg !12647

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !dbg !12649, !range !12633, !noalias !12559, !noundef !1140
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12649
  %i.o = load i64, ptr %i.n, align 8, !dbg !12649, !noalias !12559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12650, !noalias !12559
  br label %bb.e, !dbg !12651

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
    #dbg_value(i64 %.sroa.0.0.i.ph, !12556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12635)
    #dbg_value(i64 %.sroa.5.0.i.ph, !12556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12635)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24, !dbg !12652
  unreachable, !dbg !12652

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !dbg !12653, !noalias !12559, !nonnull !1140, !noundef !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12650, !noalias !12559
    #dbg_value(ptr %i.p, !12582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12545)
    #dbg_value(ptr %i.p, !12600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12514)
    #dbg_value(i64 poison, !12582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12545)
    #dbg_value(i64 poison, !12600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12514)
  store ptr %i.p, ptr %i.i, align 8, !dbg !12654, !alias.scope !12559
  %i.q = icmp sgt i64 %..i49.i, -1, !dbg !12655
  tail call void @llvm.assume(i1 %i.q), !dbg !12655
  store i64 %..i49.i, ptr %0, align 8, !dbg !12656, !alias.scope !12559
  ret void, !dbg !12657
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12661 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
    #dbg_value(i64 %1, !12765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12770)
    #dbg_value(i32 %2, !12765, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12770)
    #dbg_declare(ptr %i.a, !12766, !DIExpression(), !12772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12846
  store i64 0, ptr %i.a, align 8, !dbg !12847
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12847 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12847
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12847 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12847
    #dbg_declare(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !12667)
    #dbg_value(ptr %i.a, !12782, !DIExpression(), !12668)
    #dbg_value(ptr %i.a, !12786, !DIExpression(), !12671)
    #dbg_value(i64 %1, !12783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12668)
    #dbg_value(i32 %2, !12783, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12668)
    #dbg_value(i64 %1, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12672)
    #dbg_value(i32 %2, !12778, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12672)
    #dbg_value(i64 %1, !12784, !DIExpression(), !12673)
    #dbg_value(i64 %1, !12787, !DIExpression(), !12671)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12848

.noexc:                                           ; preds = %bb.a
    #dbg_value(i64 %1, !12790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12677)
    #dbg_value(i32 %2, !12790, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12677)
    #dbg_value(ptr %i.a, !12797, !DIExpression(), !12677)
    #dbg_value(i64 %1, !12801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12681)
    #dbg_value(i32 %2, !12801, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !12681)
    #dbg_value(ptr %i.a, !12803, !DIExpression(), !12681)
    #dbg_value(i64 %1, !12804, !DIExpression(), !12682)
  %.not.i.i.i = icmp eq i64 %1, 0, !dbg !12849
  br i1 %.not.i.i.i, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex.exit, label %bb.b, !dbg !12849

bb.b:                                             ; preds = %.noexc
  %i.b = add i64 %1, -1, !dbg !12850              ; 4 uses
    #dbg_value(ptr %i.a, !12806, !DIExpression(), !12690)
    #dbg_value(ptr poison, !12814, !DIExpression(), !12690)
    #dbg_value(i64 %i.b, !12815, !DIExpression(), !12690)
    #dbg_value(i64 %i.b, !12816, !DIExpression(), !12691)
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
  %.pre15.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12851, !alias.scope !12826 ; 4 uses
  br i1 %i.c, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us.i.i.i.i, label %.split.i.i.i.i

_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us.i.i.i.i: ; preds = %bb.b, %.noexc4
  %i.u = phi i64 [ %i.y, %.noexc4 ], [ %.pre15.i.i.i.i, %bb.b ], !dbg !12851 ; 3 uses
  %.sroa.01.0.us.i.i.i.i = phi i64 [ %i.aa, %.noexc4 ], [ %i.b, %bb.b ], !dbg !12852 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.us.i.i.i.i, !12816, !DIExpression(), !12691)
    #dbg_value(i32 %2, !12817, !DIExpression(), !12709)
    #dbg_value(ptr poison, !12838, !DIExpression(DW_OP_deref), !12710)
    #dbg_value(i64 %.sroa.01.0.us.i.i.i.i, !12836, !DIExpression(), !12710)
    #dbg_value(i64 %.sroa.01.0.us.i.i.i.i, !12843, !DIExpression(), !12713)
    #dbg_value(i32 %2, !12837, !DIExpression(), !12710)
    #dbg_value(i64 1, !12844, !DIExpression(), !12713)
    #dbg_value(ptr poison, !12831, !DIExpression(DW_OP_deref), !12714)
    #dbg_value(i32 %2, !12830, !DIExpression(), !12714)
    #dbg_value(ptr %i.a, !3888, !DIExpression(), !12715)
    #dbg_value(ptr %i.a, !3883, !DIExpression(), !12716)
    #dbg_value(ptr %i.a, !3893, !DIExpression(), !12718)
    #dbg_value(i32 %2, !3889, !DIExpression(), !12715)
    #dbg_value(i64 %i.u, !3890, !DIExpression(), !12719)
    #dbg_value(i64 %i.u, !3896, !DIExpression(), !12721)
  %i.v = icmp sgt i64 %i.u, -1, !dbg !12853
  call void @llvm.assume(i1 %i.v), !dbg !12854
    #dbg_value(i64 1, !3891, !DIExpression(), !12722)
    #dbg_value(i64 1, !3894, !DIExpression(), !12718)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12855

.noexc4:                                          ; preds = %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us.i.i.i.i
    #dbg_value(ptr %i.a, !3901, !DIExpression(), !12724)
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12856, !alias.scope !12826, !nonnull !1140, !noundef !1140
    #dbg_value(ptr %i.w, !3899, !DIExpression(), !12721)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u, !dbg !12857
    #dbg_value(i32 %2, !3918, !DIExpression(), !12729)
    #dbg_value(ptr %i.x, !3923, !DIExpression(), !12729)
    #dbg_value(ptr %i.x, !3930, !DIExpression(), !12731)
    #dbg_value(ptr %i.x, !3930, !DIExpression(), !12733)
    #dbg_value(ptr %i.x, !3930, !DIExpression(), !12735)
    #dbg_value(ptr %i.x, !3930, !DIExpression(), !12737)
    #dbg_value(ptr %i.x, !3930, !DIExpression(), !12739)
    #dbg_value(ptr %i.x, !3930, !DIExpression(), !12741)
    #dbg_value(i64 1, !3931, !DIExpression(), !12731)
    #dbg_value(i64 1, !3931, !DIExpression(), !12733)
    #dbg_value(i64 1, !3931, !DIExpression(), !12735)
    #dbg_value(i64 2, !3931, !DIExpression(), !12737)
    #dbg_value(i64 2, !3931, !DIExpression(), !12739)
    #dbg_value(i64 3, !3931, !DIExpression(), !12741)
    #dbg_value(i64 1, !3924, !DIExpression(), !12742)
  store i8 %i.e, ptr %i.x, align 1, !dbg !12858
    #dbg_value(ptr %i.a, !3933, !DIExpression(), !12744)
  %i.y = add nuw i64 %i.u, 1, !dbg !12859         ; 2 uses
    #dbg_value(i64 %i.y, !3937, !DIExpression(), !12745)
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12860, !alias.scope !12826
  %i.z = icmp eq i64 %.sroa.01.0.us.i.i.i.i, 0, !dbg !12861
  %i.aa = add i64 %.sroa.01.0.us.i.i.i.i, -1, !dbg !12861
  br i1 %i.z, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex.exit, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us.i.i.i.i, !dbg !12862

.split.i.i.i.i:                                   ; preds = %bb.b
  %i.ab = icmp samesign ult i32 %2, 2048
  br i1 %i.ab, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us4.i.i.i.i, label %.split.split.i.i.i.i

_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us4.i.i.i.i: ; preds = %.split.i.i.i.i, %.noexc5
  %i.ac = phi i64 [ %i.ah, %.noexc5 ], [ %.pre15.i.i.i.i, %.split.i.i.i.i ], !dbg !12851 ; 3 uses
  %.sroa.01.0.us3.i.i.i.i = phi i64 [ %i.aj, %.noexc5 ], [ %i.b, %.split.i.i.i.i ], !dbg !12852 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.us3.i.i.i.i, !12816, !DIExpression(), !12691)
    #dbg_value(i32 %2, !12817, !DIExpression(), !12709)
    #dbg_value(ptr poison, !12838, !DIExpression(DW_OP_deref), !12710)
    #dbg_value(i64 %.sroa.01.0.us3.i.i.i.i, !12836, !DIExpression(), !12710)
    #dbg_value(i64 %.sroa.01.0.us3.i.i.i.i, !12843, !DIExpression(), !12713)
    #dbg_value(i32 %2, !12837, !DIExpression(), !12710)
    #dbg_value(i64 1, !12844, !DIExpression(), !12713)
    #dbg_value(ptr poison, !12831, !DIExpression(DW_OP_deref), !12714)
    #dbg_value(i32 %2, !12830, !DIExpression(), !12714)
    #dbg_value(ptr %i.a, !3888, !DIExpression(), !12715)
    #dbg_value(ptr %i.a, !3883, !DIExpression(), !12716)
    #dbg_value(ptr %i.a, !3893, !DIExpression(), !12718)
    #dbg_value(i32 %2, !3889, !DIExpression(), !12715)
    #dbg_value(i64 %i.ac, !3890, !DIExpression(), !12719)
    #dbg_value(i64 %i.ac, !3896, !DIExpression(), !12721)
  %i.ad = icmp sgt i64 %i.ac, -1, !dbg !12853
  call void @llvm.assume(i1 %i.ad), !dbg !12854
    #dbg_value(i64 poison, !3891, !DIExpression(), !12722)
    #dbg_value(i64 poison, !3894, !DIExpression(), !12718)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12855

.noexc5:                                          ; preds = %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us4.i.i.i.i
    #dbg_value(ptr %i.a, !3901, !DIExpression(), !12724)
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12856, !alias.scope !12826, !nonnull !1140, !noundef !1140
    #dbg_value(ptr %i.ae, !3899, !DIExpression(), !12721)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac, !dbg !12857 ; 2 uses
    #dbg_value(i32 %2, !3918, !DIExpression(), !12729)
    #dbg_value(ptr %i.af, !3923, !DIExpression(), !12729)
    #dbg_value(ptr %i.af, !3930, !DIExpression(), !12731)
    #dbg_value(ptr %i.af, !3930, !DIExpression(), !12733)
    #dbg_value(ptr %i.af, !3930, !DIExpression(), !12735)
    #dbg_value(ptr %i.af, !3930, !DIExpression(), !12737)
    #dbg_value(ptr %i.af, !3930, !DIExpression(), !12739)
    #dbg_value(ptr %i.af, !3930, !DIExpression(), !12741)
    #dbg_value(i64 1, !3931, !DIExpression(), !12731)
    #dbg_value(i64 1, !3931, !DIExpression(), !12733)
    #dbg_value(i64 1, !3931, !DIExpression(), !12735)
    #dbg_value(i64 2, !3931, !DIExpression(), !12737)
    #dbg_value(i64 2, !3931, !DIExpression(), !12739)
    #dbg_value(i64 3, !3931, !DIExpression(), !12741)
    #dbg_value(i64 poison, !3924, !DIExpression(), !12742)
    #dbg_value(i8 %i.g, !3925, !DIExpression(), !12746)
    #dbg_value(i8 %i.k, !3926, !DIExpression(), !12747)
    #dbg_value(i8 %i.o, !3927, !DIExpression(), !12748)
    #dbg_value(i8 %i.r, !3928, !DIExpression(), !12749)
  store i8 %i.t, ptr %i.af, align 1, !dbg !12863
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !12864
  store i8 %i.g, ptr %i.ag, align 1, !dbg !12865
    #dbg_value(ptr %i.a, !3933, !DIExpression(), !12744)
  %i.ah = add nuw i64 %i.ac, 2, !dbg !12859       ; 2 uses
    #dbg_value(i64 %i.ah, !3937, !DIExpression(), !12745)
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12860, !alias.scope !12826
  %i.ai = icmp eq i64 %.sroa.01.0.us3.i.i.i.i, 0, !dbg !12861
  %i.aj = add i64 %.sroa.01.0.us3.i.i.i.i, -1, !dbg !12861
  br i1 %i.ai, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex.exit, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us4.i.i.i.i, !dbg !12862

.split.split.i.i.i.i:                             ; preds = %.split.i.i.i.i
  br i1 %i.d, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us7.i.i.i.i, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.i.i.i.i

_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us7.i.i.i.i: ; preds = %.split.split.i.i.i.i, %.noexc6
  %i.ak = phi i64 [ %i.aq, %.noexc6 ], [ %.pre15.i.i.i.i, %.split.split.i.i.i.i ], !dbg !12851 ; 3 uses
  %.sroa.01.0.us6.i.i.i.i = phi i64 [ %i.as, %.noexc6 ], [ %i.b, %.split.split.i.i.i.i ], !dbg !12852 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.us6.i.i.i.i, !12816, !DIExpression(), !12691)
    #dbg_value(i32 %2, !12817, !DIExpression(), !12709)
    #dbg_value(ptr poison, !12838, !DIExpression(DW_OP_deref), !12710)
    #dbg_value(i64 %.sroa.01.0.us6.i.i.i.i, !12836, !DIExpression(), !12710)
    #dbg_value(i64 %.sroa.01.0.us6.i.i.i.i, !12843, !DIExpression(), !12713)
    #dbg_value(i32 %2, !12837, !DIExpression(), !12710)
    #dbg_value(i64 1, !12844, !DIExpression(), !12713)
    #dbg_value(ptr poison, !12831, !DIExpression(DW_OP_deref), !12714)
    #dbg_value(i32 %2, !12830, !DIExpression(), !12714)
    #dbg_value(ptr %i.a, !3888, !DIExpression(), !12715)
    #dbg_value(ptr %i.a, !3883, !DIExpression(), !12716)
    #dbg_value(ptr %i.a, !3893, !DIExpression(), !12718)
    #dbg_value(i32 %2, !3889, !DIExpression(), !12715)
    #dbg_value(i64 %i.ak, !3890, !DIExpression(), !12719)
    #dbg_value(i64 %i.ak, !3896, !DIExpression(), !12721)
  %i.al = icmp sgt i64 %i.ak, -1, !dbg !12853
  call void @llvm.assume(i1 %i.al), !dbg !12854
    #dbg_value(i64 poison, !3891, !DIExpression(), !12722)
    #dbg_value(i64 poison, !3894, !DIExpression(), !12718)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 3)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12855

.noexc6:                                          ; preds = %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us7.i.i.i.i
    #dbg_value(ptr %i.a, !3901, !DIExpression(), !12724)
  %i.am = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12856, !alias.scope !12826, !nonnull !1140, !noundef !1140
    #dbg_value(ptr %i.am, !3899, !DIExpression(), !12721)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak, !dbg !12857 ; 3 uses
    #dbg_value(i32 %2, !3918, !DIExpression(), !12729)
    #dbg_value(ptr %i.an, !3923, !DIExpression(), !12729)
    #dbg_value(ptr %i.an, !3930, !DIExpression(), !12731)
    #dbg_value(ptr %i.an, !3930, !DIExpression(), !12733)
    #dbg_value(ptr %i.an, !3930, !DIExpression(), !12735)
    #dbg_value(ptr %i.an, !3930, !DIExpression(), !12737)
    #dbg_value(ptr %i.an, !3930, !DIExpression(), !12739)
    #dbg_value(ptr %i.an, !3930, !DIExpression(), !12741)
    #dbg_value(i64 1, !3931, !DIExpression(), !12731)
    #dbg_value(i64 1, !3931, !DIExpression(), !12733)
    #dbg_value(i64 1, !3931, !DIExpression(), !12735)
    #dbg_value(i64 2, !3931, !DIExpression(), !12737)
    #dbg_value(i64 2, !3931, !DIExpression(), !12739)
    #dbg_value(i64 3, !3931, !DIExpression(), !12741)
    #dbg_value(i64 poison, !3924, !DIExpression(), !12742)
    #dbg_value(i8 %i.g, !3925, !DIExpression(), !12746)
    #dbg_value(i8 %i.k, !3926, !DIExpression(), !12747)
    #dbg_value(i8 %i.o, !3927, !DIExpression(), !12748)
    #dbg_value(i8 %i.r, !3928, !DIExpression(), !12749)
  store i8 %i.s, ptr %i.an, align 1, !dbg !12866
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1, !dbg !12867
  store i8 %i.k, ptr %i.ao, align 1, !dbg !12868
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !12869
  store i8 %i.g, ptr %i.ap, align 1, !dbg !12870
    #dbg_value(ptr %i.a, !3933, !DIExpression(), !12744)
  %i.aq = add nuw i64 %i.ak, 3, !dbg !12859       ; 2 uses
    #dbg_value(i64 %i.aq, !3937, !DIExpression(), !12745)
  store i64 %i.aq, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12860, !alias.scope !12826
  %i.ar = icmp eq i64 %.sroa.01.0.us6.i.i.i.i, 0, !dbg !12861
  %i.as = add i64 %.sroa.01.0.us6.i.i.i.i, -1, !dbg !12861
  br i1 %i.ar, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex.exit, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us7.i.i.i.i, !dbg !12862

_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.i.i.i.i: ; preds = %.split.split.i.i.i.i, %.noexc7
  %i.at = phi i64 [ %i.ba, %.noexc7 ], [ %.pre15.i.i.i.i, %.split.split.i.i.i.i ], !dbg !12851 ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bc, %.noexc7 ], [ %i.b, %.split.split.i.i.i.i ], !dbg !12852 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !12816, !DIExpression(), !12691)
    #dbg_value(i32 %2, !12817, !DIExpression(), !12709)
    #dbg_value(ptr poison, !12838, !DIExpression(DW_OP_deref), !12710)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !12836, !DIExpression(), !12710)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !12843, !DIExpression(), !12713)
    #dbg_value(i32 %2, !12837, !DIExpression(), !12710)
    #dbg_value(i64 1, !12844, !DIExpression(), !12713)
    #dbg_value(ptr poison, !12831, !DIExpression(DW_OP_deref), !12714)
    #dbg_value(i32 %2, !12830, !DIExpression(), !12714)
    #dbg_value(ptr %i.a, !3888, !DIExpression(), !12715)
    #dbg_value(ptr %i.a, !3883, !DIExpression(), !12716)
    #dbg_value(ptr %i.a, !3893, !DIExpression(), !12718)
    #dbg_value(i32 %2, !3889, !DIExpression(), !12715)
    #dbg_value(i64 %i.at, !3890, !DIExpression(), !12719)
    #dbg_value(i64 %i.at, !3896, !DIExpression(), !12721)
  %i.au = icmp sgt i64 %i.at, -1, !dbg !12853
  call void @llvm.assume(i1 %i.au), !dbg !12854
    #dbg_value(i64 poison, !3891, !DIExpression(), !12722)
    #dbg_value(i64 poison, !3894, !DIExpression(), !12718)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 4)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12855

.noexc7:                                          ; preds = %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.i.i.i.i
    #dbg_value(ptr %i.a, !3901, !DIExpression(), !12724)
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12856, !alias.scope !12826, !nonnull !1140, !noundef !1140
    #dbg_value(ptr %i.av, !3899, !DIExpression(), !12721)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at, !dbg !12857 ; 4 uses
    #dbg_value(i32 %2, !3918, !DIExpression(), !12729)
    #dbg_value(ptr %i.aw, !3923, !DIExpression(), !12729)
    #dbg_value(ptr %i.aw, !3930, !DIExpression(), !12731)
    #dbg_value(ptr %i.aw, !3930, !DIExpression(), !12733)
    #dbg_value(ptr %i.aw, !3930, !DIExpression(), !12735)
    #dbg_value(ptr %i.aw, !3930, !DIExpression(), !12737)
    #dbg_value(ptr %i.aw, !3930, !DIExpression(), !12739)
    #dbg_value(ptr %i.aw, !3930, !DIExpression(), !12741)
    #dbg_value(i64 1, !3931, !DIExpression(), !12731)
    #dbg_value(i64 1, !3931, !DIExpression(), !12733)
    #dbg_value(i64 1, !3931, !DIExpression(), !12735)
    #dbg_value(i64 2, !3931, !DIExpression(), !12737)
    #dbg_value(i64 2, !3931, !DIExpression(), !12739)
    #dbg_value(i64 3, !3931, !DIExpression(), !12741)
    #dbg_value(i64 poison, !3924, !DIExpression(), !12742)
    #dbg_value(i8 %i.g, !3925, !DIExpression(), !12746)
    #dbg_value(i8 %i.k, !3926, !DIExpression(), !12747)
    #dbg_value(i8 %i.o, !3927, !DIExpression(), !12748)
    #dbg_value(i8 %i.r, !3928, !DIExpression(), !12749)
  store i8 %i.r, ptr %i.aw, align 1, !dbg !12871
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !12872
  store i8 %i.o, ptr %i.ax, align 1, !dbg !12873
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !12874
  store i8 %i.k, ptr %i.ay, align 1, !dbg !12875
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 3, !dbg !12876
  store i8 %i.g, ptr %i.az, align 1, !dbg !12877
    #dbg_value(ptr %i.a, !3933, !DIExpression(), !12744)
  %i.ba = add nuw i64 %i.at, 4, !dbg !12859       ; 2 uses
    #dbg_value(i64 %i.ba, !3937, !DIExpression(), !12745)
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12860, !alias.scope !12826
  %i.bb = icmp eq i64 %.sroa.01.0.i.i.i.i, 0, !dbg !12861
  %i.bc = add i64 %.sroa.01.0.i.i.i.i, -1, !dbg !12861
  br i1 %i.bb, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex.exit, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.i.i.i.i, !dbg !12862

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us7.i.i.i.i, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us4.i.i.i.i, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.us.i.i.i.i, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex.exit.i.i.i.i, %bb.a
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %bb.d unwind label %bb.c, !dbg !12878

_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex.exit: ; preds = %.noexc7, %.noexc6, %.noexc5, %.noexc4, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !12879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12878
  ret void, !dbg !12880

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12881
  unreachable, !dbg !12881

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp53, !dbg !12881
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 !dbg !808 {
bb.a:
    #dbg_value(ptr poison, !3942, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12884)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12886)
    #dbg_value(ptr %1, !12887, !DIExpression(), !12890)
  %i.a = load ptr, ptr %1, align 8, !dbg !12892, !nonnull !1140, !noundef !1140
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12892
  %i.c = load ptr, ptr %i.b, align 8, !dbg !12892, !nonnull !1140, !align !2611, !noundef !1140 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12893
  %i.e = load i64, ptr %i.d, align 8, !dbg !12893, !range !3376, !invariant.load !1140
  %i.f = add nsw i64 %i.e, -1, !dbg !12893
  %i.g = and i64 %i.f, -16, !dbg !12893
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g, !dbg !12893
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !12893
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !12885
  %i.k = load ptr, ptr %i.j, align 8, !dbg !12885, !invariant.load !1140, !nonnull !1140
  tail call void %i.k(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.i) #27, !dbg !12894
  ret void, !dbg !12895
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBd_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableCs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12896 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !12950, !DIExpression(), !12956)
    #dbg_declare(ptr poison, !12951, !DIExpression(), !12957)
  %i.b = load ptr, ptr %1, align 8, !dbg !12957, !nonnull !1140, !noundef !1140 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12957
  %i.d = load ptr, ptr %i.c, align 8, !dbg !12957, !nonnull !1140, !align !2611, !noundef !1140 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12958), !dbg !12957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !12959
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !12959
    #dbg_declare(ptr %i.a, !12960, !DIExpression(), !12902)
    #dbg_declare(ptr poison, !12963, !DIExpression(), !12902)
    #dbg_value(ptr poison, !3942, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12904)
    #dbg_value(ptr %i.a, !3945, !DIExpression(), !12906)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !12970
  %i.g = load i64, ptr %i.f, align 8, !dbg !12970, !range !3376, !invariant.load !1140, !alias.scope !12958, !noalias !12965
  %i.h = add nsw i64 %i.g, -1, !dbg !12970
  %i.i = and i64 %i.h, -16, !dbg !12970
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i, !dbg !12970
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !12970
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !12971
  %i.m = load ptr, ptr %i.l, align 8, !dbg !12971, !invariant.load !1140, !alias.scope !12958, !noalias !12965, !nonnull !1140
  invoke void %i.m(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.k) #27
          to label %_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex.exit.i unwind label %bb.b, !dbg !12972, !inline_history !12966

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2780, !DIExpression(), !12911)
    #dbg_value(ptr %i.a, !2785, !DIExpression(), !12913)
    #dbg_value(ptr %i.a, !2790, !DIExpression(), !12915)
    #dbg_value(i64 1, !2800, !DIExpression(), !12917)
    #dbg_value(i8 1, !2802, !DIExpression(), !12917)
    #dbg_value(i64 1, !2804, !DIExpression(), !12919)
    #dbg_value(i8 1, !2806, !DIExpression(), !12919)
    #dbg_value(ptr %i.b, !2801, !DIExpression(), !12920)
    #dbg_value(ptr %i.b, !2805, !DIExpression(), !12919)
  %i.o = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !12973, !noalias !12967
  %i.p = icmp eq i64 %i.o, 1, !dbg !12974
  br i1 %i.p, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex.exit.i, !dbg !12974

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !2713, !DIExpression(), !12928)
  fence acquire, !dbg !12975
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex.exit.i unwind label %bb.e, !dbg !12976, !noalias !12968

_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex.exit.i: ; preds = %bb.a
    #dbg_value(ptr %i.a, !2780, !DIExpression(), !12930)
    #dbg_value(ptr %i.a, !2785, !DIExpression(), !12932)
    #dbg_value(ptr %i.a, !2790, !DIExpression(), !12934)
    #dbg_value(i64 1, !2800, !DIExpression(), !12936)
    #dbg_value(i8 1, !2802, !DIExpression(), !12936)
    #dbg_value(i64 1, !2804, !DIExpression(), !12938)
    #dbg_value(i8 1, !2806, !DIExpression(), !12938)
    #dbg_value(ptr %i.b, !2801, !DIExpression(), !12939)
    #dbg_value(ptr %i.b, !2805, !DIExpression(), !12938)
  %i.q = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !12977, !noalias !12969
  %i.r = icmp eq i64 %i.q, 1, !dbg !12978
  br i1 %i.r, label %bb.d, label %_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex.exit, !dbg !12978

bb.d:                                             ; preds = %_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex.exit.i
    #dbg_value(i8 2, !2713, !DIExpression(), !12947)
  fence acquire, !dbg !12979
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22, !dbg !12980, !noalias !12968
  br label %_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex.exit, !dbg !12980

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12981, !noalias !12968
  unreachable, !dbg !12981

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.n, !dbg !12981

_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex.exit: ; preds = %_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12981
  ret void, !dbg !12957
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs96z5GJ9HwjO_5regex6escape(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !12982 {
bb.a:
    #dbg_value(ptr %1, !12985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12987)
    #dbg_value(i64 %2, !12985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12987)
  tail call void @_RNvCs3roNzt6HBWW_12regex_syntax6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !12988
  ret void, !dbg !12989
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder10size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !12990 {
bb.a:
    #dbg_value(ptr %0, !12992, !DIExpression(), !12995)
    #dbg_value(i64 %1, !12993, !DIExpression(), !12995)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder10size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !12996 ; 0 uses
  ret ptr %0, !dbg !12997
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder14dfa_size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !12998 {
bb.a:
    #dbg_value(ptr %0, !13000, !DIExpression(), !13003)
    #dbg_value(i64 %1, !13001, !DIExpression(), !13003)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder14dfa_size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !13004 ; 0 uses
  ret ptr %0, !dbg !13005
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder15line_terminator(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i8 noundef %1) unnamed_addr #0 !dbg !13006 {
bb.a:
    #dbg_value(ptr %0, !13010, !DIExpression(), !13013)
    #dbg_value(i8 %1, !13011, !DIExpression(), !13013)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder15line_terminator(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i8 noundef %1), !dbg !13014 ; 0 uses
  ret ptr %0, !dbg !13015
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !13016 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !13020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13022)
    #dbg_value(i64 %2, !13020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13023
  store ptr %1, ptr %i.a, align 8, !dbg !13023
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13023
  store i64 %2, ptr %i.b, align 8, !dbg !13023
  call void @_RINvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB5_7Builder3newARej1_BS_EB7_(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !dbg !13024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13025
  ret void, !dbg !13026
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 !dbg !13032 {
bb.a:
    #dbg_value(ptr %1, !13051, !DIExpression(), !13053)
  tail call void @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder15build_one_bytes(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1), !dbg !13054
  ret void, !dbg !13055
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder10size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !13056 {
bb.a:
    #dbg_value(ptr %0, !13058, !DIExpression(), !13061)
    #dbg_value(i64 %1, !13059, !DIExpression(), !13061)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder10size_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1), !dbg !13062 ; 0 uses
  ret ptr %0, !dbg !13063
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder14dfa_size_limit(ptr noalias nofree noundef returned align 8 dereferenceable(184) %0, i64 noundef %1) unnamed_addr #0 !dbg !13064 {
bb.a:
    #dbg_value(ptr %0, !13066, !DIExpression(), !13069)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!12650 = !DILocation(line: 529, column: 62, scope: !12500, inlinedAt: !12510)
!12651 = !DILocation(line: 0, scope: !12634, inlinedAt: !12510)
!12652 = !DILocation(line: 666, column: 17, scope: !12489)
!12653 = !DILocation(line: 2178, column: 16, scope: !12524, inlinedAt: !12525)
!12654 = !DILocation(line: 773, column: 9, scope: !12512, inlinedAt: !12513)
!12655 = !DILocation(line: 42, column: 26, scope: !12546, inlinedAt: !12547)
!12656 = !DILocation(line: 774, column: 9, scope: !12512, inlinedAt: !12513)
!12657 = !DILocation(line: 668, column: 10, scope: !12490)
!12658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Repeat<char>", scope: !12758, file: !900, size: 32, align: 32, flags: DIFlagPublic, elements: !12760, templateParams: !12762, identifier: "c46ec5488cfbdef555c48df27580ba4a")
!12659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::iter::sources::repeat::Repeat<char>>", scope: !12753, file: !900, size: 128, align: 64, flags: DIFlagPublic, elements: !12756, templateParams: !12764, identifier: "d60e155a60a1ebbe5e2eaf7595b4e9d1")
!12660 = distinct !DILexicalBlock(scope: !12661, file: !3872, line: 2405, column: 9)
!12661 = distinct !DISubprogram(name: "from_iter<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>", linkageName: "_RINvXs5_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex", scope: !12750, file: !3872, line: 2404, type: !12752, scopeLine: 2404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12769, retainedNodes: !12767)
!12662 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3new", scope: !8, file: !3872, line: 446, type: !12774, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !12775)
!12663 = distinct !DILexicalBlock(scope: !12665, file: !3872, line: 2507, column: 9)
!12664 = distinct !DISubprogram(name: "extend<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>", linkageName: "_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex", scope: !12779, file: !3872, line: 2505, type: !12781, scopeLine: 2505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12769, retainedNodes: !12785)
!12665 = distinct !DILexicalBlock(scope: !12664, file: !3872, line: 2506, column: 9)
!12666 = distinct !DILocation(line: 2406, column: 13, scope: !12660)
!12667 = distinct !DILocation(line: 2506, column: 13, scope: !12665, inlinedAt: !12666)
!12668 = distinct !DILocation(line: 0, scope: !12664, inlinedAt: !12666)
!12669 = distinct !DISubprogram(name: "reserve", linkageName: "_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String7reserve", scope: !8, file: !3872, line: 1235, type: !3874, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !3875, retainedNodes: !12788)
!12670 = distinct !DILocation(line: 2508, column: 14, scope: !12663, inlinedAt: !12666)
!12671 = distinct !DILocation(line: 0, scope: !12669, inlinedAt: !12670)
!12672 = distinct !DILocation(line: 0, scope: !12665, inlinedAt: !12666)
!12673 = distinct !DILocation(line: 0, scope: !12663, inlinedAt: !12666)
!12674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>", scope: !12794, file: !900, size: 64, align: 64, elements: !12796, templateParams: !1140, identifier: "6a6681a15e3879981f96631722e2ad9a")
!12675 = distinct !DISubprogram(name: "for_each<core::iter::sources::repeat::Repeat<char>, alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>>", linkageName: "_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs96z5GJ9HwjO_5regex", scope: !12791, file: !12789, line: 125, type: !12793, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12800, retainedNodes: !12798)
!12676 = distinct !DILocation(line: 2509, column: 18, scope: !12663, inlinedAt: !12666)
!12677 = distinct !DILocation(line: 0, scope: !12675, inlinedAt: !12676)
!12678 = distinct !DILexicalBlock(scope: !12679, file: !12789, line: 299, column: 9)
!12679 = distinct !DISubprogram(name: "spec_for_each<core::iter::sources::repeat::Repeat<char>, alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>>", linkageName: "_RINvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources6repeat6RepeatcEENtB6_8SpecTake13spec_for_eachNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2a_6StringINtNtNtBa_6traits7collect6ExtendcE6extendBO_E0ECs96z5GJ9HwjO_5regex", scope: !12802, file: !12789, line: 286, type: !12793, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12800, retainedNodes: !12805)
!12680 = distinct !DILocation(line: 126, column: 9, scope: !12675, inlinedAt: !12676)
!12681 = distinct !DILocation(line: 0, scope: !12679, inlinedAt: !12680)
!12682 = distinct !DILocation(line: 0, scope: !12678, inlinedAt: !12680)
!12683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<char, alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>>", scope: !12808, file: !900, size: 64, align: 64, elements: !12810, templateParams: !1140, identifier: "b9b0f85600283918d2b1993a4d29cca0")
!12684 = distinct !DILexicalBlock(scope: !12686, file: !2619, line: 2490, column: 32)
!12685 = distinct !DILexicalBlock(scope: !12686, file: !2619, line: 2490, column: 32)
!12686 = distinct !DILexicalBlock(scope: !12687, file: !2619, line: 2489, column: 41)
!12687 = distinct !DILexicalBlock(scope: !12688, file: !2619, line: 2488, column: 9)
!12688 = distinct !DISubprogram(name: "try_fold<core::iter::sources::repeat::Repeat<char>, usize, core::iter::adapters::take::{impl#9}::spec_for_each::check::{closure_env#0}<char, alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>>, core::option::Option<usize>>", linkageName: "_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources6repeat6RepeatcENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB1R_4TakepENtB1R_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3a_6StringINtNtB12_7collect6ExtendcE6extendIB2d_B3_EE0E0INtNtBc_6option6OptionjEECs96z5GJ9HwjO_5regex", scope: !2622, file: !2619, line: 2482, type: !12813, scopeLine: 2482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12825, retainedNodes: !12820)
!12689 = distinct !DILocation(line: 301, column: 23, scope: !12678, inlinedAt: !12680)
!12690 = distinct !DILocation(line: 0, scope: !12688, inlinedAt: !12689)
!12691 = distinct !DILocation(line: 0, scope: !12687, inlinedAt: !12689)
!12692 = distinct !{!12692, i1 true, !"_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex"}
!12693 = distinct !{!12693, !12692, !"_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeINtNtNtBS_7sources6repeat6RepeatcEEECs96z5GJ9HwjO_5regex: argument 0"}
!12694 = distinct !{!12694, i1 true, !"_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs96z5GJ9HwjO_5regex"}
!12695 = distinct !{!12695, !12694, !"_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources6repeat6RepeatcEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2n_6StringINtNtB1B_7collect6ExtendcE6extendBN_E0ECs96z5GJ9HwjO_5regex: argument 0"}
!12696 = distinct !{!12696, i1 true, !"_RINvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources6repeat6RepeatcEENtB6_8SpecTake13spec_for_eachNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2a_6StringINtNtNtBa_6traits7collect6ExtendcE6extendBO_E0ECs96z5GJ9HwjO_5regex"}
!12697 = distinct !{!12697, !12696, !"_RINvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources6repeat6RepeatcEENtB6_8SpecTake13spec_for_eachNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2a_6StringINtNtNtBa_6traits7collect6ExtendcE6extendBO_E0ECs96z5GJ9HwjO_5regex: argument 0"}
!12698 = distinct !{!12698, i1 true, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources6repeat6RepeatcENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB1R_4TakepENtB1R_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3a_6StringINtNtB12_7collect6ExtendcE6extendIB2d_B3_EE0E0INtNtBc_6option6OptionjEECs96z5GJ9HwjO_5regex"}
!12699 = distinct !{!12699, !12698, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources6repeat6RepeatcENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB1R_4TakepENtB1R_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3a_6StringINtNtB12_7collect6ExtendcE6extendIB2d_B3_EE0E0INtNtBc_6option6OptionjEECs96z5GJ9HwjO_5regex: argument 0"}
!12700 = distinct !{!12700, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push"}
!12701 = distinct !{!12701, !12700, !"_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push: argument 0"}
!12702 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>", linkageName: "_RNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB8_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBU_8adapters4take4TakeINtNtNtBU_7sources6repeat6RepeatcEEE0Cs96z5GJ9HwjO_5regex", scope: !12794, file: !3872, line: 2509, type: !12829, scopeLine: 2509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12769, retainedNodes: !12832)
!12703 = distinct !DISubprogram(name: "{closure#0}<char, alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>>", linkageName: "_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_INtNtNtBe_7sources6repeat6RepeatcEEE0E0Cs96z5GJ9HwjO_5regex", scope: !12808, file: !12789, line: 293, type: !12835, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12842, retainedNodes: !12839)
!12704 = distinct !DILocation(line: 2490, column: 21, scope: !12686, inlinedAt: !12689)
!12705 = distinct !DILocation(line: 294, column: 17, scope: !12703, inlinedAt: !12704)
!12706 = distinct !DILocation(line: 2509, column: 41, scope: !12702, inlinedAt: !12705)
!12707 = distinct !DILocation(line: 1433, column: 24, scope: !793, inlinedAt: !12706)
!12708 = distinct !DILocation(line: 1877, column: 18, scope: !790, inlinedAt: !12707)
!12709 = distinct !DILocation(line: 0, scope: !12686, inlinedAt: !12689)
!12710 = distinct !DILocation(line: 0, scope: !12703, inlinedAt: !12704)
!12711 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj11checked_sub", scope: !2860, file: !2858, line: 1086, type: !3843, scopeLine: 1086, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, retainedNodes: !12845)
!12712 = distinct !DILocation(line: 295, column: 22, scope: !12703, inlinedAt: !12704)
!12713 = distinct !DILocation(line: 0, scope: !12711, inlinedAt: !12712)
!12714 = distinct !DILocation(line: 0, scope: !12702, inlinedAt: !12705)
!12715 = distinct !DILocation(line: 0, scope: !793, inlinedAt: !12706)
!12716 = distinct !DILocation(line: 0, scope: !790, inlinedAt: !12707)
!12717 = distinct !DILocation(line: 1435, column: 14, scope: !791, inlinedAt: !12706)
!12718 = distinct !DILocation(line: 0, scope: !794, inlinedAt: !12717)
!12719 = distinct !DILocation(line: 0, scope: !792, inlinedAt: !12706)
!12720 = distinct !DILocation(line: 1439, column: 84, scope: !791, inlinedAt: !12706)
!12721 = distinct !DILocation(line: 0, scope: !795, inlinedAt: !12720)
!12722 = distinct !DILocation(line: 0, scope: !791, inlinedAt: !12706)
!12723 = distinct !DILocation(line: 1439, column: 71, scope: !791, inlinedAt: !12706)
!12724 = distinct !DILocation(line: 2050, column: 29, scope: !796, inlinedAt: !12723)
!12725 = distinct !DILocation(line: 2053, column: 18, scope: !796, inlinedAt: !12723)
!12726 = distinct !DILocation(line: 296, column: 20, scope: !799, inlinedAt: !12725)
!12727 = distinct !DILocation(line: 606, column: 14, scope: !798, inlinedAt: !12726)
!12728 = distinct !DILocation(line: 1439, column: 13, scope: !791, inlinedAt: !12706)
!12729 = distinct !DILocation(line: 0, scope: !805, inlinedAt: !12728)
!12730 = distinct !DILocation(line: 2569, column: 18, scope: !800, inlinedAt: !12728)
!12731 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !12730)
!12732 = distinct !DILocation(line: 2575, column: 18, scope: !800, inlinedAt: !12728)
!12733 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !12732)
!12734 = distinct !DILocation(line: 2581, column: 14, scope: !800, inlinedAt: !12728)
!12735 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !12734)
!12736 = distinct !DILocation(line: 2576, column: 18, scope: !800, inlinedAt: !12728)
!12737 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !12736)
!12738 = distinct !DILocation(line: 2582, column: 14, scope: !800, inlinedAt: !12728)
!12739 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !12738)
!12740 = distinct !DILocation(line: 2583, column: 14, scope: !800, inlinedAt: !12728)
!12741 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !12740)
!12742 = distinct !DILocation(line: 0, scope: !804, inlinedAt: !12728)
!12743 = distinct !DILocation(line: 1440, column: 22, scope: !791, inlinedAt: !12706)
!12744 = distinct !DILocation(line: 2217, column: 33, scope: !807, inlinedAt: !12743)
!12745 = distinct !DILocation(line: 0, scope: !807, inlinedAt: !12743)
!12746 = distinct !DILocation(line: 0, scope: !803, inlinedAt: !12728)
!12747 = distinct !DILocation(line: 0, scope: !802, inlinedAt: !12728)
!12748 = distinct !DILocation(line: 0, scope: !801, inlinedAt: !12728)
!12749 = distinct !DILocation(line: 0, scope: !800, inlinedAt: !12728)
!12750 = !DINamespace(name: "{impl#7}", scope: !1129)
!12751 = !{!8, !12659}
!12752 = !DISubroutineType(types: !12751)
!12753 = !DINamespace(name: "take", scope: !2140)
!12754 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !12659, file: !900, baseType: !12658, size: 32, align: 32, offset: 64, flags: DIFlagPrivate)
!12755 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !12659, file: !900, baseType: !1122, size: 64, align: 64, flags: DIFlagPrivate)
!12756 = !{!12754, !12755}
!12757 = !DINamespace(name: "sources", scope: !2139)
!12758 = !DINamespace(name: "repeat", scope: !12757)
!12759 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !12658, file: !900, baseType: !2123, size: 32, align: 32, flags: DIFlagPrivate)
!12760 = !{!12759}
!12761 = !DITemplateTypeParameter(name: "A", type: !2123)
!12762 = !{!12761}
!12763 = !DITemplateTypeParameter(name: "I", type: !12658)
!12764 = !{!12763}
!12765 = !DILocalVariable(name: "iter", arg: 1, scope: !12661, file: !3872, line: 2404, type: !12659)
!12766 = !DILocalVariable(name: "buf", scope: !12660, file: !3872, line: 2405, type: !8, align: 64)
!12767 = !{!12765, !12766}
!12768 = !DITemplateTypeParameter(name: "I", type: !12659)
!12769 = !{!12768}
!12770 = !DILocation(line: 0, scope: !12661)
!12772 = !DILocation(line: 2405, column: 13, scope: !12660)
!12773 = !{!8}
!12774 = !DISubroutineType(types: !12773)
!12775 = !DISubprogram(name: "new", linkageName: "_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3new", scope: !8, file: !3872, line: 446, type: !12774, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1140)
!12776 = !DILocation(line: 2405, column: 23, scope: !12661)
!12778 = !DILocalVariable(name: "iterator", scope: !12665, file: !3872, line: 2506, type: !12659, align: 64)
!12779 = !DINamespace(name: "{impl#15}", scope: !1129)
!12780 = !{null, !3241, !12659}
!12781 = !DISubroutineType(types: !12780)
!12782 = !DILocalVariable(name: "self", arg: 1, scope: !12664, file: !3872, line: 2505, type: !3241)
!12783 = !DILocalVariable(name: "iter", arg: 2, scope: !12664, file: !3872, line: 2505, type: !12659)
!12784 = !DILocalVariable(name: "lower_bound", scope: !12663, file: !3872, line: 2507, type: !1122, align: 64)
!12785 = !{!12782, !12783, !12778, !12784}
!12786 = !DILocalVariable(name: "self", arg: 1, scope: !12669, file: !3872, line: 1235, type: !3241)
!12787 = !DILocalVariable(name: "additional", arg: 2, scope: !12669, file: !3872, line: 1235, type: !1122)
!12788 = !{!12786, !12787}
!12789 = !DIFile(filename: "library/core/src/iter/adapters/take.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "c26f67e0ebb3407ed3802e085ce3525b")
!12790 = !DILocalVariable(name: "self", arg: 1, scope: !12675, file: !12789, line: 125, type: !12659)
!12791 = !DINamespace(name: "{impl#1}", scope: !12753)
!12792 = !{null, !12659, !12674}
!12793 = !DISubroutineType(types: !12792)
!12794 = !DINamespace(name: "extend", scope: !12779)
!12795 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !12674, file: !900, baseType: !3241, size: 64, align: 64)
!12796 = !{!12795}
!12797 = !DILocalVariable(name: "f", arg: 2, scope: !12675, file: !12789, line: 125, type: !12674)
!12798 = !{!12790, !12797}
!12799 = !DITemplateTypeParameter(name: "F", type: !12674)
!12800 = !{!12763, !12799}
!12801 = !DILocalVariable(name: "self", arg: 1, scope: !12679, file: !12789, line: 286, type: !12659)
!12802 = !DINamespace(name: "{impl#9}", scope: !12753)
!12803 = !DILocalVariable(name: "f", arg: 2, scope: !12679, file: !12789, line: 286, type: !12674)
!12804 = !DILocalVariable(name: "remaining", scope: !12678, file: !12789, line: 299, type: !1122, align: 64)
!12805 = !{!12801, !12803, !12804}
!12806 = !DILocalVariable(name: "f", arg: 3, scope: !12688, file: !2619, line: 2482, type: !12683)
!12807 = !DINamespace(name: "spec_for_each", scope: !12802)
!12808 = !DINamespace(name: "check", scope: !12807)
!12809 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !12683, file: !900, baseType: !12674, size: 64, align: 64)
!12810 = !{!12809}
!12811 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::sources::repeat::Repeat<char>", baseType: !12658, size: 64, align: 64, dwarfAddressSpace: 0)
!12812 = !{!44, !12811, !1122, !12683}
!12813 = !DISubroutineType(cc: DW_CC_nocall, types: !12812)
!12814 = !DILocalVariable(name: "self", arg: 1, scope: !12688, file: !2619, line: 2482, type: !12811)
!12815 = !DILocalVariable(name: "init", arg: 2, scope: !12688, file: !2619, line: 2482, type: !1122)
!12816 = !DILocalVariable(name: "accum", scope: !12687, file: !2619, line: 2488, type: !1122, align: 64)
!12817 = !DILocalVariable(name: "x", scope: !12686, file: !2619, line: 2489, type: !2123, align: 32)
!12818 = !DILocalVariable(name: "residual", scope: !12685, file: !2619, line: 2490, type: !458, align: 8)
!12819 = !DILocalVariable(name: "val", scope: !12684, file: !2619, line: 2490, type: !1122, align: 64)
!12820 = !{!12814, !12815, !12806, !12816, !12817, !12818, !12819}
!12821 = !DITemplateTypeParameter(name: "Self", type: !12658)
!12822 = !DITemplateTypeParameter(name: "B", type: !1122)
!12823 = !DITemplateTypeParameter(name: "F", type: !12683)
!12824 = !DITemplateTypeParameter(name: "R", type: !44)
!12825 = !{!12821, !12822, !12823, !12824}
!12826 = !{!12701, !12699, !12697, !12695, !12693}
!12827 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>", baseType: !12674, size: 64, align: 64, dwarfAddressSpace: 0)
!12828 = !{null, !12827, !2123}
!12829 = !DISubroutineType(cc: DW_CC_nocall, types: !12828)
!12830 = !DILocalVariable(name: "c", arg: 2, scope: !12702, file: !3872, line: 2509, type: !2123)
!12831 = !DILocalVariable(name: "self", scope: !12702, file: !3872, line: 2505, type: !3241, align: 64)
!12832 = !{!12830, !12831}
!12833 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::take::{impl#9}::spec_for_each::check::{closure_env#0}<char, alloc::string::{impl#15}::extend::{closure_env#0}<core::iter::adapters::take::Take<core::iter::sources::repeat::Repeat<char>>>>", baseType: !12683, size: 64, align: 64, dwarfAddressSpace: 0)
!12834 = !{!44, !12833, !1122, !2123}
!12835 = !DISubroutineType(cc: DW_CC_nocall, types: !12834)
!12836 = !DILocalVariable(name: "more", arg: 2, scope: !12703, file: !12789, line: 293, type: !1122)
!12837 = !DILocalVariable(name: "x", arg: 3, scope: !12703, file: !12789, line: 293, type: !2123)
!12838 = !DILocalVariable(name: "action", scope: !12703, file: !12789, line: 291, type: !12674, align: 64)
!12839 = !{!12836, !12837, !12838}
!12840 = !DITemplateTypeParameter(name: "Item", type: !2123)
!12841 = !DITemplateTypeParameter(name: "impl FnMut(Item) + 'a", type: !12674)
!12842 = !{!12840, !12841}
!12843 = !DILocalVariable(name: "self", arg: 1, scope: !12711, file: !2858, line: 1086, type: !1122)
!12844 = !DILocalVariable(name: "rhs", scope: !12711, file: !2858, line: 1086, type: !1122, align: 64)
!12845 = !{!12843, !12844}
!12846 = !DILocation(line: 2405, column: 13, scope: !12661)
!12847 = !DILocation(line: 447, column: 9, scope: !12662, inlinedAt: !12776)
!12848 = !DILocation(line: 1236, column: 18, scope: !12669, inlinedAt: !12670)
!12849 = !DILocation(line: 300, column: 12, scope: !12678, inlinedAt: !12680)
!12850 = !DILocation(line: 301, column: 32, scope: !12678, inlinedAt: !12680)
!12851 = !DILocation(line: 3101, column: 19, scope: !789, inlinedAt: !12708)
!12852 = !DILocation(line: 0, scope: !12688, inlinedAt: !12689)
!12853 = !DILocation(line: 3106, column: 37, scope: !789, inlinedAt: !12708)
!12854 = !DILocation(line: 3106, column: 18, scope: !789, inlinedAt: !12708)
!12855 = !DILocation(line: 1236, column: 18, scope: !794, inlinedAt: !12717)
!12856 = !DILocation(line: 611, column: 9, scope: !797, inlinedAt: !12727)
!12857 = !DILocation(line: 970, column: 18, scope: !795, inlinedAt: !12720)
!12858 = !DILocation(line: 2558, column: 13, scope: !804, inlinedAt: !12728)
!12859 = !DILocation(line: 1440, column: 30, scope: !791, inlinedAt: !12706)
!12860 = !DILocation(line: 2224, column: 9, scope: !807, inlinedAt: !12743)
!12861 = !DILocation(line: 1092, column: 16, scope: !12711, inlinedAt: !12712)
!12862 = !DILocation(line: 2490, column: 21, scope: !12686, inlinedAt: !12689)
!12863 = !DILocation(line: 2568, column: 13, scope: !800, inlinedAt: !12728)
!12864 = !DILocation(line: 970, column: 18, scope: !806, inlinedAt: !12730)
!12865 = !DILocation(line: 2569, column: 13, scope: !800, inlinedAt: !12728)
!12866 = !DILocation(line: 2574, column: 13, scope: !800, inlinedAt: !12728)
!12867 = !DILocation(line: 970, column: 18, scope: !806, inlinedAt: !12732)
!12868 = !DILocation(line: 2575, column: 13, scope: !800, inlinedAt: !12728)
!12869 = !DILocation(line: 970, column: 18, scope: !806, inlinedAt: !12736)
!12870 = !DILocation(line: 2576, column: 13, scope: !800, inlinedAt: !12728)
!12871 = !DILocation(line: 2580, column: 9, scope: !800, inlinedAt: !12728)
!12872 = !DILocation(line: 970, column: 18, scope: !806, inlinedAt: !12734)
!12873 = !DILocation(line: 2581, column: 9, scope: !800, inlinedAt: !12728)
!12874 = !DILocation(line: 970, column: 18, scope: !806, inlinedAt: !12738)
!12875 = !DILocation(line: 2582, column: 9, scope: !800, inlinedAt: !12728)
!12876 = !DILocation(line: 970, column: 18, scope: !806, inlinedAt: !12740)
!12877 = !DILocation(line: 2583, column: 9, scope: !800, inlinedAt: !12728)
!12878 = !DILocation(line: 2408, column: 5, scope: !12661)
!12879 = !DILocation(line: 2407, column: 9, scope: !12660)
!12880 = !DILocation(line: 2408, column: 6, scope: !12661)
!12881 = !DILocation(line: 2404, column: 5, scope: !12661)
!12882 = distinct !DISubprogram(name: "inner<dyn regex_automata::meta::strategy::Strategy, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_E5innerCs96z5GJ9HwjO_5regex", scope: !25, file: !2590, line: 2127, type: !2794, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1227, declaration: !2798, retainedNodes: !12888)
!12883 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn regex_automata::meta::strategy::Strategy>>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_EE6as_refCs96z5GJ9HwjO_5regex", scope: !24, file: !2561, line: 450, type: !2888, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1198, declaration: !2889)
!12884 = !DILocation(line: 0, scope: !808)
!12885 = !DILocation(line: 3688, column: 56, scope: !808)
!12886 = !DILocation(line: 2453, column: 14, scope: !810, inlinedAt: !12885)
!12887 = !DILocalVariable(name: "self", arg: 1, scope: !12882, file: !2590, line: 2127, type: !2591)
!12888 = !{!12887}
!12889 = !DILocation(line: 2454, column: 15, scope: !810, inlinedAt: !12885)
!12890 = !DILocation(line: 2127, column: 14, scope: !12882, inlinedAt: !12889)
!12891 = !DILocation(line: 2133, column: 27, scope: !12882, inlinedAt: !12889)
!12892 = !DILocation(line: 454, column: 20, scope: !12883, inlinedAt: !12891)
!12893 = !DILocation(line: 2454, column: 9, scope: !810, inlinedAt: !12885)
!12894 = !DILocation(line: 3688, column: 62, scope: !808)
!12895 = !DILocation(line: 3688, column: 76, scope: !808)
!12896 = distinct !DISubprogram(name: "call_once<regex_automata::meta::regex::{impl#21}::build_many_from_hir::{closure_env#1}<regex_syntax::hir::Hir>, ()>", linkageName: "_RNSNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBd_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableCs96z5GJ9HwjO_5regex", scope: !3956, file: !3954, line: 250, type: !12949, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12955, retainedNodes: !12952)
!12897 = distinct !{!12897, i1 true, !"_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex"}
!12898 = distinct !{!12898, !12897, !"_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex: argument 1"}
!12899 = distinct !{!12899, !12897, !"_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex: argument 0"}
!12900 = distinct !DISubprogram(name: "call_once<regex_automata::meta::regex::{impl#21}::build_many_from_hir::{closure_env#1}<regex_syntax::hir::Hir>, ()>", linkageName: "_RNvYNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBb_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_onceCs96z5GJ9HwjO_5regex", scope: !3956, file: !3954, line: 250, type: !12962, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !12955, retainedNodes: !12964)
!12901 = distinct !DILocation(line: 250, column: 5, scope: !12896)
!12902 = distinct !DILocation(line: 250, column: 5, scope: !12900, inlinedAt: !12901)
!12903 = distinct !DILocation(line: 250, column: 5, scope: !12900, inlinedAt: !12901)
!12904 = distinct !DILocation(line: 0, scope: !808, inlinedAt: !12903)
!12905 = distinct !DILocation(line: 3688, column: 56, scope: !808, inlinedAt: !12903)
!12906 = distinct !DILocation(line: 2453, column: 14, scope: !810, inlinedAt: !12905)
!12907 = distinct !{!12907, i1 true, !"_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex"}
!12908 = distinct !{!12908, !12907, !"_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex: argument 1"}
!12909 = distinct !{!12909, !12907, !"_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex: argument 0"}
!12910 = distinct !DILocation(line: 250, column: 5, scope: !12900, inlinedAt: !12901)
!12911 = distinct !DILocation(line: 0, scope: !528, inlinedAt: !12910)
!12912 = distinct !DILocation(line: 847, column: 1, scope: !528, inlinedAt: !12910)
!12913 = distinct !DILocation(line: 0, scope: !529, inlinedAt: !12912)
!12914 = distinct !DILocation(line: 847, column: 1, scope: !529, inlinedAt: !12912)
!12915 = distinct !DILocation(line: 0, scope: !530, inlinedAt: !12914)
!12916 = distinct !DILocation(line: 2868, column: 32, scope: !530, inlinedAt: !12914)
!12917 = distinct !DILocation(line: 0, scope: !533, inlinedAt: !12916)
!12918 = distinct !DILocation(line: 3253, column: 26, scope: !533, inlinedAt: !12916)
!12919 = distinct !DILocation(line: 0, scope: !534, inlinedAt: !12918)
!12920 = distinct !DILocation(line: 3251, column: 36, scope: !533, inlinedAt: !12916)
!12921 = distinct !{!12921, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex"}
!12922 = distinct !{!12922, !12921, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex: argument 0"}
!12923 = distinct !{!12923, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_EECs96z5GJ9HwjO_5regex"}
!12924 = distinct !{!12924, !12923, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_EECs96z5GJ9HwjO_5regex: argument 0"}
!12925 = distinct !{!12925, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex"}
!12926 = distinct !{!12926, !12925, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex: argument 0"}
!12927 = distinct !DILocation(line: 69, column: 9, scope: !530, inlinedAt: !12914)
!12928 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !12927)
!12929 = distinct !DILocation(line: 250, column: 5, scope: !12900, inlinedAt: !12901)
!12930 = distinct !DILocation(line: 0, scope: !528, inlinedAt: !12929)
!12931 = distinct !DILocation(line: 847, column: 1, scope: !528, inlinedAt: !12929)
!12932 = distinct !DILocation(line: 0, scope: !529, inlinedAt: !12931)
!12933 = distinct !DILocation(line: 847, column: 1, scope: !529, inlinedAt: !12931)
!12934 = distinct !DILocation(line: 0, scope: !530, inlinedAt: !12933)
!12935 = distinct !DILocation(line: 2868, column: 32, scope: !530, inlinedAt: !12933)
!12936 = distinct !DILocation(line: 0, scope: !533, inlinedAt: !12935)
!12937 = distinct !DILocation(line: 3253, column: 26, scope: !533, inlinedAt: !12935)
!12938 = distinct !DILocation(line: 0, scope: !534, inlinedAt: !12937)
!12939 = distinct !DILocation(line: 3251, column: 36, scope: !533, inlinedAt: !12935)
!12940 = distinct !{!12940, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex"}
!12941 = distinct !{!12941, !12940, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0ECs96z5GJ9HwjO_5regex: argument 0"}
!12942 = distinct !{!12942, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_EECs96z5GJ9HwjO_5regex"}
!12943 = distinct !{!12943, !12942, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_EECs96z5GJ9HwjO_5regex: argument 0"}
!12944 = distinct !{!12944, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex"}
!12945 = distinct !{!12945, !12944, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy8StrategyEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex: argument 0"}
!12946 = distinct !DILocation(line: 69, column: 9, scope: !530, inlinedAt: !12933)
!12947 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !12946)
!12948 = !{!255, !2719}
!12949 = !DISubroutineType(types: !12948)
!12950 = !DILocalVariable(arg: 1, scope: !12896, file: !3954, line: 250, type: !2719)
!12951 = !DILocalVariable(arg: 2, scope: !12896, file: !3954, line: 250, type: !1119)
!12952 = !{!12950, !12951}
!12953 = !DITemplateTypeParameter(name: "Self", type: !26)
!12954 = !DITemplateTypeParameter(name: "Args", type: !1119)
!12955 = !{!12953, !12954}
!12956 = !DILocation(line: 0, scope: !12896)
!12957 = !DILocation(line: 250, column: 5, scope: !12896)
!12958 = !{!12898}
!12959 = !{!12899, !12898}
!12960 = !DILocalVariable(arg: 1, scope: !12900, file: !3954, line: 250, type: !26)
!12961 = !{!255, !26}
!12962 = !DISubroutineType(types: !12961)
!12963 = !DILocalVariable(arg: 2, scope: !12900, file: !3954, line: 250, type: !1119)
!12964 = !{!12960, !12963}
!12965 = !{!12909, !12908}
!12966 = !{ptr @_RNCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEs_0Cs96z5GJ9HwjO_5regex}
!12967 = !{!12926, !12924, !12922, !12899, !12898}
!12968 = !{!12899}
!12969 = !{!12945, !12943, !12941, !12899, !12898}
!12970 = !DILocation(line: 2454, column: 9, scope: !810, inlinedAt: !12905)
!12971 = !DILocation(line: 3688, column: 56, scope: !808, inlinedAt: !12903)
!12972 = !DILocation(line: 3688, column: 62, scope: !808, inlinedAt: !12903)
!12973 = !DILocation(line: 4049, column: 24, scope: !534, inlinedAt: !12918)
!12974 = !DILocation(line: 2868, column: 12, scope: !530, inlinedAt: !12914)
!12975 = !DILocation(line: 4493, column: 24, scope: !507, inlinedAt: !12927)
!12976 = !DILocation(line: 2911, column: 18, scope: !530, inlinedAt: !12914)
!12977 = !DILocation(line: 4049, column: 24, scope: !534, inlinedAt: !12937)
!12978 = !DILocation(line: 2868, column: 12, scope: !530, inlinedAt: !12933)
!12979 = !DILocation(line: 4493, column: 24, scope: !507, inlinedAt: !12946)
!12980 = !DILocation(line: 2911, column: 18, scope: !530, inlinedAt: !12933)
!12981 = !DILocation(line: 250, column: 5, scope: !12900, inlinedAt: !12901)
!12982 = distinct !DISubprogram(name: "escape", linkageName: "_RNvCs96z5GJ9HwjO_5regex6escape", scope: !1168, file: !2964, line: 1378, type: !12984, scopeLine: 1378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, retainedNodes: !12986)
!12983 = !{!8, !439}
!12984 = !DISubroutineType(types: !12983)
!12985 = !DILocalVariable(name: "pattern", arg: 1, scope: !12982, file: !2964, line: 1378, type: !439)
!12986 = !{!12985}
!12987 = !DILocation(line: 0, scope: !12982)
!12988 = !DILocation(line: 1379, column: 5, scope: !12982)
!12989 = !DILocation(line: 1380, column: 2, scope: !12982)
!12990 = distinct !DISubprogram(name: "size_limit", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder10size_limit", scope: !811, file: !3957, line: 1869, type: !3963, scopeLine: 1869, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !12991, retainedNodes: !12994)
!12991 = !DISubprogram(name: "size_limit", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder10size_limit", scope: !811, file: !3957, line: 1869, type: !3963, scopeLine: 1869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1140)
!12992 = !DILocalVariable(name: "self", arg: 1, scope: !12990, file: !3957, line: 1869, type: !3961)
!12993 = !DILocalVariable(name: "bytes", arg: 2, scope: !12990, file: !3957, line: 1869, type: !1122)
!12994 = !{!12992, !12993}
!12995 = !DILocation(line: 0, scope: !12990)
!12996 = !DILocation(line: 1870, column: 26, scope: !12990)
!12997 = !DILocation(line: 1872, column: 10, scope: !12990)
!12998 = distinct !DISubprogram(name: "dfa_size_limit", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder14dfa_size_limit", scope: !811, file: !3957, line: 1912, type: !3963, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !12999, retainedNodes: !13002)
!12999 = !DISubprogram(name: "dfa_size_limit", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder14dfa_size_limit", scope: !811, file: !3957, line: 1912, type: !3963, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1140)
!13000 = !DILocalVariable(name: "self", arg: 1, scope: !12998, file: !3957, line: 1912, type: !3961)
!13001 = !DILocalVariable(name: "bytes", arg: 2, scope: !12998, file: !3957, line: 1912, type: !1122)
!13002 = !{!13000, !13001}
!13003 = !DILocation(line: 0, scope: !12998)
!13004 = !DILocation(line: 1913, column: 26, scope: !12998)
!13005 = !DILocation(line: 1915, column: 10, scope: !12998)
!13006 = distinct !DISubprogram(name: "line_terminator", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder15line_terminator", scope: !811, file: !3957, line: 1694, type: !13008, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !13009, retainedNodes: !13012)
!13007 = !{!3961, !3961, !904}
!13008 = !DISubroutineType(types: !13007)
!13009 = !DISubprogram(name: "line_terminator", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder15line_terminator", scope: !811, file: !3957, line: 1694, type: !13008, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1140)
!13010 = !DILocalVariable(name: "self", arg: 1, scope: !13006, file: !3957, line: 1694, type: !3961)
!13011 = !DILocalVariable(name: "byte", arg: 2, scope: !13006, file: !3957, line: 1694, type: !904)
!13012 = !{!13010, !13011}
!13013 = !DILocation(line: 0, scope: !13006)
!13014 = !DILocation(line: 1695, column: 26, scope: !13006)
!13015 = !DILocation(line: 1697, column: 10, scope: !13006)
!13016 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder3new", scope: !811, file: !3957, line: 1383, type: !13018, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !13019, retainedNodes: !13021)
!13017 = !{!811, !439}
!13018 = !DISubroutineType(types: !13017)
!13019 = !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder3new", scope: !811, file: !3957, line: 1383, type: !13018, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1140)
!13020 = !DILocalVariable(name: "pattern", arg: 1, scope: !13016, file: !3957, line: 1383, type: !439)
!13021 = !{!13020}
!13022 = !DILocation(line: 0, scope: !13016)
!13023 = !DILocation(line: 1384, column: 50, scope: !13016)
!13024 = !DILocation(line: 1384, column: 37, scope: !13016)
!13025 = !DILocation(line: 1384, column: 59, scope: !13016)
!13026 = !DILocation(line: 1385, column: 10, scope: !13016)
!13027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Regex", scope: !3966, file: !900, size: 256, align: 64, flags: DIFlagPublic, elements: !13046, templateParams: !1140, identifier: "59b929f9c8cf6e95cea3ae5bcc5e2c7b")
!13028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !13031, file: !900, size: 256, align: 64, flags: DIFlagPublic, elements: !13041, templateParams: !13043, identifier: "1c8aeb9bc288ee61a470bda9f4172e60")
!13029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !13031, file: !900, size: 256, align: 64, flags: DIFlagPublic, elements: !13048, templateParams: !13043, identifier: "9a841b2dc20ce2ef1abba0bb14a5b22")
!13030 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13031, file: !900, size: 256, align: 64, elements: !13039, templateParams: !1140, identifier: "710a309ce00cee6838c6cb02cbecac47", discriminator: !13049)
!13031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<regex::regex::bytes::Regex, regex::error::Error>", scope: !1364, file: !900, size: 256, align: 64, flags: DIFlagPublic, elements: !13036, templateParams: !1140, identifier: "85acd64178d4383973a2c025f12228f1")
!13032 = distinct !DISubprogram(name: "build", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder5build", scope: !811, file: !3957, line: 1392, type: !13035, scopeLine: 1392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !13050, retainedNodes: !13052)
!13033 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex::builders::bytes::RegexBuilder", baseType: !811, size: 64, align: 64, dwarfAddressSpace: 0)
!13034 = !{!13031, !13033}
!13035 = !DISubroutineType(types: !13034)
!13036 = !{!13030}
!13037 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !13030, file: !900, baseType: !13029, size: 256, align: 64)
!13038 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !13030, file: !900, baseType: !13028, size: 256, align: 64, extraData: i64 0)
!13039 = !{!13037, !13038}
!13040 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13028, file: !900, baseType: !14, size: 192, align: 64, offset: 64, flags: DIFlagPublic)
!13041 = !{!13040}
!13042 = !DITemplateTypeParameter(name: "T", type: !13027)
!13043 = !{!13042, !3964}
!13044 = !DIDerivedType(tag: DW_TAG_member, name: "meta", scope: !13027, file: !900, baseType: !299, size: 128, align: 64, flags: DIFlagProtected)
!13045 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !13027, file: !900, baseType: !225, size: 128, align: 64, offset: 128, flags: DIFlagProtected)
!13046 = !{!13044, !13045}
!13047 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13029, file: !900, baseType: !13027, size: 256, align: 64, flags: DIFlagPublic)
!13048 = !{!13047}
!13049 = !DIDerivedType(tag: DW_TAG_member, scope: !13031, file: !900, baseType: !999, size: 64, align: 64, flags: DIFlagArtificial)
!13050 = !DISubprogram(name: "build", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders5bytesNtB2_12RegexBuilder5build", scope: !811, file: !3957, line: 1392, type: !13035, scopeLine: 1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1140)
!13051 = !DILocalVariable(name: "self", arg: 1, scope: !13032, file: !3957, line: 1392, type: !13033)
!13052 = !{!13051}
!13053 = !DILocation(line: 0, scope: !13032)
!13054 = !DILocation(line: 1393, column: 26, scope: !13032)
!13055 = !DILocation(line: 1394, column: 10, scope: !13032)
!13056 = distinct !DISubprogram(name: "size_limit", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder10size_limit", scope: !812, file: !3957, line: 690, type: !3972, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, templateParams: !1140, declaration: !13057, retainedNodes: !13060)
!13057 = !DISubprogram(name: "size_limit", linkageName: "_RNvMNtNtCs96z5GJ9HwjO_5regex8builders6stringNtB2_12RegexBuilder10size_limit", scope: !812, file: !3957, line: 690, type: !3972, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1140)
!13058 = !DILocalVariable(name: "self", arg: 1, scope: !13056, file: !3957, line: 690, type: !3970)
!13059 = !DILocalVariable(name: "bytes", arg: 2, scope: !13056, file: !3957, line: 690, type: !1122)
!13060 = !{!13058, !13059}
!13061 = !DILocation(line: 0, scope: !13056)
!13062 = !DILocation(line: 691, column: 26, scope: !13056)
end_hunk_1
