Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.14?download=true
inline.NumInlined: 281
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7OITKvp9Irj_4perf:bb.a
    #dbg_declare(ptr %i.a, !9316, !DIExpression(), !15342)
    #dbg_value(i64 %4, !9346, !DIExpression(), !15344)
  %i.b = icmp eq i64 %4, 0, !dbg !15374
  br i1 %i.b, label %bb.e, label %bb.b, !dbg !15374, !prof !9058

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1, !dbg !15375              ; 2 uses
  %i.d = icmp ult i64 %i.c, %1, !dbg !15375
    #dbg_value(i1 %i.d, !9350, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15346)
  br i1 %i.d, label %bb.e, label %bb.c, !dbg !15376

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.c, !9275, !DIExpression(), !15347)
    #dbg_value(i64 %i.c, !9356, !DIExpression(), !15349)
  %i.e = load i64, ptr %0, align 8, !dbg !15377, !range !3077, !alias.scope !15371, !noundef !2617 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1, !dbg !15377
    #dbg_value(i64 %i.f, !9359, !DIExpression(), !15349)
    #dbg_value(ptr undef, !9361, !DIExpression(DW_OP_deref), !15351)
    #dbg_value(ptr undef, !9363, !DIExpression(DW_OP_deref), !15351)
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f), !dbg !15378
    #dbg_value(i64 %..i.i, !9278, !DIExpression(), !15352)
    #dbg_value(i64 %..i.i, !9356, !DIExpression(), !15354)
  %i.g = icmp eq i64 %4, 1, !dbg !15379
  %i.h = icmp ult i64 %4, 1025, !dbg !15379
  %..i = select i1 %i.h, i64 4, i64 1, !dbg !15379
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i, !dbg !15379
    #dbg_value(i64 %.sroa.08.0.i, !9359, !DIExpression(), !15354)
    #dbg_value(ptr undef, !9361, !DIExpression(DW_OP_deref), !15356)
    #dbg_value(ptr undef, !9363, !DIExpression(DW_OP_deref), !15356)
  %..i49.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i), !dbg !15380 ; 3 uses
    #dbg_value(i64 %..i49.i, !9279, !DIExpression(), !15357)
    #dbg_value(i64 %..i49.i, !9308, !DIExpression(), !15338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15381, !noalias !15371
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15382 ; 2 uses
  %.val48.i = load ptr, ptr %i.i, align 8, !dbg !15382, !alias.scope !15371
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val48.i, i64 noundef %..i49.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !dbg !15382, !noalias !15371
  %i.j = load i64, ptr %i.a, align 8, !dbg !15383, !range !9367, !noalias !15371, !noundef !2617
  %i.k = trunc nuw i64 %i.j to i1, !dbg !15384
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15385 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f, !dbg !15384

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !dbg !15386, !range !9368, !noalias !15371, !noundef !2617
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15386
  %i.o = load i64, ptr %i.n, align 8, !dbg !15386, !noalias !15371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15387, !noalias !15371
  br label %bb.e, !dbg !15388

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
    #dbg_value(i64 %.sroa.0.0.i.ph, !15368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15372)
    #dbg_value(i64 %.sroa.5.0.i.ph, !15368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15372)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #28, !dbg !15389
  unreachable, !dbg !15389

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !dbg !15390, !noalias !15371, !nonnull !2617, !noundef !2617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15387, !noalias !15371
    #dbg_value(ptr %i.p, !9280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15358)
    #dbg_value(ptr %i.p, !9307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15338)
    #dbg_value(i64 poison, !9280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15358)
    #dbg_value(i64 poison, !9307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15338)
  store ptr %i.p, ptr %i.i, align 8, !dbg !15391, !alias.scope !15371
  %i.q = icmp sgt i64 %..i49.i, -1, !dbg !15392
  tail call void @llvm.assume(i1 %i.q), !dbg !15392
  store i64 %..i49.i, ptr %0, align 8, !dbg !15393, !alias.scope !15371
  ret void, !dbg !15394
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsgR93kpVnVos_12hdrhistogram9iteratorsINtB5_17HistogramIteratoryNtNtB5_8recorded4IterE3newCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15395 {
bb.a:
    #dbg_value(ptr %1, !15442, !DIExpression(), !15445)
    #dbg_value(ptr %1, !15446, !DIExpression(), !15450)
    #dbg_value(ptr %1, !15451, !DIExpression(), !15455)
    #dbg_value(ptr %1, !15456, !DIExpression(), !15468)
    #dbg_value(ptr %1, !15469, !DIExpression(), !15473)
    #dbg_value(ptr %1, !15474, !DIExpression(), !15479)
    #dbg_value(i64 %2, !15443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15445)
    #dbg_value(i64 %3, !15443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15445)
    #dbg_value(i32 -1, !15481, !DIExpression(), !15491)
    #dbg_value(ptr @5, !15492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15500)
    #dbg_value(i64 29, !15492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15500)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !15519
  %i.b = load i64, ptr %i.a, align 8, !dbg !15519, !noundef !2617 ; 4 uses
  %.off = add i64 %i.b, -1, !dbg !15519
  %switch = icmp ult i64 %.off, -2, !dbg !15519
  br i1 %switch, label %bb.c, label %bb.b, !dbg !15519

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.01.0 = phi i64 [ %i.av, %bb.c ], [ %i.b, %bb.a ], !dbg !15450 ; 2 uses
    #dbg_value(i64 %.sroa.01.0, !15475, !DIExpression(), !15479)
    #dbg_value(i64 %.sroa.01.0, !15470, !DIExpression(), !15473)
    #dbg_value(i64 %.sroa.01.0, !15460, !DIExpression(), !15468)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 92, !dbg !15520
  %i.d = load i8, ptr %i.c, align 4, !dbg !15520, !noundef !2617
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15521
  %i.f = load i64, ptr %i.e, align 8, !dbg !15521, !noundef !2617
  %i.g = or i64 %i.f, %.sroa.01.0, !dbg !15522
    #dbg_value(i64 %i.g, !15501, !DIExpression(), !15504)
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false), !dbg !15523
  %i.i = trunc nuw nsw i64 %i.h to i8, !dbg !15522
  %i.j = sub i8 %i.d, %i.i, !dbg !15520           ; 2 uses
    #dbg_value(i8 %i.j, !15461, !DIExpression(), !15505)
    #dbg_value(i8 %i.j, !15476, !DIExpression(), !15479)
    #dbg_value(i8 %i.j, !15506, !DIExpression(), !15512)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 93, !dbg !15524
  %i.l = load i8, ptr %i.k, align 1, !dbg !15524, !noundef !2617
  %i.m = add i8 %i.j, %i.l, !dbg !15525
  %i.n = and i8 %i.m, 63, !dbg !15526
  %i.o = zext nneg i8 %i.n to i64, !dbg !15526
  %i.p = lshr i64 %.sroa.01.0, %i.o, !dbg !15526
  %i.q = trunc i64 %i.p to i32, !dbg !15526
    #dbg_value(i32 %i.q, !15462, !DIExpression(), !15513)
  %i.r = zext i8 %i.j to i32, !dbg !15527
  %i.s = add nuw nsw i32 %i.r, 1, !dbg !15528
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 91, !dbg !15529
  %i.u = load i8, ptr %i.t, align 1, !dbg !15529, !noundef !2617
  %i.v = and i8 %i.u, 31, !dbg !15528
  %i.w = zext nneg i8 %i.v to i32, !dbg !15528
  %i.x = shl i32 %i.s, %i.w, !dbg !15528
    #dbg_value(i32 %i.x, !15463, !DIExpression(), !15514)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 84, !dbg !15530
  %i.z = load i32, ptr %i.y, align 4, !dbg !15530, !noundef !2617
  %i.aa = sub i32 %i.q, %i.z, !dbg !15531
    #dbg_value(i32 %i.aa, !15464, !DIExpression(), !15515)
  %i.ab = add i32 %i.aa, %i.x, !dbg !15532        ; 2 uses
    #dbg_value(i32 %i.ab, !15465, !DIExpression(), !15516)
    #dbg_value(ptr poison, !15488, !DIExpression(), !15517)
  %i.ac = icmp sgt i32 %i.ab, -1, !dbg !15533
  br i1 %i.ac, label %bb.e, label %bb.d, !dbg !15533, !prof !9058

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !9429, !DIExpression(), !15413)
    #dbg_value(ptr %1, !9433, !DIExpression(), !15415)
    #dbg_value(ptr %1, !9439, !DIExpression(), !15417)
    #dbg_value(ptr %1, !9442, !DIExpression(), !15419)
    #dbg_value(ptr %1, !9446, !DIExpression(), !15421)
    #dbg_value(ptr %1, !9453, !DIExpression(), !15423)
    #dbg_value(ptr %1, !9439, !DIExpression(), !15425)
    #dbg_value(i64 %i.b, !9431, !DIExpression(), !15413)
    #dbg_value(i64 %i.b, !9435, !DIExpression(), !15415)
    #dbg_value(i64 %i.b, !9440, !DIExpression(), !15417)
    #dbg_value(i64 %i.b, !9443, !DIExpression(), !15419)
    #dbg_value(i64 %i.b, !9455, !DIExpression(), !15423)
    #dbg_value(i64 %i.b, !9440, !DIExpression(), !15425)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 92, !dbg !15534
  %i.ae = load i8, ptr %i.ad, align 4, !dbg !15534, !alias.scope !15518, !noundef !2617
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15535
  %i.ag = load i64, ptr %i.af, align 8, !dbg !15535, !alias.scope !15518, !noundef !2617
  %i.ah = or i64 %i.ag, %i.b, !dbg !15536
    #dbg_value(i64 %i.ah, !9458, !DIExpression(), !15429)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 false), !dbg !15537
  %i.aj = trunc nuw nsw i64 %i.ai to i8, !dbg !15536
    #dbg_value(!DIArgList(i8 %i.ae, i8 0, i8 %i.aj), !9436, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15430)
    #dbg_value(!DIArgList(i8 %i.ae, i8 0, i8 %i.aj), !9444, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15419)
    #dbg_value(!DIArgList(i8 %i.ae, i8 0, i8 %i.aj), !9450, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15421)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 93, !dbg !15538
  %i.al = load i8, ptr %i.ak, align 1, !dbg !15538, !alias.scope !15518, !noundef !2617
  %i.am = add i8 %i.al, %i.ae, !dbg !15534
  %i.an = sub i8 %i.am, %i.aj, !dbg !15539
  %i.ao = and i8 %i.an, 63, !dbg !15540
  %i.ap = zext nneg i8 %i.ao to i64, !dbg !15540  ; 3 uses
  %i.aq = lshr i64 %i.b, %i.ap, !dbg !15540
  %i.ar = and i64 %i.aq, 4294967295, !dbg !15541
    #dbg_value(i64 %i.aq, !9437, !DIExpression(), !15432)
    #dbg_value(i64 %i.aq, !9451, !DIExpression(), !15421)
    #dbg_value(i64 %i.aq, !9464, !DIExpression(), !15433)
  %i.as = shl i64 %i.ar, %i.ap, !dbg !15542
    #dbg_value(i64 %i.as, !9466, !DIExpression(), !15435)
    #dbg_value(i64 %i.ah, !9458, !DIExpression(), !15437)
    #dbg_value(!DIArgList(i8 %i.ae, i8 0, i8 %i.aj), !9456, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !15438)
  %i.at = shl nuw i64 1, %i.ap, !dbg !15543
    #dbg_value(i64 %i.at, !9469, !DIExpression(), !15435)
  %i.au = tail call noundef range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.as, i64 %i.at), !dbg !15544
  %i.av = add i64 %i.au, -1, !dbg !15545
    #dbg_value(i64 %i.av, !15460, !DIExpression(), !15468)
    #dbg_value(i64 %i.av, !15470, !DIExpression(), !15473)
    #dbg_value(i64 %i.av, !15475, !DIExpression(), !15479)
  br label %bb.b, !dbg !15546

bb.d:                                             ; preds = %bb.b
    #dbg_value(i64 poison, !15496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15500)
    #dbg_value(i64 poison, !15496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15500)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27, !dbg !15547
  unreachable, !dbg !15547

bb.e:                                             ; preds = %bb.b
  %i.aw = zext nneg i32 %i.ab to i64, !dbg !15548
    #dbg_value(i64 %i.aw, !15496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15500)
    #dbg_value(i64 1, !15496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15500)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15549
  store ptr %1, ptr %i.ax, align 8, !dbg !15549
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15549
  store i64 0, ptr %0, align 8, !dbg !15549
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15549
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false), !dbg !15549
  store i64 %i.aw, ptr %i.az, align 8, !dbg !15549
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15549
  store i16 1, ptr %i.ba, align 8, !dbg !15549
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15549
  store i64 %2, ptr %i.bb, align 8, !dbg !15549
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15549
  store i64 %3, ptr %i.bc, align 8, !dbg !15549
  ret void, !dbg !15550
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCs7OITKvp9Irj_4perf(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15552 {
bb.a:
    #dbg_value(i64 %0, !15596, !DIExpression(), !15598)
    #dbg_value(i64 %0, !15599, !DIExpression(), !15605)
    #dbg_value(i64 %0, !15606, !DIExpression(), !15615)
    #dbg_value(i64 1, !15610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15615)
    #dbg_value(i64 1, !15610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15615)
    #dbg_value(i64 %0, !9474, !DIExpression(), !15558)
    #dbg_value(i64 %0, !9498, !DIExpression(), !15560)
    #dbg_value(i64 %0, !9515, !DIExpression(), !15562)
    #dbg_value(i64 %0, !9534, !DIExpression(), !15564)
    #dbg_value(i1 false, !9489, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15558)
    #dbg_declare(ptr poison, !9490, !DIExpression(), !15565)
    #dbg_value(i64 1, !9491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15558)
    #dbg_value(i64 1, !9491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15558)
    #dbg_value(i64 1, !9512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15560)
    #dbg_value(i64 1, !9535, !DIExpression(), !15564)
    #dbg_value(i64 1, !9512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15560)
    #dbg_value(ptr poison, !9531, !DIExpression(), !15566)
    #dbg_value(i1 false, !9537, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15567)
    #dbg_value(i1 false, !9539, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15569)
    #dbg_value(i64 %0, !9532, !DIExpression(), !15570)
    #dbg_value(i64 %0, !9536, !DIExpression(), !15567)
  %.not.i = icmp slt i64 %0, 0
  br i1 %.not.i, label %bb.e, label %bb.b, !dbg !15618, !prof !9541

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 1, !9492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15571)
    #dbg_value(i64 %0, !9492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15571)
  %i.a = icmp eq i64 %0, 0, !dbg !15619
  br i1 %i.a, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf.exit, label %bb.c, !dbg !15619

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 1, !9542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15575)
    #dbg_value(i64 1, !9542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15579)
    #dbg_value(i64 %0, !9542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15575)
    #dbg_value(i64 %0, !9542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15579)
    #dbg_value(i64 %0, !9547, !DIExpression(), !15580)
    #dbg_value(i64 %0, !9547, !DIExpression(), !15581)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !dbg !15620, !noalias !15616
    #dbg_value(ptr poison, !9494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15584)
    #dbg_value(i64 poison, !9494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15584)
    #dbg_value(ptr poison, !9569, !DIExpression(), !15585)
    #dbg_value(ptr poison, !9565, !DIExpression(), !15586)
    #dbg_value(i64 1, !9570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15585)
    #dbg_value(i64 1, !9566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15586)
    #dbg_value(i64 %0, !9570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15585)
    #dbg_value(i64 %0, !9566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15586)
    #dbg_value(i8 0, !9567, !DIExpression(), !15586)
    #dbg_value(i64 1, !9572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15588)
    #dbg_value(i64 %0, !9572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15588)
    #dbg_value(i1 false, !9546, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15579)
  %i.b = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !dbg !15621, !noalias !15616 ; 2 uses
    #dbg_value(ptr %i.b, !9494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15584)
    #dbg_value(i64 poison, !9494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15584)
  %i.c = icmp eq ptr %i.b, null, !dbg !15622
  br i1 %i.c, label %bb.e, label %bb.d, !dbg !15623

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.b, !9495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15589)
    #dbg_value(i64 poison, !9495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15589)
  %i.d = ptrtoint ptr %i.b to i64, !dbg !15624
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf.exit, !dbg !15625

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
    #dbg_value(i64 %.sroa.4.0.ph, !15612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15617)
    #dbg_value(i64 %0, !15612, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15617)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %0) #28, !dbg !15626
  unreachable, !dbg !15626

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf.exit: ; preds = %bb.d, %bb.b
  %.sroa.9.0 = phi i64 [ %i.d, %bb.d ], [ 1, %bb.b ], !dbg !15627
  %i.e = inttoptr i64 %.sroa.9.0 to ptr, !dbg !15628
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !15629
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %0, 1, !dbg !15629
  ret { ptr, i64 } %i.g, !dbg !15629
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !15632 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !15671, !DIExpression(), !15678)
    #dbg_value(ptr %0, !15679, !DIExpression(), !15688)
    #dbg_value(ptr %0, !15689, !DIExpression(), !15696)
    #dbg_value(ptr %0, !15679, !DIExpression(), !15698)
    #dbg_value(ptr %0, !15689, !DIExpression(), !15701)
    #dbg_value(i64 %1, !15672, !DIExpression(), !15678)
    #dbg_value(i64 %1, !15683, !DIExpression(), !15688)
    #dbg_value(i64 %1, !15702, !DIExpression(), !15706)
    #dbg_value(i64 %1, !15683, !DIExpression(), !15698)
    #dbg_value(i64 %1, !15702, !DIExpression(), !15708)
    #dbg_value(i64 %2, !15673, !DIExpression(), !15678)
    #dbg_value(i64 %2, !15684, !DIExpression(), !15688)
    #dbg_value(i64 %2, !15684, !DIExpression(), !15698)
    #dbg_value(i64 %3, !15674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15678)
    #dbg_value(i64 %3, !15685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15688)
    #dbg_value(i64 %3, !15685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15698)
    #dbg_value(i64 %4, !15674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15678)
    #dbg_value(i64 %4, !15685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15688)
    #dbg_value(i64 %4, !15685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15698)
    #dbg_value(i64 %4, !15693, !DIExpression(), !15696)
    #dbg_value(i64 %4, !15693, !DIExpression(), !15701)
  %i.b = icmp eq i64 %4, 0, !dbg !15729           ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !15729, !range !3077 ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c, !dbg !15729
    #dbg_value(i64 %.sroa.05.0, !15703, !DIExpression(), !15706)
  %i.d = sub i64 %.sroa.05.0, %1, !dbg !15730
  %i.e = icmp ugt i64 %2, %i.d, !dbg !15731
  br i1 %i.e, label %bb.b, label %bb.f, !dbg !15732

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15709), !dbg !15733
    #dbg_value(ptr %0, !9257, !DIExpression(), !15639)
    #dbg_value(ptr %0, !9303, !DIExpression(), !15641)
    #dbg_value(i64 %1, !9272, !DIExpression(), !15639)
    #dbg_value(i64 %1, !9310, !DIExpression(), !15643)
    #dbg_value(i64 %2, !9273, !DIExpression(), !15639)
    #dbg_value(i64 %2, !9313, !DIExpression(), !15643)
    #dbg_value(i64 %3, !9274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15639)
    #dbg_value(i64 %4, !9274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15639)
    #dbg_declare(ptr %i.a, !9316, !DIExpression(), !15645)
    #dbg_value(i64 %4, !9346, !DIExpression(), !15647)
  br i1 %i.b, label %bb.f, label %bb.c, !dbg !15734, !prof !9058

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1, !dbg !15735              ; 2 uses
  %i.g = icmp ult i64 %i.f, %1, !dbg !15735
    #dbg_value(i1 %i.g, !9350, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15649)
  br i1 %i.g, label %bb.f, label %bb.d, !dbg !15736

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %i.f, !9275, !DIExpression(), !15650)
    #dbg_value(i64 %i.f, !9356, !DIExpression(), !15652)
  %i.h = shl nuw i64 %i.c, 1, !dbg !15737
    #dbg_value(i64 %i.h, !9359, !DIExpression(), !15652)
    #dbg_value(ptr undef, !9361, !DIExpression(DW_OP_deref), !15654)
    #dbg_value(ptr undef, !9363, !DIExpression(DW_OP_deref), !15654)
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 range(i64 0, -1) %i.h), !dbg !15738
    #dbg_value(i64 %..i.i, !9278, !DIExpression(), !15655)
    #dbg_value(i64 %..i.i, !9356, !DIExpression(), !15657)
  %i.i = icmp eq i64 %4, 1, !dbg !15739
  %i.j = icmp ult i64 %4, 1025, !dbg !15739
  %..i = select i1 %i.j, i64 4, i64 1, !dbg !15739
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i, !dbg !15739
    #dbg_value(i64 %.sroa.08.0.i, !9359, !DIExpression(), !15657)
    #dbg_value(ptr undef, !9361, !DIExpression(DW_OP_deref), !15659)
    #dbg_value(ptr undef, !9363, !DIExpression(DW_OP_deref), !15659)
  %..i49.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i), !dbg !15740 ; 3 uses
    #dbg_value(i64 %..i49.i, !9279, !DIExpression(), !15660)
    #dbg_value(i64 %..i49.i, !9308, !DIExpression(), !15641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15741, !noalias !15709
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15742 ; 2 uses
  %.val48.i = load ptr, ptr %i.k, align 8, !dbg !15742, !alias.scope !15709
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val48.i, i64 noundef %..i49.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !dbg !15742, !noalias !15709
  %i.l = load i64, ptr %i.a, align 8, !dbg !15743, !range !9367, !noalias !15709, !noundef !2617
  %i.m = trunc nuw i64 %i.l to i1, !dbg !15744
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15745 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7OITKvp9Irj_4perf.exit, !dbg !15744

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !dbg !15746, !range !9368, !noalias !15709, !noundef !2617
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15746
  %i.q = load i64, ptr %i.p, align 8, !dbg !15746, !noalias !15709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15747, !noalias !15709
  br label %bb.f, !dbg !15748

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7OITKvp9Irj_4perf.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !dbg !15749, !noalias !15709, !nonnull !2617, !noundef !2617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15747, !noalias !15709
    #dbg_value(ptr %i.r, !9280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15661)
    #dbg_value(ptr %i.r, !9307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15641)
    #dbg_value(i64 poison, !9280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15661)
    #dbg_value(i64 poison, !9307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15641)
  store ptr %i.r, ptr %i.k, align 8, !dbg !15750, !alias.scope !15709
  %i.s = icmp sgt i64 %..i49.i, -1, !dbg !15751
  tail call void @llvm.assume(i1 %i.s), !dbg !15751
  store i64 %..i49.i, ptr %0, align 8, !dbg !15752, !alias.scope !15709
    #dbg_value(i64 -1, !15710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15728)
    #dbg_value(i64 poison, !15710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15728)
  br label %bb.f, !dbg !15753

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7OITKvp9Irj_4perf.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7OITKvp9Irj_4perf.exit ], [ undef, %bb.a ], !dbg !15678
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7OITKvp9Irj_4perf.exit ], [ -1, %bb.a ], !dbg !15678
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !15754
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1, !dbg !15754
  ret { i64, i64 } %i.u, !dbg !15754
}

; Function Attrs: cold noinline nonlazybind uwtable
end_hunk_0
