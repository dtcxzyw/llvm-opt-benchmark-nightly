Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.07?download=true
inline.NumInlined: 195
inline.NumDeleted: 83
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB2_6Finder3new:bb.a
  br i1 %i.an, label %bb.e, label %bb.d, !dbg !6719

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp eq i64 %i.ao, %.sroa.5.034.i, !dbg !6721 ; 2 uses
  %spec.select.i = select i1 %i.ap, i64 0, i64 %i.ao, !dbg !6721
  %i.aq = select i1 %i.ap, i64 %.sroa.5.034.i, i64 0, !dbg !6721
  %spec.select29.i = add i64 %i.aq, %.sroa.05.033.i, !dbg !6721
  br label %bb.g, !dbg !6721

bb.e:                                             ; preds = %bb.c
  %i.ar = add i64 %i.ao, %.sroa.05.033.i, !dbg !6722 ; 2 uses
    #dbg_value(i64 %i.ar, !6691, !DIExpression(), !6617)
    #dbg_value(i64 0, !6692, !DIExpression(), !6618)
  %i.as = sub i64 %i.ar, %.sroa.0.035.i, !dbg !6723
    #dbg_value(i64 %i.as, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
  br label %bb.g, !dbg !6724

bb.f:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.05.033.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6616)
    #dbg_value(i64 1, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
  %i.at = add i64 %.sroa.05.033.i, 1, !dbg !6725
    #dbg_value(i64 %i.at, !6691, !DIExpression(), !6617)
    #dbg_value(i64 0, !6692, !DIExpression(), !6618)
  br label %bb.g, !dbg !6726

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.012.1.i = phi i64 [ 0, %bb.f ], [ 0, %bb.e ], [ %spec.select.i, %bb.d ], !dbg !6720 ; 2 uses
  %.sroa.05.1.i = phi i64 [ %i.at, %bb.f ], [ %i.ar, %bb.e ], [ %spec.select29.i, %bb.d ], !dbg !6727 ; 2 uses
  %.sroa.5.1.i = phi i64 [ 1, %bb.f ], [ %i.as, %bb.e ], [ %.sroa.5.034.i, %bb.d ], !dbg !6728 ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.05.033.i, %bb.f ], [ %.sroa.0.035.i, %bb.e ], [ %.sroa.0.035.i, %bb.d ], !dbg !6728 ; 3 uses
    #dbg_value(i64 %.sroa.0.1.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6616)
    #dbg_value(i64 %.sroa.5.1.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(i64 %.sroa.05.1.i, !6691, !DIExpression(), !6617)
    #dbg_value(i64 %.sroa.012.1.i, !6692, !DIExpression(), !6618)
  %i.au = add i64 %.sroa.05.1.i, %.sroa.012.1.i, !dbg !6729 ; 2 uses
  %i.av = icmp ult i64 %i.au, %2, !dbg !6729
  br i1 %i.av, label %.split.i, label %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit, !dbg !6729

_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit: ; preds = %bb.g
    #dbg_value(i64 %.sroa.0.1.i, !6638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6703)
    #dbg_value(i64 poison, !6638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6704), !dbg !6730
    #dbg_value(ptr %1, !6685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6624)
    #dbg_value(i64 %2, !6685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6624)
    #dbg_value(i1 true, !6689, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6624)
    #dbg_value(i1 true, !6696, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6626)
    #dbg_value(i64 0, !6690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6627)
    #dbg_value(i64 1, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6627)
    #dbg_value(i64 1, !6691, !DIExpression(), !6628)
    #dbg_value(i64 0, !6692, !DIExpression(), !6629)
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.m, %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit
  %i.aw = phi i64 [ %i.bl, %bb.m ], [ 1, %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ]
  %.sroa.0.035.us.i = phi i64 [ %.sroa.0.1.us.i, %bb.m ], [ 0, %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 4 uses
  %.sroa.5.034.us.i = phi i64 [ %.sroa.5.1.us.i, %bb.m ], [ 1, %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 3 uses
  %.sroa.05.033.us.i = phi i64 [ %.sroa.05.1.us.i, %bb.m ], [ 1, %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 4 uses
  %.sroa.012.032.us.i = phi i64 [ %.sroa.012.1.us.i, %bb.m ], [ 0, %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.0.035.us.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6627)
    #dbg_value(i64 %.sroa.5.034.us.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6627)
    #dbg_value(i64 %.sroa.05.033.us.i, !6691, !DIExpression(), !6628)
    #dbg_value(i64 %.sroa.012.032.us.i, !6692, !DIExpression(), !6629)
  %i.ax = add i64 %.sroa.012.032.us.i, %.sroa.0.035.us.i, !dbg !6731 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %2, !dbg !6732
  br i1 %i.ay, label %bb.h, label %.split37.us.i15, !dbg !6732

bb.h:                                             ; preds = %.split.us.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax, !dbg !6732
  %i.ba = load i8, ptr %i.az, align 1, !dbg !6732, !alias.scope !6704, !noundef !1030 ; 2 uses
    #dbg_value(i8 %i.ba, !6693, !DIExpression(), !6630)
    #dbg_value(i8 %i.ba, !6700, !DIExpression(), !6626)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !6733
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !6733, !alias.scope !6704, !noundef !1030 ; 2 uses
    #dbg_value(i8 %i.bc, !6694, !DIExpression(), !6631)
    #dbg_value(i8 %i.bc, !6701, !DIExpression(), !6626)
  %i.bd = icmp ugt i8 %i.bc, %i.ba, !dbg !6734
  br i1 %i.bd, label %bb.l, label %bb.i, !dbg !6734

bb.i:                                             ; preds = %bb.h
  %i.be = icmp ult i8 %i.bc, %i.ba, !dbg !6735
  %i.bf = add i64 %.sroa.012.032.us.i, 1, !dbg !6736 ; 3 uses
  br i1 %i.be, label %bb.k, label %bb.j, !dbg !6735

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp eq i64 %i.bf, %.sroa.5.034.us.i, !dbg !6737 ; 2 uses
  %spec.select.us.i = select i1 %i.bg, i64 0, i64 %i.bf, !dbg !6737
  %i.bh = select i1 %i.bg, i64 %.sroa.5.034.us.i, i64 0, !dbg !6737
  %spec.select29.us.i = add i64 %i.bh, %.sroa.05.033.us.i, !dbg !6737
  br label %bb.m, !dbg !6737

bb.k:                                             ; preds = %bb.i
  %i.bi = add i64 %i.bf, %.sroa.05.033.us.i, !dbg !6738 ; 2 uses
    #dbg_value(i64 %i.bi, !6691, !DIExpression(), !6628)
    #dbg_value(i64 0, !6692, !DIExpression(), !6629)
  %i.bj = sub i64 %i.bi, %.sroa.0.035.us.i, !dbg !6739
    #dbg_value(i64 %i.bj, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6627)
  br label %bb.m, !dbg !6740

bb.l:                                             ; preds = %bb.h
    #dbg_value(i64 %.sroa.05.033.us.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6627)
    #dbg_value(i64 1, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6627)
  %i.bk = add i64 %.sroa.05.033.us.i, 1, !dbg !6741
    #dbg_value(i64 %i.bk, !6691, !DIExpression(), !6628)
    #dbg_value(i64 0, !6692, !DIExpression(), !6629)
  br label %bb.m, !dbg !6742

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.012.1.us.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %spec.select.us.i, %bb.j ], !dbg !6736 ; 2 uses
  %.sroa.05.1.us.i = phi i64 [ %i.bk, %bb.l ], [ %i.bi, %bb.k ], [ %spec.select29.us.i, %bb.j ], !dbg !6743 ; 2 uses
  %.sroa.5.1.us.i = phi i64 [ 1, %bb.l ], [ %i.bj, %bb.k ], [ %.sroa.5.034.us.i, %bb.j ], !dbg !6744 ; 2 uses
  %.sroa.0.1.us.i = phi i64 [ %.sroa.05.033.us.i, %bb.l ], [ %.sroa.0.035.us.i, %bb.k ], [ %.sroa.0.035.us.i, %bb.j ], !dbg !6744 ; 3 uses
    #dbg_value(i64 %.sroa.0.1.us.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6627)
    #dbg_value(i64 %.sroa.5.1.us.i, !6690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6627)
    #dbg_value(i64 %.sroa.05.1.us.i, !6691, !DIExpression(), !6628)
    #dbg_value(i64 %.sroa.012.1.us.i, !6692, !DIExpression(), !6629)
  %i.bl = add i64 %.sroa.05.1.us.i, %.sroa.012.1.us.i, !dbg !6745 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %2, !dbg !6745
  br i1 %i.bm, label %.split.us.i, label %_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit16, !dbg !6745

.split37.us.i15:                                  ; preds = %.split.us.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #21, !dbg !6732, !noalias !6704
  unreachable, !dbg !6732

_RNvMs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit16: ; preds = %bb.m
    #dbg_value(i64 %.sroa.0.1.us.i, !6639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6705)
    #dbg_value(i64 poison, !6639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6705)
    #dbg_value(i64 %.sroa.0.1.i, !6641, !DIExpression(), !6706)
  %i.bn = icmp ugt i64 %.sroa.0.1.i, %.sroa.0.1.us.i, !dbg !6746
    #dbg_value(i64 poison, !6640, !DIExpression(), !6706)
    #dbg_value(i64 poison, !6640, !DIExpression(), !6706)
  %.14 = tail call i64 @llvm.umax.i64(i64 %.sroa.0.1.i, i64 %.sroa.0.1.us.i), !dbg !6747 ; 2 uses
  %.sroa.03.0 = select i1 %i.bn, i64 %.sroa.5.1.i, i64 %.sroa.5.1.us.i, !dbg !6747
    #dbg_value(i64 %.14, !6641, !DIExpression(), !6706)
    #dbg_value(i64 %.sroa.03.0, !6640, !DIExpression(), !6706)
  %i.bo = tail call { i64, i64 } @_RNvMs0_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB5_5Shift7forward(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.03.0, i64 noundef %.14), !dbg !6748 ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0, !dbg !6748
  %i.bq = extractvalue { i64, i64 } %i.bo, 1, !dbg !6748
    #dbg_value(i64 %i.bp, !6642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6707)
    #dbg_value(i64 %i.bq, !6642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6707)
  store i64 %i.bp, ptr %0, align 8, !dbg !6749
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6749
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6749
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6749
  store i64 %.lcssa45, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6749
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6749
  store i64 %.14, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !6749
  ret void, !dbg !6750
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCsdnbpgXzNiEQ_6memchr4arch6x86_644avx210packedpairNtB2_6Finder14with_pair_impl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 2, -9223372036854775808) %2, i8 noundef %3, i8 noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !6753 {
bb.a:
    #dbg_value(ptr %1, !6822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6827)
    #dbg_value(i64 %2, !6822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6827)
    #dbg_value(i8 %3, !6823, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6827)
    #dbg_value(i8 %4, !6823, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6828), !dbg !6869
    #dbg_value(ptr %1, !1481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6757)
    #dbg_value(i64 %2, !1481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6757)
    #dbg_value(i8 %3, !1485, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6757)
    #dbg_value(i8 %4, !1485, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6757)
    #dbg_value(i8 %3, !1491, !DIExpression(), !6759)
    #dbg_value(i8 %4, !1491, !DIExpression(), !6761)
    #dbg_value(ptr undef, !1497, !DIExpression(DW_OP_deref), !6763)
    #dbg_value(ptr undef, !1502, !DIExpression(DW_OP_deref), !6763)
    #dbg_value(i8 poison, !1486, !DIExpression(), !6764)
    #dbg_value(i8 poison, !1491, !DIExpression(), !6766)
    #dbg_value(i64 %2, !1506, !DIExpression(), !6768)
    #dbg_value(i8 poison, !1509, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 16, DW_OP_stack_value), !6768)
    #dbg_value(ptr undef, !1512, !DIExpression(DW_OP_deref), !6770)
    #dbg_value(ptr undef, !1513, !DIExpression(DW_OP_deref), !6770)
    #dbg_value(i64 poison, !1487, !DIExpression(), !6771)
  %i.a = zext i8 %3 to i64, !dbg !6870            ; 3 uses
  %i.b = icmp samesign ugt i64 %2, %i.a, !dbg !6871
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !6871

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 poison, !1518, !DIExpression(), !6773)
    #dbg_value(i8 poison, !1527, !DIExpression(), !6775)
    #dbg_value(i8 poison, !1533, !DIExpression(), !6777)
    #dbg_value(<16 x i8> poison, !1488, !DIExpression(), !6778)
  %i.c = zext i8 %4 to i64, !dbg !6872            ; 3 uses
  %i.d = icmp samesign ugt i64 %2, %i.c, !dbg !6873
  br i1 %i.d, label %_RNvMNtNtNtCsdnbpgXzNiEQ_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCsj6eKBz9Db1c_4core9core_arch3x867___m256iE3newCs9GYDdpCSJ4S_14regex_automata.exit, label %bb.d, !dbg !6873

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21, !dbg !6871, !noalias !6829
  unreachable, !dbg !6871

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21, !dbg !6873, !noalias !6829
  unreachable, !dbg !6873

_RNvMNtNtNtCsdnbpgXzNiEQ_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCsj6eKBz9Db1c_4core9core_arch3x867___m256iE3newCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.a, !dbg !6871
  %i.f = load i8, ptr %i.e, align 1, !dbg !6871, !alias.scope !6828, !noalias !6830, !noundef !1030 ; 2 uses
    #dbg_value(i8 %i.f, !1518, !DIExpression(), !6773)
    #dbg_value(i8 %i.f, !1527, !DIExpression(), !6775)
    #dbg_value(i8 %i.f, !1533, !DIExpression(), !6777)
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0, !dbg !6874
    #dbg_value(<16 x i8> poison, !1488, !DIExpression(), !6778)
    #dbg_value(<16 x i8> poison, !1488, !DIExpression(), !6778)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %4, i8 %3), !dbg !6875
    #dbg_value(i8 %..i, !1486, !DIExpression(), !6764)
    #dbg_value(i8 %..i, !1491, !DIExpression(), !6766)
    #dbg_value(i8 %..i, !1509, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 16, DW_OP_stack_value), !6768)
  %i.h = zext i8 %..i to i64, !dbg !6876          ; 2 uses
    #dbg_value(i64 %i.h, !1509, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6768)
  %i.i = add nuw nsw i64 %i.h, 16, !dbg !6877
    #dbg_value(i64 %i.i, !1509, !DIExpression(), !6768)
  %..i3 = tail call noundef range(i64 16, -9223372036854775808) i64 @llvm.umax.i64(i64 range(i64 16, 288) %i.i, i64 range(i64 2, -9223372036854775808) %2), !dbg !6878
    #dbg_value(i64 %..i3, !1487, !DIExpression(), !6771)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.c, !dbg !6873
  %i.k = load i8, ptr %i.j, align 1, !dbg !6873, !alias.scope !6828, !noalias !6830, !noundef !1030 ; 2 uses
    #dbg_value(i8 %i.k, !1518, !DIExpression(), !6781)
    #dbg_value(i8 %i.k, !1527, !DIExpression(), !6783)
    #dbg_value(i8 %i.k, !1533, !DIExpression(), !6785)
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0, !dbg !6879
    #dbg_value(i8 %3, !6824, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !6831)
    #dbg_value(i8 %4, !6824, !DIExpression(DW_OP_LLVM_fragment, 328, 8), !6831)
    #dbg_value(<16 x i8> poison, !6824, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !6831)
    #dbg_value(<16 x i8> poison, !6824, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !6831)
    #dbg_value(i64 %..i3, !6824, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6831)
    #dbg_value(ptr %1, !6832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6792)
    #dbg_value(i64 %2, !6832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6792)
    #dbg_value(i8 %3, !6836, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6792)
    #dbg_value(i8 %4, !6836, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6792)
    #dbg_value(ptr undef, !1497, !DIExpression(DW_OP_deref), !6794)
    #dbg_value(ptr undef, !1502, !DIExpression(DW_OP_deref), !6794)
    #dbg_value(i8 %..i, !6837, !DIExpression(), !6795)
    #dbg_value(i64 %2, !6842, !DIExpression(), !6798)
  %i.m = add nuw nsw i64 %i.h, 32, !dbg !6880
    #dbg_value(i64 %i.m, !6843, !DIExpression(), !6798)
    #dbg_value(ptr undef, !1512, !DIExpression(DW_OP_deref), !6800)
    #dbg_value(ptr undef, !1513, !DIExpression(DW_OP_deref), !6800)
  %..i5 = tail call noundef range(i64 16, -9223372036854775808) i64 @llvm.umax.i64(i64 range(i64 16, 288) %i.m, i64 range(i64 2, -9223372036854775808) %2), !dbg !6881
    #dbg_value(i64 %..i5, !6838, !DIExpression(), !6801)
    #dbg_value(i8 %i.f, !6845, !DIExpression(), !6804)
    #dbg_value(i8 %i.f, !6852, !DIExpression(), !6807)
    #dbg_value(i8 %i.f, !6857, !DIExpression(), !6811)
  %i.n = insertelement <32 x i8> poison, i8 %i.f, i64 0, !dbg !6882
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <32 x i32> zeroinitializer, !dbg !6882
    #dbg_value(<32 x i8> %i.o, !6839, !DIExpression(), !6812)
    #dbg_value(i8 %i.k, !6845, !DIExpression(), !6814)
    #dbg_value(i8 %i.k, !6852, !DIExpression(), !6816)
    #dbg_value(i8 %i.k, !6857, !DIExpression(), !6818)
  %i.p = insertelement <32 x i8> poison, i8 %i.k, i64 0, !dbg !6883
  %i.q = shufflevector <32 x i8> %i.p, <32 x i8> poison, <32 x i32> zeroinitializer, !dbg !6883
    #dbg_value(i8 %3, !6825, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !6867)
    #dbg_value(i8 %4, !6825, !DIExpression(DW_OP_LLVM_fragment, 584, 8), !6867)
    #dbg_value(<32 x i8> %i.o, !6825, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !6867)
    #dbg_value(<32 x i8> %i.q, !6825, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !6867)
    #dbg_value(i64 %..i5, !6825, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !6867)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !6884
  %5 = shufflevector <16 x i8> %i.g, <16 x i8> %i.l, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !6884
  store <32 x i8> %5, ptr %i.r, align 32, !dbg !6884
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !6884
  store i64 %..i3, ptr %.sroa.5.0..sroa_idx, align 32, !dbg !6884
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !6884
  store i8 %3, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !6884
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137, !dbg !6884
  store i8 %4, ptr %.sroa.7.0..sroa_idx, align 1, !dbg !6884
  store <32 x i8> %i.o, ptr %0, align 32, !dbg !6884
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6884
  store <32 x i8> %i.q, ptr %.sroa.47.0..sroa_idx, align 32, !dbg !6884
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6884
  store i64 %..i5, ptr %.sroa.58.0..sroa_idx, align 32, !dbg !6884
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !6884
  store i8 %3, ptr %.sroa.69.0..sroa_idx, align 8, !dbg !6884
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73, !dbg !6884
  store i8 %4, ptr %.sroa.710.0..sroa_idx, align 1, !dbg !6884
  ret void, !dbg !6885
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA10next_state(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2, i8 noundef %3) unnamed_addr #0 !dbg !385 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !2462, !DIExpression(), !6886)
    #dbg_value(ptr %0, !2482, !DIExpression(), !6888)
    #dbg_value(ptr %1, !2463, !DIExpression(), !6886)
    #dbg_value(ptr %1, !2489, !DIExpression(), !6888)
    #dbg_value(i32 %2, !2464, !DIExpression(), !6886)
    #dbg_value(i8 %3, !2465, !DIExpression(), !6886)
    #dbg_value(i8 %3, !2492, !DIExpression(), !6890)
    #dbg_value(i8 %3, !2499, !DIExpression(), !6892)
    #dbg_value(i8 %3, !2501, !DIExpression(), !6894)
    #dbg_value(ptr %0, !2497, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !6895)
  %i.b = zext i8 %3 to i64, !dbg !6922
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !6923
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b, !dbg !6923
  %i.e = load i8, ptr %i.d, align 1, !dbg !6923, !noundef !1030
    #dbg_value(i8 %i.e, !2499, !DIExpression(), !6897)
  %i.f = zext i8 %i.e to i64, !dbg !6924
    #dbg_value(i64 %i.f, !2466, !DIExpression(), !6898)
    #dbg_value(ptr poison, !2509, !DIExpression(), !6900)
  %i.g = and i32 %2, 134217727, !dbg !6925
  %i.h = zext nneg i32 %i.g to i64, !dbg !6925
  %i.i = add nuw nsw i64 %i.f, %i.h, !dbg !6926   ; 3 uses
    #dbg_value(i64 %i.i, !2467, !DIExpression(), !6901)
    #dbg_value(i64 %i.i, !2514, !DIExpression(), !6903)
    #dbg_value(i64 %i.i, !2522, !DIExpression(), !6905)
    #dbg_value(i64 %i.i, !2536, !DIExpression(), !6907)
    #dbg_value(ptr %1, !2519, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6908)
    #dbg_value(ptr %1, !2541, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6910)
    #dbg_value(ptr %1, !2546, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6912)
    #dbg_value(ptr %1, !2549, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6914)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !6927
  %i.k = load i64, ptr %i.j, align 8, !dbg !6927, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6905)
    #dbg_value(ptr poison, !2539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6907)
    #dbg_value(i64 %i.k, !2530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6905)
    #dbg_value(i64 %i.k, !2539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6907)
  %i.l = icmp ult i64 %i.i, %i.k, !dbg !6928
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !6928

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !6929
  %i.n = load ptr, ptr %i.m, align 8, !dbg !6929, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.n, !2530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6905)
    #dbg_value(ptr %i.n, !2539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6907)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i, !dbg !6930
  %i.p = load i32, ptr %i.o, align 4, !dbg !6931, !noundef !1030 ; 2 uses
    #dbg_value(i32 %i.p, !2468, !DIExpression(), !6918)
    #dbg_value(ptr poison, !2571, !DIExpression(), !6920)
  %.not = icmp sgt i32 %i.p, -1, !dbg !6932
  br i1 %.not, label %bb.d, label %bb.e, !dbg !6933, !prof !1431

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21, !dbg !6928
  unreachable, !dbg !6928

bb.d:                                             ; preds = %bb.b
  %i.q = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.p, 1, !dbg !6934
  br label %bb.f, !dbg !6934

bb.e:                                             ; preds = %bb.b
  %.sroa.4.0.insert.ext = zext i8 %3 to i32, !dbg !6935
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8, !dbg !6935
    #dbg_value(i32 %.sroa.4.0.insert.shift, !2469, !DIExpression(), !6921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6887
  store ptr %0, ptr %i.a, align 8, !dbg !6936
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6936
  store ptr %1, ptr %i.r, align 8, !dbg !6936
  %i.s = call { i32, i32 } @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_4Lazy16cache_next_state(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %2, i32 %.sroa.4.0.insert.shift) #24, !dbg !6937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6938
  br label %bb.f, !dbg !6934

bb.f:                                             ; preds = %bb.e, %bb.d
  %.merged = phi { i32, i32 } [ %i.s, %bb.e ], [ %i.q, %bb.d ], !dbg !6934
  ret { i32, i32 } %.merged, !dbg !6934
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern(ptr nofree readonly captures(none) %.688.val, i64 %.696.val, ptr nofree readonly captures(address, read_provenance) %.80.val, i64 %.88.val, i32 noundef %0, i64 noundef %1) unnamed_addr #0 !dbg !405 {
bb.a:
    #dbg_value(ptr poison, !2581, !DIExpression(), !6939)
    #dbg_value(ptr poison, !2586, !DIExpression(), !6941)
    #dbg_value(ptr poison, !2582, !DIExpression(), !6939)
    #dbg_value(i32 %0, !2583, !DIExpression(), !6939)
    #dbg_value(i64 %1, !2584, !DIExpression(), !6939)
    #dbg_value(ptr poison, !2594, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !6943)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.688.val) ]
    #dbg_value(ptr %.688.val, !2601, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !6945)
  %i.a = getelementptr inbounds nuw i8, ptr %.688.val, i64 360, !dbg !6959
  %i.b = load i64, ptr %i.a, align 8, !dbg !6959, !noundef !1030 ; 2 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952, !dbg !6960
  tail call void @llvm.assume(i1 %i.c), !dbg !6961
  %i.d = icmp eq i64 %i.b, 1, !dbg !6962
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !6962

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2607, !DIExpression(), !6947)
    #dbg_value(i32 %0, !2615, !DIExpression(), !6948)
    #dbg_value(ptr poison, !2618, !DIExpression(), !6950)
  %i.e = and i32 %0, 134217727, !dbg !6963
  %i.f = zext nneg i32 %i.e to i64, !dbg !6963
  %i.g = and i64 %.696.val, 63, !dbg !6964
  %i.h = lshr i64 %i.f, %i.g, !dbg !6964          ; 3 uses
    #dbg_value(i64 %i.h, !2616, !DIExpression(), !6951)
    #dbg_value(i64 %i.h, !2620, !DIExpression(), !6953)
    #dbg_value(i64 %i.h, !2627, !DIExpression(), !6955)
    #dbg_value(i64 %i.h, !2640, !DIExpression(), !6957)
    #dbg_value(ptr poison, !2624, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !6958)
    #dbg_value(ptr poison, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6955)
    #dbg_value(ptr poison, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6957)
    #dbg_value(i64 %.88.val, !2634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6955)
    #dbg_value(i64 %.88.val, !2643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6957)
  %i.i = icmp ult i64 %i.h, %.88.val, !dbg !6965
  br i1 %i.i, label %bb.d, label %bb.e, !dbg !6965

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ], !dbg !6939
  ret i32 %.sroa.0.0, !dbg !6966

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.80.val) ]
    #dbg_value(ptr %.80.val, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6955)
    #dbg_value(ptr %.80.val, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6957)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.80.val, i64 %i.h, !dbg !6967
  %i.k = tail call noundef i32 @_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_5State13match_pattern(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %1), !dbg !6968
  br label %bb.c, !dbg !6966

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.88.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21, !dbg !6965
  unreachable, !dbg !6965
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA14next_eoi_state(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2) unnamed_addr #0 !dbg !422 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !2649, !DIExpression(), !6969)
    #dbg_value(ptr %0, !2657, !DIExpression(), !6971)
    #dbg_value(ptr %1, !2650, !DIExpression(), !6969)
    #dbg_value(ptr %1, !2658, !DIExpression(), !6971)
    #dbg_value(i32 %2, !2651, !DIExpression(), !6969)
    #dbg_value(ptr %0, !2660, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !6973)
    #dbg_value(ptr %0, !2665, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !6975)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 655, !dbg !7010
    #dbg_value(i8 poison, !2670, !DIExpression(), !6977)
  %i.c = load i8, ptr %i.b, align 1, !dbg !7010, !noundef !1030
    #dbg_value(i8 %i.c, !2670, !DIExpression(), !6977)
  %i.d = zext i8 %i.c to i64, !dbg !7011
  %i.e = add nuw nsw i64 %i.d, 1, !dbg !6976      ; 2 uses
  %i.f = tail call i32 @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB2_4Unit3eoi(i64 noundef %i.e), !dbg !7012 ; 3 uses
    #dbg_value(i32 %i.f, !2673, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !6979)
    #dbg_value(i32 %i.f, !2673, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !6979)
  %i.g = trunc i32 %i.f to i1, !dbg !7013
    #dbg_value(i32 %i.f, !2673, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !6979)
  %.sroa.519.0.extract.shift = lshr i32 %i.f, 16, !dbg !7014
  %.sroa.418.0.extract.shift = lshr i32 %i.f, 8, !dbg !7014
  %i.h = and i32 %.sroa.418.0.extract.shift, 255, !dbg !7014
  %.sroa.01.0.in = select i1 %i.g, i32 %.sroa.519.0.extract.shift, i32 %i.h, !dbg !7014
    #dbg_value(i32 %.sroa.01.0.in, !2652, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !6980)
    #dbg_value(ptr poison, !2683, !DIExpression(), !6982)
  %i.i = and i32 %2, 134217727, !dbg !7015
  %narrow = add nuw nsw i32 %.sroa.01.0.in, %i.i, !dbg !7016
  %i.j = zext nneg i32 %narrow to i64, !dbg !7016 ; 3 uses
    #dbg_value(i64 %i.j, !2653, !DIExpression(), !6983)
    #dbg_value(i64 %i.j, !2685, !DIExpression(), !6985)
    #dbg_value(i64 %i.j, !2688, !DIExpression(), !6987)
    #dbg_value(i64 %i.j, !2691, !DIExpression(), !6989)
    #dbg_value(ptr %1, !2686, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6990)
    #dbg_value(ptr %1, !2694, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6992)
    #dbg_value(ptr %1, !2696, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6994)
    #dbg_value(ptr %1, !2698, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6996)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !7017
  %i.l = load i64, ptr %i.k, align 8, !dbg !7017, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !2689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6987)
    #dbg_value(ptr poison, !2692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6989)
    #dbg_value(i64 %i.l, !2689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6987)
    #dbg_value(i64 %i.l, !2692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6989)
  %i.m = icmp ugt i64 %i.l, %i.j, !dbg !7018
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !7018

end_hunk_0
