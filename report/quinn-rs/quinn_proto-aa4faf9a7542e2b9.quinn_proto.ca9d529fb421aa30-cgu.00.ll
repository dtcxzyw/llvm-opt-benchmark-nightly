Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.00?download=true
inline.NumInlined: 1353
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection21set_key_discard_timer:bb.a
    #dbg_value(i32 %i.k, !8535, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52383)
  br label %bb.h, !dbg !52490

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i = phi i32 [ %i.k, %bb.g ], [ 0, %bb.f ], !dbg !52491
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.g ], [ 0, %bb.f ], !dbg !52491
    #dbg_value(i64 %.sroa.0.0.i, !8535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52383)
    #dbg_value(i64 %.sroa.0.0.i, !8542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52382)
    #dbg_value(i32 %.sroa.3.0.i, !8535, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52383)
    #dbg_value(i32 %.sroa.3.0.i, !8542, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52382)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !52492
  %i.m = tail call { i64, i32 } @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator8pto_base(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l), !dbg !52493 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0, !dbg !52493 ; 2 uses
    #dbg_value(i64 %i.n, !8534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52383)
    #dbg_value(i32 poison, !8534, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52383)
    #dbg_value(i64 %i.n, !8544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52385)
    #dbg_value(i32 poison, !8544, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52385)
    #dbg_value(i64 %.sroa.0.0.i, !8548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52385)
    #dbg_value(i32 %.sroa.3.0.i, !8548, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52385)
    #dbg_value(i64 1, !8553, !DIExpression(), !52387)
    #dbg_value(i64 %i.n, !8554, !DIExpression(), !52389)
    #dbg_value(i64 %.sroa.0.0.i, !8555, !DIExpression(), !52389)
  %i.o = add i64 %i.n, %.sroa.0.0.i, !dbg !52494  ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.n, !dbg !52494
    #dbg_value(i1 %i.p, !8558, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52391)
  br i1 %i.p, label %bb.l, label %bb.i, !dbg !52495, !prof !6298

bb.i:                                             ; preds = %bb.h
  %i.q = extractvalue { i64, i32 } %i.m, 1, !dbg !52493
    #dbg_value(i32 %i.q, !8534, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52383)
    #dbg_value(i32 %i.q, !8544, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52385)
    #dbg_value(i64 %i.o, !8549, !DIExpression(), !52392)
    #dbg_value(i64 %i.o, !8554, !DIExpression(), !52387)
  %i.r = add nuw nsw i32 %i.q, %.sroa.3.0.i, !dbg !52496 ; 3 uses
    #dbg_value(i32 %i.r, !8550, !DIExpression(), !52393)
  %i.s = icmp samesign ugt i32 %i.r, 999999999, !dbg !52497
  br i1 %i.s, label %bb.j, label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit, !dbg !52497

bb.j:                                             ; preds = %bb.i
    #dbg_value(i32 %i.r, !8550, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !52393)
  %i.t = icmp eq i64 %i.o, -1, !dbg !52498
    #dbg_value(i1 %i.t, !8558, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52395)
  br i1 %i.t, label %bb.l, label %bb.k, !dbg !52499, !prof !6298

bb.k:                                             ; preds = %bb.j
  %i.u = add nuw i64 %i.o, 1, !dbg !52498
  %i.v = add nsw i32 %i.r, -1000000000, !dbg !52500
    #dbg_value(i32 %i.v, !8550, !DIExpression(), !52393)
    #dbg_value(i64 %i.u, !8549, !DIExpression(), !52392)
    #dbg_value(i64 %i.u, !8554, !DIExpression(), !52387)
  br label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit, !dbg !52501

bb.l:                                             ; preds = %bb.j, %bb.h
    #dbg_value(i64 poison, !8529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52381)
    #dbg_value(i32 -1, !8529, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52381)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #30, !dbg !52502
  unreachable, !dbg !52502

_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit: ; preds = %bb.i, %bb.k
  %.sroa.4.0.i.i = phi i32 [ %i.v, %bb.k ], [ %i.r, %bb.i ], !dbg !52503
  %.sroa.0.0.i.i = phi i64 [ %i.u, %bb.k ], [ %i.o, %bb.i ], !dbg !52503
    #dbg_value(i64 poison, !8529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52381)
    #dbg_value(i32 %.sroa.4.0.i.i, !8529, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52381)
    #dbg_value(i64 %.sroa.0.0.i.i, !52426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52459)
    #dbg_value(i32 %.sroa.4.0.i.i, !52426, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52459)
    #dbg_value(i64 %.sroa.0.0.i.i, !8568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52397)
    #dbg_value(i32 %.sroa.4.0.i.i, !8568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52397)
    #dbg_value(i32 3, !8572, !DIExpression(), !52397)
    #dbg_value(i64 3, !8579, !DIExpression(), !52399)
    #dbg_value(i64 3, !8584, !DIExpression(), !52401)
    #dbg_value(!DIArgList(i32 %.sroa.4.0.i.i, i64 3), !8573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !52402)
    #dbg_value(i64 poison, !8574, !DIExpression(), !52403)
    #dbg_value(i64 poison, !8593, !DIExpression(), !52405)
    #dbg_value(i64 poison, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52406)
    #dbg_value(i64 %.sroa.0.0.i.i, !8580, !DIExpression(), !52399)
    #dbg_value(i64 %.sroa.0.0.i.i, !8590, !DIExpression(), !52401)
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i.i, i64 3), !dbg !52504 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1, !dbg !52504
    #dbg_value(i64 poison, !8581, !DIExpression(), !52407)
    #dbg_value(i1 %i.x, !8582, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52407)
    #dbg_value(i1 %i.x, !8597, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52409)
  br i1 %i.x, label %select.unfold, label %bb.m, !dbg !52505, !prof !6298

bb.m:                                             ; preds = %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit
  %i.y = zext nneg i32 %.sroa.4.0.i.i to i64, !dbg !52506
    #dbg_value(!DIArgList(i64 %i.y, i64 3), !8573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !52402)
  %i.z = mul nuw nsw i64 %i.y, 3, !dbg !52506     ; 2 uses
    #dbg_value(i64 %i.z, !8573, !DIExpression(), !52402)
    #dbg_value(i64 poison, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52406)
    #dbg_value(i64 poison, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52406)
  %i.aa = extractvalue { i64, i1 } %i.w, 0, !dbg !52504 ; 2 uses
    #dbg_value(i64 %i.aa, !8581, !DIExpression(), !52407)
  %i.ab = udiv i64 %i.z, 1000000000, !dbg !52507
  %i.ac = urem i64 %i.z, 1000000000, !dbg !52508
    #dbg_value(i64 %i.ab, !8574, !DIExpression(), !52403)
    #dbg_value(i64 %i.ab, !8593, !DIExpression(), !52405)
    #dbg_value(i64 %i.aa, !8576, !DIExpression(), !52410)
    #dbg_value(i64 %i.aa, !8594, !DIExpression(), !52405)
  %i.ad = add i64 %i.aa, %i.ab, !dbg !52509       ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.aa, !dbg !52509
    #dbg_value(i1 %i.ae, !8597, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52412)
  br i1 %i.ae, label %select.unfold, label %bb.n, !dbg !52510, !prof !6298

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %i.ac, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52406)
  %i.af = trunc nuw nsw i64 %i.ac to i32, !dbg !52508
    #dbg_value(i32 %i.af, !8575, !DIExpression(), !52406)
    #dbg_value(i32 %i.af, !52419, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52460)
    #dbg_value(i64 %i.ad, !52419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52460)
  %i.ag = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %.sroa.0.0, i32 noundef %.sroa.3.0, i64 noundef %i.ad, i32 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159), !dbg !52511 ; 2 uses
  %i.ah = extractvalue { i64, i32 } %i.ag, 0, !dbg !52511
  %i.ai = extractvalue { i64, i32 } %i.ag, 1, !dbg !52511 ; 2 uses
    #dbg_value(i64 %i.ah, !52463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52466)
    #dbg_value(i32 %i.ai, !52463, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52466)
  %i.aj = icmp ult i32 %i.ai, 1000000000, !dbg !52512
  tail call void @llvm.assume(i1 %i.aj), !dbg !52512
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3472, !dbg !52513
  store i64 %i.ah, ptr %i.ak, align 16, !dbg !52513
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3480, !dbg !52513
  store i32 %i.ai, ptr %i.al, align 8, !dbg !52513
  ret void, !dbg !52514

select.unfold:                                    ; preds = %bb.m, %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit
    #dbg_value(i64 poison, !52419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52460)
    #dbg_value(i32 -1, !52419, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52460)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #30, !dbg !52515
  unreachable, !dbg !52515
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection23has_pending_retransmits(ptr noundef nonnull align 16 captures(address, read_provenance) %0) unnamed_addr #1 !dbg !52516 {
bb.a:
    #dbg_value(ptr %0, !52518, !DIExpression(), !52520)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2560, !dbg !52521
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4256, !dbg !52522
  %i.c = tail call noundef zeroext i1 @_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11Retransmits8is_empty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %i.b), !dbg !52523
  %i.d = xor i1 %i.c, true, !dbg !52524
  ret i1 %i.d, !dbg !52525
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection23on_packet_authenticated(ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i8 noundef range(i8 0, 3) %3, i8 noundef range(i8 0, 4) %4, i64 noundef range(i64 0, 2) %5, i64 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #1 !dbg !52531 {
bb.a:
  %i.a = alloca [21 x i8], align 1                ; 4 uses
    #dbg_value(ptr poison, !52589, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !52595)
    #dbg_value(i8 %3, !52577, !DIExpression(), !52596)
    #dbg_value(i8 %4, !52578, !DIExpression(), !52596)
    #dbg_value(i64 %5, !52579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52596)
    #dbg_value(i64 %6, !52579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !52596)
    #dbg_value(ptr %0, !52575, !DIExpression(), !52596)
    #dbg_value(i64 %1, !52576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52596)
    #dbg_value(i32 %2, !52576, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52596)
    #dbg_value(i1 %7, !52580, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52596)
    #dbg_value(i1 %8, !52581, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52596)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6168, !dbg !52630 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !52630, !noundef !2226
  %i.d = add i64 %i.c, 1, !dbg !52630
  store i64 %i.d, ptr %i.b, align 8, !dbg !52630
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52597), !dbg !52631
    #dbg_value(ptr %0, !8674, !DIExpression(), !52536)
    #dbg_value(i64 %1, !8675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52536)
    #dbg_value(i32 %2, !8675, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52536)
    #dbg_value(i8 5, !8680, !DIExpression(), !52538)
    #dbg_value(ptr %0, !8684, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52540)
    #dbg_value(ptr %0, !8686, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52542)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6136, !dbg !52632 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !52632, !alias.scope !52597, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !52633
  %i.h = load i32, ptr %i.g, align 8, !dbg !52633, !range !6750, !noalias !52597, !noundef !2226 ; 2 uses
  %.not.i = icmp ne i32 %i.h, -1, !dbg !52633
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.j = load i8, ptr %i.i, align 8, !range !5448, !alias.scope !52597
  %i.k = icmp eq i8 %i.j, 2
  %or.cond.i = select i1 %.not.i, i1 %i.k, i1 false, !dbg !52634
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit, !dbg !52634

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 104, !dbg !52633
  %i.m = load i64, ptr %i.l, align 8, !dbg !52635, !noalias !52597, !noundef !2226
    #dbg_value(i64 %i.m, !8676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52544)
    #dbg_value(i32 %i.h, !8676, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52544)
    #dbg_value(ptr %0, !8681, !DIExpression(DW_OP_plus_uconst, 3424, DW_OP_stack_value), !52545)
  %i.n = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %i.m, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134), !dbg !52636, !noalias !52597 ; 2 uses
  %i.o = extractvalue { i64, i32 } %i.n, 0, !dbg !52636
  %i.p = extractvalue { i64, i32 } %i.n, 1, !dbg !52636 ; 2 uses
    #dbg_value(i64 %i.o, !8682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52538)
    #dbg_value(i32 %i.p, !8682, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52538)
  %i.q = icmp ult i32 %i.p, 1000000000, !dbg !52637
  tail call void @llvm.assume(i1 %i.q), !dbg !52637
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3504, !dbg !52638
  store i64 %i.o, ptr %i.r, align 16, !dbg !52638, !alias.scope !52597
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3512, !dbg !52638
  store i32 %i.p, ptr %i.s, align 8, !dbg !52638, !alias.scope !52597
  br label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit, !dbg !52639

_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection18reset_idle_timeout(ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef %2, i8 noundef %3), !dbg !52640
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6212, !dbg !52641
  store i8 1, ptr %i.t, align 4, !dbg !52641
    #dbg_value(ptr undef, !52589, !DIExpression(), !52595)
  %9 = icmp ne i8 %4, 0, !dbg !52642              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6214, !dbg !52643 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !dbg !52643, !range !6644, !noundef !2226
  %10 = zext i1 %9 to i8, !dbg !52643
  %11 = or i8 %i.v, %10, !dbg !52643
  store i8 %11, ptr %i.u, align 2, !dbg !52643
  br i1 %9, label %bb.c, label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52644

bb.c:                                             ; preds = %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit
    #dbg_value(i8 %4, !52582, !DIExpression(), !52598)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 912, !dbg !52645
    #dbg_value(ptr %i.w, !7432, !DIExpression(), !52547)
    #dbg_value(i8 %3, !7434, !DIExpression(), !52547)
  %i.x = zext nneg i8 %3 to i64, !dbg !52646
  %i.y = getelementptr inbounds nuw [736 x i8], ptr %i.w, i64 %i.x, !dbg !52647 ; 4 uses
    #dbg_value(ptr %i.y, !52583, !DIExpression(), !52599)
    #dbg_value(ptr %i.y, !52602, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !52550)
    #dbg_value(i8 %4, !52606, !DIExpression(), !52550)
  switch i8 %4, label %default.unreachable [
    i8 2, label %bb.d
    i8 1, label %bb.e
    i8 3, label %bb.f
  ], !dbg !52648

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 656, !dbg !52649 ; 2 uses
    #dbg_value(ptr %i.z, !52602, !DIExpression(), !52550)
  %i.aa = load i64, ptr %i.z, align 16, !dbg !52650, !alias.scope !52608, !noundef !2226
  %i.ab = add i64 %i.aa, 1, !dbg !52650
  store i64 %i.ab, ptr %i.z, align 16, !dbg !52650, !alias.scope !52608
  br label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52651

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 664, !dbg !52652 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !52652, !alias.scope !52608, !noundef !2226
  %i.ae = add i64 %i.ad, 1, !dbg !52652
  store i64 %i.ae, ptr %i.ac, align 8, !dbg !52652, !alias.scope !52608
  br label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52653

_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread: ; preds = %bb.e, %bb.d, %bb.f, %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit
  %i.af = trunc nuw i64 %5 to i1, !dbg !52654
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !52654

bb.f:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 672, !dbg !52655 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !dbg !52655, !alias.scope !52608, !noundef !2226
  %i.ai = add i64 %i.ah, 1, !dbg !52655
  store i64 %i.ai, ptr %i.ag, align 16, !dbg !52655, !alias.scope !52608
    #dbg_value(ptr %i.y, !8664, !DIExpression(), !52554)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 152, !dbg !52656
  store i8 1, ptr %i.aj, align 8, !dbg !52656, !alias.scope !52609
  br label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52657

bb.g:                                             ; preds = %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread
    #dbg_value(i64 %6, !52584, !DIExpression(), !52610)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5464, !dbg !52658 ; 2 uses
  %.val = load i64, ptr %i.ak, align 8, !dbg !52659, !range !5627, !noundef !2226
    #dbg_value(ptr poison, !8660, !DIExpression(), !52558)
    #dbg_value(ptr poison, !8662, !DIExpression(), !52560)
  %i.al = icmp eq i64 %.val, -1, !dbg !52660
  br i1 %i.al, label %bb.i, label %bb.j, !dbg !52658

bb.h:                                             ; preds = %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, %bb.o
  ret void, !dbg !52661

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !52612, !DIExpression(DW_OP_plus_uconst, 1328, DW_OP_stack_value), !52615)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1328, !dbg !52662
  %i.an = load ptr, ptr %i.am, align 16, !dbg !52662, !noundef !2226
  %.not13.a = icmp ne ptr %i.an, null, !dbg !52662
  %i.ao = icmp eq i8 %3, 1
  %or.cond = and i1 %i.ao, %.not13.a, !dbg !52663
  br i1 %or.cond, label %bb.l, label %bb.k, !dbg !52663

bb.j:                                             ; preds = %bb.k, %bb.m, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 912, !dbg !52664
    #dbg_value(ptr %i.ap, !7432, !DIExpression(), !52563)
    #dbg_value(i8 %3, !7434, !DIExpression(), !52563)
  %i.aq = zext nneg i8 %3 to i64, !dbg !52665
  %i.ar = getelementptr inbounds nuw [736 x i8], ptr %i.ap, i64 %i.aq, !dbg !52666 ; 2 uses
    #dbg_value(ptr %i.ar, !52586, !DIExpression(), !52616)
  tail call void @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks10insert_one(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ar, i64 noundef %6, i64 noundef %1, i32 noundef %2), !dbg !52667
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 600, !dbg !52668 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !52668, !noundef !2226
  %.not = icmp ult i64 %6, %i.at, !dbg !52669
  br i1 %.not, label %bb.o, label %bb.n, !dbg !52669

bb.k:                                             ; preds = %bb.l, %bb.i
    #dbg_value(ptr %0, !52617, !DIExpression(DW_OP_plus_uconst, 4192, DW_OP_stack_value), !52620)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4192, !dbg !52670
  %i.av = load ptr, ptr %i.au, align 16, !dbg !52670, !noundef !2226
  %.not14 = icmp ne ptr %i.av, null, !dbg !52670
  %brmerge.not = and i1 %8, %.not14, !dbg !52671
  br i1 %brmerge.not, label %bb.m, label %bb.j, !dbg !52671

bb.l:                                             ; preds = %bb.i
  tail call fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection13discard_space(ptr noalias nofree noundef align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef %2, i8 noundef 0), !dbg !52672
  br label %bb.k, !dbg !52672

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection21set_key_discard_timer(ptr noalias nofree noundef align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef %2, i8 noundef %3), !dbg !52673
  br label %bb.j, !dbg !52673

bb.n:                                             ; preds = %bb.j
  store i64 %6, ptr %i.as, align 8, !dbg !52674
  %.val17 = load i64, ptr %i.ak, align 8, !dbg !52675, !range !5627, !noundef !2226
    #dbg_value(ptr poison, !8753, !DIExpression(), !52566)
    #dbg_value(ptr poison, !8755, !DIExpression(), !52568)
  %i.aw = icmp ne i64 %.val17, -1, !dbg !52676
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6210, !dbg !52677
  %i.ay = xor i1 %7, %i.aw, !dbg !52677
  %i.az = zext i1 %i.ay to i8, !dbg !52677
  store i8 %i.az, ptr %i.ax, align 2, !dbg !52677
  br label %bb.o, !dbg !52678

bb.o:                                             ; preds = %bb.j, %bb.n
    #dbg_value(ptr %0, !52621, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52624)
    #dbg_value(ptr %0, !52625, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52628)
  %i.ba = load ptr, ptr %i.e, align 8, !dbg !52679, !nonnull !2226, !noundef !2226
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 224, !dbg !52623
  %i.bc = xor i1 %8, true, !dbg !52680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52681
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6276, !dbg !52681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.a, ptr noundef nonnull align 4 dereferenceable(21) %i.bd, i64 21, i1 false), !dbg !52681
  call void @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection4qlogNtB4_8QlogSink20emit_packet_received(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %6, i8 noundef %3, i1 noundef zeroext %i.bc, i64 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(21) %i.a), !dbg !52682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52683
  br label %bb.h, !dbg !52661
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection24process_decrypted_packet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %7) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52832 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !54028, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54059)
    #dbg_declare(ptr poison, !54028, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54059)
    #dbg_declare(ptr poison, !54061, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54071)
    #dbg_declare(ptr poison, !54061, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54071)
    #dbg_declare(ptr poison, !54072, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54103)
    #dbg_declare(ptr poison, !54072, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54103)
    #dbg_declare(ptr poison, !54053, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54106)
    #dbg_declare(ptr poison, !54053, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54106)
    #dbg_declare(ptr poison, !54107, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54117)
    #dbg_declare(ptr poison, !54107, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54117)
    #dbg_declare(ptr poison, !54098, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54119)
    #dbg_declare(ptr poison, !54098, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54119)
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !54120, !DIExpression(), !54126)
    #dbg_value(ptr poison, !54127, !DIExpression(), !54129)
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !54130, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54134)
    #dbg_value(ptr poison, !54136, !DIExpression(), !52892)
    #dbg_value(ptr poison, !54174, !DIExpression(), !52893)
    #dbg_value(ptr poison, !54198, !DIExpression(), !54204)
  %i.u = alloca [152 x i8], align 8               ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [352 x i8], align 8               ; 4 uses
  %.sroa.6188 = alloca [48 x i8], align 8         ; 3 uses
  %.sroa.4194 = alloca [296 x i8], align 8        ; 2 uses
    #dbg_declare(ptr %.sroa.6188, !54067, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54205)
    #dbg_declare(ptr %.sroa.4194, !54067, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54205)
  %i.y = alloca [352 x i8], align 8               ; 7 uses
  %.sroa.7182 = alloca [48 x i8], align 8         ; 6 uses
    #dbg_declare(ptr %.sroa.7182, !54052, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !54206)
    #dbg_declare(ptr poison, !54052, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !54206)
  %.sroa.6176 = alloca [48 x i8], align 8         ; 5 uses
  %i.z = alloca [152 x i8], align 8               ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !54120, !DIExpression(), !54211)
    #dbg_value(ptr poison, !54127, !DIExpression(), !54212)
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !54130, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54215)
  %i.ak = alloca [72 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !54120, !DIExpression(), !54220)
end_hunk_0
