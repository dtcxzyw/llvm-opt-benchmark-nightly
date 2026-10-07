Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.09?download=true
inline.NumInlined: 468
inline.NumDeleted: 249
begin_hunk_0_@_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB2_11LiteralTrie3add:bb.a
  %i.be = phi ptr [ %.pre.i, %._RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateE8push_mutBN_.exit_crit_edge.i ], [ %i.m, %bb.l ], !dbg !9866
    #dbg_value(ptr %i.be, !9579, !DIExpression(), !9007)
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.k, !dbg !9869
    #dbg_value(ptr %i.bf, !9563, !DIExpression(), !9018)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !9870, !noalias !9448
  %i.bg = add nuw nsw i64 %i.k, 1, !dbg !9871
  store i64 %i.bg, ptr %i.e, align 8, !dbg !9871, !alias.scope !9581, !noalias !9582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9872, !noalias !9450
    #dbg_value(ptr %1, !9425, !DIExpression(), !9019)
    #dbg_value(ptr %1, !9428, !DIExpression(), !9020)
    #dbg_value(ptr %1, !9431, !DIExpression(), !9022)
    #dbg_value(ptr %1, !9433, !DIExpression(), !9024)
    #dbg_value(ptr %1, !9435, !DIExpression(), !9026)
    #dbg_value(ptr poison, !9437, !DIExpression(), !9028)
    #dbg_value(ptr poison, !9385, !DIExpression(), !9030)
    #dbg_value(ptr poison, !9440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8849)
    #dbg_value(ptr poison, !9443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8851)
    #dbg_value(i64 %i.bg, !9440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8849)
    #dbg_value(i64 %i.bg, !9443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8851)
  %i.bh = load ptr, ptr %i.d, align 8, !dbg !9873, !alias.scope !9361, !noalias !9448, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.bh, !9440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8849)
    #dbg_value(ptr %i.bh, !9443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8851)
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.j, !dbg !9874 ; 6 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32, !dbg !9875
  %.val.i = load ptr, ptr %i.bj, align 8, !dbg !9875, !noalias !9448
  %i.bk = getelementptr i8, ptr %i.bi, i64 40, !dbg !9875
  %.val96.i = load i64, ptr %i.bk, align 8, !dbg !9875, !noalias !9448, !noundef !1213 ; 2 uses
    #dbg_value(ptr poison, !3878, !DIExpression(), !9035)
    #dbg_value(ptr poison, !3884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9037)
    #dbg_value(i64 %.val96.i, !3884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9037)
  %.not.i.i = icmp eq i64 %.val96.i, 0, !dbg !9876
  %i.bl = getelementptr [16 x i8], ptr %.val.i, i64 %.val96.i, !dbg !9876 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16, !dbg !9876
    #dbg_value(ptr poison, !3903, !DIExpression(), !9039)
    #dbg_value(i64 0, !3911, !DIExpression(), !9039)
    #dbg_declare(ptr poison, !3912, !DIExpression(), !9040)
  %.not.i1.i.i = icmp eq ptr %i.bm, null, !dbg !9877
  %.not.i.i98.i = select i1 %.not.i.i, i1 true, i1 %.not.i1.i.i, !dbg !9876
  br i1 %.not.i.i98.i, label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i, label %bb.q, !dbg !9878

bb.q:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateE8push_mutBN_.exit.i
    #dbg_value(ptr %i.bm, !3913, !DIExpression(), !9041)
  %i.bn = getelementptr i8, ptr %i.bl, i64 -8, !dbg !9879
  %.val.i.i.i = load i64, ptr %i.bn, align 8, !dbg !9879, !alias.scope !9589, !noalias !9448, !noundef !1213
  br label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i, !dbg !9880

_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i: ; preds = %bb.q, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateE8push_mutBN_.exit.i
  %.sroa.02.0.i.i.i = phi i64 [ %.val.i.i.i, %bb.q ], [ 0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie5StateE8push_mutBN_.exit.i ], !dbg !9881
    #dbg_value(!DIArgList(i64 %.sroa.02.0.i.i.i, i64 %.sroa.4.0.i.i.ph.i), !9374, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9044)
    #dbg_value(!DIArgList(i64 %.sroa.02.0.i.i.i, i64 %.sroa.4.0.i.i.ph.i), !9590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9047)
    #dbg_value(i32 %i.az, !9375, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9048)
    #dbg_value(i32 %i.az, !9595, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9047)
    #dbg_value(i8 %.sroa.6.0, !9375, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !9048)
    #dbg_value(i8 %.sroa.6.0, !9595, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !9047)
    #dbg_value(ptr poison, !9437, !DIExpression(), !9052)
    #dbg_value(ptr poison, !9385, !DIExpression(), !9054)
  %i.bo = add i64 %.sroa.02.0.i.i.i, %.sroa.4.0.i.i.ph.i, !dbg !9882 ; 5 uses
    #dbg_value(i64 %i.bo, !9374, !DIExpression(), !9044)
    #dbg_value(i64 %i.bo, !9590, !DIExpression(), !9047)
    #dbg_value(ptr %i.bi, !9594, !DIExpression(), !9047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9604), !dbg !9883
    #dbg_value(ptr %i.bi, !9605, !DIExpression(), !9061)
    #dbg_value(ptr %i.bi, !9616, !DIExpression(), !9064)
    #dbg_value(ptr %i.bi, !9618, !DIExpression(), !9067)
    #dbg_value(ptr %i.bi, !9623, !DIExpression(), !9070)
    #dbg_value(i64 %i.bo, !9611, !DIExpression(), !9061)
    #dbg_value(i64 %i.bo, !9629, !DIExpression(), !9073)
    #dbg_value(i32 %i.az, !9612, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9061)
    #dbg_value(i8 %.sroa.6.0, !9612, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !9061)
    #dbg_value(i64 8, !9633, !DIExpression(), !9078)
    #dbg_value(i64 1, !9631, !DIExpression(), !9080)
    #dbg_value(i64 8, !9633, !DIExpression(), !9085)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !9884 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !9884, !alias.scope !9604, !noalias !9448, !noundef !1213 ; 7 uses
    #dbg_value(i64 %i.bq, !9613, !DIExpression(), !9086)
  %i.br = icmp ult i64 %i.bq, 1152921504606846976, !dbg !9885
  tail call void @llvm.assume(i1 %i.br), !dbg !9886
  %i.bs = icmp ugt i64 %i.bo, %i.bq, !dbg !9887
  br i1 %i.bs, label %bb.s, label %bb.r, !dbg !9887, !prof !3996

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i
    #dbg_value(ptr %i.bi, !9639, !DIExpression(), !9087)
  %i.bt = load i64, ptr %i.bi, align 8, !dbg !9888, !range !2896, !alias.scope !9604, !noalias !9448, !noundef !1213
  %i.bu = icmp eq i64 %i.bq, %i.bt, !dbg !9889
  br i1 %i.bu, label %bb.t, label %bb.u, !dbg !9889

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i
  tail call void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %i.bo, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #29, !dbg !9890, !noalias !9645
  unreachable, !dbg !9890

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie10TransitionE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #26, !dbg !9891, !noalias !9448
  br label %bb.u, !dbg !9892

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !9893
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !9893, !alias.scope !9604, !noalias !9448, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.bw, !9630, !DIExpression(), !9073)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bo, !dbg !9894 ; 4 uses
    #dbg_value(ptr %i.bx, !9614, !DIExpression(), !9094)
    #dbg_value(ptr %i.bx, !9630, !DIExpression(), !9080)
    #dbg_value(ptr %i.bx, !9646, !DIExpression(), !9097)
  %i.by = icmp samesign ult i64 %i.bo, %i.bq, !dbg !9895
  br i1 %i.by, label %bb.v, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie10TransitionE10insert_mutBM_.exit.i, !dbg !9895

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.bx, !9651, !DIExpression(), !9100)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !9896
    #dbg_value(ptr %i.bz, !9654, !DIExpression(), !9100)
  %i.ca = sub nuw nsw i64 %i.bq, %i.bo, !dbg !9897
    #dbg_value(i64 %i.ca, !9655, !DIExpression(), !9100)
  %i.cb = shl nuw nsw i64 %i.ca, 3, !dbg !9898
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr nonnull align 4 %i.bx, i64 %i.cb, i1 false), !dbg !9898, !noalias !9448
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie10TransitionE10insert_mutBM_.exit.i, !dbg !9899

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie10TransitionE10insert_mutBM_.exit.i: ; preds = %bb.v, %bb.u
    #dbg_value(i32 %i.az, !9649, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9097)
    #dbg_value(i8 %.sroa.6.0, !9649, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !9097)
  store i32 %i.az, ptr %i.bx, align 4, !dbg !9900, !noalias !9448
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 4, !dbg !9900
  store i8 %.sroa.6.0, ptr %i.cc, align 4, !dbg !9900, !noalias !9448
  %i.cd = add nuw nsw i64 %i.bq, 1, !dbg !9901
    #dbg_value(i64 %i.cd, !9627, !DIExpression(), !9070)
  store i64 %i.cd, ptr %i.bp, align 8, !dbg !9902, !alias.scope !9604, !noalias !9448
  br label %.backedge, !dbg !9903

.backedge:                                        ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie10TransitionE10insert_mutBM_.exit.i, %.thread.i
  %.sroa.08.0.be = phi i32 [ %i.az, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trie10TransitionE10insert_mutBM_.exit.i ], [ %i.ay, %.thread.i ]
  br label %bb.b, !dbg !9812

bb.w:                                             ; preds = %bb.d, %bb.c
    #dbg_value(ptr %1, !9657, !DIExpression(), !9661)
    #dbg_value(ptr %1, !9662, !DIExpression(), !9669)
    #dbg_value(ptr %1, !9670, !DIExpression(), !9678)
    #dbg_value(ptr %1, !9679, !DIExpression(), !9683)
    #dbg_value(ptr %1, !9684, !DIExpression(), !9687)
    #dbg_value(i32 %.sroa.08.0, !9658, !DIExpression(), !9688)
    #dbg_value(ptr poison, !9689, !DIExpression(), !9692)
    #dbg_value(ptr poison, !9693, !DIExpression(), !9696)
  %i.ce = zext i32 %.sroa.08.0 to i64, !dbg !9904 ; 3 uses
    #dbg_value(i64 %i.ce, !9666, !DIExpression(), !9697)
    #dbg_value(i64 %i.ce, !9698, !DIExpression(), !9708)
    #dbg_value(i64 %i.ce, !9709, !DIExpression(), !9715)
  %i.cf = load i64, ptr %i.e, align 8, !dbg !9905, !noundef !1213 ; 2 uses
    #dbg_value(ptr poison, !9702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9708)
    #dbg_value(ptr poison, !9712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9715)
    #dbg_value(i64 %i.cf, !9702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9708)
    #dbg_value(i64 %i.cf, !9712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9715)
  %i.cg = icmp ugt i64 %i.cf, %i.ce, !dbg !9906
  br i1 %i.cg, label %bb.aa, label %bb.af, !dbg !9906

bb.x:                                             ; preds = %bb.d
    #dbg_value(ptr undef, !9265, !DIExpression(), !9716)
    #dbg_value(ptr %.sroa.7.0, !9310, !DIExpression(), !9313)
    #dbg_value(ptr %.sroa.7.0, !9318, !DIExpression(), !9321)
  %i.ch = getelementptr inbounds i8, ptr %.sroa.7.0, i64 -1, !dbg !9907 ; 2 uses
    #dbg_value(ptr %i.ch, !9310, !DIExpression(), !9313)
    #dbg_value(ptr %i.ch, !9318, !DIExpression(), !9321)
    #dbg_value(ptr %i.ch, !9209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9350)
  br label %bb.f, !dbg !9816

bb.y:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !9547, !DIExpression(), !9120)
    #dbg_value(i64 -9223372036854775805, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9734)
    #dbg_value(i64 -9223372036854775805, !9735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9743)
    #dbg_value(i64 %i.k, !9211, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9734)
    #dbg_value(i64 %i.k, !9735, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9743)
    #dbg_value(i64 %i.k, !9735, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !9743)
    #dbg_value(i64 %i.k, !9211, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !9734)
    #dbg_value(i64 2147483647, !9735, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9743)
    #dbg_value(i64 2147483647, !9211, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9734)
    #dbg_value(i64 -9223372036854775805, !9738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9746)
    #dbg_value(i64 %i.k, !9738, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9746)
    #dbg_value(i64 %i.k, !9738, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 32), !9746)
    #dbg_value(i64 2147483647, !9738, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9746)
  store i64 -9223372036854775805, ptr %0, align 8, !dbg !9908
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9908
  store i64 %i.k, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !9908
  %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9908
  store i64 2147483647, ptr %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx, align 8, !dbg !9908
  br label %bb.z, !dbg !9909

bb.z:                                             ; preds = %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State9add_match.exit, %bb.y
  ret void, !dbg !9909

bb.aa:                                            ; preds = %bb.w
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !9910, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.ci, !9702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9708)
    #dbg_value(ptr %i.ci, !9712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9715)
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce, !dbg !9911 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9750), !dbg !9912
    #dbg_value(ptr %i.cj, !9751, !DIExpression(), !9132)
    #dbg_value(ptr %i.cj, !9756, !DIExpression(), !9135)
    #dbg_value(ptr %i.cj, !9758, !DIExpression(), !9138)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16, !dbg !9913
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !9913, !alias.scope !9750, !noundef !1213 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 1152921504606846976, !dbg !9914
  tail call void @llvm.assume(i1 %i.cm), !dbg !9915
  %i.cn = icmp eq i64 %i.cl, 0, !dbg !9916
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !dbg !9917, !alias.scope !9750 ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !9917        ; 2 uses
  br i1 %i.cn, label %bb.ae, label %bb.ab, !dbg !9918

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 32, !dbg !9919 ; 3 uses
  %.val.i58 = load ptr, ptr %i.cr, align 8, !dbg !9919, !alias.scope !9750 ; 3 uses
    #dbg_value(ptr poison, !3878, !DIExpression(), !9140)
    #dbg_value(ptr poison, !3884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9142)
    #dbg_value(i64 %i.cp, !3884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9142)
  %i.cs = getelementptr [16 x i8], ptr %.val.i58, i64 %i.cp, !dbg !9920 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -16, !dbg !9920
    #dbg_value(ptr poison, !3903, !DIExpression(), !9144)
    #dbg_value(i64 0, !3911, !DIExpression(), !9144)
    #dbg_declare(ptr poison, !3912, !DIExpression(), !9145)
  %.not.i1.i.i60 = icmp eq ptr %i.ct, null, !dbg !9921
  %.not.i.i.i61 = select i1 %i.cq, i1 true, i1 %.not.i1.i.i60, !dbg !9920
  br i1 %.not.i.i.i61, label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63, label %bb.ac, !dbg !9922

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(ptr poison, !3913, !DIExpression(), !9146)
  %i.cu = getelementptr i8, ptr %i.cs, i64 -8, !dbg !9923
  %.val.i.i.i62 = load i64, ptr %i.cu, align 8, !dbg !9923, !alias.scope !9760, !noalias !9750, !noundef !1213
  br label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63, !dbg !9924

_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63: ; preds = %.thread.i66, %bb.ac, %bb.ab
  %.val11.i = phi ptr [ %.val.i58, %bb.ac ], [ %.val.i58, %bb.ab ], [ %.val7.i, %.thread.i66 ]
  %i.cv = phi ptr [ %i.cr, %bb.ac ], [ %i.cr, %bb.ab ], [ %i.de, %.thread.i66 ]
  %4 = phi i64 [ %i.cp, %bb.ac ], [ %i.cp, %bb.ab ], [ 0, %.thread.i66 ] ; 3 uses
  %.sroa.02.0.i.i.i64 = phi i64 [ %.val.i.i.i62, %bb.ac ], [ 0, %bb.ab ], [ 0, %.thread.i66 ], !dbg !9925
    #dbg_value(i64 %.sroa.02.0.i.i.i64, !9753, !DIExpression(), !9149)
    #dbg_value(ptr %i.cj, !9758, !DIExpression(), !9151)
    #dbg_value(i64 %i.cl, !9754, !DIExpression(), !9152)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24, !dbg !9926 ; 2 uses
    #dbg_value(ptr %i.cw, !9761, !DIExpression(), !9155)
    #dbg_value(i64 %.sroa.02.0.i.i.i64, !9765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9155)
    #dbg_value(i64 %i.cl, !9765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9155)
    #dbg_value(ptr %i.cw, !9767, !DIExpression(), !9160)
    #dbg_value(ptr %i.cw, !9776, !DIExpression(), !9163)
    #dbg_value(i64 %.sroa.02.0.i.i.i64, !9772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9160)
    #dbg_value(i64 %i.cl, !9772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9160)
    #dbg_value(i64 16, !9781, !DIExpression(), !9168)
    #dbg_value(i64 %4, !9773, !DIExpression(), !9169)
    #dbg_value(i64 %4, !9789, !DIExpression(), !9172)
    #dbg_value(ptr %i.cw, !9787, !DIExpression(), !9173)
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !9927, !range !2896, !alias.scope !9792, !noundef !1213
  %i.cy = icmp eq i64 %4, %i.cx, !dbg !9928
  br i1 %i.cy, label %bb.ad, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjjEE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !9928

bb.ad:                                            ; preds = %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw) #26, !dbg !9929
  %.pre.i65 = load ptr, ptr %i.cv, align 8, !dbg !9930, !alias.scope !9792
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjjEE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !9931

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjjEE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.ad, %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63
  %i.cz = phi ptr [ %.val11.i, %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63 ], [ %.pre.i65, %bb.ad ], !dbg !9930
    #dbg_value(ptr %i.cz, !9790, !DIExpression(), !9172)
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %4, !dbg !9932 ; 2 uses
    #dbg_value(ptr %i.da, !9774, !DIExpression(), !9182)
    #dbg_value(ptr %i.da, !9793, !DIExpression(), !9185)
    #dbg_value(i64 %.sroa.02.0.i.i.i64, !9796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9185)
    #dbg_value(i64 %i.cl, !9796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9185)
  store i64 %.sroa.02.0.i.i.i64, ptr %i.da, align 8, !dbg !9933
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !9933
  store i64 %i.cl, ptr %i.db, align 8, !dbg !9933
  %i.dc = add i64 %4, 1, !dbg !9934
  store i64 %i.dc, ptr %i.co, align 8, !dbg !9934, !alias.scope !9792
  br label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State9add_match.exit, !dbg !9935

bb.ae:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.cj, !9798, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9188)
    #dbg_value(ptr %i.cj, !9803, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9191)
  %i.dd = icmp ult i64 %i.cp, 576460752303423488, !dbg !9936
  tail call void @llvm.assume(i1 %i.dd), !dbg !9937
  br i1 %i.cq, label %.thread.i66, label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State9add_match.exit, !dbg !9938

.thread.i66:                                      ; preds = %bb.ae
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 32, !dbg !9919 ; 2 uses
  %.val7.i = load ptr, ptr %i.de, align 8, !dbg !9919, !alias.scope !9750
    #dbg_value(ptr poison, !3878, !DIExpression(), !9140)
    #dbg_value(ptr poison, !3884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9142)
    #dbg_value(i64 0, !3884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9142)
    #dbg_value(ptr poison, !3903, !DIExpression(), !9144)
    #dbg_value(i64 0, !3911, !DIExpression(), !9144)
    #dbg_declare(ptr poison, !3912, !DIExpression(), !9145)
  br label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i63, !dbg !9922

_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State9add_match.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjjEE8push_mutCs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.ae
  store i64 -2, ptr %0, align 8, !dbg !9939
  br label %bb.z, !dbg !9909

bb.af:                                            ; preds = %bb.w
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29, !dbg !9906
  unreachable, !dbg !9906
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB2_11LiteralTrie7compile(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9962 {
bb.a:
    #dbg_declare(ptr poison, !10471, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10482)
    #dbg_declare(ptr poison, !10483, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10508)
    #dbg_declare(ptr poison, !10477, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10511)
    #dbg_declare(ptr poison, !10504, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10513)
    #dbg_declare(ptr poison, !10476, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10516)
    #dbg_declare(ptr poison, !10502, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10518)
    #dbg_declare(ptr poison, !10475, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10521)
    #dbg_declare(ptr poison, !10500, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10523)
  %i.a = alloca [112 x i8], align 8               ; 8 uses
    #dbg_declare(ptr poison, !10474, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10524)
    #dbg_declare(ptr poison, !10466, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10525)
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !10474, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10526)
    #dbg_declare(ptr poison, !10462, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10527)
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !10474, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10528)
    #dbg_declare(ptr poison, !10459, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10529)
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 29 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
    #dbg_declare(ptr poison, !10474, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10530)
    #dbg_declare(ptr poison, !10453, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !10531)
  %i.j = alloca [128 x i8], align 8               ; 7 uses
    #dbg_value(ptr %1, !10450, !DIExpression(), !10532)
    #dbg_value(ptr %2, !10451, !DIExpression(), !10532)
    #dbg_declare(ptr %i.j, !10498, !DIExpression(), !10533)
    #dbg_declare(ptr %i.i, !10455, !DIExpression(), !10534)
    #dbg_declare(ptr %i.h, !10456, !DIExpression(), !10535)
    #dbg_declare(ptr %i.g, !10536, !DIExpression(), !10543)
    #dbg_declare(ptr %i.f, !10498, !DIExpression(), !10544)
    #dbg_declare(ptr %i.e, !10461, !DIExpression(), !10545)
    #dbg_declare(ptr %i.d, !10498, !DIExpression(), !10546)
    #dbg_declare(ptr %i.c, !10498, !DIExpression(), !10547)
    #dbg_declare(ptr %i.a, !10468, !DIExpression(), !10548)
    #dbg_value(i32 0, !10549, !DIExpression(), !10553)
    #dbg_value(i64 0, !10554, !DIExpression(), !10559)
    #dbg_value(i64 0, !10560, !DIExpression(), !10565)
    #dbg_value(i64 0, !10566, !DIExpression(), !10571)
    #dbg_value(i64 1, !10572, !DIExpression(), !10577)
    #dbg_value(i64 8, !10583, !DIExpression(), !10590)
    #dbg_value(i64 112, !10583, !DIExpression(), !10622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10522
  call void @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB4_7Builder9add_empty(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2), !dbg !11113
  %i.k = load i64, ptr %i.j, align 8, !dbg !11114, !range !10647, !noundef !1213 ; 2 uses
  %.not = icmp eq i64 %i.k, -2, !dbg !11114
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !11115
  %i.m = load i32, ptr %i.l, align 8, !dbg !11115 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !11116

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.k, !10500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10648)
    #dbg_value(i32 %i.m, !10500, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10648)
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12, !dbg !11117
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !11118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.570.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.567.0..sroa_idx, i64 116, i1 false), !dbg !11117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11119
    #dbg_value(i64 %i.k, !10453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10650)
    #dbg_value(i64 %i.k, !10474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10651)
    #dbg_value(i32 %i.m, !10453, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10650)
    #dbg_value(i32 %i.m, !10474, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10651)
    #dbg_value(i64 %i.k, !10475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10652)
    #dbg_value(i32 %i.m, !10475, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10652)
  store i64 %i.k, ptr %0, align 8, !dbg !11118
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11118
  store i32 %i.m, ptr %.sroa.469.0..sroa_idx, align 8, !dbg !11118
  br label %bb.bp, !dbg !11120

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11119
    #dbg_value(i32 %i.m, !10452, !DIExpression(), !10654)
    #dbg_value(i32 %i.m, !10655, !DIExpression(), !10662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11121
  store i64 0, ptr %i.i, align 8, !dbg !11122
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !11122 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !dbg !11122
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !11122 ; 5 uses
  store i64 0, ptr %i.o, align 8, !dbg !11122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11123
    #dbg_value(ptr %1, !10550, !DIExpression(), !10667)
    #dbg_value(ptr %1, !10555, !DIExpression(), !10668)
    #dbg_value(ptr %1, !10669, !DIExpression(), !10672)
    #dbg_value(ptr %1, !10673, !DIExpression(), !10676)
    #dbg_value(ptr %1, !10677, !DIExpression(), !10680)
    #dbg_value(ptr poison, !10681, !DIExpression(), !10684)
    #dbg_value(ptr poison, !10685, !DIExpression(), !10688)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11124
  %i.q = load i64, ptr %i.p, align 8, !dbg !11124, !noundef !1213 ; 3 uses
    #dbg_value(ptr poison, !10561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10565)
    #dbg_value(ptr poison, !10567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10571)
    #dbg_value(i64 %i.q, !10561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10565)
    #dbg_value(i64 %i.q, !10567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10571)
  %.not171 = icmp eq i64 %i.q, 0, !dbg !11125
  br i1 %.not171, label %bb.g, label %bb.d, !dbg !11125

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11126
  %i.s = load ptr, ptr %i.r, align 8, !dbg !11126, !nonnull !1213, !noundef !1213 ; 5 uses
    #dbg_value(ptr %i.s, !10561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10565)
    #dbg_value(ptr %i.s, !10567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10571)
  call void @llvm.experimental.noalias.scope.decl(metadata !10692), !dbg !11127
  call void @llvm.experimental.noalias.scope.decl(metadata !10693), !dbg !11127
    #dbg_value(ptr poison, !4037, !DIExpression(), !10025)
    #dbg_value(ptr %i.s, !10697, !DIExpression(), !10026)
  call void @llvm.experimental.noalias.scope.decl(metadata !10702), !dbg !11128
    #dbg_value(ptr %i.s, !4045, !DIExpression(), !10030)
    #dbg_value(ptr %i.s, !4050, !DIExpression(), !10032)
    #dbg_value(ptr %i.s, !4052, !DIExpression(), !10034)
    #dbg_value(ptr %i.s, !4054, !DIExpression(), !10036)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !11129
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11129, !alias.scope !10703, !noalias !10704, !nonnull !1213, !noundef !1213 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !11130
  %i.w = load i64, ptr %i.v, align 8, !dbg !11130, !alias.scope !10703, !noalias !10704, !noundef !1213 ; 6 uses
    #dbg_value(ptr %i.s, !4056, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10042)
    #dbg_value(ptr %i.s, !4060, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10044)
    #dbg_value(ptr %i.s, !4064, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10046)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !11131
  %i.y = load ptr, ptr %i.x, align 8, !dbg !11131, !alias.scope !10703, !noalias !10704, !nonnull !1213, !noundef !1213 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !11132
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11132, !alias.scope !10703, !noalias !10704, !noundef !1213 ; 2 uses
    #dbg_value(i64 %i.aa, !4073, !DIExpression(), !10052)
    #dbg_value(i64 %i.aa, !4083, !DIExpression(), !10054)
    #dbg_value(ptr %i.y, !4081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10055)
    #dbg_value(ptr %i.y, !4077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10056)
    #dbg_value(i64 %i.aa, !4081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10055)
    #dbg_value(i64 %i.aa, !4077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10056)
    #dbg_value(ptr %i.y, !4078, !DIExpression(), !10057)
    #dbg_value(ptr %i.y, !4084, !DIExpression(), !10054)
  %.idx.i = shl i64 %i.aa, 4, !dbg !11133         ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 %.idx.i, !dbg !11133 ; 4 uses
    #dbg_value(ptr %i.s, !3872, !DIExpression(), !10059)
    #dbg_value(ptr poison, !3878, !DIExpression(), !10061)
    #dbg_value(ptr poison, !3884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10063)
    #dbg_value(i64 %i.aa, !3884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10063)
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0, !dbg !11134
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16, !dbg !11134
    #dbg_value(ptr poison, !3903, !DIExpression(), !10065)
    #dbg_value(i64 0, !3911, !DIExpression(), !10065)
    #dbg_declare(ptr poison, !3912, !DIExpression(), !10066)
  %.not.i1.i.i.i.i = icmp eq ptr %i.ac, null, !dbg !11135
  %.not.i.i.i.i.i = or i1 %.not.i.i.i.i, %.not.i1.i.i.i.i, !dbg !11134
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State6chunks.exit.i, label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i.i.i, !dbg !11136

_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i.i.i: ; preds = %bb.d
    #dbg_value(ptr %i.ac, !3913, !DIExpression(), !10067)
  %i.ad = getelementptr i8, ptr %i.ab, i64 -8, !dbg !11137
  %.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !dbg !11137, !alias.scope !10705, !noalias !10706, !noundef !1213 ; 3 uses
    #dbg_value(i64 %.val.i.i.i.i.i, !3876, !DIExpression(), !10072)
    #dbg_value(i64 %.val.i.i.i.i.i, !3915, !DIExpression(), !10074)
    #dbg_value(i64 %.val.i.i.i.i.i, !3929, !DIExpression(), !10076)
    #dbg_value(i64 %.val.i.i.i.i.i, !3938, !DIExpression(), !10078)
    #dbg_value(i64 %.val.i.i.i.i.i, !3945, !DIExpression(), !10080)
    #dbg_value(ptr %i.s, !3925, !DIExpression(), !10081)
    #dbg_value(ptr poison, !3932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10076)
    #dbg_value(ptr poison, !3942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10078)
    #dbg_value(ptr poison, !3948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10080)
    #dbg_value(i64 %i.w, !3932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10076)
    #dbg_value(i64 %i.w, !3942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10078)
    #dbg_value(i64 %i.w, !3948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10080)
  %i.ae = icmp ugt i64 %.val.i.i.i.i.i, %i.w, !dbg !11138
  br i1 %i.ae, label %.invoke, label %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State6chunks.exit.i, !dbg !11138, !prof !3957

_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State6chunks.exit.i: ; preds = %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i.i.i, %bb.d
  %.sroa.02.0.i.i8.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson12literal_trieNtB5_5State18active_chunk_start.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
    #dbg_value(ptr %i.u, !3932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10076)
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB5_7Builder5build:bb.a
    #dbg_declare(ptr poison, !13864, !DIExpression(), !13049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !14567, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !14568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !14568, !noalias !13870
  call void @_RINvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB6_7Builder10build_manyReEBa_(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(address) dereferenceable(720) %i.ae, ptr noundef nonnull align 16 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef 1), !dbg !14569, !noalias !13839
  %i.ai = load i128, ptr %i.ae, align 16, !dbg !14570, !range !4661, !noalias !13870, !noundef !1213 ; 2 uses
  %i.aj = icmp eq i128 %i.ai, 2, !dbg !14570
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !14571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i64 128, i1 false), !dbg !14571, !noalias !13870
  br i1 %i.aj, label %bb.b, label %bb.c, !dbg !14572

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !14573, !noalias !13870
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.6.i, i64 128, i1 false), !dbg !14573, !noalias !13871
  store i128 2, ptr %0, align 16, !dbg !14574, !alias.scope !13839, !noalias !13871
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !14575
  br label %_RINvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB6_7Builder10build_manyReEBa_.exit, !dbg !14576

bb.c:                                             ; preds = %bb.a
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 144, !dbg !14577
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 144, !dbg !14578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(576) %.sroa.518.0..sroa_idx.i, i64 576, i1 false), !dbg !14577, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !14573, !noalias !13870
    #dbg_value(i128 %i.ai, !13819, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !13051)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !14578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.6.i, i64 128, i1 false), !dbg !14568, !noalias !13870
  store i128 %i.ai, ptr %i.af, align 16, !dbg !14578, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !14575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !14579, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i), !dbg !14580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !14580, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !14580, !noalias !13870
  call void @llvm.experimental.noalias.scope.decl(metadata !13874), !dbg !14581
    #dbg_value(ptr %1, !13876, !DIExpression(), !13056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !14582, !noalias !13881
  call void @llvm.experimental.noalias.scope.decl(metadata !13882), !dbg !14582
  call void @llvm.experimental.noalias.scope.decl(metadata !13883), !dbg !14582
    #dbg_value(ptr %1, !4663, !DIExpression(), !13061)
    #dbg_value(ptr %1, !4668, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !13063)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !14583
  %i.an = load i8, ptr %i.am, align 16, !dbg !14583, !range !3680, !alias.scope !13883, !noalias !13884, !noundef !1213
    #dbg_value(ptr %1, !4671, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !13065)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !14584
  %i.ap = load i8, ptr %i.ao, align 8, !dbg !14584, !range !2511, !alias.scope !13883, !noalias !13884, !noundef !1213 ; 3 uses
  %.not18.i.i.i = icmp eq i8 %i.ap, -1, !dbg !14584
  br i1 %.not18.i.i.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i, label %bb.d, !dbg !14585

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !4672, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !13066)
  call void @llvm.experimental.noalias.scope.decl(metadata !13885), !dbg !14586
    #dbg_value(ptr %1, !4674, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !13070)
  %.not.i.i.i.i = icmp eq i8 %i.ap, 2, !dbg !14587
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i, label %bb.e, !dbg !14588

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !14584
    #dbg_value(ptr %i.aq, !4672, !DIExpression(), !13066)
    #dbg_value(ptr %i.aq, !4674, !DIExpression(), !13070)
    #dbg_value(ptr %i.aq, !4675, !DIExpression(), !13071)
  call void @llvm.experimental.noalias.scope.decl(metadata !13886), !dbg !14589
    #dbg_value(ptr %i.aq, !4677, !DIExpression(), !13075)
    #dbg_value(i64 1, !4679, !DIExpression(), !13078)
    #dbg_value(i8 0, !4681, !DIExpression(), !13078)
    #dbg_value(i64 1, !4686, !DIExpression(), !13080)
    #dbg_value(i8 0, !4688, !DIExpression(), !13080)
    #dbg_value(ptr %i.aq, !4683, !DIExpression(), !13081)
    #dbg_value(ptr %i.aq, !4690, !DIExpression(), !13083)
  %i.ar = load ptr, ptr %i.aq, align 16, !dbg !14590, !alias.scope !13887, !noalias !13888, !nonnull !1213, !noundef !1213 ; 2 uses
    #dbg_value(ptr %i.ar, !4680, !DIExpression(), !13087)
    #dbg_value(ptr %i.ar, !4687, !DIExpression(), !13080)
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !dbg !14591, !noalias !13889
    #dbg_value(i64 %i.as, !4684, !DIExpression(), !13088)
  %i.at = icmp slt i64 %i.as, 0, !dbg !14592
  br i1 %i.at, label %bb.f, label %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, !dbg !14592

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap(), !dbg !14593
  unreachable, !dbg !14593

_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !14590
  %i.av = load ptr, ptr %i.au, align 8, !dbg !14594, !alias.scope !13887, !noalias !13888, !nonnull !1213, !align !4692, !noundef !1213
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !14595
  %i.ax = load i64, ptr %i.aw, align 16, !dbg !14595, !alias.scope !13887, !noalias !13888, !noundef !1213
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i, !dbg !14596

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i: ; preds = %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, %bb.d, %bb.c
  %.sroa.534.0.i.i.i = phi i64 [ %i.ax, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.c ], !dbg !14597
  %.sroa.4.037.i.i.i = phi ptr [ %i.av, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.c ], !dbg !14597
  %.sroa.0.036.i.i.i = phi ptr [ %i.ar, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.c ], !dbg !14597
    #dbg_value(ptr %1, !4695, !DIExpression(DW_OP_plus_uconst, 129, DW_OP_stack_value), !13090)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 129, !dbg !14598
  %i.az = load i8, ptr %i.ay, align 1, !dbg !14598, !range !3680, !alias.scope !13883, !noalias !13884, !noundef !1213
    #dbg_value(ptr %1, !4695, !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value), !13092)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 130, !dbg !14599
  %i.bb = load i8, ptr %i.ba, align 2, !dbg !14599, !range !3680, !alias.scope !13883, !noalias !13884, !noundef !1213
    #dbg_value(ptr %1, !4695, !DIExpression(DW_OP_plus_uconst, 131, DW_OP_stack_value), !13094)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 131, !dbg !14600
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !14600, !range !3680, !alias.scope !13883, !noalias !13884, !noundef !1213
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !14601
    #dbg_value(ptr %1, !4707, !DIExpression(), !13096)
  %i.be = load i128, ptr %1, align 16, !dbg !14602, !range !4712, !alias.scope !13883, !noalias !13884, !noundef !1213
  %i.bf = trunc nuw i128 %i.be to i1, !dbg !14603
  br i1 %i.bf, label %bb.g, label %_RNvXsj_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, !dbg !14603

bb.g:                                             ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i
    #dbg_value(ptr %1, !4710, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13097)
    #dbg_value(ptr %1, !4714, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13099)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.bg, i64 32, i1 false), !dbg !14604, !noalias !13884
  br label %_RNvXsj_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, !dbg !14605

_RNvXsj_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.g, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i128 [ 1, %bb.g ], [ 0, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i.i ], !dbg !14606
    #dbg_value(ptr %1, !4695, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !13101)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 132, !dbg !14607
  %i.bi = load i8, ptr %i.bh, align 4, !dbg !14607, !range !3680, !alias.scope !13883, !noalias !13884, !noundef !1213
    #dbg_value(ptr %1, !4721, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13103)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !14608
  %i.bk = load i64, ptr %i.bj, align 16, !dbg !14608, !range !4394, !alias.scope !13883, !noalias !13884, !noundef !1213 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !14609
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !14609, !alias.scope !13883, !noalias !13884
    #dbg_value(ptr %1, !4695, !DIExpression(DW_OP_plus_uconst, 133, DW_OP_stack_value), !13105)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 133, !dbg !14610
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !14610, !range !3680, !alias.scope !13883, !noalias !13884, !noundef !1213
    #dbg_value(ptr %1, !4726, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !13107)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !14611
  %i.bq = load i64, ptr %i.bp, align 16, !dbg !14611, !range !4496, !alias.scope !13883, !noalias !13884, !noundef !1213 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !14612
  %.val30.i.i.i = load i64, ptr %i.br, align 8, !dbg !14612, !alias.scope !13883, !noalias !13884
  %i.bs = and i64 %i.bq, 1, !dbg !14612
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !14612
  %.sroa.510.0.i.i.i = select i1 %i.bt, i64 undef, i64 %.val30.i.i.i, !dbg !14612
    #dbg_value(ptr %1, !4726, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13109)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !14613
  %i.bv = load i64, ptr %i.bu, align 16, !dbg !14613, !range !4496, !alias.scope !13883, !noalias !13884, !noundef !1213 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !14614
  %.val28.i.i.i = load i64, ptr %i.bw, align 8, !dbg !14614, !alias.scope !13883, !noalias !13884
  %i.bx = and i64 %i.bv, 1, !dbg !14614
  %i.by = icmp eq i64 %i.bx, 0, !dbg !14614
  %.sroa.512.0.i.i.i = select i1 %i.by, i64 undef, i64 %.val28.i.i.i, !dbg !14614
  %i.bz = trunc nuw i64 %i.bk to i1, !dbg !14609
  %.sroa.57.0.i.i.i = select i1 %i.bz, i64 %i.bm, i64 undef, !dbg !14609
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 128, !dbg !14615
  store i8 %i.an, ptr %i.ca, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 96, !dbg !14615
  store ptr %.sroa.0.036.i.i.i, ptr %i.cb, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %.sroa.4.0..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 104, !dbg !14615
  store ptr %.sroa.4.037.i.i.i, ptr %.sroa.4.0..sroa_idx33.i.i.i, align 8, !dbg !14615, !alias.scope !13882, !noalias !13890
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112, !dbg !14615
  store i64 %.sroa.534.0.i.i.i, ptr %.sroa.534.0..sroa_idx.i.i.i, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %.sroa.6.0..sroa_idx35.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 120, !dbg !14615
  store i8 %i.ap, ptr %.sroa.6.0..sroa_idx35.i.i.i, align 8, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 129, !dbg !14615
  store i8 %i.az, ptr %i.cc, align 1, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 130, !dbg !14615
  store i8 %i.bb, ptr %i.cd, align 2, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 131, !dbg !14615
  store i8 %i.bd, ptr %i.ce, align 1, !dbg !14615, !alias.scope !13882, !noalias !13890
  store i128 %.sroa.04.0.i.i.i, ptr %i.u, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !14615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i.i, i64 32, i1 false), !dbg !14615, !noalias !13890
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 132, !dbg !14615
  store i8 %i.bi, ptr %i.cf, align 4, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !14615
  store i64 %i.bk, ptr %i.cg, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 56, !dbg !14615
  store i64 %.sroa.57.0.i.i.i, ptr %i.ch, align 8, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 133, !dbg !14615
  store i8 %i.bo, ptr %i.ci, align 1, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 64, !dbg !14615
  store i64 %i.bq, ptr %i.cj, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 72, !dbg !14615
  store i64 %.sroa.510.0.i.i.i, ptr %i.ck, align 8, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 80, !dbg !14615
  store i64 %i.bv, ptr %i.cl, align 16, !dbg !14615, !alias.scope !13882, !noalias !13890
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 88, !dbg !14615
  store i64 %.sroa.512.0.i.i.i, ptr %i.cm, align 8, !dbg !14615, !alias.scope !13882, !noalias !13890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !14616
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i), !dbg !14617
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !14617
    #dbg_value(ptr %i.cn, !13893, !DIExpression(), !13112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !14618
    #dbg_value(ptr %i.cn, !13900, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13115)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !14619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !dbg !14619, !noalias !13905
    #dbg_value(ptr %i.cn, !13907, !DIExpression(), !13120)
    #dbg_value(ptr %i.cn, !13913, !DIExpression(DW_OP_plus_uconst, 18, DW_OP_stack_value), !13126)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 162, !dbg !14620
  %i.cq = load i8, ptr %i.cp, align 2, !dbg !14620, !range !3680, !noalias !13905, !noundef !1213
    #dbg_value(ptr %i.cn, !13913, !DIExpression(DW_OP_plus_uconst, 19, DW_OP_stack_value), !13128)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 163, !dbg !14621
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !14621, !range !3680, !noalias !13905, !noundef !1213
    #dbg_value(ptr %i.cn, !13920, !DIExpression(), !13132)
  %i.ct = load i64, ptr %i.cn, align 16, !dbg !14622, !range !4496, !noalias !13905, !noundef !1213 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 1, !dbg !14623
  br i1 %i.cu, label %bb.v, label %bb.h, !dbg !14623

bb.h:                                             ; preds = %_RNvXsj_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %bb.v
  %.sroa.52.0.i.i.i = phi i64 [ undef, %_RNvXsj_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.fd, %bb.v ], !dbg !14624
  %.sroa.01.0.i.i.i = phi i64 [ %i.ct, %_RNvXsj_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6ConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ 1, %bb.v ], !dbg !14624
    #dbg_value(ptr %i.cn, !13913, !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value), !13134)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 164, !dbg !14625
  %i.cw = load i8, ptr %i.cv, align 4, !dbg !14625, !range !3680, !noalias !13905, !noundef !1213
    #dbg_value(ptr %i.cn, !13927, !DIExpression(DW_OP_plus_uconst, 21, DW_OP_stack_value), !13138)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 165, !dbg !14626
  %i.cy = load i8, ptr %i.cx, align 1, !dbg !14626, !range !2511, !noalias !13905, !noundef !1213
    #dbg_value(ptr %i.cn, !13934, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13142)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !14627
  %i.da = load i8, ptr %i.cz, align 16, !dbg !14627, !range !3708, !noalias !13905, !noundef !1213
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 161, !dbg !14627
  %i.dc = load i8, ptr %i.db, align 1, !dbg !14627, !noalias !13905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !14628, !noalias !13905
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !14628 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13941), !dbg !14628
    #dbg_declare(ptr poison, !13944, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !13149)
    #dbg_declare(ptr poison, !13944, !DIExpression(DW_OP_LLVM_fragment, 320, 192), !13149)
    #dbg_declare(ptr poison, !13944, !DIExpression(DW_OP_LLVM_fragment, 512, 192), !13149)
    #dbg_value(ptr %i.dd, !13953, !DIExpression(), !13150)
    #dbg_value(ptr %i.dd, !13957, !DIExpression(), !13159)
    #dbg_value(ptr %i.dd, !13974, !DIExpression(), !13168)
    #dbg_declare(ptr poison, !13972, !DIExpression(), !13169)
    #dbg_value(i64 1, !13994, !DIExpression(), !13179)
    #dbg_value(ptr %i.dd, !14012, !DIExpression(), !13180)
    #dbg_value(ptr %i.dd, !14015, !DIExpression(), !13183)
    #dbg_value(ptr %i.dd, !14020, !DIExpression(), !13186)
  %i.de = load i64, ptr %i.dd, align 8, !dbg !14629, !noalias !14026, !noundef !1213 ; 2 uses
    #dbg_value(i64 %i.de, !13998, !DIExpression(), !13179)
    #dbg_value(i64 %i.de, !14013, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13187)
    #dbg_value(i64 %i.de, !14027, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13190)
    #dbg_value(i64 %i.de, !14024, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13186)
  %i.df = icmp ult i64 %i.de, 9223372036854775807, !dbg !14630
  br i1 %i.df, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i.i.i, label %bb.i, !dbg !14631, !prof !4403

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #29
          to label %.noexc.i.i unwind label %bb.ax, !dbg !14632, !noalias !14031

.noexc.i.i:                                       ; preds = %bb.i
  unreachable, !dbg !14632

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i.i.i: ; preds = %bb.h
  %i.dg = add nuw nsw i64 %i.de, 1, !dbg !14633
    #dbg_value(i64 %i.dg, !14013, !DIExpression(), !13187)
    #dbg_value(i64 %i.dg, !14027, !DIExpression(), !13190)
    #dbg_value(i64 %i.dg, !14024, !DIExpression(), !13186)
  store i64 %i.dg, ptr %i.dd, align 8, !dbg !14634, !noalias !14026
    #dbg_value(ptr %i.dd, !13990, !DIExpression(), !13193)
    #dbg_value(ptr %i.dd, !14036, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13196)
  call void @llvm.experimental.noalias.scope.decl(metadata !14042), !dbg !14635
    #dbg_value(ptr %i.dd, !14045, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13201)
    #dbg_value(ptr %i.dd, !14051, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !13205)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !14636
  %i.di = load i32, ptr %i.dh, align 8, !dbg !14636, !range !14057, !alias.scope !14042, !noalias !14058, !noundef !1213 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 284, !dbg !14637
  %i.dk = load i32, ptr %i.dj, align 4, !dbg !14637, !alias.scope !14042, !noalias !14058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14638, !noalias !14059
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !14638
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %.noexc.i.i.i.i unwind label %bb.o, !dbg !14638, !noalias !14060

.noexc.i.i.i.i:                                   ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14639, !noalias !14059
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 232, !dbg !14639
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm)
          to label %bb.l unwind label %bb.k, !dbg !14639, !noalias !14061

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.dp, %bb.m ], [ %i.dn, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %bb.p unwind label %bb.n, !dbg !14640, !noalias !14061

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14641, !noalias !14059
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !14641
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtBO_5clone5Clone5cloneCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do)
          to label %_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i.i.i unwind label %bb.m, !dbg !14641, !noalias !14061

bb.m:                                             ; preds = %bb.l
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #25
          to label %bb.j unwind label %bb.n, !dbg !14640, !noalias !14061

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !14642, !noalias !14061
  unreachable, !dbg !14642

bb.o:                                             ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderE6borrowBR_.exit.i.i.i.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.p, !dbg !14643

bb.p:                                             ; preds = %bb.o, %bb.j
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dr, %bb.o ], [ %.pn.i.i.i.i.i, %bb.j ]
    #dbg_value(ptr poison, !14063, !DIExpression(), !13209)
    #dbg_value(ptr poison, !14069, !DIExpression(), !13212)
    #dbg_value(ptr poison, !14073, !DIExpression(), !13215)
  %i.ds = load i64, ptr %i.dd, align 8, !dbg !14644, !noalias !14026, !noundef !1213
  %i.dt = add i64 %i.ds, -1, !dbg !14645
  store i64 %i.dt, ptr %i.dd, align 8, !dbg !14646, !noalias !14026
  br label %.body.i.i, !dbg !14647

_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i.i.i: ; preds = %bb.l
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !14648
    #dbg_value(ptr %i.du, !14045, !DIExpression(), !13201)
    #dbg_value(ptr %i.du, !14051, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !13205)
  %i.dv = trunc nuw i32 %i.di to i1, !dbg !14637
  %.sroa.5.0.i.i.i.i.i = select i1 %i.dv, i32 %i.dk, i32 undef, !dbg !14637
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !14649
  %i.dx = load i64, ptr %i.dw, align 16, !dbg !14649, !alias.scope !14042, !noalias !14058, !noundef !1213
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !14650
  %i.dz = load i8, ptr %i.dy, align 8, !dbg !14650, !range !3708, !alias.scope !14042, !noalias !14058, !noundef !1213
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 297, !dbg !14651
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !14651, !range !3708, !alias.scope !14042, !noalias !14058, !noundef !1213
    #dbg_value(ptr %i.du, !14079, !DIExpression(DW_OP_plus_uconst, 106, DW_OP_stack_value), !13224)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 298, !dbg !14652
  %i.ed = load i8, ptr %i.ec, align 2, !dbg !14652, !alias.scope !14042, !noalias !14058, !noundef !1213
    #dbg_value(ptr %i.du, !14084, !DIExpression(), !13228)
  %i.ee = load i64, ptr %i.du, align 16, !dbg !14653, !range !4394, !alias.scope !14042, !noalias !14058, !noundef !1213 ; 2 uses
  %i.ef = trunc nuw i64 %i.ee to i1, !dbg !14654
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !14654
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !14654, !alias.scope !14042, !noalias !14058
  %.sroa.52.0.i.i.i.i.i = select i1 %i.ef, i64 %i.eh, i64 undef, !dbg !14654
    #dbg_value(i32 %i.di, !13944, !DIExpression(DW_OP_LLVM_fragment, 704, 32), !13229)
    #dbg_value(i32 %.sroa.5.0.i.i.i.i.i, !13944, !DIExpression(DW_OP_LLVM_fragment, 736, 32), !13229)
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !14655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !14642, !noalias !13905
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !14655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !14642, !noalias !13905
  %.sroa.76.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !14655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !14642, !noalias !13905
    #dbg_value(i64 %i.dx, !13944, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !13229)
    #dbg_value(i8 %i.dz, !13944, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !13229)
    #dbg_value(i8 %i.eb, !13944, !DIExpression(DW_OP_LLVM_fragment, 840, 8), !13229)
    #dbg_value(i8 %i.ed, !13944, !DIExpression(DW_OP_LLVM_fragment, 848, 8), !13229)
    #dbg_value(i64 %i.ee, !13944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13229)
    #dbg_value(i64 %.sroa.52.0.i.i.i.i.i, !13944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13229)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14640, !noalias !14059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14640, !noalias !14059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14640, !noalias !14059
  store i64 0, ptr %i.s, align 8, !dbg !14655, !alias.scope !13941, !noalias !13905
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !14655
  store i64 %i.ee, ptr %i.ei, align 8, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !14655
  store i64 %.sroa.52.0.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.87.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96, !dbg !14655
  store i32 %i.di, ptr %.sroa.87.0..sroa_idx.i.i.i.i, align 8, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.98.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 100, !dbg !14655
  store i32 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.98.0..sroa_idx.i.i.i.i, align 4, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.109.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104, !dbg !14655
  store i64 %i.dx, ptr %.sroa.109.0..sroa_idx.i.i.i.i, align 8, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.1110.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112, !dbg !14655
  store i8 %i.dz, ptr %.sroa.1110.0..sroa_idx.i.i.i.i, align 8, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.1211.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 113, !dbg !14655
  store i8 %i.eb, ptr %.sroa.1211.0..sroa_idx.i.i.i.i, align 1, !dbg !14655, !alias.scope !13941, !noalias !13905
  %.sroa.1312.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 114, !dbg !14655
  store i8 %i.ed, ptr %.sroa.1312.0..sroa_idx.i.i.i.i, align 2, !dbg !14655, !alias.scope !13941, !noalias !13905
    #dbg_value(ptr poison, !14063, !DIExpression(), !13231)
    #dbg_value(ptr poison, !14069, !DIExpression(), !13233)
    #dbg_value(ptr poison, !14073, !DIExpression(), !13235)
  %i.ej = load i64, ptr %i.dd, align 8, !dbg !14656, !noalias !14026, !noundef !1213
  %i.ek = add i64 %i.ej, -1, !dbg !14657
  store i64 %i.ek, ptr %i.dd, align 8, !dbg !14658, !noalias !14026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14659, !noalias !13905
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 304, !dbg !14659 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14093), !dbg !14659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14660
    #dbg_value(ptr %i.el, !14134, !DIExpression(), !13262)
    #dbg_declare(ptr %i.m, !14136, !DIExpression(), !13265)
    #dbg_value(ptr %i.el, !14128, !DIExpression(), !13266)
    #dbg_value(ptr %i.el, !14120, !DIExpression(), !13267)
    #dbg_declare(ptr poison, !14130, !DIExpression(), !13268)
    #dbg_value(i64 1, !14141, !DIExpression(), !13271)
    #dbg_value(ptr %i.el, !14096, !DIExpression(), !13272)
    #dbg_value(ptr %i.el, !14094, !DIExpression(), !13273)
    #dbg_value(ptr %i.el, !14144, !DIExpression(), !13276)
  %i.em = load i64, ptr %i.el, align 16, !dbg !14660, !noalias !14147, !noundef !1213 ; 2 uses
    #dbg_value(i64 %i.em, !14142, !DIExpression(), !13271)
    #dbg_value(i64 %i.em, !14097, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13277)
    #dbg_value(i64 %i.em, !14148, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13280)
    #dbg_value(i64 %i.em, !14145, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13276)
  %i.en = icmp ult i64 %i.em, 9223372036854775807, !dbg !14661
  br i1 %i.en, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i.i.i, label %bb.q, !dbg !14662, !prof !4403

bb.q:                                             ; preds = %_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #29
          to label %.noexc.i.i.i unwind label %bb.w, !dbg !14663, !noalias !14150

.noexc.i.i.i:                                     ; preds = %bb.q
  unreachable, !dbg !14663

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler9Utf8StateE6borrowBR_.exit.i.i.i.i: ; preds = %_RNvXsx_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder7BuilderENtNtB7_5clone5Clone5cloneBR_.exit.i.i.i
  %i.eo = add nuw nsw i64 %i.em, 1, !dbg !14664
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB5_7Builder5build:bb.a
  br label %bb.ak

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14738, !noalias !14260
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 456, !dbg !14738
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq)
          to label %bb.as unwind label %bb.an, !dbg !14738, !noalias !14262

bb.an:                                            ; preds = %bb.am
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextDupeEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.ak unwind label %bb.ao, !dbg !14696, !noalias !14262

bb.ao:                                            ; preds = %bb.an, %bb.ak, %.body7.i.i.i.i.i, %.body.i.i.i.i.i, %bb.z
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !14739, !noalias !14262
  unreachable, !dbg !14739

bb.ap:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie9RangeTrieE6borrowBR_.exit.i.i.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq, !dbg !14740

bb.aq:                                            ; preds = %bb.ap, %bb.z
  %eh.lpad-body.i12.i.i.i = phi { ptr, i32 } [ %i.gt, %bb.ap ], [ %.pn.pn.pn.pn.i.i.i.i.i, %bb.z ]
    #dbg_value(ptr poison, !14412, !DIExpression(), !13515)
    #dbg_value(ptr poison, !14069, !DIExpression(), !13517)
    #dbg_value(ptr poison, !14073, !DIExpression(), !13519)
  %i.gu = load i64, ptr %i.fj, align 8, !dbg !14741, !noalias !14243, !noundef !1213
  %i.gv = add i64 %i.gu, -1, !dbg !14742
  store i64 %i.gv, ptr %i.fj, align 8, !dbg !14743, !noalias !14243
  br label %.body16.i.i.i, !dbg !14744

.body16.i.i.i:                                    ; preds = %.body19.i.i.i, %bb.ar, %bb.aq
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body20.i.i.i, %.body19.i.i.i ], [ %i.gw, %bb.ar ], [ %eh.lpad-body.i12.i.i.i, %bb.aq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler9Utf8StateEEB14_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r) #25
          to label %.body.i.i.i unwind label %bb.aw, !dbg !14680, !noalias !14150

bb.ar:                                            ; preds = %bb.y
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body16.i.i.i

bb.as:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14739, !noalias !14243
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !14739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !14739, !noalias !14243
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !14739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !14739, !noalias !14243
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 128, !dbg !14739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !14739, !noalias !14243
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !14739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !14739, !noalias !14243
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !14739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !14739, !noalias !14243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14696, !noalias !14260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14696, !noalias !14260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14696, !noalias !14260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14696, !noalias !14260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14696, !noalias !14260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14696, !noalias !14260
  store i64 0, ptr %i.q, align 8, !dbg !14745, !alias.scope !14189, !noalias !13905
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !14745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.hc, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false), !dbg !14745, !noalias !13905
    #dbg_value(ptr poison, !14412, !DIExpression(), !13524)
    #dbg_value(ptr poison, !14069, !DIExpression(), !13526)
    #dbg_value(ptr poison, !14073, !DIExpression(), !13528)
  %i.hd = load i64, ptr %i.fj, align 8, !dbg !14746, !noalias !14243, !noundef !1213
  %i.he = add i64 %i.hd, -1, !dbg !14747
  store i64 %i.he, ptr %i.fj, align 8, !dbg !14748, !noalias !14243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14749
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 544, !dbg !14750 ; 6 uses
    #dbg_value(ptr %i.hf, !14418, !DIExpression(), !13534)
    #dbg_declare(ptr %i.a, !14422, !DIExpression(), !13537)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14751, !noalias !14427
    #dbg_value(ptr %i.hf, !14428, !DIExpression(), !13546)
    #dbg_value(ptr %i.hf, !14442, !DIExpression(), !13555)
    #dbg_declare(ptr poison, !14440, !DIExpression(), !13556)
    #dbg_value(i64 1, !14460, !DIExpression(), !13562)
    #dbg_value(ptr %i.hf, !14463, !DIExpression(), !13563)
    #dbg_value(ptr %i.hf, !14466, !DIExpression(), !13566)
    #dbg_value(ptr %i.hf, !14468, !DIExpression(), !13569)
  %i.hg = load i64, ptr %i.hf, align 16, !dbg !14752, !noalias !14427, !noundef !1213 ; 2 uses
    #dbg_value(i64 %i.hg, !14461, !DIExpression(), !13562)
    #dbg_value(i64 %i.hg, !14464, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13570)
    #dbg_value(i64 %i.hg, !14471, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13573)
    #dbg_value(i64 %i.hg, !14469, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13569)
  %i.hh = icmp ult i64 %i.hg, 9223372036854775807, !dbg !14753
  br i1 %i.hh, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i.i.i, label %bb.at, !dbg !14754, !prof !4403

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #29
          to label %.noexc18.i.i.i unwind label %bb.av, !dbg !14755, !noalias !14150

.noexc18.i.i.i:                                   ; preds = %bb.at
  unreachable, !dbg !14755

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i.i.i: ; preds = %bb.as
  %i.hi = add nuw nsw i64 %i.hg, 1, !dbg !14756
    #dbg_value(i64 %i.hi, !14464, !DIExpression(), !13570)
    #dbg_value(i64 %i.hi, !14471, !DIExpression(), !13573)
    #dbg_value(i64 %i.hi, !14469, !DIExpression(), !13569)
  store i64 %i.hi, ptr %i.hf, align 16, !dbg !14757, !noalias !14427
    #dbg_value(ptr %i.hf, !14457, !DIExpression(), !13576)
    #dbg_value(ptr %i.hf, !14474, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13579)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 552, !dbg !14758
  call void @llvm.experimental.noalias.scope.decl(metadata !14480), !dbg !14759
  call void @llvm.experimental.noalias.scope.decl(metadata !14481), !dbg !14759
    #dbg_value(ptr %i.hj, !14483, !DIExpression(), !13585)
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 584, !dbg !14760
  %i.hl = load i16, ptr %i.hk, align 8, !dbg !14760, !alias.scope !14481, !noalias !14488, !noundef !1213
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !14761
  %i.hn = load i64, ptr %i.hm, align 16, !dbg !14761, !alias.scope !14481, !noalias !14488, !noundef !1213
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hj)
          to label %bb.bb unwind label %bb.au, !dbg !14762, !noalias !14489

bb.au:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !14491, !DIExpression(), !13588)
    #dbg_value(ptr poison, !14069, !DIExpression(), !13590)
    #dbg_value(ptr poison, !14073, !DIExpression(), !13592)
  %i.hp = load i64, ptr %i.hf, align 16, !dbg !14763, !noalias !14427, !noundef !1213
  %i.hq = add i64 %i.hp, -1, !dbg !14764
  store i64 %i.hq, ptr %i.hf, align 16, !dbg !14765, !noalias !14427
  br label %.body19.i.i.i, !dbg !14766

bb.av:                                            ; preds = %bb.at
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i.i.i, !dbg !14680

.body19.i.i.i:                                    ; preds = %bb.av, %bb.au
  %eh.lpad-body20.i.i.i = phi { ptr, i32 } [ %i.hr, %bb.av ], [ %i.ho, %bb.au ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie9RangeTrieEEB14_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.q) #25
          to label %.body16.i.i.i unwind label %bb.aw, !dbg !14680, !noalias !14150

bb.aw:                                            ; preds = %.body19.i.i.i, %.body16.i.i.i, %.body.i.i.i
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !14767, !noalias !14150
  unreachable, !dbg !14767

bb.ax:                                            ; preds = %bb.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !14768

.body.i.i:                                        ; preds = %bb.ax, %.body.i.i.i, %bb.p
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ht, %bb.ax ], [ %eh.lpad-body.i.i.i.i, %bb.p ], [ %.pn.pn.i.i.i, %.body.i.i.i ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(144) %i.u) #25
          to label %.body.i unwind label %bb.ay, !dbg !14768, !noalias !14031

bb.ay:                                            ; preds = %.body.i.i
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !14769, !noalias !14031
  unreachable, !dbg !14769

bb.az:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ba:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_(ptr noalias nofree noundef align 16 dereferenceable(592) %i.ab) #25
          to label %.body.i unwind label %bb.bu, !dbg !14770, !noalias !13839

bb.bb:                                            ; preds = %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map13Utf8SuffixMapE6borrowBR_.exit.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14771
  store i16 %i.hl, ptr %i.hx, align 8, !dbg !14771, !alias.scope !14480, !noalias !14496
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14771
  store i64 %i.hn, ptr %i.hy, align 8, !dbg !14771, !alias.scope !14480, !noalias !14496
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 552, !dbg !14769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !14772, !noalias !13870
    #dbg_value(ptr poison, !14491, !DIExpression(), !13599)
    #dbg_value(ptr poison, !14069, !DIExpression(), !13601)
    #dbg_value(ptr poison, !14073, !DIExpression(), !13603)
  %i.hz = load i64, ptr %i.hf, align 16, !dbg !14773, !noalias !14427, !noundef !1213
  %i.ia = add i64 %i.hz, -1, !dbg !14774
  store i64 %i.ia, ptr %i.hf, align 16, !dbg !14775, !noalias !14427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14776, !noalias !14427
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i, i64 2, !dbg !14767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.11.24..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !dbg !14767, !noalias !13881
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 184, !dbg !14769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false), !dbg !14767, !noalias !13870
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 304, !dbg !14769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !14767, !noalias !13870
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 376, !dbg !14769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.14.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(168) %i.q, i64 168, i1 false), !dbg !14767, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14680, !noalias !13905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14680, !noalias !13905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14680, !noalias !13905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.ab, ptr noundef nonnull align 16 dereferenceable(144) %i.u, i64 144, i1 false), !dbg !14769, !noalias !13870
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ab, i64 144, !dbg !14769 ; 5 uses
  store i64 %.sroa.01.0.i.i.i, ptr %i.ib, align 16, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 152, !dbg !14769
  store i64 %.sroa.52.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 160, !dbg !14769
  store i8 %i.da, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 161, !dbg !14769
  store i8 %i.dc, ptr %.sroa.6.0..sroa_idx.i.i, align 1, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 162, !dbg !14769
  store i8 %i.cq, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 163, !dbg !14769
  store i8 %i.cs, ptr %.sroa.8.0..sroa_idx.i.i, align 1, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 164, !dbg !14769
  store i8 %i.cw, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 165, !dbg !14769
  store i8 %i.cy, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !dbg !14769, !alias.scope !13874, !noalias !13870
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 166, !dbg !14769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.11.i.i, i64 18, i1 false), !dbg !14769, !noalias !13870
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 544, !dbg !14769
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i, align 16, !dbg !14769, !alias.scope !13874, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i), !dbg !14768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !14768, !noalias !13881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !14777, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !14777, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !14777, !noalias !13870
  %i.ic = getelementptr inbounds nuw i8, ptr %i.y, i64 128, !dbg !14778
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 120, !dbg !14778
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !14778, !alias.scope !14501, !noalias !13870
  store <4 x i8> splat (i8 2), ptr %i.ic, align 16, !dbg !14778, !alias.scope !14501, !noalias !13870
  store i128 0, ptr %i.y, align 16, !dbg !14778, !alias.scope !14501, !noalias !13870
  %i.id = getelementptr inbounds nuw i8, ptr %i.y, i64 132, !dbg !14778
  store i8 2, ptr %i.id, align 4, !dbg !14778, !alias.scope !14501, !noalias !13870
  %i.ie = getelementptr inbounds nuw i8, ptr %i.y, i64 48, !dbg !14778
  store i64 0, ptr %i.ie, align 16, !dbg !14778, !alias.scope !14501, !noalias !13870
  %i.if = getelementptr inbounds nuw i8, ptr %i.y, i64 133, !dbg !14778
  store i8 2, ptr %i.if, align 1, !dbg !14778, !alias.scope !14501, !noalias !13870
  %i.ig = getelementptr inbounds nuw i8, ptr %i.y, i64 64, !dbg !14778
  store i64 2, ptr %i.ig, align 16, !dbg !14778, !alias.scope !14501, !noalias !13870
  %i.ih = getelementptr inbounds nuw i8, ptr %i.y, i64 80, !dbg !14778
  store i64 2, ptr %i.ih, align 16, !dbg !14778, !alias.scope !14501, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !14779, !noalias !13870
  %i.ii = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !14779
  store i8 2, ptr %i.ii, align 8, !dbg !14779, !noalias !13870
  invoke void @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config9prefilter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.z, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(144) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.x)
          to label %bb.bc unwind label %bb.ba, !dbg !14780, !noalias !13839

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !14781, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !14781, !noalias !13870
    #dbg_declare(ptr %i.z, !14502, !DIExpression(), !13617)
    #dbg_value(i1 false, !14503, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13618)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.z, i64 132, !dbg !14782
  store i8 0, ptr %i.ij, align 4, !dbg !14782, !alias.scope !14505, !noalias !14506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aa, ptr noundef nonnull align 16 dereferenceable(128) %i.z, i64 128, i1 false), !dbg !14783, !noalias !13870
    #dbg_value(i8 poison, !13834, !DIExpression(DW_OP_LLVM_fragment, 1024, 8), !13622)
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 129, !dbg !14783
  %.sroa.537.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 129, !dbg !14784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.537.0..sroa_idx38.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.537.0..sroa_idx.i, i64 15, i1 false), !dbg !14783, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !14785, !noalias !13870
    #dbg_value(i1 false, !13835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13623)
    #dbg_value(i8 0, !13834, !DIExpression(DW_OP_LLVM_fragment, 1024, 8), !13622)
  %.sroa.434.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 128, !dbg !14784
  store i8 0, ptr %.sroa.434.0..sroa_idx35.i, align 16, !dbg !14784, !alias.scope !14508, !noalias !13870
  %i.ik = invoke noundef nonnull align 16 ptr @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder9configure(ptr noalias nofree noundef nonnull align 16 dereferenceable(592) %i.ab, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(144) %i.aa)
          to label %bb.bd unwind label %bb.ba, !dbg !14786, !noalias !13839

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !14787, !noalias !13870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !14788, !noalias !13870
    #dbg_value(i8 2, !14509, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !13629)
    #dbg_value(i8 2, !14509, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !13629)
    #dbg_value(i64 2, !14509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13629)
    #dbg_value(i8 2, !14509, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !13629)
    #dbg_value(i8 -1, !14509, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !13629)
    #dbg_value(i8 0, !14509, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !13629)
    #dbg_value(i1 true, !14513, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13630)
    #dbg_value(i8 1, !14509, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !13629)
  store i64 2, ptr %i.w, align 8, !dbg !14789, !alias.scope !14518, !noalias !13870
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !14789
  store i8 0, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !14789, !alias.scope !14518, !noalias !13870
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 18, !dbg !14789
  store <4 x i8> <i8 2, i8 1, i8 2, i8 -1>, ptr %.sroa.543.0..sroa_idx.i, align 2, !dbg !14789, !alias.scope !14518, !noalias !13870
  %i.il = invoke noundef nonnull align 16 ptr @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder8thompson(ptr noalias nofree noundef nonnull align 16 dereferenceable(592) %i.ik, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.be unwind label %bb.ba, !dbg !14790, !noalias !13839

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !14791, !noalias !13870
  invoke void @_RINvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB6_7Builder10build_manyReEBa_(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(address) dereferenceable(720) %i.ac, ptr noundef nonnull align 16 %i.il, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef 1)
          to label %bb.bf unwind label %bb.ba, !dbg !14792, !noalias !13839

bb.bf:                                            ; preds = %bb.be
  %i.im = load i128, ptr %i.ac, align 16, !dbg !14793, !range !4661, !noalias !13870, !noundef !1213 ; 2 uses
  %i.in = icmp eq i128 %i.im, 2, !dbg !14793
  %i.io = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !14794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.67.i, ptr noundef nonnull align 16 dereferenceable(128) %i.io, i64 128, i1 false), !dbg !14794, !noalias !13870
  br i1 %i.in, label %bb.bg, label %bb.bm, !dbg !14795

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !14796, !noalias !13870
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ip, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.67.i, i64 128, i1 false), !dbg !14796, !noalias !13871
  store i128 2, ptr %0, align 16, !dbg !14797, !alias.scope !13839, !noalias !13871
  call void @llvm.experimental.noalias.scope.decl(metadata !14519), !dbg !14770
    #dbg_value(ptr %i.ab, !3184, !DIExpression(), !13637)
  call void @llvm.experimental.noalias.scope.decl(metadata !14520), !dbg !14798
    #dbg_value(ptr %i.ab, !3044, !DIExpression(), !13641)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ab, i64 96, !dbg !14799 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14521), !dbg !14799
    #dbg_value(ptr %i.iq, !2507, !DIExpression(), !13645)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !14800
  %i.is = load i8, ptr %i.ir, align 8, !dbg !14800, !range !2511, !alias.scope !14522, !noalias !13870, !noundef !1213 ; 2 uses
  %i.it = icmp eq i8 %i.is, -1, !dbg !14800
  br i1 %i.it, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i, label %bb.bh, !dbg !14800

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !14523), !dbg !14800
    #dbg_value(ptr %i.iq, !2513, !DIExpression(), !13649)
  %i.iu = icmp eq i8 %i.is, 2, !dbg !14801
  br i1 %i.iu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i, label %bb.bi, !dbg !14801

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !14524), !dbg !14801
    #dbg_value(ptr %i.iq, !2518, !DIExpression(), !13653)
  call void @llvm.experimental.noalias.scope.decl(metadata !14525), !dbg !14802
    #dbg_value(ptr %i.iq, !2523, !DIExpression(), !13657)
  call void @llvm.experimental.noalias.scope.decl(metadata !14526), !dbg !14803
    #dbg_value(ptr %i.iq, !2529, !DIExpression(), !13661)
    #dbg_value(ptr %i.iq, !2532, !DIExpression(), !13663)
    #dbg_value(i64 1, !2542, !DIExpression(), !13665)
    #dbg_value(i8 1, !2548, !DIExpression(), !13665)
    #dbg_value(i64 1, !2550, !DIExpression(), !13667)
    #dbg_value(i8 1, !2555, !DIExpression(), !13667)
  %i.iv = load ptr, ptr %i.iq, align 16, !dbg !14804, !alias.scope !14527, !noalias !13870, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.iv, !2547, !DIExpression(), !13669)
    #dbg_value(ptr %i.iv, !2554, !DIExpression(), !13667)
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !dbg !14805, !noalias !14528
  %i.ix = icmp eq i64 %i.iw, 1, !dbg !14806
  br i1 %i.ix, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i, !dbg !14806

bb.bj:                                            ; preds = %bb.bi
    #dbg_value(i8 2, !2564, !DIExpression(), !13671)
  fence acquire, !dbg !14807
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.iq) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i unwind label %bb.bk, !dbg !14808, !noalias !13839

bb.bk:                                            ; preds = %bb.bj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.ib) #25
          to label %.body.i unwind label %bb.bl, !dbg !14798, !noalias !13839

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.ib)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i unwind label %bb.az, !dbg !14798, !noalias !13839

bb.bl:                                            ; preds = %bb.bk
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !14798, !noalias !13839
  unreachable, !dbg !14798

bb.bm:                                            ; preds = %bb.bf
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 144, !dbg !14809
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !14810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %.sroa.513.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(576) %.sroa.521.0..sroa_idx.i, i64 576, i1 false), !dbg !14809, !noalias !13870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !14796, !noalias !13870
    #dbg_value(i128 %i.im, !13805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !13672)
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !14810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.67.i, i64 128, i1 false), !dbg !14580, !noalias !13870
  store i128 %i.im, ptr %i.ad, align 16, !dbg !14810, !noalias !13870
  call void @llvm.experimental.noalias.scope.decl(metadata !14529), !dbg !14770
    #dbg_value(ptr %i.ab, !3184, !DIExpression(), !13676)
  call void @llvm.experimental.noalias.scope.decl(metadata !14530), !dbg !14811
    #dbg_value(ptr %i.ab, !3044, !DIExpression(), !13680)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ab, i64 96, !dbg !14812 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14531), !dbg !14812
    #dbg_value(ptr %i.ja, !2507, !DIExpression(), !13684)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ab, i64 120, !dbg !14813
  %i.jc = load i8, ptr %i.jb, align 8, !dbg !14813, !range !2511, !alias.scope !14532, !noalias !13870, !noundef !1213 ; 2 uses
  %i.jd = icmp eq i8 %i.jc, -1, !dbg !14813
  br i1 %i.jd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i29.i, label %bb.bn, !dbg !14813

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !14533), !dbg !14813
    #dbg_value(ptr %i.ja, !2513, !DIExpression(), !13688)
  %i.je = icmp eq i8 %i.jc, 2, !dbg !14814
  br i1 %i.je, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i29.i, label %bb.bo, !dbg !14814

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !14534), !dbg !14814
    #dbg_value(ptr %i.ja, !2518, !DIExpression(), !13692)
  call void @llvm.experimental.noalias.scope.decl(metadata !14535), !dbg !14815
    #dbg_value(ptr %i.ja, !2523, !DIExpression(), !13696)
  call void @llvm.experimental.noalias.scope.decl(metadata !14536), !dbg !14816
    #dbg_value(ptr %i.ja, !2529, !DIExpression(), !13700)
    #dbg_value(ptr %i.ja, !2532, !DIExpression(), !13702)
    #dbg_value(i64 1, !2542, !DIExpression(), !13704)
    #dbg_value(i8 1, !2548, !DIExpression(), !13704)
    #dbg_value(i64 1, !2550, !DIExpression(), !13706)
    #dbg_value(i8 1, !2555, !DIExpression(), !13706)
  %i.jf = load ptr, ptr %i.ja, align 16, !dbg !14817, !alias.scope !14537, !noalias !13870, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.jf, !2547, !DIExpression(), !13708)
    #dbg_value(ptr %i.jf, !2554, !DIExpression(), !13706)
  %i.jg = atomicrmw sub ptr %i.jf, i64 1 release, align 8, !dbg !14818, !noalias !14538
end_hunk_2
