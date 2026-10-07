Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.11?download=true
inline.NumInlined: 391
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutyyNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB2x_13OccupiedEntryyyE9remove_kv0NtNtBb_5alloc6GlobalECshovLROGBtMy_11quinn_proto:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 184, !dbg !14009
  store i16 %i.gl, ptr %i.gm, align 8, !dbg !14009, !noalias !13827
    #dbg_value(i64 %i.gi, !2280, !DIExpression(), !13368)
    #dbg_value(i64 %i.gi, !2290, !DIExpression(), !13370)
    #dbg_value(i64 %i.gi, !2297, !DIExpression(), !13372)
  %i.gn = add nuw nsw i64 %.sroa.0.06.i97.i, 4, !dbg !14002
    #dbg_value(i64 %i.gn, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13361)
    #dbg_value(i64 %i.gi, !2472, !DIExpression(), !13373)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !13375)
    #dbg_value(ptr %i.cw, !2483, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13377)
    #dbg_value(i64 %i.gi, !2480, !DIExpression(), !13382)
    #dbg_value(i64 %i.gi, !2483, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13377)
    #dbg_value(i64 %i.gi, !2494, !DIExpression(), !13384)
    #dbg_value(i64 %i.gi, !2497, !DIExpression(), !13386)
    #dbg_value(i64 %i.gi, !2492, !DIExpression(), !13381)
    #dbg_value(i64 poison, !2483, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13377)
    #dbg_value(ptr %i.fk, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13384)
    #dbg_value(ptr %i.fk, !2498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13386)
    #dbg_value(i64 12, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13384)
    #dbg_value(i64 12, !2498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13386)
  %i.go = icmp ult i64 %.sroa.0.06.i97.i, 9, !dbg !14003
  tail call void @llvm.assume(i1 %i.go), !dbg !14004, !noalias !13676
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gi, !dbg !14005
    #dbg_value(ptr %i.gp, !2500, !DIExpression(), !13388)
    #dbg_value(ptr %i.gp, !2502, !DIExpression(), !13390)
    #dbg_value(ptr %i.gp, !2504, !DIExpression(), !13392)
  %i.gq = load ptr, ptr %i.gp, align 8, !dbg !14006, !noalias !13827, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.gq, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13393)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13393)
  store ptr %i.cw, ptr %i.gq, align 8, !dbg !14007, !noalias !13827
  %i.gr = trunc nuw nsw i64 %i.gi to i16, !dbg !14008
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 184, !dbg !14009
  store i16 %i.gr, ptr %i.gs, align 8, !dbg !14009, !noalias !13827
  %exitcond.not.i98.i.3 = icmp eq i64 %i.gi, %.pre-phi132147, !dbg !14010
  br i1 %exitcond.not.i98.i.3, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextyyE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutyyNtB2C_8InternalEB20_ECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i96.i, !dbg !14001

_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextyyE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutyyNtB2C_8InternalEB20_ECshovLROGBtMy_11quinn_proto.exit: ; preds = %.lr.ph.i96.i.prol.loopexit, %.lr.ph.i96.i, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.i
  %.sink.i52 = phi i64 [ 192, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECshovLROGBtMy_11quinn_proto.exit.i ], [ 288, %.lr.ph.i96.i ], [ 288, %.lr.ph.i96.i.prol.loopexit ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %.sink.i52, i64 noundef 8) #22, !dbg !14011, !noalias !13827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13948
    #dbg_value(ptr %i.bt, !13635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12979)
    #dbg_value(i64 %i.bu, !13635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13909
    #dbg_value(ptr %i.bt, !13667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13401)
    #dbg_value(i64 %i.bu, !13667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13401)
    #dbg_declare(ptr poison, !13668, !DIExpression(), !13402)
    #dbg_declare(ptr %i.b, !13670, !DIExpression(), !13403)
    #dbg_declare(ptr %i.b, !13710, !DIExpression(), !13405)
    #dbg_declare(ptr poison, !13711, !DIExpression(), !13406)
    #dbg_declare(ptr %i.a, !13672, !DIExpression(), !13407)
    #dbg_declare(ptr %i.a, !13710, !DIExpression(), !13409)
    #dbg_declare(ptr poison, !13711, !DIExpression(), !13410)
    #dbg_value(ptr poison, !13642, !DIExpression(), !13411)
  %i.gt = load i16, ptr %i.da, align 2, !dbg !13909, !noalias !13676, !noundef !982 ; 2 uses
    #dbg_value(i16 %i.gt, !13669, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !13412)
  %i.gu = icmp ugt i16 %i.gt, 4, !dbg !13910
  br i1 %i.gu, label %_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutyyNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit.thread, label %.lr.ph, !dbg !13910

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13948
    #dbg_value(ptr %2, !13837, !DIExpression(DW_OP_deref), !13415)
  store i8 1, ptr %2, align 1, !dbg !14012, !alias.scope !13841
  br label %.sink.split, !dbg !14013

.sink.split:                                      ; preds = %bb.z, %_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutyyNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14014
  br label %bb.aa, !dbg !14015

bb.aa:                                            ; preds = %.sink.split, %bb.a
  %.sroa.0.0.sink = phi ptr [ %i.f, %bb.a ], [ %i.bi, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.y, %bb.a ], [ %i.bh, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.l, %bb.a ], [ %i.bk, %.sink.split ]
  store i64 %i.n, ptr %0, align 8, !dbg !14015
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14015
  store i64 %i.u, ptr %i.gv, align 8, !dbg !14015
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14015
  store ptr %.sroa.0.0.sink, ptr %i.gw, align 8, !dbg !14015
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14015
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8, !dbg !14015
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14015
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 8, !dbg !14015
  ret void, !dbg !14016
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1i_14LeafOrInternalE11search_treeyEB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14025 {
bb.a:
    #dbg_value(ptr %1, !14111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14118)
    #dbg_value(i64 %2, !14111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14118)
    #dbg_value(ptr %3, !14112, !DIExpression(), !14118)
    #dbg_value(ptr %3, !14119, !DIExpression(), !14139)
  %.val69 = load i64, ptr %3, align 8
  br label %bb.b, !dbg !14227

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !14111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14118)
    #dbg_value(i64 %.sroa.3.0, !14111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14118)
    #dbg_value(ptr %.sroa.0.0, !14134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14139)
    #dbg_value(i64 %.sroa.3.0, !14134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14139)
    #dbg_value(ptr poison, !2864, !DIExpression(), !14041)
    #dbg_value(ptr poison, !2912, !DIExpression(), !14042)
    #dbg_value(ptr poison, !14144, !DIExpression(), !14043)
    #dbg_value(ptr poison, !14145, !DIExpression(), !14043)
    #dbg_value(i64 0, !14146, !DIExpression(), !14043)
    #dbg_value(ptr %.sroa.0.0, !14147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14044)
    #dbg_value(i64 poison, !14147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14044)
    #dbg_value(ptr poison, !14153, !DIExpression(), !14048)
    #dbg_value(ptr %.sroa.0.0, !14154, !DIExpression(), !14049)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1064, !dbg !14228 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1154, !dbg !14229
  %i.c = load i16, ptr %i.b, align 2, !dbg !14229, !noundef !982 ; 2 uses
    #dbg_value(i16 %i.c, !14156, !DIExpression(), !14052)
  %i.d = zext i16 %i.c to i64, !dbg !14230        ; 3 uses
    #dbg_value(ptr %i.a, !14148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14053)
    #dbg_value(i64 %i.d, !14148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14053)
    #dbg_value(i64 %i.d, !14158, !DIExpression(), !14061)
    #dbg_value(i64 %i.d, !14165, !DIExpression(), !14064)
    #dbg_value(ptr %i.a, !14163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14065)
    #dbg_value(ptr %i.a, !14159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14066)
    #dbg_value(i64 %i.d, !14163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14065)
    #dbg_value(i64 %i.d, !14159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14066)
    #dbg_value(ptr %i.a, !14160, !DIExpression(), !14067)
    #dbg_value(ptr %i.a, !14166, !DIExpression(), !14064)
  %.idx = shl nuw nsw i64 %i.d, 3, !dbg !14231
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !14231
    #dbg_value(ptr %i.a, !14149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14068)
    #dbg_value(ptr %i.e, !14149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14068)
    #dbg_value(i64 0, !14149, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14068)
    #dbg_value(ptr undef, !2912, !DIExpression(), !14042)
    #dbg_value(ptr undef, !2864, !DIExpression(), !14041)
    #dbg_value(i64 1, !2972, !DIExpression(), !14070)
    #dbg_value(ptr %i.a, !2884, !DIExpression(), !14071)
    #dbg_value(ptr %i.a, !2976, !DIExpression(), !14070)
    #dbg_value(ptr %i.e, !2885, !DIExpression(), !14072)
    #dbg_value(ptr poison, !2979, !DIExpression(), !14074)
    #dbg_value(ptr poison, !2983, !DIExpression(), !14075)
  %i.f = icmp eq i16 %i.c, 0, !dbg !14232
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !14233

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i101, i64 8, !dbg !14234 ; 2 uses
    #dbg_value(ptr %i.g, !14149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14068)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !14235
    #dbg_value(i64 %i.h, !14149, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14068)
    #dbg_value(ptr %i.g, !14149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14068)
    #dbg_value(i64 %i.h, !14149, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14068)
    #dbg_value(ptr undef, !2912, !DIExpression(), !14042)
    #dbg_value(ptr undef, !2864, !DIExpression(), !14041)
    #dbg_value(i64 1, !2972, !DIExpression(), !14070)
    #dbg_value(ptr %i.g, !2884, !DIExpression(), !14071)
    #dbg_value(ptr %i.g, !2976, !DIExpression(), !14070)
    #dbg_value(ptr %i.e, !2885, !DIExpression(), !14072)
    #dbg_value(ptr poison, !2979, !DIExpression(), !14074)
    #dbg_value(ptr poison, !2983, !DIExpression(), !14075)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !14232
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !14233

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.03.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.03.i101, !14149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14068)
    #dbg_value(i64 %.sroa.8.0.i100, !14149, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14068)
    #dbg_value(ptr %.sroa.0.03.i101, !14149, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14068)
    #dbg_value(ptr %.sroa.0.03.i101, !2913, !DIExpression(), !14076)
    #dbg_value(i64 %.sroa.8.0.i100, !2916, !DIExpression(), !14077)
    #dbg_value(i64 %.sroa.8.0.i100, !14149, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !14068)
    #dbg_value(i64 %.sroa.8.0.i100, !14150, !DIExpression(), !14078)
    #dbg_value(ptr %.sroa.0.03.i101, !14151, !DIExpression(), !14078)
  %.val34.i = load i64, ptr %.sroa.0.03.i101, align 8, !dbg !14236, !noundef !982
    #dbg_value(ptr poison, !2985, !DIExpression(), !14080)
    #dbg_value(ptr poison, !2989, !DIExpression(), !14080)
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val69, i64 %.val34.i), !dbg !14237
  switch i8 %i.j, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !14238

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !14239

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !14114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14169)
    #dbg_value(i64 %.sroa.3.0, !14170, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14191)
    #dbg_value(i64 %.sroa.3.0, !14192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14195)
    #dbg_value(ptr %.sroa.0.0, !14114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14169)
    #dbg_value(ptr %.sroa.0.0, !14170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14191)
    #dbg_value(ptr %.sroa.0.0, !14192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14195)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14169)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14170, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14191)
  %i.k = icmp eq i64 %.sroa.3.0, 0, !dbg !14240
  br i1 %i.k, label %.loopexit, label %bb.e, !dbg !14240

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !14118
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14118
  store ptr %.sroa.0.0, ptr %i.l, align 8, !dbg !14118
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14118
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !14118
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14118
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !14118
  store i64 %storemerge, ptr %0, align 8, !dbg !14118
  ret void, !dbg !14241

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !14116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14196)
    #dbg_value(i64 %.sroa.3.0, !14197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14202)
    #dbg_value(ptr %.sroa.0.0, !14116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14196)
    #dbg_value(ptr %.sroa.0.0, !14197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14202)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14116, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14196)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14197, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14202)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14203, !DIExpression(), !14207)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14208, !DIExpression(), !14212)
    #dbg_value(ptr %.sroa.0.0, !14198, !DIExpression(), !14213)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1160, !dbg !14242
    #dbg_value(ptr %i.m, !14204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14207)
    #dbg_value(ptr %i.m, !14209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14212)
    #dbg_value(i64 12, !14204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14207)
    #dbg_value(i64 12, !14209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14212)
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !14243
  tail call void @llvm.assume(i1 %i.n), !dbg !14244
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph, !dbg !14245
    #dbg_value(ptr %i.o, !14214, !DIExpression(), !14217)
    #dbg_value(ptr %i.o, !14218, !DIExpression(), !14221)
    #dbg_value(ptr %i.o, !14222, !DIExpression(), !14225)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14246, !nonnull !982, !noundef !982
    #dbg_value(ptr %i.p, !14199, !DIExpression(), !14226)
  %i.q = add i64 %.sroa.3.0, -1, !dbg !14247
    #dbg_value(i64 %i.q, !14111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14118)
    #dbg_value(ptr %i.p, !14111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14118)
  br label %bb.b, !dbg !14227
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyyNtB1i_14LeafOrInternalE11search_treeyECshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14256 {
bb.a:
    #dbg_value(ptr %1, !14342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14349)
    #dbg_value(i64 %2, !14342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14349)
    #dbg_value(ptr %3, !14343, !DIExpression(), !14349)
    #dbg_value(ptr %3, !14350, !DIExpression(), !14370)
  %.val69 = load i64, ptr %3, align 8
  br label %bb.b, !dbg !14458

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !14342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14349)
    #dbg_value(i64 %.sroa.3.0, !14342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14349)
    #dbg_value(ptr %.sroa.0.0, !14365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14370)
    #dbg_value(i64 %.sroa.3.0, !14365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14370)
    #dbg_value(ptr poison, !2864, !DIExpression(), !14272)
    #dbg_value(ptr poison, !2912, !DIExpression(), !14273)
    #dbg_value(ptr poison, !14375, !DIExpression(), !14274)
    #dbg_value(ptr poison, !14376, !DIExpression(), !14274)
    #dbg_value(i64 0, !14377, !DIExpression(), !14274)
    #dbg_value(ptr %.sroa.0.0, !14378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14275)
    #dbg_value(i64 poison, !14378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14275)
    #dbg_value(ptr poison, !14384, !DIExpression(), !14279)
    #dbg_value(ptr %.sroa.0.0, !14385, !DIExpression(), !14280)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !14459 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 186, !dbg !14460
  %i.c = load i16, ptr %i.b, align 2, !dbg !14460, !noundef !982 ; 2 uses
    #dbg_value(i16 %i.c, !14387, !DIExpression(), !14283)
  %i.d = zext i16 %i.c to i64, !dbg !14461        ; 3 uses
    #dbg_value(ptr %i.a, !14379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14284)
    #dbg_value(i64 %i.d, !14379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14284)
    #dbg_value(i64 %i.d, !14389, !DIExpression(), !14292)
    #dbg_value(i64 %i.d, !14396, !DIExpression(), !14295)
    #dbg_value(ptr %i.a, !14394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14296)
    #dbg_value(ptr %i.a, !14390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14297)
    #dbg_value(i64 %i.d, !14394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14296)
    #dbg_value(i64 %i.d, !14390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14297)
    #dbg_value(ptr %i.a, !14391, !DIExpression(), !14298)
    #dbg_value(ptr %i.a, !14397, !DIExpression(), !14295)
  %.idx = shl nuw nsw i64 %i.d, 3, !dbg !14462
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !14462
    #dbg_value(ptr %i.a, !14380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14299)
    #dbg_value(ptr %i.e, !14380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14299)
    #dbg_value(i64 0, !14380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14299)
    #dbg_value(ptr undef, !2912, !DIExpression(), !14273)
    #dbg_value(ptr undef, !2864, !DIExpression(), !14272)
    #dbg_value(i64 1, !2972, !DIExpression(), !14301)
    #dbg_value(ptr %i.a, !2884, !DIExpression(), !14302)
    #dbg_value(ptr %i.a, !2976, !DIExpression(), !14301)
    #dbg_value(ptr %i.e, !2885, !DIExpression(), !14303)
    #dbg_value(ptr poison, !2979, !DIExpression(), !14305)
    #dbg_value(ptr poison, !2983, !DIExpression(), !14306)
  %i.f = icmp eq i16 %i.c, 0, !dbg !14463
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !14464

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i101, i64 8, !dbg !14465 ; 2 uses
    #dbg_value(ptr %i.g, !14380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14299)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !14466
    #dbg_value(i64 %i.h, !14380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14299)
    #dbg_value(ptr %i.g, !14380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14299)
    #dbg_value(i64 %i.h, !14380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14299)
    #dbg_value(ptr undef, !2912, !DIExpression(), !14273)
    #dbg_value(ptr undef, !2864, !DIExpression(), !14272)
    #dbg_value(i64 1, !2972, !DIExpression(), !14301)
    #dbg_value(ptr %i.g, !2884, !DIExpression(), !14302)
    #dbg_value(ptr %i.g, !2976, !DIExpression(), !14301)
    #dbg_value(ptr %i.e, !2885, !DIExpression(), !14303)
    #dbg_value(ptr poison, !2979, !DIExpression(), !14305)
    #dbg_value(ptr poison, !2983, !DIExpression(), !14306)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !14463
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !14464

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.03.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.03.i101, !14380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14299)
    #dbg_value(i64 %.sroa.8.0.i100, !14380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14299)
    #dbg_value(ptr %.sroa.0.03.i101, !14380, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14299)
    #dbg_value(ptr %.sroa.0.03.i101, !2913, !DIExpression(), !14307)
    #dbg_value(i64 %.sroa.8.0.i100, !2916, !DIExpression(), !14308)
    #dbg_value(i64 %.sroa.8.0.i100, !14380, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !14299)
    #dbg_value(i64 %.sroa.8.0.i100, !14381, !DIExpression(), !14309)
    #dbg_value(ptr %.sroa.0.03.i101, !14382, !DIExpression(), !14309)
  %.val34.i = load i64, ptr %.sroa.0.03.i101, align 8, !dbg !14467, !noundef !982
    #dbg_value(ptr poison, !2985, !DIExpression(), !14311)
    #dbg_value(ptr poison, !2989, !DIExpression(), !14311)
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val69, i64 %.val34.i), !dbg !14468
  switch i8 %i.j, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !14469

bb.d:                                             ; preds = %.lr.ph
  unreachable, !dbg !14470

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %.lr.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !14345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14400)
    #dbg_value(i64 %.sroa.3.0, !14401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14422)
    #dbg_value(i64 %.sroa.3.0, !14423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14426)
    #dbg_value(ptr %.sroa.0.0, !14345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14400)
    #dbg_value(ptr %.sroa.0.0, !14401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14422)
    #dbg_value(ptr %.sroa.0.0, !14423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14426)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14345, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14400)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14401, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14422)
  %i.k = icmp eq i64 %.sroa.3.0, 0, !dbg !14471
  br i1 %i.k, label %.loopexit, label %bb.e, !dbg !14471

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ], !dbg !14349
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14349
  store ptr %.sroa.0.0, ptr %i.l, align 8, !dbg !14349
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14349
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !14349
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14349
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !14349
  store i64 %storemerge, ptr %0, align 8, !dbg !14349
  ret void, !dbg !14472

bb.e:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.3.0, !14347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14427)
    #dbg_value(i64 %.sroa.3.0, !14428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14433)
    #dbg_value(ptr %.sroa.0.0, !14347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14427)
    #dbg_value(ptr %.sroa.0.0, !14428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14433)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14347, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14427)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14428, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14433)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14434, !DIExpression(), !14438)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14439, !DIExpression(), !14443)
    #dbg_value(ptr %.sroa.0.0, !14429, !DIExpression(), !14444)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 192, !dbg !14473
    #dbg_value(ptr %i.m, !14435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14438)
    #dbg_value(ptr %i.m, !14440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14443)
    #dbg_value(i64 12, !14435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14438)
    #dbg_value(i64 12, !14440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14443)
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !14474
  tail call void @llvm.assume(i1 %i.n), !dbg !14475
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph, !dbg !14476
    #dbg_value(ptr %i.o, !14445, !DIExpression(), !14448)
    #dbg_value(ptr %i.o, !14449, !DIExpression(), !14452)
    #dbg_value(ptr %i.o, !14453, !DIExpression(), !14456)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14477, !nonnull !982, !noundef !982
    #dbg_value(ptr %i.p, !14430, !DIExpression(), !14457)
  %i.q = add i64 %.sroa.3.0, -1, !dbg !14478
    #dbg_value(i64 %i.q, !14342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14349)
    #dbg_value(ptr %i.p, !14342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14349)
  br label %bb.b, !dbg !14458
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1i_14LeafOrInternalE11search_treeyEB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14487 {
bb.a:
    #dbg_value(ptr %1, !14554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14561)
    #dbg_value(i64 %2, !14554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14561)
    #dbg_value(ptr %3, !14555, !DIExpression(), !14561)
    #dbg_value(ptr %3, !14562, !DIExpression(), !14581)
  %.val69 = load i64, ptr %3, align 8
  br label %bb.b, !dbg !14624

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.e ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0, !14554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14561)
    #dbg_value(i64 %.sroa.3.0, !14554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14561)
    #dbg_value(ptr %.sroa.0.0, !14576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14581)
    #dbg_value(i64 %.sroa.3.0, !14576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14581)
    #dbg_value(ptr poison, !2864, !DIExpression(), !14498)
    #dbg_value(ptr poison, !2912, !DIExpression(), !14499)
    #dbg_value(ptr poison, !3050, !DIExpression(), !14500)
    #dbg_value(ptr poison, !3051, !DIExpression(), !14500)
    #dbg_value(i64 0, !3052, !DIExpression(), !14500)
    #dbg_value(ptr %.sroa.0.0, !3053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14501)
    #dbg_value(i64 poison, !3053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14501)
    #dbg_value(ptr poison, !3059, !DIExpression(), !14503)
    #dbg_value(ptr %.sroa.0.0, !3060, !DIExpression(), !14504)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1064, !dbg !14625 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1154, !dbg !14626
  %i.c = load i16, ptr %i.b, align 2, !dbg !14626, !noundef !982 ; 2 uses
    #dbg_value(i16 %i.c, !3062, !DIExpression(), !14506)
  %i.d = zext i16 %i.c to i64, !dbg !14627        ; 3 uses
    #dbg_value(ptr %i.a, !3054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14507)
    #dbg_value(i64 %i.d, !3054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14507)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !3064, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !14510)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !3071, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !14512)
    #dbg_value(ptr %i.a, !3069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14513)
    #dbg_value(ptr %i.a, !3065, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14514)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !3069, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14513)
    #dbg_value(!DIArgList(i64 %i.d, i64 0), !3065, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14514)
    #dbg_value(ptr %i.a, !3066, !DIExpression(), !14515)
    #dbg_value(ptr %i.a, !3072, !DIExpression(), !14512)
  %.idx = shl nuw nsw i64 %i.d, 3, !dbg !14628
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx, !dbg !14628
    #dbg_value(ptr %i.a, !3055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14516)
    #dbg_value(ptr %i.e, !3055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14516)
    #dbg_value(i64 0, !3055, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14516)
    #dbg_value(ptr undef, !2912, !DIExpression(), !14499)
    #dbg_value(ptr undef, !2864, !DIExpression(), !14498)
    #dbg_value(i64 1, !2972, !DIExpression(), !14518)
    #dbg_value(ptr %i.a, !2884, !DIExpression(), !14519)
    #dbg_value(ptr %i.a, !2976, !DIExpression(), !14518)
    #dbg_value(ptr %i.e, !2885, !DIExpression(), !14520)
    #dbg_value(ptr poison, !2979, !DIExpression(), !14522)
    #dbg_value(ptr poison, !2983, !DIExpression(), !14523)
  %i.f = icmp eq i16 %i.c, 0, !dbg !14629
  br i1 %i.f, label %.loopexit.loopexit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, !dbg !14630

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i101, i64 8, !dbg !14631 ; 2 uses
    #dbg_value(ptr %i.g, !3055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14516)
  %i.h = add nuw nsw i64 %.sroa.8.0.i100, 1, !dbg !14632
    #dbg_value(i64 %i.h, !3055, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14516)
    #dbg_value(ptr %i.g, !3055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14516)
    #dbg_value(i64 %i.h, !3055, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14516)
    #dbg_value(ptr undef, !2912, !DIExpression(), !14499)
    #dbg_value(ptr undef, !2864, !DIExpression(), !14498)
    #dbg_value(i64 1, !2972, !DIExpression(), !14518)
    #dbg_value(ptr %i.g, !2884, !DIExpression(), !14519)
    #dbg_value(ptr %i.g, !2976, !DIExpression(), !14518)
    #dbg_value(ptr %i.e, !2885, !DIExpression(), !14520)
    #dbg_value(ptr poison, !2979, !DIExpression(), !14522)
    #dbg_value(ptr poison, !2983, !DIExpression(), !14523)
  %i.i = icmp eq ptr %i.g, %i.e, !dbg !14629
  br i1 %i.i, label %.loopexit.loopexit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, !dbg !14630

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.0.03.i101 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i100 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
    #dbg_value(ptr %.sroa.0.03.i101, !3055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14516)
    #dbg_value(i64 %.sroa.8.0.i100, !3055, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14516)
    #dbg_value(ptr %.sroa.0.03.i101, !3055, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14516)
    #dbg_value(ptr %.sroa.0.03.i101, !2913, !DIExpression(), !14524)
    #dbg_value(i64 %.sroa.8.0.i100, !2916, !DIExpression(), !14525)
    #dbg_value(i64 %.sroa.8.0.i100, !3055, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !14516)
    #dbg_value(i64 %.sroa.8.0.i100, !3055, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !14516)
    #dbg_value(ptr %.sroa.0.03.i101, !3055, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14516)
    #dbg_value(i64 %.sroa.8.0.i100, !3056, !DIExpression(), !14526)
    #dbg_value(ptr %.sroa.0.03.i101, !3057, !DIExpression(), !14526)
  %.val34.i = load i64, ptr %.sroa.0.03.i101, align 8, !dbg !14633, !noundef !982
    #dbg_value(ptr poison, !2985, !DIExpression(), !14528)
    #dbg_value(ptr poison, !2989, !DIExpression(), !14528)
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val69, i64 %.val34.i), !dbg !14634
  switch i8 %i.j, label %bb.d [
    i8 -1, label %.loopexit.loopexit.i
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ], !dbg !14635

bb.d:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  unreachable, !dbg !14636

.loopexit.loopexit.i:                             ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i100, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ] ; 3 uses
    #dbg_value(i64 %.sroa.3.0, !14557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14582)
    #dbg_value(i64 %.sroa.3.0, !14583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14588)
    #dbg_value(i64 %.sroa.3.0, !14589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14592)
    #dbg_value(ptr %.sroa.0.0, !14557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14582)
    #dbg_value(ptr %.sroa.0.0, !14583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14588)
    #dbg_value(ptr %.sroa.0.0, !14589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14592)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14557, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14582)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14583, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14588)
  %i.k = icmp eq i64 %.sroa.3.0, 0, !dbg !14637
  br i1 %i.k, label %.loopexit, label %bb.e, !dbg !14637

.loopexit:                                        ; preds = %.loopexit.loopexit.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  %.sink = phi i64 [ %.sroa.3.0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ], [ 0, %.loopexit.loopexit.i ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i100, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ], [ %.sroa.4.0.i.ph, %.loopexit.loopexit.i ]
  %storemerge = phi i64 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i ], [ 1, %.loopexit.loopexit.i ], !dbg !14561
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14561
  store ptr %.sroa.0.0, ptr %i.l, align 8, !dbg !14561
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14561
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !14561
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14561
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !14561
  store i64 %storemerge, ptr %0, align 8, !dbg !14561
  ret void, !dbg !14638

bb.e:                                             ; preds = %.loopexit.loopexit.i
    #dbg_value(i64 %.sroa.3.0, !14559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14593)
    #dbg_value(i64 %.sroa.3.0, !14594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14599)
    #dbg_value(ptr %.sroa.0.0, !14559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14593)
    #dbg_value(ptr %.sroa.0.0, !14594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14599)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14559, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14593)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14599)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14600, !DIExpression(), !14604)
    #dbg_value(i64 %.sroa.4.0.i.ph, !14605, !DIExpression(), !14609)
    #dbg_value(ptr %.sroa.0.0, !14595, !DIExpression(), !14610)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1160, !dbg !14639
    #dbg_value(ptr %i.m, !14601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14604)
    #dbg_value(ptr %i.m, !14606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 12, !14601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14604)
    #dbg_value(i64 12, !14606, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14609)
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12, !dbg !14640
  tail call void @llvm.assume(i1 %i.n), !dbg !14641
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph, !dbg !14642
    #dbg_value(ptr %i.o, !14611, !DIExpression(), !14614)
    #dbg_value(ptr %i.o, !14615, !DIExpression(), !14618)
    #dbg_value(ptr %i.o, !14619, !DIExpression(), !14622)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14643, !nonnull !982, !noundef !982
    #dbg_value(ptr %i.p, !14596, !DIExpression(), !14623)
  %i.q = add i64 %.sroa.3.0, -1, !dbg !14644
    #dbg_value(i64 %i.q, !14554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14561)
    #dbg_value(ptr %i.p, !14554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14561)
  br label %bb.b, !dbg !14624
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEEB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14651 {
bb.a:
    #dbg_value(ptr %1, !15114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15128)
    #dbg_value(i64 %2, !15114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15128)
    #dbg_declare(ptr %3, !15115, !DIExpression(), !15129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15130), !dbg !15307
    #dbg_value(ptr %1, !15131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14669)
    #dbg_value(i64 %2, !15131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14669)
    #dbg_value(ptr %3, !15136, !DIExpression(), !14669)
    #dbg_value(i1 false, !15137, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14670)
    #dbg_value(i64 0, !15138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14671)
    #dbg_value(ptr %3, !15138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14671)
    #dbg_value(ptr %3, !15163, !DIExpression(), !14674)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !15308
  %i.b = load i8, ptr %i.a, align 8, !dbg !15308, !range !15168, !alias.scope !15169, !noalias !15170, !noundef !982 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1, !dbg !15308
  %.sroa.3.0.idx.i.i = select i1 %i.c, i64 0, i64 8, !dbg !15308
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.3.0.idx.i.i, !dbg !15308 ; 3 uses
    #dbg_value(i8 %i.b, !15139, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14671)
    #dbg_value(ptr %.sroa.3.0.i.i, !15139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14671)
  %i.d = icmp eq i8 %i.b, 0, !dbg !15309
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !15309

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !15145, !DIExpression(), !14678)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14681)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14683)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14685)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14687)
    #dbg_value(ptr undef, !15147, !DIExpression(), !14678)
    #dbg_value(ptr poison, !15173, !DIExpression(), !14688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15178), !dbg !15310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15179), !dbg !15310
    #dbg_value(ptr %3, !3171, !DIExpression(), !14693)
    #dbg_value(ptr %.sroa.3.0.i.i, !3175, !DIExpression(), !14693)
  %i.e = load i64, ptr %3, align 8, !dbg !15311, !alias.scope !15180, !noalias !15181, !noundef !982
  %i.f = load i64, ptr %.sroa.3.0.i.i, align 8, !dbg !15312, !alias.scope !15182, !noalias !15183, !noundef !982
  %i.g = icmp ugt i64 %i.e, %i.f, !dbg !15311
  br i1 %i.g, label %bb.d, label %.preheader.i.preheader, !dbg !15313, !prof !2027

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !15145, !DIExpression(), !14678)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14681)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14683)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14685)
    #dbg_value(ptr undef, !15172, !DIExpression(), !14687)
    #dbg_value(ptr undef, !15147, !DIExpression(), !14678)
    #dbg_value(ptr poison, !15173, !DIExpression(), !14694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15184), !dbg !15314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15185), !dbg !15314
    #dbg_value(ptr %3, !3171, !DIExpression(), !14699)
    #dbg_value(ptr %.sroa.3.0.i.i, !3175, !DIExpression(), !14699)
  %i.h = load i64, ptr %3, align 8, !dbg !15315, !alias.scope !15186, !noalias !15187, !noundef !982
  %i.i = load i64, ptr %.sroa.3.0.i.i, align 8, !dbg !15316, !alias.scope !15188, !noalias !15189, !noundef !982
  %i.j = icmp ugt i64 %i.h, %i.i, !dbg !15315
  br i1 %i.j, label %bb.d, label %.preheader.i.preheader, !dbg !15313, !prof !2027

.preheader.i.preheader:                           ; preds = %bb.b, %bb.c
  %.sroa.045.1.i491.ph907 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %.val24.i.i = load i64, ptr %3, align 8, !alias.scope !15130, !noalias !15190
  %.val22.i.i = load i64, ptr %3, align 8
  br label %.preheader.i, !dbg !15317

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !dbg !15318, !noalias !15191
  unreachable, !dbg !15318

bb.e:                                             ; preds = %bb.z
    #dbg_value(i64 %2, !15161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14704)
    #dbg_value(i64 %2, !15192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14709)
    #dbg_value(ptr %1, !15161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14704)
    #dbg_value(ptr %1, !15192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14709)
    #dbg_value(i64 poison, !15161, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14704)
    #dbg_value(i64 poison, !15192, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14709)
    #dbg_value(i64 poison, !15196, !DIExpression(), !14712)
    #dbg_value(i64 poison, !15199, !DIExpression(), !14715)
    #dbg_value(ptr %1, !15193, !DIExpression(), !14716)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0236.i, i64 1160, !dbg !15319
    #dbg_value(ptr poison, !15197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14712)
    #dbg_value(ptr poison, !15200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14715)
    #dbg_value(i64 12, !15197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14712)
    #dbg_value(i64 12, !15200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14715)
  %i.l = icmp ult i64 %.sroa.0126.0224.i, 12, !dbg !15320
  tail call void @llvm.assume(i1 %i.l), !dbg !15321
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.0126.0224.i, !dbg !15322
    #dbg_value(ptr poison, !15202, !DIExpression(), !14719)
    #dbg_value(ptr poison, !15204, !DIExpression(), !14722)
    #dbg_value(ptr poison, !15206, !DIExpression(), !14725)
  %i.n = load ptr, ptr %i.m, align 8, !dbg !15323, !noalias !15191, !nonnull !982, !noundef !982 ; 4 uses
    #dbg_value(ptr poison, !15194, !DIExpression(), !14726)
  %i.o = add i64 %i.cf, -1, !dbg !15324           ; 4 uses
    #dbg_value(i64 poison, !15131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14669)
    #dbg_value(ptr %1, !15131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14669)
    #dbg_value(i64 0, !15151, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14727)
    #dbg_value(i64 0, !15148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14728)
    #dbg_value(ptr %3, !15151, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14727)
    #dbg_value(ptr %3, !15148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14728)
    #dbg_value(i64 poison, !15153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14729)
    #dbg_value(i64 poison, !15149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14730)
    #dbg_value(ptr %.sroa.3.0.i.i, !15153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14729)
    #dbg_value(ptr %.sroa.3.0.i.i, !15149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14730)
    #dbg_value(i64 0, !3185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14731)
    #dbg_value(ptr %3, !3185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14731)
    #dbg_value(ptr poison, !3184, !DIExpression(), !14731)
    #dbg_value(ptr poison, !3193, !DIExpression(), !14733)
  switch i64 %.sroa.9.0220.i.ph899, label %.unreachabledefault [
    i64 0, label %.preheader.i.backedge
    i64 1, label %.preheader290.i
    i64 2, label %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker5ImmutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1j_14LeafOrInternalE22find_upper_bound_indexyEB1I_.exit.jt2.i.peel.thread.loopexit
    i64 3, label %.loopexit
  ], !dbg !15325

bb.f:                                             ; preds = %bb.aa
    #dbg_value(i64 %2, !15161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14704)
    #dbg_value(i64 %2, !15192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14709)
    #dbg_value(ptr %1, !15161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14704)
    #dbg_value(ptr %1, !15192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14709)
    #dbg_value(i64 poison, !15161, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14704)
    #dbg_value(i64 poison, !15192, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14709)
    #dbg_value(i64 poison, !15196, !DIExpression(), !14712)
    #dbg_value(i64 poison, !15199, !DIExpression(), !14715)
    #dbg_value(ptr %1, !15193, !DIExpression(), !14716)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0237.i, i64 1160, !dbg !15319
    #dbg_value(ptr poison, !15197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14712)
    #dbg_value(ptr poison, !15200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14715)
    #dbg_value(i64 12, !15197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14712)
    #dbg_value(i64 12, !15200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14715)
  %i.q = icmp ult i64 %.sroa.0126.0225.i, 12, !dbg !15320
  tail call void @llvm.assume(i1 %i.q), !dbg !15321
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0126.0225.i, !dbg !15322
    #dbg_value(ptr poison, !15202, !DIExpression(), !14719)
    #dbg_value(ptr poison, !15204, !DIExpression(), !14722)
    #dbg_value(ptr poison, !15206, !DIExpression(), !14725)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !15323, !noalias !15191, !nonnull !982, !noundef !982 ; 2 uses
    #dbg_value(ptr poison, !15194, !DIExpression(), !14726)
  %i.t = add i64 %i.cr, -1, !dbg !15324           ; 2 uses
    #dbg_value(i64 poison, !15131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14669)
    #dbg_value(ptr %1, !15131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14669)
    #dbg_value(i64 0, !15151, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14727)
    #dbg_value(i64 0, !15148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14728)
    #dbg_value(ptr %3, !15151, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14727)
    #dbg_value(ptr %3, !15148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14728)
    #dbg_value(i64 poison, !15153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14729)
    #dbg_value(i64 poison, !15149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14730)
    #dbg_value(ptr %.sroa.3.0.i.i, !15153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14729)
    #dbg_value(ptr %.sroa.3.0.i.i, !15149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14730)
    #dbg_value(i64 0, !3185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14731)
    #dbg_value(ptr %3, !3185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14731)
    #dbg_value(ptr poison, !3184, !DIExpression(), !14731)
    #dbg_value(ptr poison, !3193, !DIExpression(), !14733)
  br i1 %i.cs, label %.preheader.i.backedge, label %bb.s, !dbg !15325

.preheader.i.backedge:                            ; preds = %bb.h, %bb.e, %bb.f, %bb.g
  %.be = phi i64 [ %i.t, %bb.f ], [ %i.y, %bb.g ], [ %i.ad, %bb.h ], [ %i.o, %bb.e ]
  %.sroa.045.1.i491.be = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ %.sroa.9.0220.i.ph899, %bb.h ], [ 3, %bb.e ]
  %.sroa.647.1.i489.be = phi ptr [ %.sroa.647.1247.i, %bb.f ], [ undef, %bb.g ], [ %.sroa.647.1246.i.ph, %bb.e ], [ %.sroa.647.1246.i.ph, %bb.h ]
  %.sroa.0.0.i487.be = phi ptr [ %i.s, %bb.f ], [ %i.x, %bb.g ], [ %i.ac, %bb.h ], [ %i.n, %bb.e ]
  br label %.preheader.i

bb.g:                                             ; preds = %bb.ab
    #dbg_value(i64 %2, !15161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14704)
    #dbg_value(i64 %2, !15192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14709)
    #dbg_value(ptr %1, !15161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14704)
    #dbg_value(ptr %1, !15192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14709)
    #dbg_value(i64 poison, !15161, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14704)
end_hunk_0
