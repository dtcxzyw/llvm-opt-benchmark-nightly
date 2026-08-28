Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.11?download=true
inline.NumInlined: 391
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyyNtB1i_14LeafOrInternalE11search_treeyECshovLROGBtMy_11quinn_proto:bb.a
bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !12203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12372)
    #dbg_value(i64 %.sroa.3.0, !12373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12380)
    #dbg_value(ptr %.sroa.0.0, !12203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12372)
    #dbg_value(ptr %.sroa.0.0, !12373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12380)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12203, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12372)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12373, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12380)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12382, !DIExpression(), !12386)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12388, !DIExpression(), !12392)
    #dbg_value(ptr %.sroa.0.0, !12376, !DIExpression(), !12394)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 192, !dbg !12395
    #dbg_value(ptr %i.m, !12385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12386)
    #dbg_value(ptr %i.m, !12391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12392)
    #dbg_value(i64 12, !12385, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12386)
    #dbg_value(i64 12, !12391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12392)
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !12396
  tail call void @llvm.assume(i1 %i.n), !dbg !12397
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph, !dbg !12398
    #dbg_value(ptr %i.o, !12399, !DIExpression(), !12402)
    #dbg_value(ptr %i.o, !12404, !DIExpression(), !12407)
    #dbg_value(ptr %i.o, !12409, !DIExpression(), !12412)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !12414, !nonnull !153, !noundef !153
    #dbg_value(ptr %i.p, !12378, !DIExpression(), !12415)
  %i.q = add i64 %.sroa.3.0, -1, !dbg !12416
    #dbg_value(i64 %i.q, !12195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12205)
    #dbg_value(ptr %i.p, !12195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12205)
  br label %bb.b, !dbg !12234
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1i_14LeafOrInternalE11search_treeyEB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12417 {
bb.a:
    #dbg_value(ptr %1, !12464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12500)
    #dbg_value(i64 %2, !12464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12500)
    #dbg_value(ptr %3, !12465, !DIExpression(), !12500)
    #dbg_value(ptr %3, !12501, !DIExpression(), !12527)
  %.val69 = load i64, ptr %3, align 8
  br label %bb.b, !dbg !12529

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !12464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12500)
    #dbg_value(i64 %.sroa.3.0, !12464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12500)
    #dbg_value(ptr %.sroa.0.0, !12522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12527)
    #dbg_value(i64 %.sroa.3.0, !12522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12527)
    #dbg_value(ptr poison, !11835, !DIExpression(), !12530)
    #dbg_value(ptr poison, !11906, !DIExpression(), !12552)
    #dbg_value(ptr poison, !12542, !DIExpression(), !12553)
    #dbg_value(ptr poison, !12543, !DIExpression(), !12553)
    #dbg_value(i64 0, !12544, !DIExpression(), !12553)
    #dbg_value(ptr %.sroa.0.0, !12545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12554)
    #dbg_value(i64 poison, !12545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12554)
    #dbg_value(ptr poison, !12555, !DIExpression(), !12560)
    #dbg_value(ptr %.sroa.0.0, !12558, !DIExpression(), !12562)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1064, !dbg !12563 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1154, !dbg !12564
  %i.c = load i16, ptr %i.b, align 2, !dbg !12564, !noundef !153 ; 2 uses
    #dbg_value(i16 %i.c, !12565, !DIExpression(), !12568)
  %i.d = zext i16 %i.c to i64, !dbg !12570        ; 3 uses
    #dbg_value(ptr %i.a, !12546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12571)
    #dbg_value(i64 %i.d, !12546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12571)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !12572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12581)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !12587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12591)
    #dbg_value(ptr %i.a, !12585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12593)
    #dbg_value(ptr %i.a, !12576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12594)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !12585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12593)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !12576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12594)
    #dbg_value(ptr %i.a, !12577, !DIExpression(), !12595)
    #dbg_value(ptr %i.a, !12590, !DIExpression(), !12591)
  %.idx = shl nuw nsw i64 %i.d, 3, !dbg !12596
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !12596
    #dbg_value(ptr %i.a, !12547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(ptr %i.e, !12547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12597)
    #dbg_value(i64 0, !12547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12597)
    #dbg_value(ptr undef, !11906, !DIExpression(), !12552)
    #dbg_value(ptr undef, !11835, !DIExpression(), !12530)
    #dbg_value(i64 1, !12049, !DIExpression(), !12598)
    #dbg_value(ptr %i.a, !11866, !DIExpression(), !12600)
    #dbg_value(ptr %i.a, !12056, !DIExpression(), !12598)
    #dbg_value(ptr %i.e, !11868, !DIExpression(), !12601)
    #dbg_value(ptr poison, !12061, !DIExpression(), !12602)
    #dbg_value(ptr poison, !12068, !DIExpression(), !12604)
  %i.f = icmp eq i16 %i.c, 0, !dbg !12605
  br i1 %i.f, label %.loopexit.loopexit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, !dbg !12606

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i101, i64 8, !dbg !12607 ; 2 uses
    #dbg_value(ptr %i.g, !12547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12597)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !12608
    #dbg_value(i64 %i.h, !12547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12597)
    #dbg_value(ptr %i.g, !12547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(i64 %i.h, !12547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12597)
    #dbg_value(ptr undef, !11906, !DIExpression(), !12552)
    #dbg_value(ptr undef, !11835, !DIExpression(), !12530)
    #dbg_value(i64 1, !12049, !DIExpression(), !12598)
    #dbg_value(ptr %i.g, !11866, !DIExpression(), !12600)
    #dbg_value(ptr %i.g, !12056, !DIExpression(), !12598)
    #dbg_value(ptr %i.e, !11868, !DIExpression(), !12601)
    #dbg_value(ptr poison, !12061, !DIExpression(), !12602)
    #dbg_value(ptr poison, !12068, !DIExpression(), !12604)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !12605
  br i1 %i.i, label %.loopexit.loopexit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, !dbg !12606

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.0.03.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.03.i101, !12547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(i64 %.sroa.8.0.i100, !12547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12597)
    #dbg_value(ptr %.sroa.0.03.i101, !12547, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(ptr %.sroa.0.03.i101, !11907, !DIExpression(), !12609)
    #dbg_value(i64 %.sroa.8.0.i100, !11926, !DIExpression(), !12610)
    #dbg_value(i64 %.sroa.8.0.i100, !12547, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12597)
    #dbg_value(i64 %.sroa.8.0.i100, !12547, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12597)
    #dbg_value(ptr %.sroa.0.03.i101, !12547, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(i64 %.sroa.8.0.i100, !12548, !DIExpression(), !12611)
    #dbg_value(ptr %.sroa.0.03.i101, !12550, !DIExpression(), !12611)
  %.val34.i = load i64, ptr %.sroa.0.03.i101, align 8, !dbg !12612, !noundef !153
    #dbg_value(ptr poison, !12080, !DIExpression(), !12613)
    #dbg_value(ptr poison, !12086, !DIExpression(), !12613)
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val69, i64 %.val34.i), !dbg !12615
  switch i8 %i.j, label %bb.d [
    i8 -1, label %.loopexit.loopexit.i
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !12616

bb.d:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  unreachable, !dbg !12617

.loopexit.loopexit.i:                             ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !12468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12619)
    #dbg_value(i64 %.sroa.3.0, !12620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12647)
    #dbg_value(i64 %.sroa.3.0, !12649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12672)
    #dbg_value(ptr %.sroa.0.0, !12468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12619)
    #dbg_value(ptr %.sroa.0.0, !12620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12647)
    #dbg_value(ptr %.sroa.0.0, !12649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12672)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12468, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12619)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12620, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12647)
  %i.k = icmp eq i64 %.sroa.3.0, 0, !dbg !12674
  br i1 %i.k, label %.loopexit, label %bb.e, !dbg !12674

.loopexit:                                        ; preds = %.loopexit.loopexit.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  %.sink = phi i64 [ %.sroa.3.0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ], [ 0, %.loopexit.loopexit.i ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ], [ %.sroa.4.0.i.ph, %.loopexit.loopexit.i ]
  %storemerge = phi i64 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ], [ 1, %.loopexit.loopexit.i ], !dbg !12500
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12500
  store ptr %.sroa.0.0, ptr %i.l, align 8, !dbg !12500
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12500
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !12500
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12500
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !12500
  store i64 %storemerge, ptr %0, align 8, !dbg !12500
  ret void, !dbg !12675

bb.e:                                             ; preds = %.loopexit.loopexit.i
    #dbg_value(i64 %.sroa.3.0, !12478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12676)
    #dbg_value(i64 %.sroa.3.0, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12687)
    #dbg_value(ptr %.sroa.0.0, !12478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12676)
    #dbg_value(ptr %.sroa.0.0, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12687)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12478, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12676)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12677, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12687)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12689, !DIExpression(), !12693)
    #dbg_value(i64 %.sroa.4.0.i.ph, !12695, !DIExpression(), !12699)
    #dbg_value(ptr %.sroa.0.0, !12683, !DIExpression(), !12701)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1160, !dbg !12702
    #dbg_value(ptr %i.m, !12692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12693)
    #dbg_value(ptr %i.m, !12698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12699)
    #dbg_value(i64 12, !12692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12693)
    #dbg_value(i64 12, !12698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12699)
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !12703
  tail call void @llvm.assume(i1 %i.n), !dbg !12704
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph, !dbg !12705
    #dbg_value(ptr %i.o, !12706, !DIExpression(), !12709)
    #dbg_value(ptr %i.o, !12711, !DIExpression(), !12714)
    #dbg_value(ptr %i.o, !12716, !DIExpression(), !12719)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !12721, !nonnull !153, !noundef !153
    #dbg_value(ptr %i.p, !12685, !DIExpression(), !12722)
  %i.q = add i64 %.sroa.3.0, -1, !dbg !12723
    #dbg_value(i64 %i.q, !12464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12500)
    #dbg_value(ptr %i.p, !12464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12500)
  br label %bb.b, !dbg !12529
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEEB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12724 {
bb.a:
    #dbg_value(ptr %1, !12754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12789)
    #dbg_value(i64 %2, !12754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12789)
    #dbg_declare(ptr %3, !12755, !DIExpression(), !12790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12791), !dbg !12794
    #dbg_value(ptr %1, !12795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12881)
    #dbg_value(i64 %2, !12795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12881)
    #dbg_value(ptr %3, !12825, !DIExpression(), !12881)
    #dbg_value(i1 false, !12826, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12883)
    #dbg_value(i64 0, !12828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12884)
    #dbg_value(ptr %3, !12828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12884)
    #dbg_value(ptr %3, !12885, !DIExpression(), !12891)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !12893
  %i.b = load i8, ptr %i.a, align 8, !dbg !12893, !range !12894, !alias.scope !12895, !noalias !12898, !noundef !153
  %i.c = trunc nuw i8 %i.b to i1, !dbg !12893     ; 2 uses
  %.sroa.3.0.idx.i.i = select i1 %i.c, i64 0, i64 8, !dbg !12893
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.3.0.idx.i.i, !dbg !12893 ; 3 uses
    #dbg_value(i8 %i.b, !12845, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12884)
    #dbg_value(ptr %.sroa.3.0.i.i, !12845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12884)
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !12900

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !12854, !DIExpression(), !12901)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12912)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12914)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12917)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12920)
    #dbg_value(ptr undef, !12856, !DIExpression(), !12901)
    #dbg_value(ptr poison, !12908, !DIExpression(), !12923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12924), !dbg !12927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12928), !dbg !12927
    #dbg_value(ptr %3, !12930, !DIExpression(), !12937)
    #dbg_value(ptr %.sroa.3.0.i.i, !12936, !DIExpression(), !12937)
  %i.d = load i64, ptr %3, align 8, !dbg !12939, !alias.scope !12940, !noalias !12941, !noundef !153
  %i.e = load i64, ptr %.sroa.3.0.i.i, align 8, !dbg !12942, !alias.scope !12943, !noalias !12944, !noundef !153
  %i.f = icmp ugt i64 %i.d, %i.e, !dbg !12939
  br i1 %i.f, label %bb.d, label %.preheader.i.preheader, !dbg !12945, !prof !2543

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !12854, !DIExpression(), !12901)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12912)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12914)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12917)
    #dbg_value(ptr undef, !12902, !DIExpression(), !12920)
    #dbg_value(ptr undef, !12856, !DIExpression(), !12901)
    #dbg_value(ptr poison, !12908, !DIExpression(), !12946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12947), !dbg !12950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12951), !dbg !12950
    #dbg_value(ptr %3, !12930, !DIExpression(), !12953)
    #dbg_value(ptr %.sroa.3.0.i.i, !12936, !DIExpression(), !12953)
  %i.g = load i64, ptr %3, align 8, !dbg !12955, !alias.scope !12956, !noalias !12957, !noundef !153
  %i.h = load i64, ptr %.sroa.3.0.i.i, align 8, !dbg !12958, !alias.scope !12959, !noalias !12960, !noundef !153
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !12955
  br i1 %i.i, label %bb.d, label %.preheader.i.preheader, !dbg !12945, !prof !2543

.preheader.i.preheader:                           ; preds = %bb.b, %bb.c
  %.sroa.045.1.i491.ph907 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %.val24.i.i = load i64, ptr %3, align 8, !alias.scope !12791, !noalias !12961
  %.val22.i.i = load i64, ptr %3, align 8
  br label %.preheader.i, !dbg !12964

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !dbg !12991, !noalias !12992
  unreachable, !dbg !12991

bb.e:                                             ; preds = %bb.z
    #dbg_value(i64 %2, !12879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12993)
    #dbg_value(i64 %2, !12994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13001)
    #dbg_value(ptr %1, !12879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12993)
    #dbg_value(ptr %1, !12994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13001)
    #dbg_value(i64 poison, !12879, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12993)
    #dbg_value(i64 poison, !12994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13001)
    #dbg_value(i64 poison, !13003, !DIExpression(), !13007)
    #dbg_value(i64 poison, !13009, !DIExpression(), !13013)
    #dbg_value(ptr %1, !12997, !DIExpression(), !13015)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0236.i, i64 1160, !dbg !13016
    #dbg_value(ptr poison, !13006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13007)
    #dbg_value(ptr poison, !13012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 12, !13006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13007)
    #dbg_value(i64 12, !13012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
  %i.k = icmp ult i64 %.sroa.0126.0224.i, 12, !dbg !13017
  tail call void @llvm.assume(i1 %i.k), !dbg !13018
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0126.0224.i, !dbg !13019
    #dbg_value(ptr poison, !13020, !DIExpression(), !13023)
    #dbg_value(ptr poison, !13025, !DIExpression(), !13028)
    #dbg_value(ptr poison, !13030, !DIExpression(), !13033)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !13035, !noalias !12992, !nonnull !153, !noundef !153 ; 4 uses
    #dbg_value(ptr poison, !12999, !DIExpression(), !13036)
  %i.n = add i64 %i.ce, -1, !dbg !13037           ; 4 uses
    #dbg_value(i64 poison, !12795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12881)
    #dbg_value(ptr %1, !12795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12881)
    #dbg_value(i64 0, !12863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13038)
    #dbg_value(i64 0, !12857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13039)
    #dbg_value(ptr %3, !12863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13038)
    #dbg_value(ptr %3, !12857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13039)
    #dbg_value(i64 poison, !12866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13040)
    #dbg_value(i64 poison, !12859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13041)
    #dbg_value(ptr %.sroa.3.0.i.i, !12866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13040)
    #dbg_value(ptr %.sroa.3.0.i.i, !12859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13041)
    #dbg_value(i64 0, !12978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13042)
    #dbg_value(ptr %3, !12978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13042)
    #dbg_value(ptr poison, !12977, !DIExpression(), !13042)
    #dbg_value(ptr poison, !13043, !DIExpression(), !13049)
  switch i64 %.sroa.9.0220.i.ph899, label %.unreachabledefault [
    i64 0, label %.preheader.i.backedge
    i64 1, label %.preheader290.i
    i64 2, label %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1j_14LeafOrInternalE22find_upper_bound_indexyEB1I_.exit.jt2.i.peel.thread.loopexit
    i64 3, label %.loopexit
  ], !dbg !13051

bb.f:                                             ; preds = %bb.aa
    #dbg_value(i64 %2, !12879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12993)
    #dbg_value(i64 %2, !12994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13001)
    #dbg_value(ptr %1, !12879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12993)
    #dbg_value(ptr %1, !12994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13001)
    #dbg_value(i64 poison, !12879, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12993)
    #dbg_value(i64 poison, !12994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13001)
    #dbg_value(i64 poison, !13003, !DIExpression(), !13007)
    #dbg_value(i64 poison, !13009, !DIExpression(), !13013)
    #dbg_value(ptr %1, !12997, !DIExpression(), !13015)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0237.i, i64 1160, !dbg !13016
    #dbg_value(ptr poison, !13006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13007)
    #dbg_value(ptr poison, !13012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 12, !13006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13007)
    #dbg_value(i64 12, !13012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
  %i.p = icmp ult i64 %.sroa.0126.0225.i, 12, !dbg !13017
  tail call void @llvm.assume(i1 %i.p), !dbg !13018
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0126.0225.i, !dbg !13019
    #dbg_value(ptr poison, !13020, !DIExpression(), !13023)
    #dbg_value(ptr poison, !13025, !DIExpression(), !13028)
    #dbg_value(ptr poison, !13030, !DIExpression(), !13033)
  %i.r = load ptr, ptr %i.q, align 8, !dbg !13035, !noalias !12992, !nonnull !153, !noundef !153 ; 2 uses
    #dbg_value(ptr poison, !12999, !DIExpression(), !13036)
  %i.s = add i64 %i.cq, -1, !dbg !13037           ; 2 uses
    #dbg_value(i64 poison, !12795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12881)
    #dbg_value(ptr %1, !12795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12881)
    #dbg_value(i64 0, !12863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13038)
    #dbg_value(i64 0, !12857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13039)
    #dbg_value(ptr %3, !12863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13038)
    #dbg_value(ptr %3, !12857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13039)
    #dbg_value(i64 poison, !12866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13040)
    #dbg_value(i64 poison, !12859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13041)
    #dbg_value(ptr %.sroa.3.0.i.i, !12866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13040)
    #dbg_value(ptr %.sroa.3.0.i.i, !12859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13041)
    #dbg_value(i64 0, !12978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13042)
    #dbg_value(ptr %3, !12978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13042)
    #dbg_value(ptr poison, !12977, !DIExpression(), !13042)
    #dbg_value(ptr poison, !13043, !DIExpression(), !13049)
  br i1 %i.cr, label %.preheader.i.backedge, label %bb.s, !dbg !13051

.preheader.i.backedge:                            ; preds = %bb.h, %bb.e, %bb.f, %bb.g
  %.be = phi i64 [ %i.s, %bb.f ], [ %i.x, %bb.g ], [ %i.ac, %bb.h ], [ %i.n, %bb.e ]
  %.sroa.045.1.i491.be = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ %.sroa.9.0220.i.ph899, %bb.h ], [ 3, %bb.e ]
  %.sroa.647.1.i489.be = phi ptr [ %.sroa.647.1247.i, %bb.f ], [ undef, %bb.g ], [ %.sroa.647.1246.i.ph, %bb.e ], [ %.sroa.647.1246.i.ph, %bb.h ]
  %.sroa.0.0.i487.be = phi ptr [ %i.r, %bb.f ], [ %i.w, %bb.g ], [ %i.ab, %bb.h ], [ %i.m, %bb.e ]
  br label %.preheader.i

bb.g:                                             ; preds = %bb.ab
    #dbg_value(i64 %2, !12879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12993)
    #dbg_value(i64 %2, !12994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13001)
    #dbg_value(ptr %1, !12879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12993)
    #dbg_value(ptr %1, !12994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13001)
    #dbg_value(i64 poison, !12879, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12993)
    #dbg_value(i64 poison, !12994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13001)
    #dbg_value(i64 poison, !13003, !DIExpression(), !13007)
    #dbg_value(i64 poison, !13009, !DIExpression(), !13013)
    #dbg_value(ptr %1, !12997, !DIExpression(), !13015)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0237.i, i64 1160, !dbg !13016
    #dbg_value(ptr poison, !13006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13007)
    #dbg_value(ptr poison, !13012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 12, !13006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13007)
    #dbg_value(i64 12, !13012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
  %i.u = icmp ult i64 %.sroa.0126.0225.i, 12, !dbg !13017
  tail call void @llvm.assume(i1 %i.u), !dbg !13018
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.0126.0225.i, !dbg !13019
    #dbg_value(ptr poison, !13020, !DIExpression(), !13023)
    #dbg_value(ptr poison, !13025, !DIExpression(), !13028)
    #dbg_value(ptr poison, !13030, !DIExpression(), !13033)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !13035, !noalias !12992, !nonnull !153, !noundef !153 ; 2 uses
    #dbg_value(ptr poison, !12999, !DIExpression(), !13036)
  %i.x = add i64 %i.cq, -1, !dbg !13037           ; 2 uses
    #dbg_value(i64 poison, !12795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12881)
    #dbg_value(ptr %1, !12795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12881)
    #dbg_value(i64 0, !12863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13038)
    #dbg_value(i64 0, !12857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13039)
    #dbg_value(ptr %3, !12863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13038)
    #dbg_value(ptr %3, !12857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13039)
    #dbg_value(i64 poison, !12866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13040)
    #dbg_value(i64 poison, !12859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13041)
    #dbg_value(ptr %.sroa.3.0.i.i, !12866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13040)
    #dbg_value(ptr %.sroa.3.0.i.i, !12859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13041)
    #dbg_value(i64 0, !12978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13042)
    #dbg_value(ptr %3, !12978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13042)
    #dbg_value(ptr poison, !12977, !DIExpression(), !13042)
    #dbg_value(ptr poison, !13043, !DIExpression(), !13049)
  br i1 %i.cr, label %.preheader.i.backedge, label %bb.s, !dbg !13051

bb.h:                                             ; preds = %bb.ac
    #dbg_value(i64 %2, !12879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12993)
    #dbg_value(i64 %2, !12994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13001)
    #dbg_value(ptr %1, !12879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12993)
    #dbg_value(ptr %1, !12994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13001)
    #dbg_value(i64 poison, !12879, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12993)
    #dbg_value(i64 poison, !12994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13001)
    #dbg_value(i64 poison, !13003, !DIExpression(), !13007)
    #dbg_value(i64 poison, !13009, !DIExpression(), !13013)
    #dbg_value(ptr %1, !12997, !DIExpression(), !13015)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0236.i, i64 1160, !dbg !13016
    #dbg_value(ptr poison, !13006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13007)
    #dbg_value(ptr poison, !13012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 12, !13006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13007)
    #dbg_value(i64 12, !13012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
  %i.z = icmp ult i64 %.sroa.0126.0224.i, 12, !dbg !13017
  tail call void @llvm.assume(i1 %i.z), !dbg !13018
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.0126.0224.i, !dbg !13019
    #dbg_value(ptr poison, !13020, !DIExpression(), !13023)
    #dbg_value(ptr poison, !13025, !DIExpression(), !13028)
    #dbg_value(ptr poison, !13030, !DIExpression(), !13033)
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !13035, !noalias !12992, !nonnull !153, !noundef !153 ; 4 uses
    #dbg_value(ptr poison, !12999, !DIExpression(), !13036)
end_hunk_0
begin_hunk_1_@_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyyNtB1m_4LeafENtB1m_2KVE7into_kvCshovLROGBtMy_11quinn_proto:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 !dbg !22782 {
bb.a:
    #dbg_declare(ptr %0, !22787, !DIExpression(), !22790)
  %i.a = load ptr, ptr %0, align 8, !dbg !22791, !nonnull !153, !noundef !153
    #dbg_value(ptr %i.a, !22788, !DIExpression(), !22792)
    #dbg_value(ptr %i.a, !22793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22797)
    #dbg_value(i64 11, !22793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22797)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22799
  %i.c = load i64, ptr %i.b, align 8, !dbg !22799, !noundef !153
    #dbg_value(i64 %i.c, !22796, !DIExpression(), !22797)
    #dbg_value(i64 %i.c, !22800, !DIExpression(), !22804)
    #dbg_value(ptr %i.a, !22803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22804)
    #dbg_value(i64 11, !22803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22804)
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.c, !dbg !22806
  ret ptr %i.d, !dbg !22807
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyyNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 !dbg !22808 {
bb.a:
    #dbg_declare(ptr %0, !22813, !DIExpression(), !22816)
  %i.a = load ptr, ptr %0, align 8, !dbg !22817, !nonnull !153, !noundef !153
    #dbg_value(ptr %i.a, !22814, !DIExpression(), !22818)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !22819
    #dbg_value(ptr %i.b, !22820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22824)
    #dbg_value(i64 11, !22820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22824)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22826
  %i.d = load i64, ptr %i.c, align 8, !dbg !22826, !noundef !153
    #dbg_value(i64 %i.d, !22823, !DIExpression(), !22824)
    #dbg_value(i64 %i.d, !22827, !DIExpression(), !22831)
    #dbg_value(ptr %i.b, !22830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22831)
    #dbg_value(i64 11, !22830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22831)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d, !dbg !22833
  ret ptr %i.e, !dbg !22834
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 !dbg !1413 {
bb.a:
    #dbg_value(ptr %0, !1412, !DIExpression(), !22835)
    #dbg_value(ptr %0, !22836, !DIExpression(), !22839)
    #dbg_value(ptr %0, !22841, !DIExpression(), !22844)
  %i.a = load ptr, ptr %0, align 8, !dbg !22846, !nonnull !153, !noundef !153 ; 2 uses
    #dbg_value(ptr %i.a, !1422, !DIExpression(), !22847)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1064, !dbg !22848
    #dbg_value(ptr %i.b, !1433, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22849)
    #dbg_value(i64 11, !1433, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22849)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22851
  %i.d = load i64, ptr %i.c, align 8, !dbg !22851, !noundef !153 ; 2 uses
    #dbg_value(i64 %i.d, !1444, !DIExpression(), !22849)
    #dbg_value(i64 %i.d, !1449, !DIExpression(), !22852)
    #dbg_value(ptr %i.b, !1459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22852)
    #dbg_value(i64 11, !1459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22852)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d, !dbg !22854
    #dbg_value(ptr %i.e, !1425, !DIExpression(), !22855)
    #dbg_value(ptr %i.a, !1465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22856)
    #dbg_value(i64 11, !1465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22856)
    #dbg_value(i64 %i.d, !1476, !DIExpression(), !22856)
    #dbg_value(i64 %i.d, !1481, !DIExpression(), !22858)
    #dbg_value(ptr %i.a, !1491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22858)
    #dbg_value(i64 11, !1491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22858)
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.d, !dbg !22860
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0, !dbg !22861
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1, !dbg !22861
  ret { ptr, ptr } %i.h, !dbg !22861
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyyNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 !dbg !2288 {
bb.a:
    #dbg_value(ptr %0, !2287, !DIExpression(), !22862)
    #dbg_value(ptr %0, !22863, !DIExpression(), !22866)
    #dbg_value(ptr %0, !22868, !DIExpression(), !22871)
  %i.a = load ptr, ptr %0, align 8, !dbg !22873, !nonnull !153, !noundef !153 ; 2 uses
    #dbg_value(ptr %i.a, !2297, !DIExpression(), !22874)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22875
    #dbg_value(ptr %i.b, !2308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22876)
    #dbg_value(i64 11, !2308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22876)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22878
  %i.d = load i64, ptr %i.c, align 8, !dbg !22878, !noundef !153 ; 2 uses
    #dbg_value(i64 %i.d, !2311, !DIExpression(), !22876)
    #dbg_value(i64 %i.d, !2314, !DIExpression(), !22879)
    #dbg_value(ptr %i.b, !2317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22879)
    #dbg_value(i64 11, !2317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22879)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d, !dbg !22881
    #dbg_value(ptr %i.e, !2300, !DIExpression(), !22882)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !22883
    #dbg_value(ptr %i.f, !2308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22884)
    #dbg_value(i64 11, !2308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22884)
    #dbg_value(i64 %i.d, !2311, !DIExpression(), !22884)
    #dbg_value(i64 %i.d, !2314, !DIExpression(), !22886)
    #dbg_value(ptr %i.f, !2317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22886)
    #dbg_value(i64 11, !2317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22886)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d, !dbg !22888
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.e, 0, !dbg !22889
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1, !dbg !22889
  ret { ptr, ptr } %i.i, !dbg !22889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 !dbg !22890 {
bb.a:
    #dbg_declare(ptr %1, !22895, !DIExpression(), !22902)
    #dbg_declare(ptr poison, !22900, !DIExpression(), !22903)
    #dbg_value(ptr %1, !22904, !DIExpression(), !22911)
    #dbg_value(ptr %1, !22913, !DIExpression(), !22919)
  %i.a = load ptr, ptr %1, align 8, !dbg !22921, !nonnull !153, !noundef !153 ; 2 uses
    #dbg_value(ptr %i.a, !22896, !DIExpression(), !22922)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1064, !dbg !22923
    #dbg_value(ptr %i.b, !22924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22928)
    #dbg_value(i64 11, !22924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22928)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22930
  %i.d = load i64, ptr %i.c, align 8, !dbg !22930, !noundef !153 ; 2 uses
    #dbg_value(i64 %i.d, !22927, !DIExpression(), !22928)
    #dbg_value(i64 %i.d, !22931, !DIExpression(), !22935)
    #dbg_value(i64 %i.d, !22937, !DIExpression(), !22941)
    #dbg_value(i64 %i.d, !22943, !DIExpression(), !22947)
    #dbg_value(ptr %i.b, !22934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22935)
    #dbg_value(i64 11, !22934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22935)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d, !dbg !22950
    #dbg_value(ptr %i.e, !22951, !DIExpression(), !22954)
    #dbg_value(ptr %i.e, !22956, !DIExpression(), !22959)
    #dbg_value(ptr %i.e, !22961, !DIExpression(), !22964)
  %i.f = load i64, ptr %i.e, align 8, !dbg !22966, !noundef !153
    #dbg_value(i64 %i.f, !22898, !DIExpression(), !22967)
    #dbg_value(ptr %i.a, !22940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22941)
    #dbg_value(i64 11, !22940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22941)
    #dbg_value(ptr %i.a, !22946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22947)
    #dbg_value(i64 11, !22946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22947)
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.d, !dbg !22968
    #dbg_value(ptr %i.g, !22969, !DIExpression(), !22972)
    #dbg_value(ptr %i.g, !22974, !DIExpression(), !22977)
    #dbg_value(ptr %i.g, !22980, !DIExpression(), !22983)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22986
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !dbg !22987
  store i64 %i.f, ptr %0, align 8, !dbg !22986
  ret void, !dbg !22988
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden { i64, i32 } @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB4_10TimerTable12next_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !22989 {
bb.a:
    #dbg_value(ptr %0, !23015, !DIExpression(), !23016)
    #dbg_value(ptr %0, !23017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23050)
    #dbg_value(ptr %0, !23017, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23050)
    #dbg_declare(ptr poison, !23052, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !23077)
    #dbg_value(ptr %0, !23086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23097)
    #dbg_value(ptr %0, !23086, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23097)
    #dbg_declare(ptr poison, !23087, !DIExpression(), !23098)
    #dbg_value(ptr undef, !23099, !DIExpression(), !23109)
    #dbg_value(ptr undef, !23111, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23125)
    #dbg_value(ptr undef, !23118, !DIExpression(), !23125)
    #dbg_value(ptr undef, !23127, !DIExpression(), !23149)
    #dbg_value(i64 1, !23151, !DIExpression(), !23158)
    #dbg_value(ptr %0, !23143, !DIExpression(), !23160)
    #dbg_value(ptr %0, !23157, !DIExpression(), !23158)
    #dbg_value(ptr %0, !23145, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !23161)
  br label %.lr.ph.i.i.i, !dbg !23162

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.idx = phi i64 [ %.add, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !23163 ; 2 uses
    #dbg_value(ptr %.ptr, !23143, !DIExpression(), !23160)
  %.add = add nuw nsw i64 %.idx, 16, !dbg !23163  ; 3 uses
    #dbg_value(ptr %.ptr, !23119, !DIExpression(), !23164)
    #dbg_value(ptr undef, !23111, !DIExpression(DW_OP_deref), !23125)
  %i.a = getelementptr i8, ptr %.ptr, i64 8, !dbg !23165
  %.val13.i.i.i = load i32, ptr %i.a, align 8, !dbg !23165, !range !23166, !noalias !23167, !noundef !153 ; 5 uses
  %.not.i.i.i = icmp ne i32 %.val13.i.i.i, -1, !dbg !23165
    #dbg_value(!DIArgList(ptr %0, i64 %.add), !23143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23160)
    #dbg_value(!DIArgList(ptr %0, i64 %.add), !23157, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23158)
    #dbg_value(ptr %0, !23145, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !23161)
  %i.b = icmp eq i64 %.add, 160                   ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.b, !dbg !23172
  br i1 %or.cond.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2D_10TimerTable12next_timeout0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i, label %.lr.ph.i.i.i, !dbg !23172

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2D_10TimerTable12next_timeout0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i: ; preds = %.lr.ph.i.i.i
  %.ptr14.le = getelementptr inbounds nuw i8, ptr %0, i64 %.add ; 3 uses
  %.val.le29.i.i.i = load i64, ptr %.ptr, align 8, !noalias !23167 ; 3 uses
    #dbg_value(ptr %.ptr14.le, !23086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23097)
    #dbg_value(i64 poison, !23052, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23173)
    #dbg_value(i32 %.val13.i.i.i, !23052, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23173)
  %.not.i = icmp eq i32 %.val13.i.i.i, -1, !dbg !23174 ; 2 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %i.b, !dbg !23175
  %.mux27.i = select i1 %.not.i, i64 undef, i64 %.val.le29.i.i.i, !dbg !23175
  br i1 %brmerge.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit, label %bb.b, !dbg !23175

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2D_10TimerTable12next_timeout0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i
    #dbg_value(i64 %.val.le29.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23204)
    #dbg_value(i32 %.val13.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23204)
    #dbg_value(i64 0, !23194, !DIExpression(), !23217)
    #dbg_value(i64 0, !23218, !DIExpression(), !23222)
    #dbg_value(ptr %0, !23200, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !23224)
    #dbg_value(ptr %0, !23225, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !23232)
    #dbg_value(ptr %.ptr14.le, !23231, !DIExpression(), !23232)
    #dbg_value(ptr %0, !23234, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !23241)
    #dbg_value(ptr %.ptr14.le, !23240, !DIExpression(), !23241)
    #dbg_value(ptr %.ptr14.le, !23243, !DIExpression(), !23251)
    #dbg_value(ptr %0, !23248, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !23251)
  %gepdiff = sub nuw nsw i64 144, %.idx, !dbg !23253
  %i.c = lshr exact i64 %gepdiff, 4, !dbg !23253  ; 3 uses
    #dbg_value(i64 %i.c, !23196, !DIExpression(), !23254)
  %i.d = icmp eq i64 %.idx, 128, !dbg !23255
  br i1 %i.d, label %.epil.preheader, label %.new, !dbg !23255

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.c, 14, !dbg !23255
  br label %bb.c, !dbg !23255

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1, %.new
  %.sroa.05.0.i.i.i = phi i64 [ 0, %.new ], [ %i.r, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1 ], !dbg !23204 ; 3 uses
  %.sroa.6.0.i.i.i = phi i32 [ %.val13.i.i.i, %.new ], [ %..i.i.pn.i.i.i.i.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1 ], !dbg !23256 ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ %.val.le29.i.i.i, %.new ], [ %.2.i.i.pn.i.i.i.i.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1 ], !dbg !23256 ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1 ]
    #dbg_value(i64 %.sroa.02.0.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23204)
    #dbg_value(i32 %.sroa.6.0.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23204)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !23218, !DIExpression(), !23222)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !23194, !DIExpression(), !23217)
    #dbg_value(ptr %.ptr14.le, !23257, !DIExpression(), !23261)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !23260, !DIExpression(), !23261)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.ptr14.le, i64 %.sroa.05.0.i.i.i, !dbg !23263 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8, !dbg !23264
  %.val29.i.i.i = load i32, ptr %i.f, align 8, !dbg !23264, !range !23166, !noundef !153 ; 3 uses
    #dbg_value(i64 %.sroa.02.0.i.i.i, !23265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23279)
    #dbg_value(i32 %.sroa.6.0.i.i.i, !23265, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23279)
    #dbg_value(ptr poison, !23271, !DIExpression(), !23279)
  %.not.i.i.i.i = icmp eq i32 %.val29.i.i.i, -1, !dbg !23281
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i, label %bb.d, !dbg !23282

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %i.e, align 8, !dbg !23264 ; 3 uses
    #dbg_value(i64 %.val.i.i.i, !23274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23283)
    #dbg_value(i32 %.val29.i.i.i, !23274, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23283)
    #dbg_value(i64 %.sroa.02.0.i.i.i, !23284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23301)
    #dbg_value(i32 %.sroa.6.0.i.i.i, !23284, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23301)
    #dbg_value(i64 %.val.i.i.i, !23284, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23301)
    #dbg_value(i32 %.val29.i.i.i, !23284, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23301)
    #dbg_value(ptr poison, !23293, !DIExpression(), !23301)
    #dbg_value(i64 %.sroa.02.0.i.i.i, !23303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23310)
    #dbg_value(i32 %.sroa.6.0.i.i.i, !23303, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23310)
    #dbg_value(i64 %.val.i.i.i, !23307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23310)
    #dbg_value(i32 %.val29.i.i.i, !23307, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23310)
    #dbg_value(ptr poison, !23312, !DIExpression(), !23322)
    #dbg_value(ptr poison, !23319, !DIExpression(), !23322)
    #dbg_declare(ptr poison, !23324, !DIExpression(), !23351)
    #dbg_value(ptr poison, !23353, !DIExpression(), !23361)
    #dbg_value(ptr poison, !23363, !DIExpression(), !23370)
    #dbg_value(ptr poison, !23360, !DIExpression(), !23361)
    #dbg_value(ptr poison, !23369, !DIExpression(), !23370)
    #dbg_value(ptr poison, !23372, !DIExpression(), !23381)
    #dbg_value(ptr poison, !23380, !DIExpression(), !23381)
    #dbg_value(ptr poison, !23383, !DIExpression(), !23394)
    #dbg_value(ptr poison, !23391, !DIExpression(), !23394)
  %i.g = icmp eq i64 %.val.i.i.i, %.sroa.02.0.i.i.i, !dbg !23396
    #dbg_value(i8 poison, !23348, !DIExpression(), !23397)
  %i.h = icmp samesign ult i32 %.val29.i.i.i, %.sroa.6.0.i.i.i, !dbg !23398
  %i.i = icmp slt i64 %.val.i.i.i, %.sroa.02.0.i.i.i, !dbg !23398
  %i.j = select i1 %i.g, i1 %i.h, i1 %i.i, !dbg !23396 ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.j, i32 %.val29.i.i.i, i32 %.sroa.6.0.i.i.i, !dbg !23399
  %.2.i.i.i.i.i.i = select i1 %i.j, i64 %.val.i.i.i, i64 %.sroa.02.0.i.i.i, !dbg !23399
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i, !dbg !23400

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.2.i.i.pn.i.i.i.i = phi i64 [ %.2.i.i.i.i.i.i, %bb.d ], [ %.sroa.02.0.i.i.i, %bb.c ] ; 4 uses
  %..i.i.pn.i.i.i.i = phi i32 [ %..i.i.i.i.i.i, %bb.d ], [ %.sroa.6.0.i.i.i, %bb.c ] ; 3 uses
    #dbg_value(i64 %.2.i.i.pn.i.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23204)
    #dbg_value(i32 %..i.i.pn.i.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23204)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !23194, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !23217)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !23218, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !23222)
    #dbg_value(i64 %.2.i.i.pn.i.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23204)
    #dbg_value(i32 %..i.i.pn.i.i.i.i, !23176, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23204)
    #dbg_value(ptr %.ptr14.le, !23257, !DIExpression(), !23261)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !23260, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !23261)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.ptr14.le, i64 %.sroa.05.0.i.i.i, !dbg !23263 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 24, !dbg !23264
  %.val29.i.i.i.1 = load i32, ptr %i.l, align 8, !dbg !23264, !range !23166, !noundef !153 ; 3 uses
    #dbg_value(i64 %.2.i.i.pn.i.i.i.i, !23265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23279)
    #dbg_value(i32 %..i.i.pn.i.i.i.i, !23265, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23279)
    #dbg_value(ptr poison, !23271, !DIExpression(), !23279)
  %.not.i.i.i.i.1 = icmp eq i32 %.val29.i.i.i.1, -1, !dbg !23281
  br i1 %.not.i.i.i.i.1, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1, label %bb.e, !dbg !23282

bb.e:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !23263
  %.val.i.i.i.1 = load i64, ptr %i.m, align 8, !dbg !23264 ; 3 uses
    #dbg_value(i64 %.val.i.i.i.1, !23274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23283)
    #dbg_value(i32 %.val29.i.i.i.1, !23274, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23283)
    #dbg_value(i64 %.2.i.i.pn.i.i.i.i, !23284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23301)
    #dbg_value(i32 %..i.i.pn.i.i.i.i, !23284, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23301)
    #dbg_value(i64 %.val.i.i.i.1, !23284, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23301)
    #dbg_value(i32 %.val29.i.i.i.1, !23284, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23301)
    #dbg_value(ptr poison, !23293, !DIExpression(), !23301)
    #dbg_value(i64 %.2.i.i.pn.i.i.i.i, !23303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23310)
    #dbg_value(i32 %..i.i.pn.i.i.i.i, !23303, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23310)
    #dbg_value(i64 %.val.i.i.i.1, !23307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23310)
    #dbg_value(i32 %.val29.i.i.i.1, !23307, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23310)
    #dbg_value(ptr poison, !23312, !DIExpression(), !23322)
    #dbg_value(ptr poison, !23319, !DIExpression(), !23322)
    #dbg_declare(ptr poison, !23324, !DIExpression(), !23351)
    #dbg_value(ptr poison, !23353, !DIExpression(), !23361)
    #dbg_value(ptr poison, !23363, !DIExpression(), !23370)
    #dbg_value(ptr poison, !23360, !DIExpression(), !23361)
    #dbg_value(ptr poison, !23369, !DIExpression(), !23370)
    #dbg_value(ptr poison, !23372, !DIExpression(), !23381)
    #dbg_value(ptr poison, !23380, !DIExpression(), !23381)
    #dbg_value(ptr poison, !23383, !DIExpression(), !23394)
    #dbg_value(ptr poison, !23391, !DIExpression(), !23394)
  %i.n = icmp eq i64 %.val.i.i.i.1, %.2.i.i.pn.i.i.i.i, !dbg !23396
    #dbg_value(i8 poison, !23348, !DIExpression(), !23397)
  %i.o = icmp samesign ult i32 %.val29.i.i.i.1, %..i.i.pn.i.i.i.i, !dbg !23398
  %i.p = icmp slt i64 %.val.i.i.i.1, %.2.i.i.pn.i.i.i.i, !dbg !23398
  %i.q = select i1 %i.n, i1 %i.o, i1 %i.p, !dbg !23396 ; 2 uses
  %..i.i.i.i.i.i.1 = select i1 %i.q, i32 %.val29.i.i.i.1, i32 %..i.i.pn.i.i.i.i, !dbg !23399
  %.2.i.i.i.i.i.i.1 = select i1 %i.q, i64 %.val.i.i.i.1, i64 %.2.i.i.pn.i.i.i.i, !dbg !23399
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1, !dbg !23400

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1: ; preds = %bb.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i
  %.2.i.i.pn.i.i.i.i.1 = phi i64 [ %.2.i.i.i.i.i.i.1, %bb.e ], [ %.2.i.i.pn.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i ] ; 3 uses
  %..i.i.pn.i.i.i.i.1 = phi i32 [ %..i.i.i.i.i.i.1, %bb.e ], [ %..i.i.pn.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i ] ; 3 uses
    #dbg_value(i64 %.2.i.i.pn.i.i.i.i.1, !23176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23204)
    #dbg_value(i32 %..i.i.pn.i.i.i.i.1, !23176, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23204)
  %i.r = add nuw i64 %.sroa.05.0.i.i.i, 2, !dbg !23401 ; 2 uses
    #dbg_value(i64 %i.r, !23194, !DIExpression(), !23217)
    #dbg_value(i64 %i.r, !23218, !DIExpression(), !23222)
  %niter.next.1 = add i64 %niter, 2, !dbg !23402  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !23402
  br i1 %niter.ncmp.1, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !23402

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEB1x_B1x_NCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2l_10TimerTable12next_timeout0NvYB1x_NtNtBa_3cmp3Ord3minE0B2p_.exit.i.i.i.1
  %lcmp.mod.not = trunc i64 %i.c to i1, !dbg !23282
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit, !dbg !23282

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.r, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.i.i.epil.init = phi i32 [ %.val13.i.i.i, %bb.b ], [ %..i.i.pn.i.i.i.i.1, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ %.val.le29.i.i.i, %bb.b ], [ %.2.i.i.pn.i.i.i.i.1, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod17 = trunc i64 %i.c to i1, !dbg !23282
  tail call void @llvm.assume(i1 %lcmp.mod17), !dbg !23282
    #dbg_value(i64 %.sroa.02.0.i.i.i.epil.init, !23176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23204)
    #dbg_value(i32 %.sroa.6.0.i.i.i.epil.init, !23176, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23204)
    #dbg_value(i64 %.sroa.05.0.i.i.i.epil.init, !23218, !DIExpression(), !23222)
    #dbg_value(i64 %.sroa.05.0.i.i.i.epil.init, !23194, !DIExpression(), !23217)
    #dbg_value(ptr %.ptr14.le, !23257, !DIExpression(), !23261)
    #dbg_value(i64 %.sroa.05.0.i.i.i.epil.init, !23260, !DIExpression(), !23261)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.ptr14.le, i64 %.sroa.05.0.i.i.i.epil.init, !dbg !23263 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !23264
  %.val29.i.i.i.epil = load i32, ptr %i.t, align 8, !dbg !23264, !range !23166, !noundef !153 ; 3 uses
    #dbg_value(i64 %.sroa.02.0.i.i.i.epil.init, !23265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23279)
    #dbg_value(i32 %.sroa.6.0.i.i.i.epil.init, !23265, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23279)
    #dbg_value(ptr poison, !23271, !DIExpression(), !23279)
  %.not.i.i.i.i.epil = icmp eq i32 %.val29.i.i.i.epil, -1, !dbg !23281
  br i1 %.not.i.i.i.i.epil, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit, label %bb.f, !dbg !23282

bb.f:                                             ; preds = %.epil.preheader
  %.val.i.i.i.epil = load i64, ptr %i.s, align 8, !dbg !23264 ; 3 uses
    #dbg_value(i64 %.val.i.i.i.epil, !23274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23283)
    #dbg_value(i32 %.val29.i.i.i.epil, !23274, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23283)
    #dbg_value(i64 %.sroa.02.0.i.i.i.epil.init, !23284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23301)
    #dbg_value(i32 %.sroa.6.0.i.i.i.epil.init, !23284, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23301)
    #dbg_value(i64 %.val.i.i.i.epil, !23284, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23301)
    #dbg_value(i32 %.val29.i.i.i.epil, !23284, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23301)
    #dbg_value(ptr poison, !23293, !DIExpression(), !23301)
    #dbg_value(i64 %.sroa.02.0.i.i.i.epil.init, !23303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23310)
    #dbg_value(i32 %.sroa.6.0.i.i.i.epil.init, !23303, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23310)
    #dbg_value(i64 %.val.i.i.i.epil, !23307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23310)
    #dbg_value(i32 %.val29.i.i.i.epil, !23307, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23310)
    #dbg_value(ptr poison, !23312, !DIExpression(), !23322)
    #dbg_value(ptr poison, !23319, !DIExpression(), !23322)
    #dbg_declare(ptr poison, !23324, !DIExpression(), !23351)
    #dbg_value(ptr poison, !23353, !DIExpression(), !23361)
    #dbg_value(ptr poison, !23363, !DIExpression(), !23370)
    #dbg_value(ptr poison, !23360, !DIExpression(), !23361)
    #dbg_value(ptr poison, !23369, !DIExpression(), !23370)
    #dbg_value(ptr poison, !23372, !DIExpression(), !23381)
    #dbg_value(ptr poison, !23380, !DIExpression(), !23381)
    #dbg_value(ptr poison, !23383, !DIExpression(), !23394)
    #dbg_value(ptr poison, !23391, !DIExpression(), !23394)
  %i.u = icmp eq i64 %.val.i.i.i.epil, %.sroa.02.0.i.i.i.epil.init, !dbg !23396
    #dbg_value(i8 poison, !23348, !DIExpression(), !23397)
  %i.v = icmp samesign ult i32 %.val29.i.i.i.epil, %.sroa.6.0.i.i.i.epil.init, !dbg !23398
  %i.w = icmp slt i64 %.val.i.i.i.epil, %.sroa.02.0.i.i.i.epil.init, !dbg !23398
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w, !dbg !23396 ; 2 uses
  %..i.i.i.i.i.i.epil = select i1 %i.x, i32 %.val29.i.i.i.epil, i32 %.sroa.6.0.i.i.i.epil.init, !dbg !23399
  %.2.i.i.i.i.i.i.epil = select i1 %i.x, i64 %.val.i.i.i.epil, i64 %.sroa.02.0.i.i.i.epil.init, !dbg !23399
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit, !dbg !23400

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit: ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2D_10TimerTable12next_timeout0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i
  %.sroa.2.0.i = phi i32 [ %.val13.i.i.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2D_10TimerTable12next_timeout0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i ], [ %..i.i.pn.i.i.i.i.1, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.epil, %bb.f ], [ %.sroa.6.0.i.i.i.epil.init, %.epil.preheader ], !dbg !23097
  %.sroa.0.0.i = phi i64 [ %.mux27.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2D_10TimerTable12next_timeout0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i ], [ %.2.i.i.pn.i.i.i.i.1, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsG258MDvU3F_3std4time7InstantEENCNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection5timerNtB2y_10TimerTable12next_timeout0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1R_NtNtBc_3cmp3Ord3minEB2C_.exit.loopexit.unr-lcssa ], [ %.2.i.i.i.i.i.i.epil, %bb.f ], [ %.sroa.02.0.i.i.i.epil.init, %.epil.preheader ]
  %i.y = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0, !dbg !23403
  %i.z = insertvalue { i64, i32 } %i.y, i32 %.sroa.2.0.i, 1, !dbg !23403
  ret { i64, i32 } %i.z, !dbg !23404
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeE7next_kvCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 !dbg !23405 {
bb.a:
    #dbg_value(ptr poison, !23470, !DIExpression(), !23477)
    #dbg_declare(ptr %1, !23440, !DIExpression(), !23502)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23503
  %i.b = load i64, ptr %i.a, align 8, !dbg !23503, !noundef !153 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !23503, !nonnull !153, !noundef !153 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23503
  %i.e = load i64, ptr %i.d, align 8, !dbg !23503, !noundef !153 ; 2 uses
    #dbg_value(ptr %i.c, !23441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23504)
    #dbg_value(ptr %i.c, !23500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23505)
    #dbg_value(i64 %i.b, !23441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23504)
    #dbg_value(i64 %i.b, !23500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23505)
    #dbg_value(i64 %i.e, !23441, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23504)
    #dbg_value(i64 %i.e, !23500, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23505)
    #dbg_value(ptr undef, !23470, !DIExpression(), !23477)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 890, !dbg !23506
  %i.g = load i16, ptr %i.f, align 2, !dbg !23506, !noundef !153
  %i.h = zext i16 %i.g to i64, !dbg !23507
  %i.i = icmp ult i64 %i.e, %i.h, !dbg !23511
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !23511

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.035 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.034 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.035, !23500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23505)
    #dbg_value(i64 %.sroa.5.034, !23500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23505)
    #dbg_value(ptr %.sroa.0.035, !23451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23512)
    #dbg_value(i64 %.sroa.5.034, !23451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23512)
    #dbg_value(i64 poison, !23451, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23512)
    #dbg_value(ptr poison, !23513, !DIExpression(), !23524)
    #dbg_value(ptr poison, !23550, !DIExpression(), !23575)
    #dbg_value(ptr poison, !23548, !DIExpression(), !23576)
    #dbg_value(ptr poison, !23577, !DIExpression(), !23582)
    #dbg_value(ptr poison, !23549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23576)
    #dbg_value(ptr %.sroa.0.035, !23572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23584)
    #dbg_value(i64 %.sroa.5.034, !23572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23584)
    #dbg_value(ptr %.sroa.0.035, !23573, !DIExpression(), !23585)
  %i.j = load ptr, ptr %.sroa.0.035, align 8, !dbg !23586, !noalias !23587, !noundef !153 ; 4 uses
    #dbg_value(ptr undef, !23577, !DIExpression(), !23582)
  %.not.i = icmp eq ptr %i.j, null, !dbg !23590
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !23591

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.k = zext i16 %i.p to i64, !dbg !23592
    #dbg_value(i64 %i.k, !23441, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23504)
    #dbg_value(i64 %i.k, !23500, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23505)
  br label %._crit_edge, !dbg !23595

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ], !dbg !23596
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ], !dbg !23596
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ], !dbg !23596
    #dbg_value(ptr %.sroa.0.0.lcssa, !23449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23597)
    #dbg_value(i64 %.sroa.5.0.lcssa, !23449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23597)
    #dbg_value(i64 %.sroa.8.0.lcssa, !23449, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23597)
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !dbg !23595
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23595
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !23595
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23595
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8, !dbg !23595
  br label %bb.d, !dbg !23598

bb.b:                                             ; preds = %.lr.ph
    #dbg_value(ptr null, !23548, !DIExpression(), !23576)
    #dbg_value(ptr poison, !23522, !DIExpression(DW_OP_deref), !23524)
    #dbg_value(ptr undef, !23523, !DIExpression(DW_OP_deref), !23524)
    #dbg_value(ptr poison, !23549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23576)
    #dbg_value(ptr undef, !23549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23576)
    #dbg_value(ptr %.sroa.0.035, !23468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23600)
    #dbg_value(i64 %.sroa.5.034, !23468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23600)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23601
  store ptr %.sroa.0.035, ptr %i.l, align 8, !dbg !23601
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23601
  store i64 %.sroa.5.034, ptr %i.m, align 8, !dbg !23601
  store ptr null, ptr %0, align 8, !dbg !23601
  br label %bb.d, !dbg !23598

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr undef, !23548, !DIExpression(), !23576)
    #dbg_value(ptr poison, !23522, !DIExpression(DW_OP_deref), !23524)
    #dbg_value(ptr undef, !23523, !DIExpression(DW_OP_deref), !23524)
    #dbg_value(ptr poison, !23549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23576)
    #dbg_value(ptr undef, !23549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23576)
    #dbg_value(ptr undef, !23550, !DIExpression(), !23575)
    #dbg_value(ptr undef, !23513, !DIExpression(), !23524)
  %i.n = add i64 %.sroa.5.034, 1, !dbg !23602     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 888, !dbg !23603
  %i.p = load i16, ptr %i.o, align 8, !dbg !23603, !noalias !23587 ; 2 uses
    #dbg_value(ptr %i.j, !23500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23505)
    #dbg_value(ptr %i.j, !23441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23504)
    #dbg_value(i64 %i.n, !23500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23505)
    #dbg_value(i64 %i.n, !23441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23504)
    #dbg_value(i16 %i.p, !23500, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !23505)
    #dbg_value(i16 %i.p, !23441, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !23504)
    #dbg_value(ptr undef, !23470, !DIExpression(), !23477)
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 890, !dbg !23506
  %i.r = load i16, ptr %i.q, align 2, !dbg !23506, !noundef !153
  %i.s = icmp ult i16 %i.p, %i.r, !dbg !23511
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph, !dbg !23511

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void, !dbg !23604
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 !dbg !23605 {
bb.a:
    #dbg_value(ptr poison, !23670, !DIExpression(), !23677)
    #dbg_declare(ptr %1, !23640, !DIExpression(), !23702)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23703
  %i.b = load i64, ptr %i.a, align 8, !dbg !23703, !noundef !153 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !23703, !nonnull !153, !noundef !153 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23703
  %i.e = load i64, ptr %i.d, align 8, !dbg !23703, !noundef !153 ; 2 uses
    #dbg_value(ptr %i.c, !23641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23704)
    #dbg_value(ptr %i.c, !23700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23705)
    #dbg_value(i64 %i.b, !23641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23704)
    #dbg_value(i64 %i.b, !23700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23705)
    #dbg_value(i64 %i.e, !23641, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23704)
    #dbg_value(i64 %i.e, !23700, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23705)
    #dbg_value(ptr undef, !23670, !DIExpression(), !23677)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1066, !dbg !23706
  %i.g = load i16, ptr %i.f, align 2, !dbg !23706, !noundef !153
  %i.h = zext i16 %i.g to i64, !dbg !23707
  %i.i = icmp ult i64 %i.e, %i.h, !dbg !23711
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !23711

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.035 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.034 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.035, !23700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23705)
    #dbg_value(i64 %.sroa.5.034, !23700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23705)
    #dbg_value(ptr %.sroa.0.035, !23651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23712)
    #dbg_value(i64 %.sroa.5.034, !23651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23712)
    #dbg_value(i64 poison, !23651, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23712)
end_hunk_1
