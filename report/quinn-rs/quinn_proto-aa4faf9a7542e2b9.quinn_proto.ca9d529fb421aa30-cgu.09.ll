Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.09?download=true
inline.NumInlined: 672
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection11send_bufferNtB2_10SendBuffer7unacked:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB2_9Assembler10defragment(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10859 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !11251, !DIExpression(), !11257)
    #dbg_value(ptr poison, !11278, !DIExpression(), !11280)
    #dbg_value(ptr poison, !11281, !DIExpression(), !11284)
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !11285, !DIExpression(), !11290)
  %i.o = alloca [56 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !11285, !DIExpression(), !11301)
  %i.q = alloca [56 x i8], align 8                ; 10 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 14 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 8 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 12 uses
    #dbg_value(ptr poison, !11302, !DIExpression(), !11309)
    #dbg_value(ptr poison, !11334, !DIExpression(), !11346)
    #dbg_value(ptr poison, !11350, !DIExpression(), !11352)
    #dbg_value(ptr poison, !11330, !DIExpression(), !11353)
    #dbg_value(ptr poison, !11322, !DIExpression(), !11354)
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11214, !DIExpression(), !11355)
    #dbg_declare(ptr %i.w, !11216, !DIExpression(), !11356)
    #dbg_declare(ptr %i.v, !11217, !DIExpression(), !11357)
    #dbg_declare(ptr %i.u, !11223, !DIExpression(), !11358)
    #dbg_declare(ptr %i.t, !11225, !DIExpression(), !11359)
    #dbg_declare(ptr %i.s, !11226, !DIExpression(), !11360)
    #dbg_declare(ptr poison, !11361, !DIExpression(), !11370)
    #dbg_declare(ptr poison, !11381, !DIExpression(), !11388)
    #dbg_declare(ptr poison, !11389, !DIExpression(), !11396)
    #dbg_value(i64 0, !11397, !DIExpression(), !11403)
    #dbg_value(i64 56, !11252, !DIExpression(), !11405)
    #dbg_value(i64 1, !11338, !DIExpression(), !11406)
    #dbg_value(i64 1, !11407, !DIExpression(), !11412)
    #dbg_value(i64 -1, !11413, !DIExpression(), !11420)
    #dbg_declare(ptr poison, !11263, !DIExpression(), !11421)
    #dbg_value(i64 56, !11252, !DIExpression(), !11422)
    #dbg_value(ptr %0, !11423, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11426)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11650 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11650 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !11650, !noundef !1053 ; 3 uses
    #dbg_value(i64 %i.z, !11374, !DIExpression(), !11428)
    #dbg_value(i64 %i.z, !11379, !DIExpression(), !11429)
    #dbg_value(i64 %i.z, !11365, !DIExpression(), !11430)
    #dbg_value(i64 %i.z, !11385, !DIExpression(), !11431)
    #dbg_value(i64 %i.z, !11390, !DIExpression(), !11432)
    #dbg_value(i64 %i.z, !11399, !DIExpression(), !11403)
  %i.aa = icmp ult i64 %i.z, 164703072086692426, !dbg !11651
  tail call void @llvm.assume(i1 %i.aa), !dbg !11652
    #dbg_value(i64 8, !11391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11432)
    #dbg_value(i64 8, !11400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11403)
    #dbg_value(i64 56, !11391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11432)
    #dbg_value(i64 56, !11400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11653
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !11653
  %i.ab = load i64, ptr %i.m, align 8, !dbg !11653, !range !1843, !noundef !1053
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !11654
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !11432
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !11432, !range !1844, !noundef !1053 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !11432 ; 2 uses
  br i1 %i.ac, label %bb.b, label %bb.c, !dbg !11654, !prof !1845

bb.b:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %i.af, align 8, !dbg !11655
    #dbg_value(i64 %i.ae, !11393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11433)
    #dbg_value(i64 %i.ag, !11393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11433)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #30, !dbg !11656
  unreachable, !dbg !11656

bb.c:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %i.af, align 8, !dbg !11657, !nonnull !1053, !noundef !1053
    #dbg_value(i64 %i.ae, !11392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11434)
    #dbg_value(ptr %i.ah, !11392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11434)
    #dbg_value(ptr poison, !11398, !DIExpression(), !11435)
    #dbg_value(ptr poison, !11251, !DIExpression(), !11436)
    #dbg_value(i64 %i.ae, !11437, !DIExpression(), !11443)
  %i.ai = icmp samesign ule i64 %i.z, %i.ae, !dbg !11658
    #dbg_value(i1 true, !11444, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11447)
  tail call void @llvm.assume(i1 %i.ai), !dbg !11659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11660
    #dbg_value(i64 %i.ae, !11215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11448)
    #dbg_value(i64 %i.ae, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11453)
    #dbg_value(ptr %i.ah, !11215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11448)
    #dbg_value(ptr %i.ah, !11449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11453)
    #dbg_value(i64 0, !11215, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11448)
    #dbg_value(i64 0, !11449, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !11661
    #dbg_value(ptr %0, !11450, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11454)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !11662
  store i64 %i.ae, ptr %i.x, align 8, !dbg !11663
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11663
  store ptr %i.ah, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !11663
  store i64 0, ptr %i.y, align 8, !dbg !11663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !11664
  call void @_RNvMs9_NtNtCsexYYUdYSQU6_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE15into_sorted_vecB1h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w), !dbg !11665
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11666 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !dbg !11666
    #dbg_value(i64 0, !11218, !DIExpression(), !11455)
    #dbg_value(i64 0, !11219, !DIExpression(), !11456)
    #dbg_value(ptr %i.v, !11457, !DIExpression(), !11465)
    #dbg_value(ptr %i.v, !11466, !DIExpression(), !11470)
    #dbg_value(ptr %i.v, !11471, !DIExpression(), !11477)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !11667
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !11667, !nonnull !1053, !noundef !1053 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11668
  %i.an = load i64, ptr %i.am, align 8, !dbg !11668, !noundef !1053 ; 5 uses
    #dbg_value(i64 %i.an, !11481, !DIExpression(), !11491)
    #dbg_value(i64 %i.an, !11494, !DIExpression(), !11498)
    #dbg_value(ptr %i.al, !11492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11499)
    #dbg_value(ptr %i.al, !11485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11500)
    #dbg_value(i64 %i.an, !11492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11499)
    #dbg_value(i64 %i.an, !11485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11500)
    #dbg_value(ptr %i.al, !11486, !DIExpression(), !11501)
    #dbg_value(ptr %i.al, !11495, !DIExpression(), !11498)
    #dbg_value(ptr %i.al, !11220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11502)
    #dbg_value(!DIArgList(ptr %i.al, i64 %i.an), !11220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11502)
    #dbg_value(ptr undef, !11322, !DIExpression(), !11354)
    #dbg_value(ptr undef, !11330, !DIExpression(), !11353)
    #dbg_value(ptr undef, !11350, !DIExpression(), !11352)
    #dbg_value(ptr undef, !11334, !DIExpression(), !11346)
    #dbg_value(!DIArgList(ptr %i.al, i64 %i.an), !11332, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11505)
    #dbg_value(ptr undef, !11302, !DIExpression(), !11309)
    #dbg_value(ptr poison, !11303, !DIExpression(), !11506)
  %i.ao = icmp eq i64 %i.an, 0, !dbg !11669
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.preheader, !dbg !11670

.lr.ph.preheader:                                 ; preds = %bb.c
  %.idx = mul nuw nsw i64 %i.an, 56, !dbg !11671
    #dbg_value(!DIArgList(ptr %i.al, i64 %.idx), !11332, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11505)
    #dbg_value(!DIArgList(ptr %i.al, i64 %.idx), !11220, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11502)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx, !dbg !11671
    #dbg_value(ptr %i.ap, !11220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11502)
    #dbg_value(ptr %i.ap, !11332, !DIExpression(), !11505)
  br label %.lr.ph, !dbg !11672

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit
  %.sroa.0.0171 = phi i64 [ %spec.select, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.02.0170 = phi i64 [ %i.cd, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.474.0169 = phi ptr [ %i.aq, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit ], [ %i.ap, %.lr.ph.preheader ] ; 12 uses
    #dbg_value(i64 %.sroa.0.0171, !11218, !DIExpression(), !11455)
    #dbg_value(i64 %.sroa.02.0170, !11219, !DIExpression(), !11456)
    #dbg_value(ptr %.sroa.474.0169, !11220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11502)
    #dbg_value(ptr undef, !11342, !DIExpression(), !11514)
    #dbg_value(ptr %.sroa.474.0169, !11409, !DIExpression(), !11412)
    #dbg_value(ptr %.sroa.474.0169, !11417, !DIExpression(), !11420)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -56, !dbg !11673 ; 5 uses
    #dbg_value(ptr %i.aq, !11409, !DIExpression(), !11412)
    #dbg_value(ptr %i.aq, !11417, !DIExpression(), !11420)
    #dbg_value(ptr %i.aq, !11220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11502)
    #dbg_value(ptr %i.aq, !11221, !DIExpression(), !11515)
  call void @llvm.experimental.noalias.scope.decl(metadata !11516), !dbg !11674
    #dbg_value(ptr %i.aq, !11510, !DIExpression(), !10921)
    #dbg_value(i64 %.sroa.02.0170, !11511, !DIExpression(), !10921)
    #dbg_value(i64 %.sroa.02.0170, !11517, !DIExpression(), !10924)
  %i.ar = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -24, !dbg !11675 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !dbg !11675, !alias.scope !11516, !noundef !1053 ; 2 uses
    #dbg_value(i64 %i.as, !11518, !DIExpression(), !10924)
  %i.at = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0170, i64 %i.as), !dbg !11676 ; 3 uses
    #dbg_value(i64 %i.at, !11512, !DIExpression(), !10925)
    #dbg_value(ptr undef, !3135, !DIExpression(DW_OP_deref), !10927)
    #dbg_value(ptr undef, !3136, !DIExpression(DW_OP_deref), !10927)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0170, i64 %i.as), !dbg !11677 ; 4 uses
  store i64 %..i.i, ptr %i.ar, align 8, !dbg !11678, !alias.scope !11516
    #dbg_value(ptr %i.aq, !11520, !DIExpression(), !10930)
  %i.au = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -40, !dbg !11679 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !dbg !11679, !alias.scope !11516, !noundef !1053 ; 3 uses
  %.not.i = icmp ult i64 %i.at, %i.av, !dbg !11672
  br i1 %.not.i, label %_RNvXs3_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i, label %bb.d, !dbg !11672

_RNvXs3_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i: ; preds = %.lr.ph
    #dbg_value(i64 %i.at, !2949, !DIExpression(), !10932)
    #dbg_value(i64 %i.at, !2959, !DIExpression(), !10934)
    #dbg_value(i64 %i.at, !2963, !DIExpression(), !10936)
    #dbg_value(ptr %i.aq, !2953, !DIExpression(), !10932)
    #dbg_value(ptr %i.aq, !2961, !DIExpression(), !10934)
  %i.aw = sub nuw i64 %i.av, %i.at, !dbg !11680   ; 5 uses
  store i64 %i.aw, ptr %i.au, align 8, !dbg !11680, !alias.scope !11522
  %i.ax = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -48, !dbg !11681 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !11681, !alias.scope !11522, !noundef !1053
    #dbg_value(ptr %i.ay, !2966, !DIExpression(), !10936)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at, !dbg !11682
  store ptr %i.az, ptr %i.ax, align 8, !dbg !11683, !alias.scope !11522
  %i.ba = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -8, !dbg !11684 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !dbg !11684, !range !1633, !alias.scope !11516, !noundef !1053
  %i.bc = trunc nuw i8 %i.bb to i1, !dbg !11684
  br i1 %i.bc, label %.sink.split.i, label %bb.e, !dbg !11684

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !11523), !dbg !11685
    #dbg_value(ptr %i.aq, !2974, !DIExpression(), !10942)
  call void @llvm.experimental.noalias.scope.decl(metadata !11524), !dbg !11686
    #dbg_value(ptr %i.aq, !2978, !DIExpression(), !10946)
  %i.bd = load ptr, ptr %i.aq, align 8, !dbg !11687, !alias.scope !11525, !nonnull !1053, !align !2981, !noundef !1053
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !11687
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !11687, !noalias !11525, !nonnull !1053, !noundef !1053
  %i.bg = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -32, !dbg !11688
  %i.bh = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -48, !dbg !11689
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !11689, !alias.scope !11525, !noundef !1053
  invoke void %i.bf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bi, i64 noundef %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECshovLROGBtMy_11quinn_proto.exit.i unwind label %.thread138, !dbg !11687, !inline_history !444

bb.e:                                             ; preds = %_RNvXs3_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i
    #dbg_value(ptr %i.aq, !11520, !DIExpression(), !10948)
  %i.bj = mul i64 %i.aw, 6, !dbg !11690
  %i.bk = udiv i64 %i.bj, 5, !dbg !11690
  %i.bl = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -16, !dbg !11691
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !11691, !alias.scope !11516, !noundef !1053
  %i.bn = icmp uge i64 %i.bk, %i.bm, !dbg !11690  ; 2 uses
  %i.bo = zext i1 %i.bn to i8, !dbg !11690
  store i8 %i.bo, ptr %i.ba, align 8, !dbg !11692, !alias.scope !11516
  br i1 %i.bn, label %.sink.split.i, label %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit, !dbg !11693

.sink.split.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECshovLROGBtMy_11quinn_proto.exit.i, %bb.e, %_RNvXs3_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i
  %.pre = phi i64 [ %.pre.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECshovLROGBtMy_11quinn_proto.exit.i ], [ %..i.i, %_RNvXs3_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i ], [ %..i.i, %bb.e ], !dbg !11694
  %.sink.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECshovLROGBtMy_11quinn_proto.exit.i ], [ %i.aw, %_RNvXs3_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i ], [ %i.aw, %bb.e ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -16, !dbg !11695
  store i64 %.sink.i, ptr %i.bp, align 8, !dbg !11695, !alias.scope !11516
  br label %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit, !dbg !11696

.thread138:                                       ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -48
  store ptr @5, ptr %i.aq, align 8, !dbg !11685, !alias.scope !11516
  store ptr inttoptr (i64 1 to ptr), ptr %i.br, align 8, !dbg !11685, !alias.scope !11516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !dbg !11685, !alias.scope !11516
  br label %bb.an, !dbg !11697

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.d
  store <2 x ptr> <ptr @5, ptr inttoptr (i64 1 to ptr)>, ptr %i.aq, align 8, !dbg !11685, !alias.scope !11516
  %i.bs = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -8, !dbg !11698
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !dbg !11685, !alias.scope !11516
  store i8 1, ptr %i.bs, align 8, !dbg !11698, !alias.scope !11516
  %.pre.pre = load i64, ptr %i.ar, align 8, !dbg !11694
  br label %.sink.split.i, !dbg !11696

._crit_edge:                                      ; preds = %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit, %bb.c
  %i.bt = phi i64 [ 0, %bb.c ], [ %i.cf, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit ], !dbg !11699
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %spec.select, %_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit ], !dbg !11700 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !11701
  store i64 %i.bt, ptr %i.bu, align 8, !dbg !11701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !11702
  call void @llvm.experimental.noalias.scope.decl(metadata !11526), !dbg !11703
    #dbg_value(i64 %.sroa.0.0.lcssa, !3216, !DIExpression(), !10952)
    #dbg_value(i64 %.sroa.0.0.lcssa, !3221, !DIExpression(), !10954)
    #dbg_value(i64 %.sroa.0.0.lcssa, !3226, !DIExpression(), !10956)
    #dbg_value(i64 %.sroa.0.0.lcssa, !3229, !DIExpression(), !10958)
    #dbg_value(i64 %.sroa.0.0.lcssa, !3232, !DIExpression(), !10960)
    #dbg_value(i64 %.sroa.0.0.lcssa, !3238, !DIExpression(), !10962)
    #dbg_declare(ptr poison, !3227, !DIExpression(), !10963)
    #dbg_declare(ptr poison, !3230, !DIExpression(), !10964)
    #dbg_declare(ptr poison, !3233, !DIExpression(), !10965)
    #dbg_value(i64 0, !3240, !DIExpression(), !10962)
    #dbg_value(i64 1, !3234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10960)
    #dbg_value(i64 1, !3241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10962)
    #dbg_value(i64 1, !3234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10960)
    #dbg_value(i64 1, !3241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !11704, !noalias !11526
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %.sroa.0.0.lcssa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread142, !dbg !11704

.noexc:                                           ; preds = %._crit_edge
  %i.bv = load i64, ptr %i.l, align 8, !dbg !11704, !range !1843, !noalias !11526, !noundef !1053
  %i.bw = trunc nuw i64 %i.bv to i1, !dbg !11705
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !11706
  %i.by = load i64, ptr %i.bx, align 8, !dbg !11706, !range !1844, !noalias !11526, !noundef !1053 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !11706 ; 2 uses
  br i1 %i.bw, label %bb.f, label %bb.g, !dbg !11705, !prof !1845

bb.f:                                             ; preds = %.noexc
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !11707, !noalias !11526
    #dbg_value(i64 %i.by, !3236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10966)
    #dbg_value(i64 %i.ca, !3236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10966)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.by, i64 %i.ca) #30
          to label %.noexc81 unwind label %.thread142, !dbg !11708

.noexc81:                                         ; preds = %bb.f
  unreachable, !dbg !11708

.thread142:                                       ; preds = %bb.f, %._crit_edge
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an, !dbg !11697

_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment.exit: ; preds = %.sink.split.i, %bb.e
  %i.cb = phi i64 [ %.pre, %.sink.split.i ], [ %..i.i, %bb.e ], !dbg !11694
  %i.cc = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.aw, %bb.e ], !dbg !11709 ; 3 uses
    #dbg_value(ptr %i.aq, !11285, !DIExpression(), !11528)
    #dbg_value(i64 %i.cc, !11222, !DIExpression(), !11529)
  %i.cd = add i64 %i.cb, %i.cc, !dbg !11710
    #dbg_value(i64 %i.cd, !11219, !DIExpression(), !11456)
  %i.ce = load i64, ptr %i.aj, align 8, !dbg !11711, !noundef !1053
  %i.cf = add i64 %i.ce, %i.cc, !dbg !11711       ; 2 uses
  store i64 %i.cf, ptr %i.aj, align 8, !dbg !11711
  %i.cg = getelementptr inbounds i8, ptr %.sroa.474.0169, i64 -8, !dbg !11712
  %i.ch = load i8, ptr %i.cg, align 8, !dbg !11712, !range !1633, !noundef !1053
  %i.ci = trunc nuw i8 %i.ch to i1, !dbg !11712
  %i.cj = select i1 %i.ci, i64 0, i64 %i.cc, !dbg !11712
  %spec.select = add i64 %i.cj, %.sroa.0.0171, !dbg !11712 ; 2 uses
    #dbg_value(ptr %i.aq, !11220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11502)
    #dbg_value(i64 %spec.select, !11218, !DIExpression(), !11455)
    #dbg_value(ptr undef, !11322, !DIExpression(), !11354)
    #dbg_value(ptr undef, !11330, !DIExpression(), !11353)
    #dbg_value(ptr undef, !11350, !DIExpression(), !11352)
    #dbg_value(ptr undef, !11334, !DIExpression(), !11346)
    #dbg_value(ptr %i.aq, !11332, !DIExpression(), !11505)
    #dbg_value(ptr undef, !11302, !DIExpression(), !11309)
    #dbg_value(ptr poison, !11303, !DIExpression(), !11506)
  %i.ck = icmp eq ptr %i.al, %i.aq, !dbg !11669
  br i1 %i.ck, label %._crit_edge, label %.lr.ph, !dbg !11670

bb.g:                                             ; preds = %.noexc
  %i.cl = load ptr, ptr %i.bz, align 8, !dbg !11713, !noalias !11526, !nonnull !1053, !noundef !1053
    #dbg_value(i64 %i.by, !3235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10967)
    #dbg_value(ptr %i.cl, !3235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10967)
    #dbg_value(ptr poison, !3239, !DIExpression(), !10968)
  %i.cm = icmp ule i64 %.sroa.0.0.lcssa, %i.by, !dbg !11714
    #dbg_value(i1 true, !3243, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10970)
  call void @llvm.assume(i1 %i.cm), !dbg !11715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11716, !noalias !11526
    #dbg_value(i64 %i.by, !3245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10972)
    #dbg_value(i64 %i.by, !3249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10973)
    #dbg_value(ptr %i.cl, !3245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10972)
    #dbg_value(ptr %i.cl, !3249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10973)
    #dbg_value(i64 0, !3245, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10972)
    #dbg_value(i64 0, !3249, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10973)
    #dbg_value(i64 7, !3263, !DIExpression(), !10976)
    #dbg_value(ptr null, !3271, !DIExpression(), !10979)
    #dbg_value(ptr null, !3288, !DIExpression(), !10981)
    #dbg_value(ptr %i.cl, !3250, !DIExpression(), !10982)
    #dbg_value(i64 0, !3251, !DIExpression(), !10983)
    #dbg_value(i64 %i.by, !3252, !DIExpression(), !10984)
    #dbg_value(i64 %i.by, !3268, !DIExpression(), !10985)
  %i.cn = lshr i64 %i.by, 10, !dbg !11717
    #dbg_value(i64 %i.cn, !3293, !DIExpression(), !10987)
  %i.co = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 false), !dbg !11718
  %i.cp = sub nuw nsw i64 64, %i.co, !dbg !11719
    #dbg_value(i64 %i.cp, !3269, !DIExpression(), !10988)
    #dbg_value(i64 %i.cp, !3264, !DIExpression(), !10976)
    #dbg_value(ptr undef, !2789, !DIExpression(DW_OP_deref), !10990)
    #dbg_value(ptr undef, !2791, !DIExpression(DW_OP_deref), !10990)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 7), !dbg !11720
    #dbg_value(i64 %..i.i.i, !3253, !DIExpression(), !10991)
  %i.cq = shl nuw nsw i64 %..i.i.i, 2, !dbg !11721
    #dbg_value(i64 %i.cq, !3254, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10992)
    #dbg_value(i64 %i.cq, !3278, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10993)
    #dbg_value(i64 %i.cq, !3274, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10979)
    #dbg_value(i64 %i.cq, !3291, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10981)
  %i.cr = getelementptr i8, ptr null, i64 %i.cq, !dbg !11722
  %i.cs = getelementptr i8, ptr %i.cr, i64 1, !dbg !11722
  store ptr %i.cl, ptr %i.u, align 8, !dbg !11723, !alias.scope !11530
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !11723 ; 7 uses
  store i64 0, ptr %i.ct, align 8, !dbg !11723, !alias.scope !11530
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !11723 ; 3 uses
  store i64 %i.by, ptr %i.cu, align 8, !dbg !11723, !alias.scope !11530
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !11723
  store ptr %i.cs, ptr %i.cv, align 8, !dbg !11723, !alias.scope !11530
    #dbg_value(i64 0, !11224, !DIExpression(), !11531)
    #dbg_value(i64 0, !11294, !DIExpression(), !11532)
    #dbg_value(i64 0, !11294, !DIExpression(), !11533)
  %.sroa.070.0.copyload = load i64, ptr %i.v, align 8, !dbg !11724 ; 2 uses
    #dbg_value(i64 %.sroa.070.0.copyload, !11261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11534)
    #dbg_value(ptr %i.al, !11261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11534)
    #dbg_value(i64 %i.an, !11261, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11534)
    #dbg_value(i64 %.sroa.070.0.copyload, !11262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11535)
    #dbg_value(ptr %i.al, !11262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11535)
    #dbg_value(i64 %i.an, !11262, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11535)
    #dbg_value(ptr %i.al, !11264, !DIExpression(), !11536)
    #dbg_value(ptr %i.al, !11265, !DIExpression(), !11537)
    #dbg_value(ptr %i.al, !11495, !DIExpression(), !11539)
    #dbg_value(ptr undef, !11281, !DIExpression(), !11284)
    #dbg_value(i64 %i.an, !11494, !DIExpression(), !11539)
  %i.cw = icmp ult i64 %i.an, 164703072086692426, !dbg !11725
  call void @llvm.assume(i1 %i.cw), !dbg !11726
  %.idx220 = mul nuw nsw i64 %i.an, 56, !dbg !11727
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx220, !dbg !11727 ; 2 uses
    #dbg_value(ptr %i.cx, !11266, !DIExpression(), !11540)
    #dbg_value(ptr undef, !11278, !DIExpression(), !11280)
    #dbg_value(ptr undef, !11251, !DIExpression(), !11257)
    #dbg_value(i64 %.sroa.070.0.copyload, !11437, !DIExpression(), !11543)
  %i.cy = icmp sgt i64 %.sroa.070.0.copyload, -1, !dbg !11728
  call void @llvm.assume(i1 %i.cy), !dbg !11728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !11724
  store ptr %i.al, ptr %i.t, align 8, !dbg !11724
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !11724 ; 3 uses
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !11724
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !11724
  store i64 %.sroa.070.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11724
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !11724 ; 4 uses
  store ptr %i.cx, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !11724
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !11359
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !11359
  %i.cz = icmp eq i64 %i.an, 0, !dbg !11729
  br i1 %i.cz, label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.thread, label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph.lr.ph, !dbg !11730

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph.lr.ph: ; preds = %bb.g
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 49
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.8121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  br label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph, !dbg !11730

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph: ; preds = %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit
  %i.do = phi ptr [ %i.cx, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph.lr.ph ], [ %i.hg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit ]
  %.sroa.07.0.ph175 = phi i64 [ 0, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph.lr.ph ], [ %.sroa.07.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit ] ; 5 uses
    #dbg_value(i64 %.sroa.07.0.ph175, !11294, !DIExpression(), !11532)
  br label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit, !dbg !11730

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit110: ; preds = %.body103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body103.thread
  %.pn = phi { ptr, i32 } [ %eh.lpad-body104148, %.body103.thread ], [ %lpad.loopexit.split-lp266, %.body103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.t, !11570, !DIExpression(), !11007)
    #dbg_value(ptr %i.t, !11576, !DIExpression(), !11010)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEEEB23_.exit unwind label %bb.am, !dbg !11731

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit: ; preds = %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB12_.exit.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferEBH_.exit108
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!11483 = !DISubroutineType(types: !11482)
!11484 = !DISubprogram(name: "new<quinn_proto::connection::assembler::Buffer>", linkageName: "_RNvMsa_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7IterMutNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE3newBX_", scope: !10851, file: !2186, line: 219, type: !11483, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2025)
!11485 = !DILocalVariable(name: "slice", arg: 1, scope: !10912, file: !2186, line: 219, type: !10903)
!11486 = !DILocalVariable(name: "ptr", scope: !10911, file: !2186, line: 221, type: !495, align: 64)
!11487 = !DILocalVariable(name: "end_or_len", scope: !10910, file: !2186, line: 239, type: !3182, align: 64)
!11488 = !{!11485, !11481, !11486, !11487}
!11489 = !DILocation(line: 112, column: 30, scope: !10854)
!11490 = !DILocation(line: 1060, column: 9, scope: !10914, inlinedAt: !11489)
!11491 = !DILocation(line: 0, scope: !10913, inlinedAt: !11490)
!11492 = !DILocalVariable(name: "self", arg: 1, scope: !10914, file: !1441, line: 1059, type: !10903)
!11493 = !{!11492}
!11494 = !DILocalVariable(name: "count", arg: 2, scope: !10915, file: !2188, line: 937, type: !1044)
!11495 = !DILocalVariable(name: "self", arg: 1, scope: !10915, file: !2188, line: 937, type: !3182)
!11496 = !{!11495, !11494}
!11497 = !DILocation(line: 240, column: 82, scope: !10911, inlinedAt: !11490)
!11498 = !DILocation(line: 0, scope: !10915, inlinedAt: !11497)
!11499 = !DILocation(line: 0, scope: !10914, inlinedAt: !11489)
!11500 = !DILocation(line: 0, scope: !10912, inlinedAt: !11490)
!11501 = !DILocation(line: 0, scope: !10911, inlinedAt: !11490)
!11502 = !DILocation(line: 0, scope: !10853)
!11505 = !DILocation(line: 0, scope: !10884, inlinedAt: !11307)
!11506 = !DILocation(line: 1662, column: 18, scope: !10876, inlinedAt: !11308)
!11507 = !{null, !3178, !924}
!11508 = !DISubroutineType(types: !11507)
!11509 = !DISubprogram(name: "try_mark_defragment", linkageName: "_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection9assemblerNtB5_6Buffer19try_mark_defragment", scope: !230, file: !3160, line: 285, type: !11508, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1053)
!11510 = !DILocalVariable(name: "self", arg: 1, scope: !10916, file: !3160, line: 285, type: !3178)
!11511 = !DILocalVariable(name: "offset", arg: 2, scope: !10916, file: !3160, line: 285, type: !924)
!11512 = !DILocalVariable(name: "duplicate", scope: !10917, file: !3160, line: 286, type: !1044, align: 64)
!11513 = !{!11510, !11511, !11512}
!11514 = !DILocation(line: 0, scope: !10885, inlinedAt: !11345)
!11515 = !DILocation(line: 0, scope: !10849)
!11516 = !{!10920}
!11517 = !DILocalVariable(name: "self", arg: 1, scope: !10922, file: !1611, line: 2569, type: !924)
!11518 = !DILocalVariable(name: "rhs", arg: 2, scope: !10922, file: !1611, line: 2569, type: !924)
!11519 = !{!11517, !11518}
!11520 = !DILocalVariable(name: "self", arg: 1, scope: !10928, file: !2916, line: 299, type: !2969)
!11521 = !{!11520}
!11522 = !{!10938, !10920}
!11523 = !{!10940}
!11524 = !{!10944}
!11525 = !{!10944, !10940, !10920}
!11526 = !{!10950}
!11527 = !DILocation(line: 114, column: 36, scope: !10849)
!11528 = !DILocation(line: 299, column: 22, scope: !10872, inlinedAt: !11527)
!11529 = !DILocation(line: 0, scope: !10848)
!11530 = !{!10995, !10950}
!11531 = !DILocation(line: 0, scope: !10846)
!11532 = !DILocation(line: 0, scope: !10875, inlinedAt: !11299)
!11533 = !DILocation(line: 0, scope: !10875, inlinedAt: !11288)
!11534 = !DILocation(line: 0, scope: !10864, inlinedAt: !11254)
!11535 = !DILocation(line: 0, scope: !10865, inlinedAt: !11254)
!11536 = !DILocation(line: 0, scope: !10867, inlinedAt: !11254)
!11537 = !DILocation(line: 0, scope: !10868, inlinedAt: !11254)
!11538 = !DILocation(line: 4033, column: 23, scope: !10868, inlinedAt: !11254)
!11539 = !DILocation(line: 0, scope: !10915, inlinedAt: !11538)
!11540 = !DILocation(line: 0, scope: !10869, inlinedAt: !11254)
!11541 = !DILexicalBlockFile(scope: !10860, file: !1784, discriminator: 2)
!11542 = !DILocation(line: 616, column: 58, scope: !11541, inlinedAt: !11256)
!11543 = !DILocation(line: 0, scope: !10900, inlinedAt: !11542)
!11544 = !DILocalVariable(name: "self", arg: 1, scope: !10996, file: !3145, line: 1662, type: !3188)
!11545 = !DILocalVariable(name: "other", arg: 2, scope: !10996, file: !3145, line: 1662, type: !3188)
!11546 = !{!11544, !11545}
!11547 = !DIFile(filename: "library/alloc/src/vec/into_iter.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "d05a4ea767d7a4acc01b554c241fa39f")
!11548 = !DINamespace(name: "{impl#7}", scope: !11231)
!11549 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::into_iter::IntoIter<quinn_proto::connection::assembler::Buffer, alloc::alloc::Global>", baseType: !10843, size: 64, align: 64, dwarfAddressSpace: 0)
!11550 = !{!11000, !11549}
!11551 = !DISubroutineType(types: !11550)
!11552 = !{!10999}
!11553 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !10999, file: !896, baseType: !10998, size: 448, align: 64, extraData: i8 2)
!11554 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !10999, file: !896, baseType: !10997, size: 448, align: 64)
!11555 = !{!11553, !11554}
!11556 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !10997, file: !896, baseType: !230, size: 448, align: 64, flags: DIFlagPublic)
!11557 = !{!11556}
!11558 = !DIDerivedType(tag: DW_TAG_member, scope: !11000, file: !896, baseType: !899, size: 8, align: 8, offset: 384, flags: DIFlagArtificial)
!11559 = !DILocalVariable(name: "self", arg: 1, scope: !11001, file: !11547, line: 426, type: !11549)
!11560 = !{!11559}
!11561 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::rev::Rev<alloc::vec::into_iter::IntoIter<quinn_proto::connection::assembler::Buffer, alloc::alloc::Global>>", baseType: !10844, size: 64, align: 64, dwarfAddressSpace: 0)
!11562 = !{!11000, !11561}
!11563 = !DISubroutineType(types: !11562)
!11564 = !DILocalVariable(name: "self", arg: 1, scope: !11002, file: !11310, line: 52, type: !11561)
!11565 = !{!11564}
!11566 = !DITemplateTypeParameter(name: "I", type: !10843)
!11567 = !{!11566}
!11568 = !DILexicalBlockFile(scope: !10845, file: !3160, discriminator: 2)
!11569 = !DILocation(line: 124, column: 22, scope: !11568)
!11570 = !DILocalVariable(arg: 1, scope: !11005, file: !1703, line: 848, type: !11561)
!11571 = !{null, !11561}
!11572 = !DISubroutineType(types: !11571)
!11573 = !{!11570}
!11574 = !DITemplateTypeParameter(name: "T", type: !10844)
!11575 = !{!11574}
!11576 = !DILocalVariable(arg: 1, scope: !11008, file: !1703, line: 848, type: !11549)
!11577 = !{null, !11549}
!11578 = !DISubroutineType(types: !11577)
!11579 = !{!11576}
!11580 = !{!11012}
!11581 = !DILocalVariable(name: "self", arg: 1, scope: !11013, file: !1791, line: 917, type: !3179)
!11582 = !{!3179, !3179, !1044, !1384}
!11583 = !DISubroutineType(types: !11582)
!11584 = !DILocalVariable(name: "count", scope: !11013, file: !1791, line: 917, type: !1044, align: 64)
!11585 = !{!11581, !11584}
!11586 = !DILocalVariable(name: "src", arg: 1, scope: !11016, file: !1703, line: 1717, type: !3179)
!11587 = !{!230, !3179, !1384}
!11588 = !DISubroutineType(types: !11587)
!11589 = !{!11586}
!11590 = !DILocalVariable(name: "self", arg: 1, scope: !11025, file: !1679, line: 201, type: !1680)
!11591 = !{!1317, !1680}
!11592 = !DISubroutineType(types: !11591)
!11593 = !DISubprogram(name: "is_empty", linkageName: "_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut8is_empty", scope: !43, file: !1679, line: 201, type: !11592, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1053)
!11594 = !{!11590}
!11595 = !DILocation(line: 142, column: 20, scope: !10846)
!11596 = !DILocation(line: 201, column: 21, scope: !11025, inlinedAt: !11595)
!11597 = !{!11029}
!11598 = !{!11051, !11029}
!11599 = !{!11062}
!11600 = !{!11062, !11051, !11029}
!11601 = !{!11076}
!11602 = !{!11080}
!11603 = !{!11080, !11076}
!11604 = !{!11080, !11076, !11051, !11029}
!11605 = !DILocation(line: 0, scope: !10873, inlinedAt: !11288)
!11606 = !DILocalVariable(name: "self", arg: 1, scope: !11083, file: !1679, line: 186, type: !1680)
!11607 = !{!11606}
!11608 = !DILocation(line: 133, column: 49, scope: !10842)
!11609 = !DILocation(line: 186, column: 16, scope: !11083, inlinedAt: !11608)
!11610 = !DILocalVariable(name: "self", arg: 1, scope: !11084, file: !2916, line: 314, type: !2969)
!11611 = !{!11610}
!11612 = !DILocation(line: 127, column: 33, scope: !10842)
!11613 = !DILocation(line: 314, column: 27, scope: !11084, inlinedAt: !11612)
!11614 = !DILocation(line: 134, column: 28, scope: !10842)
!11615 = !DILocation(line: 201, column: 21, scope: !11025, inlinedAt: !11614)
!11616 = !DILocalVariable(name: "self", arg: 1, scope: !11088, file: !2916, line: 728, type: !2969)
!11617 = !{!11616}
!11618 = !DILocation(line: 140, column: 38, scope: !10842)
!11619 = !DILocation(line: 728, column: 14, scope: !11088, inlinedAt: !11618)
!11620 = !DILocalVariable(name: "self", arg: 1, scope: !11089, file: !2916, line: 663, type: !2969)
!11621 = !{!11620}
!11622 = !DILocation(line: 729, column: 14, scope: !11088, inlinedAt: !11618)
!11623 = !DILocation(line: 663, column: 17, scope: !11089, inlinedAt: !11622)
!11624 = !{!11091}
!11625 = !{!11091, !11114}
!11626 = !{!11116}
!11627 = !{!11138, !11116}
!11628 = !{!11149}
!11629 = !{!11149, !11138, !11116}
!11630 = !{!11163}
!11631 = !{!11167}
!11632 = !{!11167, !11163}
!11633 = !{!11167, !11163, !11138, !11116}
!11634 = !DILocation(line: 0, scope: !10874, inlinedAt: !11299)
!11635 = !{!11171}
!11636 = !{!11175}
!11637 = !{!11179}
!11638 = !{!11179, !11175, !11171}
!11639 = !{!11183}
!11640 = !{!11185}
!11641 = !{!11189}
!11642 = !{!11193}
!11643 = !{!11193, !11189, !11185}
!11644 = !DILocation(line: 52, column: 13, scope: !11002, inlinedAt: !11569)
!11645 = !{!11199}
!11646 = !{!11202}
!11647 = !{!11206}
!11648 = !{!11210}
!11649 = !{!11210, !11206, !11202}
!11650 = !DILocation(line: 3100, column: 19, scope: !10871, inlinedAt: !11427)
!11651 = !DILocation(line: 3105, column: 37, scope: !10871, inlinedAt: !11427)
!11652 = !DILocation(line: 3105, column: 18, scope: !10871, inlinedAt: !11427)
!11653 = !DILocation(line: 435, column: 15, scope: !10895, inlinedAt: !11395)
!11654 = !DILocation(line: 435, column: 9, scope: !10895, inlinedAt: !11395)
!11655 = !DILocation(line: 443, column: 17, scope: !10895, inlinedAt: !11395)
!11656 = !DILocation(line: 443, column: 25, scope: !10893, inlinedAt: !11395)
!11657 = !DILocation(line: 436, column: 16, scope: !10895, inlinedAt: !11395)
!11658 = !DILocation(line: 764, column: 9, scope: !10896, inlinedAt: !11402)
!11659 = !DILocation(line: 210, column: 9, scope: !10901, inlinedAt: !11446)
!11660 = !DILocation(line: 444, column: 9, scope: !10895, inlinedAt: !11395)
!11661 = !DILocation(line: 107, column: 13, scope: !10858)
!11662 = !DILocation(line: 975, column: 22, scope: !10902, inlinedAt: !11452)
!11663 = !DILocation(line: 976, column: 49, scope: !10902, inlinedAt: !11452)
!11664 = !DILocation(line: 108, column: 13, scope: !10857)
!11665 = !DILocation(line: 108, column: 31, scope: !10857)
!11666 = !DILocation(line: 109, column: 9, scope: !10856)
!11667 = !DILocation(line: 611, column: 9, scope: !10907, inlinedAt: !11480)
!11668 = !DILocation(line: 1903, column: 92, scope: !10905, inlinedAt: !11469)
!11669 = !DILocation(line: 1663, column: 9, scope: !10876, inlinedAt: !11308)
!11670 = !DILocation(line: 25, column: 86, scope: !10883, inlinedAt: !11307)
!11671 = !DILocation(line: 971, column: 18, scope: !10915, inlinedAt: !11497)
!11672 = !DILocation(line: 288, column: 12, scope: !10917, inlinedAt: !10918)
!11673 = !DILocation(line: 572, column: 28, scope: !10898, inlinedAt: !11419)
!11674 = !DILocation(line: 113, column: 19, scope: !10849)
!11675 = !DILocation(line: 286, column: 47, scope: !10916, inlinedAt: !10918)
!11676 = !DILocation(line: 2570, column: 13, scope: !10922, inlinedAt: !10923)
!11677 = !DILocation(line: 1099, column: 5, scope: !488, inlinedAt: !10926)
!11678 = !DILocation(line: 287, column: 9, scope: !10917, inlinedAt: !10918)
!11679 = !DILocation(line: 300, column: 9, scope: !10928, inlinedAt: !10929)
!11680 = !DILocation(line: 671, column: 9, scope: !439, inlinedAt: !10933)
!11681 = !DILocation(line: 672, column: 20, scope: !439, inlinedAt: !10933)
!11682 = !DILocation(line: 872, column: 18, scope: !440, inlinedAt: !10935)
!11683 = !DILocation(line: 672, column: 9, scope: !439, inlinedAt: !10933)
!11684 = !DILocation(line: 298, column: 29, scope: !10917, inlinedAt: !10918)
!11685 = !DILocation(line: 290, column: 13, scope: !10917, inlinedAt: !10918)
!11686 = !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !10941)
!11687 = !DILocation(line: 683, column: 18, scope: !443, inlinedAt: !10945)
!11688 = !DILocation(line: 683, column: 37, scope: !443, inlinedAt: !10945)
!11689 = !DILocation(line: 683, column: 53, scope: !443, inlinedAt: !10945)
!11690 = !DILocation(line: 298, column: 50, scope: !10917, inlinedAt: !10918)
!11691 = !DILocation(line: 298, column: 78, scope: !10917, inlinedAt: !10918)
!11692 = !DILocation(line: 298, column: 9, scope: !10917, inlinedAt: !10918)
!11693 = !DILocation(line: 299, column: 12, scope: !10917, inlinedAt: !10918)
!11694 = !DILocation(line: 115, column: 22, scope: !10848)
!11695 = !DILocation(line: 0, scope: !10917, inlinedAt: !10918)
!11696 = !DILocation(line: 303, column: 6, scope: !10916, inlinedAt: !10918)
!11697 = !DILocation(line: 146, column: 5, scope: !10857)
!11698 = !DILocation(line: 291, column: 13, scope: !10917, inlinedAt: !10918)
!11699 = !DILocation(line: 121, column: 26, scope: !10854)
!11700 = !DILocation(line: 110, column: 39, scope: !10856)
!11701 = !DILocation(line: 121, column: 9, scope: !10854)
!11702 = !DILocation(line: 122, column: 13, scope: !10854)
!11703 = !DILocation(line: 122, column: 26, scope: !10854)
!11704 = !DILocation(line: 435, column: 15, scope: !502, inlinedAt: !10959)
!11705 = !DILocation(line: 435, column: 9, scope: !502, inlinedAt: !10959)
!11706 = !DILocation(line: 0, scope: !502, inlinedAt: !10959)
!11707 = !DILocation(line: 443, column: 17, scope: !502, inlinedAt: !10959)
!11708 = !DILocation(line: 443, column: 25, scope: !500, inlinedAt: !10959)
!11709 = !DILocation(line: 300, column: 9, scope: !10872, inlinedAt: !11527)
!11710 = !DILocation(line: 115, column: 13, scope: !10848)
!11711 = !DILocation(line: 116, column: 13, scope: !10848)
!11712 = !DILocation(line: 117, column: 17, scope: !10848)
!11713 = !DILocation(line: 436, column: 16, scope: !502, inlinedAt: !10959)
!11714 = !DILocation(line: 764, column: 9, scope: !503, inlinedAt: !10961)
!11715 = !DILocation(line: 210, column: 9, scope: !504, inlinedAt: !10969)
!11716 = !DILocation(line: 444, column: 9, scope: !502, inlinedAt: !10959)
!11717 = !DILocation(line: 1503, column: 30, scope: !515, inlinedAt: !10974)
!11718 = !DILocation(line: 154, column: 20, scope: !523, inlinedAt: !10986)
!11719 = !DILocation(line: 1503, column: 17, scope: !515, inlinedAt: !10974)
!11720 = !DILocation(line: 1138, column: 5, scope: !392, inlinedAt: !10989)
!11721 = !DILocation(line: 934, column: 20, scope: !506, inlinedAt: !10971)
!11722 = !DILocation(line: 475, column: 18, scope: !522, inlinedAt: !10980)
!11723 = !DILocation(line: 936, column: 9, scope: !505, inlinedAt: !10971)
!11724 = !DILocation(line: 124, column: 22, scope: !10846)
!11725 = !DILocation(line: 3105, column: 37, scope: !10871, inlinedAt: !11283)
!11726 = !DILocation(line: 3105, column: 18, scope: !10871, inlinedAt: !11283)
!11727 = !DILocation(line: 971, column: 18, scope: !10915, inlinedAt: !11538)
!11728 = !DILocation(line: 49, column: 26, scope: !10900, inlinedAt: !11542)
!11729 = !DILocation(line: 1663, column: 9, scope: !10996, inlinedAt: !11004)
!11730 = !DILocation(line: 438, column: 16, scope: !11001, inlinedAt: !11003)
!11731 = !DILocation(line: 848, column: 1, scope: !11008, inlinedAt: !11009)
!11732 = !DILocation(line: 53, column: 19, scope: !11002, inlinedAt: !11569)
!11733 = !DILocation(line: 956, column: 22, scope: !11013, inlinedAt: !11014)
!11734 = !DILocation(line: 442, column: 17, scope: !11001, inlinedAt: !11003)
!11735 = !DILocation(line: 1756, column: 9, scope: !11016, inlinedAt: !11017)
!11736 = !DILocation(line: 124, column: 13, scope: !10845)
!11737 = !DILocation(line: 125, column: 16, scope: !10842)
!11738 = !DILocation(line: 141, column: 9, scope: !10845)
!11739 = !DILocation(line: 848, column: 1, scope: !11008, inlinedAt: !11021)
!11740 = !DILocation(line: 848, column: 1, scope: !151, inlinedAt: !11023)
!11741 = !DILocation(line: 141, column: 9, scope: !10846)
!11742 = !DILocation(line: 202, column: 9, scope: !11025, inlinedAt: !11595)
!11743 = !DILocation(line: 142, column: 13, scope: !10846)
!11744 = !DILocation(line: 144, column: 56, scope: !10846)
!11745 = !DILocation(line: 144, column: 63, scope: !10846)
!11746 = !DILocation(line: 848, column: 1, scope: !151, inlinedAt: !11026)
!11747 = !DILocation(line: 146, column: 5, scope: !10854)
!11748 = !DILocation(line: 146, column: 5, scope: !10858)
!11749 = !DILocation(line: 146, column: 6, scope: !10859)
!11750 = !DILocation(line: 144, column: 71, scope: !10846)
!11751 = !DILocation(line: 1018, column: 9, scope: !429, inlinedAt: !11043)
!11752 = !DILocation(line: 247, column: 12, scope: !418, inlinedAt: !11030)
!11753 = !DILocation(line: 1075, column: 9, scope: !432, inlinedAt: !11045)
!11754 = !DILocation(line: 251, column: 21, scope: !415, inlinedAt: !11030)
!11755 = !DILocation(line: 251, column: 39, scope: !415, inlinedAt: !11030)
!11756 = !DILocation(line: 251, column: 59, scope: !415, inlinedAt: !11030)
!11757 = !DILocation(line: 251, column: 70, scope: !415, inlinedAt: !11030)
!11758 = !DILocation(line: 1055, column: 47, scope: !433, inlinedAt: !11049)
!11759 = !DILocation(line: 1055, column: 22, scope: !433, inlinedAt: !11049)
!11760 = !DILocation(line: 1789, column: 5, scope: !424, inlinedAt: !11037)
!11761 = !DILocation(line: 1790, column: 5, scope: !424, inlinedAt: !11037)
!11762 = !DILocation(line: 42, column: 26, scope: !435, inlinedAt: !11057)
!11763 = !DILocation(line: 1196, column: 18, scope: !421, inlinedAt: !11039)
!11764 = !DILocation(line: 252, column: 21, scope: !414, inlinedAt: !11030)
!11765 = !DILocation(line: 780, column: 9, scope: !420, inlinedAt: !11034)
!11766 = !DILocation(line: 253, column: 19, scope: !413, inlinedAt: !11030)
!11767 = !DILocation(line: 300, column: 9, scope: !441, inlinedAt: !11069)
!11768 = !DILocation(line: 708, column: 13, scope: !438, inlinedAt: !11063)
!11769 = !DILocation(line: 711, column: 13, scope: !438, inlinedAt: !11063)
!11770 = !DILocation(line: 300, column: 9, scope: !441, inlinedAt: !11071)
!11771 = !DILocation(line: 707, column: 9, scope: !2954, inlinedAt: !11063)
!11772 = !DILocation(line: 707, column: 9, scope: !438, inlinedAt: !11063)
!11773 = !DILocation(line: 259, column: 23, scope: !418, inlinedAt: !11030)
!11774 = !DILocation(line: 260, column: 23, scope: !410, inlinedAt: !11030)
!11775 = !DILocation(line: 247, column: 9, scope: !418, inlinedAt: !11030)
!11776 = !DILocation(line: 255, column: 13, scope: !414, inlinedAt: !11030)
!11777 = !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !11077)
!11778 = !DILocation(line: 683, column: 18, scope: !443, inlinedAt: !11081)
!11779 = !DILocation(line: 683, column: 37, scope: !443, inlinedAt: !11081)
!11780 = !DILocation(line: 683, column: 53, scope: !443, inlinedAt: !11081)
!11781 = !DILocation(line: 671, column: 9, scope: !439, inlinedAt: !11065)
!11782 = !DILocation(line: 672, column: 20, scope: !439, inlinedAt: !11065)
!11783 = !DILocation(line: 872, column: 18, scope: !440, inlinedAt: !11067)
!11784 = !DILocation(line: 717, column: 6, scope: !438, inlinedAt: !11063)
!11785 = !DILocation(line: 254, column: 17, scope: !413, inlinedAt: !11030)
!11786 = !DILocation(line: 255, column: 13, scope: !415, inlinedAt: !11030)
!11787 = !DILocation(line: 245, column: 5, scope: !419, inlinedAt: !11030)
!11788 = !DILocation(line: 0, scope: !418, inlinedAt: !11030)
!11789 = !DILocation(line: 144, column: 78, scope: !10846)
!11790 = !DILocation(line: 276, column: 9, scope: !10873, inlinedAt: !11288)
!11791 = !DILocation(line: 144, column: 18, scope: !10846)
!11792 = !DILocation(line: 144, column: 80, scope: !10846)
!11793 = !DILocation(line: 142, column: 9, scope: !10846)
!11794 = !DILocation(line: 133, column: 16, scope: !10842)
!11795 = !DILocation(line: 187, column: 9, scope: !11083, inlinedAt: !11608)
!11796 = !DILocation(line: 133, column: 32, scope: !10842)
!11797 = !DILocation(line: 315, column: 9, scope: !11084, inlinedAt: !11612)
!11798 = !DILocation(line: 127, column: 21, scope: !10842)
!11799 = !DILocation(line: 202, column: 9, scope: !11025, inlinedAt: !11614)
!11800 = !DILocation(line: 134, column: 21, scope: !10842)
!11801 = !DILocation(line: 187, column: 9, scope: !524, inlinedAt: !11087)
!11802 = !DILocation(line: 0, scope: !10847)
!11803 = !DILocation(line: 664, column: 40, scope: !11089, inlinedAt: !11622)
!11804 = !DILocation(line: 664, column: 50, scope: !11089, inlinedAt: !11622)
!11805 = !DILocation(line: 140, column: 20, scope: !10842)
!11806 = !DILocation(line: 217, column: 9, scope: !535, inlinedAt: !11095)
!11807 = !DILocation(line: 593, column: 19, scope: !526, inlinedAt: !11086)
!11808 = !DILocation(line: 595, column: 12, scope: !525, inlinedAt: !11086)
!11809 = !DILocation(line: 602, column: 22, scope: !525, inlinedAt: !11086)
!11810 = !DILocation(line: 1118, column: 45, scope: !539, inlinedAt: !11097)
!11811 = !DILocation(line: 603, column: 6, scope: !527, inlinedAt: !11086)
!11812 = !DILocation(line: 1118, column: 23, scope: !539, inlinedAt: !11097)
!11813 = !DILocation(line: 971, column: 18, scope: !543, inlinedAt: !11110)
!11814 = !DILocation(line: 574, column: 14, scope: !542, inlinedAt: !11106)
!11815 = !DILocation(line: 1183, column: 25, scope: !541, inlinedAt: !11099)
!11816 = !DILocation(line: 187, column: 9, scope: !524, inlinedAt: !11101)
!11817 = !DILocation(line: 1184, column: 12, scope: !540, inlinedAt: !11099)
!11818 = !DILocation(line: 1185, column: 35, scope: !540, inlinedAt: !11099)
!11819 = !DILocation(line: 1185, column: 13, scope: !540, inlinedAt: !11099)
!11820 = !DILocation(line: 136, column: 64, scope: !10842)
!11821 = !DILocation(line: 136, column: 71, scope: !10842)
!11822 = !DILocation(line: 136, column: 79, scope: !10842)
!11823 = !DILocation(line: 1018, column: 9, scope: !429, inlinedAt: !11130)
!11824 = !DILocation(line: 247, column: 12, scope: !418, inlinedAt: !11117)
!11825 = !DILocation(line: 1075, column: 9, scope: !432, inlinedAt: !11132)
!11826 = !DILocation(line: 251, column: 21, scope: !415, inlinedAt: !11117)
!11827 = !DILocation(line: 251, column: 39, scope: !415, inlinedAt: !11117)
!11828 = !DILocation(line: 251, column: 59, scope: !415, inlinedAt: !11117)
!11829 = !DILocation(line: 251, column: 70, scope: !415, inlinedAt: !11117)
!11830 = !DILocation(line: 1055, column: 47, scope: !433, inlinedAt: !11136)
!11831 = !DILocation(line: 1055, column: 22, scope: !433, inlinedAt: !11136)
!11832 = !DILocation(line: 1789, column: 5, scope: !424, inlinedAt: !11124)
!11833 = !DILocation(line: 1790, column: 5, scope: !424, inlinedAt: !11124)
!11834 = !DILocation(line: 42, column: 26, scope: !435, inlinedAt: !11144)
!11835 = !DILocation(line: 1196, column: 18, scope: !421, inlinedAt: !11126)
!11836 = !DILocation(line: 252, column: 21, scope: !414, inlinedAt: !11117)
!11837 = !DILocation(line: 780, column: 9, scope: !420, inlinedAt: !11121)
!11838 = !DILocation(line: 253, column: 19, scope: !413, inlinedAt: !11117)
!11839 = !DILocation(line: 300, column: 9, scope: !441, inlinedAt: !11156)
!11840 = !DILocation(line: 708, column: 13, scope: !438, inlinedAt: !11150)
!11841 = !DILocation(line: 711, column: 13, scope: !438, inlinedAt: !11150)
!11842 = !DILocation(line: 300, column: 9, scope: !441, inlinedAt: !11158)
!11843 = !DILocation(line: 707, column: 9, scope: !2954, inlinedAt: !11150)
!11844 = !DILocation(line: 707, column: 9, scope: !438, inlinedAt: !11150)
!11845 = !DILocation(line: 259, column: 23, scope: !418, inlinedAt: !11117)
!11846 = !DILocation(line: 260, column: 23, scope: !410, inlinedAt: !11117)
!11847 = !DILocation(line: 247, column: 9, scope: !418, inlinedAt: !11117)
!11848 = !DILocation(line: 255, column: 13, scope: !414, inlinedAt: !11117)
!11849 = !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !11164)
!11850 = !DILocation(line: 683, column: 18, scope: !443, inlinedAt: !11168)
!11851 = !DILocation(line: 683, column: 53, scope: !443, inlinedAt: !11168)
!11852 = !DILocation(line: 671, column: 9, scope: !439, inlinedAt: !11152)
!11853 = !DILocation(line: 672, column: 20, scope: !439, inlinedAt: !11152)
!11854 = !DILocation(line: 872, column: 18, scope: !440, inlinedAt: !11154)
!11855 = !DILocation(line: 717, column: 6, scope: !438, inlinedAt: !11150)
!11856 = !DILocation(line: 254, column: 17, scope: !413, inlinedAt: !11117)
!11857 = !DILocation(line: 255, column: 13, scope: !415, inlinedAt: !11117)
!11858 = !DILocation(line: 245, column: 5, scope: !419, inlinedAt: !11117)
!11859 = !DILocation(line: 0, scope: !418, inlinedAt: !11117)
!11860 = !DILocation(line: 136, column: 86, scope: !10842)
!11861 = !DILocation(line: 276, column: 9, scope: !10874, inlinedAt: !11299)
!11862 = !DILocation(line: 136, column: 26, scope: !10842)
!11863 = !DILocation(line: 136, column: 88, scope: !10842)
!11864 = !DILocation(line: 138, column: 26, scope: !10842)
!11865 = !DILocation(line: 134, column: 17, scope: !10842)
!11866 = !DILocation(line: 1191, column: 9, scope: !540, inlinedAt: !11099)
!11867 = !DILocation(line: 848, column: 1, scope: !544, inlinedAt: !11172)
!11868 = !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !11176)
!11869 = !DILocation(line: 683, column: 18, scope: !443, inlinedAt: !11180)
!11870 = !DILocation(line: 683, column: 53, scope: !443, inlinedAt: !11180)
!11871 = !DILocation(line: 683, column: 63, scope: !443, inlinedAt: !11180)
!11872 = !DILocation(line: 28, column: 18, scope: !11001, inlinedAt: !11003)
!11873 = !DILocation(line: 128, column: 36, scope: !10842)
!11874 = !DILocation(line: 128, column: 31, scope: !10842)
!11875 = !DILocation(line: 848, column: 1, scope: !544, inlinedAt: !11186)
!11876 = !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !11190)
!11877 = !DILocation(line: 683, column: 18, scope: !443, inlinedAt: !11194)
!11878 = !DILocation(line: 683, column: 53, scope: !443, inlinedAt: !11194)
!11879 = !DILocation(line: 128, column: 41, scope: !10842)
!11880 = !DILocation(line: 848, column: 1, scope: !544, inlinedAt: !11203)
!11881 = !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !11207)
!11882 = !DILocation(line: 683, column: 18, scope: !443, inlinedAt: !11211)
!11883 = !DILocation(line: 683, column: 53, scope: !443, inlinedAt: !11211)
!11884 = !DILocation(line: 683, column: 63, scope: !443, inlinedAt: !11211)
!11885 = !DILocation(line: 105, column: 5, scope: !10859)
!11886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IllegalOrderedRead", scope: !2027, file: !896, align: 8, flags: DIFlagPublic, elements: !1053, identifier: "afe3343211ca94366745aeeac2b3b500")
!11887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !11890, file: !896, size: 8, align: 8, flags: DIFlagPublic, elements: !11947, templateParams: !11949, identifier: "9e6635d3b474ff19ce69cc05d3ca68fe")
!11888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !11890, file: !896, size: 8, align: 8, flags: DIFlagPublic, elements: !11951, templateParams: !11949, identifier: "f2e2601a31e8b7813efba932ca3b22c4")
!11889 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !11890, file: !896, size: 8, align: 8, elements: !11945, templateParams: !1053, identifier: "cc0353d7a7d47066d8918bca6a01e377", discriminator: !11952)
!11890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), quinn_proto::connection::assembler::IllegalOrderedRead>", scope: !1353, file: !896, size: 8, align: 8, flags: DIFlagPublic, elements: !11942, templateParams: !1053, identifier: "bd5572a5a6077286c4617ad92fcfb53d")
!11891 = distinct !DILexicalBlock(scope: !11893, file: !3160, line: 51, column: 13)
!11892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<quinn_proto::connection::assembler::Buffer>", scope: !2095, file: !896, size: 128, align: 64, flags: DIFlagPublic, elements: !11961, templateParams: !2025, identifier: "8df58c69d9e9ec199a90ddb6a946892e")
!11893 = distinct !DILexicalBlock(scope: !11894, file: !3160, line: 51, column: 13)
end_hunk_1
