Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.08?download=true
inline.NumInlined: 710
inline.NumDeleted: 372
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE6retainNCNvMs1_BH_NtBH_17BlackHoleDetector18on_non_probe_acked0EBL_:bb.a
  %.val38.i.epil = load i16, ptr %i.ak, align 2, !dbg !10323, !noalias !10261, !noundef !2135
    #dbg_value(ptr poison, !10295, !DIExpression(DW_OP_deref, DW_OP_deref), !10190)
    #dbg_value(ptr poison, !10299, !DIExpression(), !10190)
    #dbg_value(ptr poison, !10302, !DIExpression(DW_OP_deref, DW_OP_deref), !10193)
    #dbg_value(ptr poison, !10306, !DIExpression(), !10193)
  %i.al = icmp ugt i16 %.val38.i.epil, %i.g, !dbg !10324
    #dbg_value(i1 %i.al, !10268, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10194)
    #dbg_value(i1 %i.al, !10266, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10195)
  %i.am = add nuw nsw i64 %.sroa.0.0.i.epil, 1, !dbg !10325 ; 2 uses
  br i1 %i.al, label %bb.l, label %.preheader.i, !dbg !10320, !prof !4493

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 %i.am, !10236, !DIExpression(), !10178)
    #dbg_value(i64 %i.am, !10270, !DIExpression(), !10177)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !10334 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !10334
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE10retain_mutNCINvB2_6retainNCNvMs1_BH_NtBH_17BlackHoleDetector18on_non_probe_acked0E0EBL_.exit, label %bb.k, !dbg !10334, !llvm.loop !10210

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE10retain_mutNCINvB2_6retainNCNvMs1_BH_NtBH_17BlackHoleDetector18on_non_probe_acked0E0EBL_.exit: ; preds = %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection4mtud9LossBurstE10retain_mutNCINvB2_6retainNCNvMs1_BH_NtBH_17BlackHoleDetector18on_non_probe_acked0E0EBL_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void, !dbg !10337
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10347 {
bb.a:
    #dbg_value(ptr %1, !10386, !DIExpression(), !10397)
    #dbg_value(ptr %1, !10398, !DIExpression(), !10405)
    #dbg_value(ptr %1, !10406, !DIExpression(), !10413)
    #dbg_value(ptr %1, !10414, !DIExpression(), !10420)
    #dbg_declare(ptr poison, !10387, !DIExpression(), !10421)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10473 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10473, !noundef !2135 ; 3 uses
    #dbg_value(i64 %i.b, !10388, !DIExpression(), !10422)
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !10474
  tail call void @llvm.assume(i1 %i.c), !dbg !10475
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshovLROGBtMy_11quinn_proto(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !dbg !10476 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !10476 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !10476 ; 3 uses
    #dbg_value(i64 %i.e, !10389, !DIExpression(), !10423)
    #dbg_value(i64 %i.e, !10410, !DIExpression(), !10413)
    #dbg_value(i64 %i.e, !10424, !DIExpression(), !10430)
    #dbg_value(i64 %i.f, !10390, !DIExpression(), !10423)
  store i64 %i.e, ptr %i.a, align 8, !dbg !10477
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10478
  %i.h = load ptr, ptr %i.g, align 8, !dbg !10478, !nonnull !2135, !noundef !2135 ; 2 uses
    #dbg_value(ptr %i.h, !10427, !DIExpression(), !10430)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e, !dbg !10479
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10446, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !10459)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !10468)
    #dbg_value(ptr %i.i, !10391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10469)
    #dbg_value(ptr %i.i, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10470)
    #dbg_value(ptr %i.i, !10453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10471)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10391, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10469)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10460, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10470)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10453, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10471)
  %i.j = sub i64 %i.b, %i.f, !dbg !10480
    #dbg_value(ptr %i.i, !10454, !DIExpression(), !10472)
    #dbg_value(ptr %i.i, !10465, !DIExpression(), !10468)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f, !dbg !10481
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10482
  store i64 %i.f, ptr %i.l, align 8, !dbg !10482
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10482
  store i64 %i.j, ptr %i.m, align 8, !dbg !10482
  store ptr %i.i, ptr %0, align 8, !dbg !10482
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10482
  store ptr %i.k, ptr %i.n, align 8, !dbg !10482
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10482
  store ptr %1, ptr %i.o, align 8, !dbg !10482
  ret void, !dbg !10483
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10492 {
bb.a:
    #dbg_value(ptr %1, !10526, !DIExpression(), !10536)
    #dbg_value(ptr %1, !10537, !DIExpression(), !10544)
    #dbg_value(ptr %1, !10545, !DIExpression(), !10552)
    #dbg_value(ptr %1, !10553, !DIExpression(), !10559)
    #dbg_declare(ptr poison, !10527, !DIExpression(), !10560)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10600 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10600, !noundef !2135 ; 3 uses
    #dbg_value(i64 %i.b, !10528, !DIExpression(), !10561)
  %i.c = icmp ult i64 %i.b, 164703072086692426, !dbg !10601
  tail call void @llvm.assume(i1 %i.c), !dbg !10602
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshovLROGBtMy_11quinn_proto(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !dbg !10603 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !10603 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !10603 ; 3 uses
    #dbg_value(i64 %i.e, !10529, !DIExpression(), !10562)
    #dbg_value(i64 %i.e, !10549, !DIExpression(), !10552)
    #dbg_value(i64 %i.e, !10563, !DIExpression(), !10569)
    #dbg_value(i64 %i.f, !10530, !DIExpression(), !10562)
  store i64 %i.e, ptr %i.a, align 8, !dbg !10604
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10605
  %i.h = load ptr, ptr %i.g, align 8, !dbg !10605, !nonnull !2135, !noundef !2135 ; 2 uses
    #dbg_value(ptr %i.h, !10566, !DIExpression(), !10569)
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %i.e, !dbg !10606
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !10586)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !10595)
    #dbg_value(ptr %i.i, !10531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10596)
    #dbg_value(ptr %i.i, !10587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10597)
    #dbg_value(ptr %i.i, !10580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10598)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10531, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10596)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10597)
    #dbg_value(!DIArgList(i64 %i.f, i64 %i.e), !10580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10598)
  %i.j = sub i64 %i.b, %i.f, !dbg !10607
    #dbg_value(ptr %i.i, !10581, !DIExpression(), !10599)
    #dbg_value(ptr %i.i, !10592, !DIExpression(), !10595)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %i.f, !dbg !10608
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10609
  store i64 %i.f, ptr %i.l, align 8, !dbg !10609
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10609
  store i64 %i.j, ptr %i.m, align 8, !dbg !10609
  store ptr %i.i, ptr %0, align 8, !dbg !10609
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10609
  store ptr %i.k, ptr %i.n, align 8, !dbg !10609
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10609
  store ptr %1, ptr %i.o, align 8, !dbg !10609
  ret void, !dbg !10610
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10619 {
bb.a:
    #dbg_value(i64 %1, !10717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10733)
    #dbg_value(i64 %2, !10717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10733)
    #dbg_value(ptr %0, !10716, !DIExpression(), !10733)
    #dbg_value(ptr %0, !10734, !DIExpression(), !10737)
    #dbg_value(ptr poison, !10738, !DIExpression(), !10623)
    #dbg_value(ptr poison, !10744, !DIExpression(), !10626)
    #dbg_value(ptr poison, !10748, !DIExpression(), !10626)
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1), !dbg !10847 ; 2 uses
    #dbg_value(i64 poison, !10718, !DIExpression(), !10750)
    #dbg_value(i64 1, !10719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10750)
    #dbg_value(i64 %spec.select.i, !10719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10750)
    #dbg_value(i64 %spec.select.i, !10720, !DIExpression(), !10751)
    #dbg_value(ptr %0, !4593, !DIExpression(), !10628)
    #dbg_value(i64 %spec.select.i, !4597, !DIExpression(), !10628)
    #dbg_value(i64 %spec.select.i, !4599, !DIExpression(), !10630)
    #dbg_value(i64 %spec.select.i, !4607, !DIExpression(), !10632)
    #dbg_value(i64 %spec.select.i, !4623, !DIExpression(), !10634)
    #dbg_value(ptr %0, !4604, !DIExpression(), !10635)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10848 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !10848, !alias.scope !10752, !noundef !2135 ; 3 uses
    #dbg_value(i64 %i.b, !4605, !DIExpression(), !10630)
    #dbg_value(i64 %i.b, !4620, !DIExpression(), !10632)
    #dbg_value(i64 %i.b, !4628, !DIExpression(), !10634)
    #dbg_value(i64 %i.b, !4632, !DIExpression(), !10639)
    #dbg_value(ptr %0, !4619, !DIExpression(), !10632)
    #dbg_value(ptr %0, !4627, !DIExpression(), !10634)
    #dbg_value(ptr %0, !4638, !DIExpression(), !10641)
    #dbg_value(i64 8, !4621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10632)
    #dbg_value(i64 8, !4629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10634)
    #dbg_value(i64 8, !4621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10632)
    #dbg_value(i64 8, !4629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10634)
    #dbg_value(i64 8, !4642, !DIExpression(), !10641)
  %i.c = load i64, ptr %0, align 8, !dbg !10849, !range !4644, !alias.scope !10752, !noundef !2135
    #dbg_value(i64 %i.c, !4636, !DIExpression(), !10639)
  %i.d = sub i64 %i.c, %i.b, !dbg !10850
  %i.e = icmp ugt i64 %spec.select.i, %i.d, !dbg !10851
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCshovLROGBtMy_11quinn_proto.exit, !dbg !10852, !prof !4645

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %spec.select.i, i64 noundef 8, i64 noundef 8), !dbg !10853
  %.pre = load i64, ptr %i.a, align 8, !dbg !10854
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCshovLROGBtMy_11quinn_proto.exit, !dbg !10853

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ], !dbg !10854 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10855
  %i.h = load ptr, ptr %i.g, align 8, !dbg !10855, !nonnull !2135, !noundef !2135 ; 2 uses
    #dbg_value(ptr %i.h, !10730, !DIExpression(), !10759)
    #dbg_value(ptr %i.a, !10753, !DIExpression(), !10760)
    #dbg_value(ptr %i.a, !10731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10761)
    #dbg_value(i64 %i.f, !10731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10761)
    #dbg_value(ptr %i.h, !10762, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10773)
    #dbg_value(ptr %i.a, !10762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10773)
    #dbg_value(i64 %i.f, !10762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10773)
    #dbg_value(i64 %1, !10768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10649)
    #dbg_value(i64 %2, !10768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10649)
    #dbg_value(ptr %i.a, !10774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10655)
    #dbg_value(i64 %i.f, !10774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10655)
    #dbg_value(ptr %i.h, !10774, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10655)
    #dbg_value(i64 %1, !10779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10656)
    #dbg_value(i64 %2, !10779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10656)
    #dbg_declare(ptr poison, !10780, !DIExpression(), !10657)
    #dbg_declare(ptr poison, !10781, !DIExpression(), !10658)
    #dbg_value(ptr undef, !10787, !DIExpression(), !10661)
    #dbg_value(ptr undef, !10791, !DIExpression(), !10665)
    #dbg_value(ptr undef, !10744, !DIExpression(), !10667)
    #dbg_value(ptr undef, !10748, !DIExpression(), !10667)
  %i.i = icmp ult i64 %1, %2, !dbg !10856
  br i1 %i.i, label %.lr.ph.i.i.preheader, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecyE14extend_trustedB3_E0ECshovLROGBtMy_11quinn_proto.exit, !dbg !10857

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCshovLROGBtMy_11quinn_proto.exit
  %i.j = sub nuw i64 %2, %1, !dbg !10857          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 4, !dbg !10857
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader16, label %vector.ph, !dbg !10857

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.j, -4                       ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.k = getelementptr [8 x i8], ptr %i.h, i64 %i.f
  br label %vector.body, !dbg !10857

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %index, !dbg !10858 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !10859
  store <2 x i64> %vec.ind, ptr %i.l, align 8, !dbg !10859, !noalias !10812
  store <2 x i64> %step.add, ptr %i.m, align 8, !dbg !10859, !noalias !10812
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !10857
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !10857, !llvm.loop !10684

middle.block:                                     ; preds = %vector.body
  %3 = add i64 %i.f, %n.vec                       ; 2 uses
  %4 = add i64 %1, %n.vec
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !10857
  br i1 %cmp.n, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecyE14extend_trustedB3_E0ECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i.i.preheader16, !dbg !10857

.lr.ph.i.i.preheader16:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.f, %.lr.ph.i.i.preheader ], [ %3, %middle.block ]
  %.sroa.0.011.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.preheader ], [ %4, %middle.block ]
  br label %.lr.ph.i.i, !dbg !10857

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader16, %.lr.ph.i.i
  %i.o = phi i64 [ %i.r, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader16 ], !dbg !10860 ; 2 uses
  %.sroa.0.011.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.0.011.i.i.ph, %.lr.ph.i.i.preheader16 ] ; 2 uses
    #dbg_value(i64 %.sroa.0.011.i.i, !10779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10656)
    #dbg_value(i64 %.sroa.0.011.i.i, !10792, !DIExpression(), !10689)
    #dbg_value(i64 %.sroa.0.011.i.i, !10821, !DIExpression(), !10690)
    #dbg_value(i64 %.sroa.0.011.i.i, !10815, !DIExpression(), !10691)
    #dbg_value(i64 1, !10822, !DIExpression(), !10690)
    #dbg_value(i64 1, !10816, !DIExpression(), !10691)
  %i.p = add nuw i64 %.sroa.0.011.i.i, 1, !dbg !10860 ; 2 uses
    #dbg_value(i64 %i.p, !10779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10656)
    #dbg_value(i64 %.sroa.0.011.i.i, !10782, !DIExpression(), !10692)
    #dbg_value(ptr poison, !10805, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10693)
    #dbg_declare(ptr poison, !10806, !DIExpression(), !10694)
    #dbg_value(i64 %.sroa.0.011.i.i, !10804, !DIExpression(), !10693)
    #dbg_value(ptr poison, !10798, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !10695)
    #dbg_value(ptr poison, !10799, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10695)
    #dbg_value(i64 %.sroa.0.011.i.i, !10797, !DIExpression(), !10695)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.o, !dbg !10858
  store i64 %.sroa.0.011.i.i, ptr %i.q, align 8, !dbg !10859, !noalias !10812
  %i.r = add i64 %i.o, 1, !dbg !10861             ; 2 uses
    #dbg_value(ptr undef, !10787, !DIExpression(), !10661)
    #dbg_value(ptr undef, !10791, !DIExpression(), !10665)
    #dbg_value(ptr undef, !10744, !DIExpression(), !10667)
    #dbg_value(ptr undef, !10748, !DIExpression(), !10667)
  %exitcond.not.i.i = icmp eq i64 %i.p, %2, !dbg !10856
  br i1 %exitcond.not.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecyE14extend_trustedB3_E0ECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i.i, !dbg !10857, !llvm.loop !10698

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecyE14extend_trustedB3_E0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %.lr.ph.i.i, %middle.block, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCshovLROGBtMy_11quinn_proto.exit
  %.val7.i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCshovLROGBtMy_11quinn_proto.exit ], [ %3, %middle.block ], [ %i.r, %.lr.ph.i.i ], !dbg !10862
    #dbg_value(i64 poison, !10779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10656)
    #dbg_value(ptr poison, !10825, !DIExpression(), !10701)
    #dbg_value(ptr poison, !10831, !DIExpression(), !10704)
    #dbg_value(ptr poison, !10837, !DIExpression(), !10707)
    #dbg_value(ptr poison, !10843, !DIExpression(), !10710)
  store i64 %.val7.i.i, ptr %i.a, align 8, !dbg !10863, !noalias !10846
  ret void, !dbg !10864
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3KL2zoEmqnh_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10865 {
bb.a:
    #dbg_value(ptr %0, !10885, !DIExpression(), !10887)
    #dbg_value(ptr %0, !4782, !DIExpression(), !10867)
    #dbg_value(ptr %0, !4787, !DIExpression(), !10869)
    #dbg_value(ptr %0, !4792, !DIExpression(), !10871)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit unwind label %bb.b, !dbg !10890

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10891
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #27
          to label %bb.g unwind label %bb.f, !dbg !10891

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10891 ; 2 uses
    #dbg_value(ptr %i.c, !4799, !DIExpression(), !10873)
  %i.d = load i64, ptr %i.c, align 8, !dbg !10892, !range !4803, !alias.scope !10888, !noundef !2135 ; 2 uses
  %i.e = xor i64 %i.d, -9223372036854775808, !dbg !10892
  %i.f = icmp slt i64 %i.d, 0, !dbg !10892
  %i.g = select i1 %i.f, i64 %i.e, i64 5, !dbg !10892
  switch i64 %i.g, label %bb.c [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit
    i64 1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit
    i64 3, label %bb.d
    i64 4, label %bb.e
  ], !dbg !10892

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscFTfv2TGtgR_10serde_json3map3MapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtBG_5value5ValueEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c), !dbg !10892, !inline_history !10889
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit, !dbg !10892

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10892
    #dbg_value(ptr %i.h, !4782, !DIExpression(), !10877)
    #dbg_value(ptr %i.h, !4787, !DIExpression(), !10879)
    #dbg_value(ptr %i.h, !4792, !DIExpression(), !10881)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !10893
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit, !dbg !10892

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10892
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCscFTfv2TGtgR_10serde_json5value5ValueEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i), !dbg !10892, !inline_history !10889
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit, !dbg !10892

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscFTfv2TGtgR_10serde_json5value5ValueECshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshovLROGBtMy_11quinn_proto.exit, %bb.c, %bb.d, %bb.e
  ret void, !dbg !10891

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !10891
  unreachable, !dbg !10891

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !10891
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10894 {
bb.a:
    #dbg_value(ptr %0, !10938, !DIExpression(), !10940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10941), !dbg !10988
    #dbg_value(ptr %0, !10943, !DIExpression(), !10899)
  %i.a = load i64, ptr %0, align 8, !dbg !10989, !range !4842, !alias.scope !10941, !noundef !2135
  %i.b = icmp eq i64 %i.a, -1, !dbg !10989
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_.exit, label %bb.b, !dbg !10989

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10949), !dbg !10989
    #dbg_value(ptr %0, !10951, !DIExpression(), !10904)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10990 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10955), !dbg !10990
    #dbg_value(ptr %i.c, !10957, !DIExpression(), !10909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10963), !dbg !10991
    #dbg_value(ptr %i.c, !10964, !DIExpression(), !10914)
    #dbg_value(ptr %i.c, !10966, !DIExpression(), !10918)
    #dbg_value(i64 1, !10975, !DIExpression(), !10921)
    #dbg_value(i8 1, !10977, !DIExpression(), !10921)
    #dbg_value(i64 1, !10979, !DIExpression(), !10924)
    #dbg_value(i8 1, !10981, !DIExpression(), !10924)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !10992, !alias.scope !10983, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.d, !10976, !DIExpression(), !10927)
    #dbg_value(ptr %i.d, !10980, !DIExpression(), !10924)
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !10993, !noalias !10983
  %i.f = icmp eq i64 %i.e, 1, !dbg !10994
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !10994

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !4855, !DIExpression(), !10929)
  fence acquire, !dbg !10995
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i unwind label %bb.d, !dbg !10996

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #27
          to label %common.resume.i.i unwind label %bb.g, !dbg !10990

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %bb.c, %bb.b
    #dbg_value(ptr %0, !4860, !DIExpression(), !10931)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_.exit.i unwind label %bb.e, !dbg !10997

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4867, !DIExpression(), !10933)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %common.resume.i.i unwind label %bb.f, !dbg !10998

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !10997
  unreachable, !dbg !10997

common.resume.i.i:                                ; preds = %bb.e, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !10990

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !10990
  unreachable, !dbg !10990

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i
    #dbg_value(ptr %0, !4867, !DIExpression(), !10935)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !dbg !10999
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_.exit, !dbg !10989

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_.exit.i
  ret void, !dbg !10988
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3KL2zoEmqnh_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !935 {
bb.a:
    #dbg_value(ptr %0, !4876, !DIExpression(), !11006)
    #dbg_value(ptr %0, !4881, !DIExpression(), !11001)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11008
    #dbg_value(ptr %i.a, !4888, !DIExpression(), !11003)
    #dbg_value(ptr %i.a, !4895, !DIExpression(), !11005)
  invoke void @_RNvXsf_NtCs6Hru1xGhrwY_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3KL2zoEmqnh_8indexmap5inner4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueEECshovLROGBtMy_11quinn_proto.exit unwind label %bb.b, !dbg !11009

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4sendNtB2_4Send3new:bb.a
_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send4SendE3newBM_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.h, !18492, !DIExpression(), !18481)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !dbg !18503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18504
  ret ptr %i.h, !dbg !18505
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIteryE32forget_allocation_drop_remainingCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #0 !dbg !18508 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !18514, !DIExpression(), !18520)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18530
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18530
    #dbg_value(ptr poison, !18515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18521)
    #dbg_value(i64 poison, !18515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18521)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18531
  store i64 0, ptr %i.d, align 8, !dbg !18531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18525
  store i64 0, ptr %i.a, align 8, !dbg !18532
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18532
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !18532
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !dbg !18533
    #dbg_value(ptr %i.a, !5921, !DIExpression(), !18512)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !18534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18535
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !18536
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !dbg !18537
  ret void, !dbg !18538
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !1324 {
bb.a:
    #dbg_value(ptr %0, !6500, !DIExpression(), !18578)
    #dbg_value(ptr %1, !6501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18578)
    #dbg_value(i64 %2, !6501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18578)
    #dbg_value(ptr %1, !6494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18540)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !6494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18540)
    #dbg_value(ptr %0, !6493, !DIExpression(), !18540)
    #dbg_value(ptr %1, !6495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18541)
    #dbg_value(i64 %2, !6495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18541)
    #dbg_value(ptr %0, !6485, !DIExpression(), !18543)
    #dbg_value(ptr %0, !6479, !DIExpression(), !18545)
    #dbg_value(ptr %0, !6518, !DIExpression(), !18547)
    #dbg_value(ptr %0, !6523, !DIExpression(), !18549)
    #dbg_value(ptr %1, !6486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18543)
    #dbg_value(ptr %1, !6480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18545)
    #dbg_value(i64 %2, !6486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18543)
    #dbg_value(i64 %2, !6480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18545)
    #dbg_value(i64 %2, !6481, !DIExpression(), !18550)
    #dbg_value(i64 %2, !6471, !DIExpression(), !18552)
    #dbg_value(ptr %0, !6528, !DIExpression(), !18554)
    #dbg_value(i64 %2, !6532, !DIExpression(), !18554)
    #dbg_value(i64 %2, !6534, !DIExpression(), !18556)
    #dbg_value(i64 %2, !6541, !DIExpression(), !18558)
    #dbg_value(i64 %2, !6546, !DIExpression(), !18560)
    #dbg_value(ptr %0, !6538, !DIExpression(), !18561)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18581 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !18581, !alias.scope !18579, !noundef !2135 ; 5 uses
    #dbg_value(i64 %i.b, !6539, !DIExpression(), !18556)
    #dbg_value(i64 %i.b, !6543, !DIExpression(), !18558)
    #dbg_value(i64 %i.b, !6548, !DIExpression(), !18560)
    #dbg_value(i64 %i.b, !6587, !DIExpression(), !18569)
    #dbg_value(ptr %0, !6542, !DIExpression(), !18558)
    #dbg_value(ptr %0, !6547, !DIExpression(), !18560)
    #dbg_value(ptr %0, !6551, !DIExpression(), !18571)
    #dbg_value(i64 1, !6544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18558)
    #dbg_value(i64 1, !6549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18560)
    #dbg_value(i64 1, !6544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18558)
    #dbg_value(i64 1, !6549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18560)
    #dbg_value(i64 1, !6552, !DIExpression(), !18571)
  %i.c = load i64, ptr %0, align 8, !dbg !18582, !range !4644, !alias.scope !18579, !noundef !2135
    #dbg_value(i64 %i.c, !6588, !DIExpression(), !18569)
  %i.d = sub i64 %i.c, %i.b, !dbg !18583
  %i.e = icmp ugt i64 %2, %i.d, !dbg !18584
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !18585, !prof !4645

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !dbg !18586
  %i.f = load i64, ptr %i.a, align 8, !dbg !18587, !alias.scope !18580, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.f, !6482, !DIExpression(), !18572)
    #dbg_value(i64 %i.f, !6554, !DIExpression(), !18574)
  %i.g = icmp sgt i64 %i.f, -1, !dbg !18588
  tail call void @llvm.assume(i1 %i.g), !dbg !18589
  br label %bb.b, !dbg !18590

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %bb.a
    #dbg_value(!DIArgList(ptr %1, i64 %2), !6494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18540)
    #dbg_value(i64 %i.b, !6482, !DIExpression(), !18572)
    #dbg_value(i64 %i.b, !6554, !DIExpression(), !18574)
  %i.h = icmp sgt i64 %i.b, -1, !dbg !18588
  tail call void @llvm.assume(i1 %i.h), !dbg !18589
  %.not.i.i = icmp samesign eq i64 %2, 0, !dbg !18590
  br i1 %.not.i.i, label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCshovLROGBtMy_11quinn_proto.exit, label %bb.b, !dbg !18590

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i.i ]
    #dbg_value(ptr %1, !6466, !DIExpression(), !18552)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18591
  %i.k = load ptr, ptr %i.j, align 8, !dbg !18591, !alias.scope !18580, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.k, !6557, !DIExpression(), !18574)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i, !dbg !18592
    #dbg_value(ptr %i.l, !6470, !DIExpression(), !18552)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !18593
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !18594, !alias.scope !18580
  br label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCshovLROGBtMy_11quinn_proto.exit, !dbg !18595

_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i.i ], !dbg !18594
  %i.n = add i64 %i.m, %2, !dbg !18594
  store i64 %i.n, ptr %i.a, align 8, !dbg !18594, !alias.scope !18580
  ret void, !dbg !18596
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18598 {
bb.a:
    #dbg_value(ptr %0, !18669, !DIExpression(), !18674)
    #dbg_value(ptr %0, !18675, !DIExpression(), !18678)
    #dbg_value(i64 %1, !18670, !DIExpression(), !18674)
    #dbg_value(i8 %2, !18671, !DIExpression(), !18674)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18723 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !18723, !noundef !2135 ; 6 uses
    #dbg_value(i64 %i.b, !18672, !DIExpression(), !18679)
  %i.c = icmp sgt i64 %i.b, -1, !dbg !18724
  tail call void @llvm.assume(i1 %i.c), !dbg !18725
  %i.d = icmp ugt i64 %1, %i.b, !dbg !18726
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCshovLROGBtMy_11quinn_proto.exit, !dbg !18726

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b, !dbg !18727        ; 4 uses
    #dbg_value(ptr poison, !18680, !DIExpression(), !18612)
    #dbg_value(ptr poison, !18689, !DIExpression(), !18613)
    #dbg_value(ptr poison, !18692, !DIExpression(), !18614)
    #dbg_value(ptr poison, !18705, !DIExpression(), !18617)
    #dbg_value(ptr poison, !18705, !DIExpression(), !18619)
    #dbg_value(i8 %2, !18700, !DIExpression(), !18620)
    #dbg_value(ptr %0, !18698, !DIExpression(), !18620)
    #dbg_value(ptr %0, !18708, !DIExpression(), !18623)
    #dbg_value(ptr %0, !18710, !DIExpression(), !18626)
    #dbg_value(i64 %i.e, !18699, !DIExpression(), !18620)
    #dbg_value(i64 1, !18712, !DIExpression(), !18629)
    #dbg_value(i64 1, !18706, !DIExpression(), !18630)
    #dbg_value(i64 1, !18706, !DIExpression(), !18631)
    #dbg_value(ptr %0, !6528, !DIExpression(), !18633)
    #dbg_value(i64 %i.e, !6532, !DIExpression(), !18633)
    #dbg_value(i64 %i.e, !6534, !DIExpression(), !18635)
    #dbg_value(i64 %i.e, !6541, !DIExpression(), !18637)
    #dbg_value(i64 %i.e, !6546, !DIExpression(), !18639)
    #dbg_value(ptr %0, !6538, !DIExpression(), !18640)
    #dbg_value(i64 %i.b, !6539, !DIExpression(), !18635)
    #dbg_value(i64 %i.b, !6543, !DIExpression(), !18637)
    #dbg_value(i64 %i.b, !6548, !DIExpression(), !18639)
    #dbg_value(i64 %i.b, !6587, !DIExpression(), !18642)
    #dbg_value(ptr %0, !6542, !DIExpression(), !18637)
    #dbg_value(ptr %0, !6547, !DIExpression(), !18639)
    #dbg_value(ptr %0, !6551, !DIExpression(), !18644)
    #dbg_value(i64 1, !6544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18637)
    #dbg_value(i64 1, !6549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18639)
    #dbg_value(i64 1, !6544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18637)
    #dbg_value(i64 1, !6549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18639)
    #dbg_value(i64 1, !6552, !DIExpression(), !18644)
  %i.f = load i64, ptr %0, align 8, !dbg !18728, !range !4644, !alias.scope !18716, !noundef !2135
    #dbg_value(i64 %i.f, !6588, !DIExpression(), !18642)
  %i.g = sub nsw i64 %i.f, %i.b, !dbg !18729
  %i.h = icmp ugt i64 %i.e, %i.g, !dbg !18730
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i, !dbg !18731, !prof !4645

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1), !dbg !18732
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !18733, !alias.scope !18717
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i, !dbg !18732

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ], !dbg !18733 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18734
  %i.k = load ptr, ptr %i.j, align 8, !dbg !18734, !alias.scope !18717, !nonnull !2135, !noundef !2135 ; 2 uses
    #dbg_value(ptr %i.k, !18713, !DIExpression(), !18656)
    #dbg_value(i64 %i.i, !18714, !DIExpression(), !18656)
  %i.l = icmp sgt i64 %i.i, -1, !dbg !18735
  tail call void @llvm.assume(i1 %i.l), !dbg !18736
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i, !dbg !18737 ; 2 uses
    #dbg_value(ptr %i.m, !18701, !DIExpression(), !18657)
    #dbg_value(ptr %i.m, !18713, !DIExpression(), !18629)
    #dbg_value(ptr %i.m, !18718, !DIExpression(), !18660)
    #dbg_value(ptr %i.a, !18702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18661)
    #dbg_value(i64 1, !18703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18662)
    #dbg_value(i64 %i.e, !18703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18662)
    #dbg_value(i64 %i.i, !18702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18661)
    #dbg_value(ptr undef, !18692, !DIExpression(), !18614)
    #dbg_value(ptr undef, !18689, !DIExpression(), !18613)
    #dbg_value(ptr undef, !18680, !DIExpression(), !18612)
    #dbg_value(ptr undef, !18684, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18663)
  %i.n = icmp ugt i64 %i.e, 1, !dbg !18738
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i, !dbg !18739

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i
  %i.o = add i64 %i.e, -1, !dbg !18739            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false), !dbg !18740
  %i.p = add i64 %i.o, %i.i, !dbg !18739          ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p, !dbg !18739
    #dbg_value(ptr poison, !18718, !DIExpression(), !18660)
    #dbg_value(i64 poison, !18702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18661)
    #dbg_value(i64 poison, !18703, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18662)
    #dbg_value(ptr poison, !18718, !DIExpression(), !18665)
    #dbg_value(i8 %2, !18721, !DIExpression(), !18665)
    #dbg_value(ptr poison, !18701, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !18657)
    #dbg_value(ptr poison, !18713, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !18629)
    #dbg_value(ptr undef, !18705, !DIExpression(), !18617)
    #dbg_value(ptr undef, !18692, !DIExpression(), !18614)
    #dbg_value(ptr undef, !18689, !DIExpression(), !18613)
    #dbg_value(ptr undef, !18680, !DIExpression(), !18612)
    #dbg_value(ptr undef, !18684, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18663)
  br label %._crit_edge.i, !dbg !18741

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa42.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i ]
  %storemerge.lcssa41.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto.exit.i ]
    #dbg_value(i8 %2, !18721, !DIExpression(), !18660)
  store i8 %2, ptr %.sroa.0.0.lcssa42.i, align 1, !dbg !18742
    #dbg_value(ptr undef, !18705, !DIExpression(), !18619)
  %i.q = add i64 %storemerge.lcssa41.i, 1, !dbg !18743
    #dbg_value(i64 %i.q, !18702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18661)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCshovLROGBtMy_11quinn_proto.exit, !dbg !18744

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCshovLROGBtMy_11quinn_proto.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ], !dbg !18679
  store i64 %storemerge, ptr %i.a, align 8, !dbg !18679
  ret void, !dbg !18745
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE6removeCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 !dbg !18747 {
bb.a:
    #dbg_value(ptr %0, !18793, !DIExpression(), !18797)
    #dbg_value(i64 %1, !18794, !DIExpression(), !18797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18798), !dbg !18842
    #dbg_value(ptr %0, !18799, !DIExpression(), !18759)
    #dbg_value(ptr %0, !18815, !DIExpression(), !18762)
    #dbg_value(ptr %0, !18820, !DIExpression(), !18765)
    #dbg_value(ptr %0, !18822, !DIExpression(), !18768)
    #dbg_value(i64 %1, !18810, !DIExpression(), !18759)
    #dbg_value(i64 %1, !18826, !DIExpression(), !18771)
    #dbg_value(i64 1, !18828, !DIExpression(), !18773)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18843 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !18843, !alias.scope !18798, !noalias !18830, !noundef !2135 ; 5 uses
    #dbg_value(i64 %i.b, !18811, !DIExpression(), !18775)
  %i.c = icmp ult i64 %i.b, 576460752303423488, !dbg !18844
  tail call void @llvm.assume(i1 %i.c), !dbg !18845
  %.not.i = icmp ult i64 %1, %i.b, !dbg !18846
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE10try_removeCshovLROGBtMy_11quinn_proto.exit, !dbg !18846

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18847
  %i.e = load ptr, ptr %i.d, align 8, !dbg !18847, !alias.scope !18798, !noalias !18830, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.e, !18827, !DIExpression(), !18771)
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1, !dbg !18848 ; 4 uses
    #dbg_value(ptr %i.f, !18813, !DIExpression(), !18782)
    #dbg_value(ptr %i.f, !18827, !DIExpression(), !18773)
    #dbg_value(ptr %i.f, !18831, !DIExpression(), !18785)
    #dbg_value(ptr %i.f, !18837, !DIExpression(), !18788)
  %i.g = load i64, ptr %i.f, align 8, !dbg !18849, !noalias !18841, !noundef !2135
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !18849
  %i.i = load i64, ptr %i.h, align 8, !dbg !18849, !noalias !18841, !noundef !2135
    #dbg_value(i64 %i.g, !18812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18789)
    #dbg_value(i64 %i.i, !18812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18789)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !18850
    #dbg_value(ptr %i.j, !18834, !DIExpression(), !18785)
  %i.k = xor i64 %1, -1, !dbg !18851
  %i.l = add nsw i64 %i.b, %i.k, !dbg !18851
    #dbg_value(i64 %i.l, !18835, !DIExpression(), !18785)
  %i.m = shl nuw nsw i64 %i.l, 4, !dbg !18852
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.j, i64 %i.m, i1 false), !dbg !18852, !noalias !18841
  %i.n = add nsw i64 %i.b, -1, !dbg !18853
    #dbg_value(i64 %i.n, !18824, !DIExpression(), !18768)
  store i64 %i.n, ptr %i.a, align 8, !dbg !18854, !alias.scope !18798, !noalias !18830
  %i.o = insertvalue { i64, i64 } poison, i64 %i.g, 0, !dbg !18855
  %i.p = insertvalue { i64, i64 } %i.o, i64 %i.i, 1, !dbg !18855
  ret { i64, i64 } %i.p, !dbg !18855

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE10try_removeCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #31, !dbg !18856
  unreachable, !dbg !18856
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !1512 {
bb.a:
    #dbg_value(ptr %0, !7412, !DIExpression(), !18857)
    #dbg_value(i64 %1, !7413, !DIExpression(), !18857)
    #dbg_value(i64 %1, !7415, !DIExpression(), !18859)
    #dbg_value(i64 %1, !7423, !DIExpression(), !18861)
    #dbg_value(i64 %1, !7428, !DIExpression(), !18863)
    #dbg_value(ptr %0, !7420, !DIExpression(), !18864)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18869
  %i.b = load i64, ptr %i.a, align 8, !dbg !18869, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.b, !7421, !DIExpression(), !18859)
    #dbg_value(i64 %i.b, !7425, !DIExpression(), !18861)
    #dbg_value(i64 %i.b, !7430, !DIExpression(), !18863)
    #dbg_value(i64 %i.b, !7433, !DIExpression(), !18866)
    #dbg_value(ptr %0, !7424, !DIExpression(), !18861)
    #dbg_value(ptr %0, !7429, !DIExpression(), !18863)
    #dbg_value(ptr %0, !7436, !DIExpression(), !18868)
    #dbg_value(i64 8, !7426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18861)
    #dbg_value(i64 8, !7431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18863)
    #dbg_value(i64 16, !7426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18861)
    #dbg_value(i64 16, !7431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18863)
    #dbg_value(i64 16, !7437, !DIExpression(), !18868)
  %i.c = load i64, ptr %0, align 8, !dbg !18870, !range !4644, !noundef !2135
    #dbg_value(i64 %i.c, !7434, !DIExpression(), !18866)
  %i.d = sub i64 %i.c, %i.b, !dbg !18871
  %i.e = icmp ugt i64 %1, %i.d, !dbg !18872
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !18873, !prof !4645

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !18874

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 16), !dbg !18875
  br label %bb.b, !dbg !18875
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCshovLROGBtMy_11quinn_proto5frame11StopSendingE7reserveBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !18876 {
bb.a:
    #dbg_value(ptr %0, !18885, !DIExpression(), !18888)
    #dbg_value(i64 %1, !18886, !DIExpression(), !18888)
    #dbg_value(i64 %1, !18889, !DIExpression(), !18898)
    #dbg_value(i64 %1, !18899, !DIExpression(), !18905)
    #dbg_value(i64 %1, !18906, !DIExpression(), !18912)
    #dbg_value(ptr %0, !18894, !DIExpression(), !18913)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18924
  %i.b = load i64, ptr %i.a, align 8, !dbg !18924, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.b, !18895, !DIExpression(), !18898)
    #dbg_value(i64 %i.b, !18901, !DIExpression(), !18905)
    #dbg_value(i64 %i.b, !18908, !DIExpression(), !18912)
    #dbg_value(i64 %i.b, !18914, !DIExpression(), !18918)
    #dbg_value(ptr %0, !18900, !DIExpression(), !18905)
    #dbg_value(ptr %0, !18907, !DIExpression(), !18912)
    #dbg_value(ptr %0, !18919, !DIExpression(), !18923)
    #dbg_value(i64 8, !18902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18905)
    #dbg_value(i64 8, !18909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18912)
    #dbg_value(i64 16, !18902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18905)
    #dbg_value(i64 16, !18909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18912)
    #dbg_value(i64 16, !18920, !DIExpression(), !18923)
  %i.c = load i64, ptr %0, align 8, !dbg !18925, !range !4644, !noundef !2135
    #dbg_value(i64 %i.c, !18915, !DIExpression(), !18918)
  %i.d = sub i64 %i.c, %i.b, !dbg !18926
  %i.e = icmp ugt i64 %1, %i.d, !dbg !18927
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !18928, !prof !4645

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !18929

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 16), !dbg !18930
  br label %bb.b, !dbg !18930
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCshovLROGBtMy_11quinn_proto6shared9IssuedCidE7reserveBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !18931 {
bb.a:
    #dbg_value(ptr %0, !18940, !DIExpression(), !18943)
    #dbg_value(i64 %1, !18941, !DIExpression(), !18943)
    #dbg_value(i64 %1, !18944, !DIExpression(), !18952)
    #dbg_value(i64 %1, !18953, !DIExpression(), !18959)
    #dbg_value(i64 %1, !18960, !DIExpression(), !18966)
    #dbg_value(ptr %0, !18948, !DIExpression(), !18967)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18978
  %i.b = load i64, ptr %i.a, align 8, !dbg !18978, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.b, !18949, !DIExpression(), !18952)
    #dbg_value(i64 %i.b, !18955, !DIExpression(), !18959)
    #dbg_value(i64 %i.b, !18962, !DIExpression(), !18966)
    #dbg_value(i64 %i.b, !18968, !DIExpression(), !18972)
    #dbg_value(ptr %0, !18954, !DIExpression(), !18959)
    #dbg_value(ptr %0, !18961, !DIExpression(), !18966)
    #dbg_value(ptr %0, !18973, !DIExpression(), !18977)
    #dbg_value(i64 8, !18956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18959)
    #dbg_value(i64 8, !18963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18966)
    #dbg_value(i64 48, !18956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18959)
    #dbg_value(i64 48, !18963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18966)
    #dbg_value(i64 48, !18974, !DIExpression(), !18977)
  %i.c = load i64, ptr %0, align 8, !dbg !18979, !range !4644, !noundef !2135
    #dbg_value(i64 %i.c, !18969, !DIExpression(), !18972)
  %i.d = sub i64 %i.c, %i.b, !dbg !18980
  %i.e = icmp ugt i64 %1, %i.d, !dbg !18981
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !18982, !prof !4645

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !18983

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 48), !dbg !18984
  br label %bb.b, !dbg !18984
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !18985 {
bb.a:
    #dbg_value(ptr %0, !18994, !DIExpression(), !18997)
    #dbg_value(i64 %1, !18995, !DIExpression(), !18997)
    #dbg_value(i64 %1, !18998, !DIExpression(), !19007)
    #dbg_value(i64 %1, !19008, !DIExpression(), !19014)
    #dbg_value(i64 %1, !19015, !DIExpression(), !19021)
    #dbg_value(ptr %0, !19003, !DIExpression(), !19022)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19033
  %i.b = load i64, ptr %i.a, align 8, !dbg !19033, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.b, !19004, !DIExpression(), !19007)
    #dbg_value(i64 %i.b, !19010, !DIExpression(), !19014)
    #dbg_value(i64 %i.b, !19017, !DIExpression(), !19021)
    #dbg_value(i64 %i.b, !19023, !DIExpression(), !19027)
    #dbg_value(ptr %0, !19009, !DIExpression(), !19014)
    #dbg_value(ptr %0, !19016, !DIExpression(), !19021)
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB4_3BbrNtB6_10Controller9clone_box:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 360, !dbg !24467
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !24467
  store i64 %.sroa.07.0.i, ptr %i.bw, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !24467
  store i32 %i.am, ptr %i.bx, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !24467
  store i64 %.sroa.010.0.i, ptr %i.by, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !24467
  store i32 %i.aq, ptr %i.bz, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  store i64 %i.at, ptr %i.a, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24467
  store i32 %i.av, ptr %i.ca, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.cb = load <4 x i8>, ptr %i.z, align 4, !dbg !24469, !alias.scope !24359, !noalias !24358
  store <4 x i8> %i.cb, ptr %i.bm, align 4, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.cc = load <2 x i64>, ptr %i.ak, align 8, !dbg !24476, !alias.scope !24359, !noalias !24358
  store <2 x i64> %i.cc, ptr %i.bv, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 376, !dbg !24467
  %i.ce = load <2 x i64>, ptr %i.aw, align 8, !dbg !24482, !alias.scope !24359, !noalias !24358
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 392, !dbg !24467
  %i.cg = load <2 x i64>, ptr %i.ax, align 8, !dbg !24483, !alias.scope !24359, !noalias !24358
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 408, !dbg !24467
  %i.ci = load <2 x i64>, ptr %i.ay, align 8, !dbg !24484, !alias.scope !24359, !noalias !24358
  store <2 x i64> %i.ci, ptr %i.ch, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 424, !dbg !24467
  %i.ck = load <2 x i64>, ptr %i.az, align 8, !dbg !24485, !alias.scope !24359, !noalias !24358
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 440, !dbg !24467
  %i.cm = load <2 x i64>, ptr %i.bc, align 8, !dbg !24487, !alias.scope !24359, !noalias !24358
  store <2 x i64> %i.cm, ptr %i.cl, align 8, !dbg !24467, !alias.scope !24358, !noalias !24359
    #dbg_declare(ptr %i.a, !7854, !DIExpression(), !24316)
    #dbg_value(i64 8, !7261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24318)
    #dbg_value(i64 8, !7268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24320)
    #dbg_value(i64 8, !7285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24322)
    #dbg_value(i64 488, !7261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24318)
    #dbg_value(i64 488, !7268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24320)
    #dbg_value(i64 488, !7285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24322)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7283, !DIExpression(), !24320)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7289, !DIExpression(), !24322)
    #dbg_value(i8 0, !7290, !DIExpression(), !24322)
    #dbg_value(i64 8, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24324)
    #dbg_value(i64 8, !7314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24326)
    #dbg_value(i64 488, !7292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24324)
    #dbg_value(i64 488, !7314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24326)
    #dbg_value(i1 false, !7296, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24324)
    #dbg_value(i64 488, !7297, !DIExpression(), !24327)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !24488, !noalias !24449
  %i.cn = tail call noundef align 8 dereferenceable_or_null(488) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1257) 488, i64 noundef range(i64 1, 9) 8) #30, !dbg !24489, !noalias !24449 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null, !dbg !24490
  br i1 %i.co, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrE3newBK_.exit, !dbg !24491, !prof !7316

bb.c:                                             ; preds = %_RNvXs7_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB5_3BbrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 488) #32
          to label %.noexc unwind label %bb.d, !dbg !24492

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !24492

bb.d:                                             ; preds = %bb.c
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24450), !dbg !24493
    #dbg_value(ptr %i.a, !5983, !DIExpression(), !24333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24451), !dbg !24494
    #dbg_value(ptr %i.bd, !5988, !DIExpression(), !24337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24452), !dbg !24495
    #dbg_value(ptr %i.bd, !5994, !DIExpression(), !24341)
    #dbg_value(ptr %i.bd, !5996, !DIExpression(), !24343)
    #dbg_value(i64 1, !6003, !DIExpression(), !24345)
    #dbg_value(i8 1, !6005, !DIExpression(), !24345)
    #dbg_value(i64 1, !6007, !DIExpression(), !24347)
    #dbg_value(i8 1, !6009, !DIExpression(), !24347)
  %i.cq = load ptr, ptr %i.bd, align 8, !dbg !24496, !alias.scope !24453, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.cq, !6004, !DIExpression(), !24349)
    #dbg_value(ptr %i.cq, !6008, !DIExpression(), !24347)
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !dbg !24497, !noalias !24453
  %i.cs = icmp eq i64 %i.cr, 1, !dbg !24498
  br i1 %i.cs, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrEBH_.exit, !dbg !24498

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !4855, !DIExpression(), !24351)
  fence acquire, !dbg !24499
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr9BbrConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrEBH_.exit unwind label %bb.f, !dbg !24500

bb.f:                                             ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !24501
  unreachable, !dbg !24501

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrEBH_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.cp, !dbg !24501

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrE3newBK_.exit: ; preds = %_RNvXs7_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB5_3BbrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    #dbg_value(ptr %i.cn, !7859, !DIExpression(), !24352)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.cn, ptr noundef nonnull align 8 dereferenceable(488) %i.a, i64 488, i1 false), !dbg !24502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24503
  %i.cu = insertvalue { ptr, ptr } poison, ptr %i.cn, 0, !dbg !24504
  %i.cv = insertvalue { ptr, ptr } %i.cu, ptr @93, 1, !dbg !24504
  ret { ptr, ptr } %i.cv, !dbg !24504
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEENtNtBM_5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24506 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !4159, !DIExpression(), !24538)
    #dbg_value(ptr poison, !24633, !DIExpression(), !24539)
    #dbg_value(ptr poison, !24647, !DIExpression(), !24540)
    #dbg_value(ptr poison, !24659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24541)
    #dbg_value(ptr %1, !24612, !DIExpression(), !24688)
    #dbg_value(ptr %1, !24689, !DIExpression(), !24695)
    #dbg_value(ptr %1, !24696, !DIExpression(), !24701)
    #dbg_value(ptr %1, !24702, !DIExpression(), !24706)
    #dbg_value(ptr %1, !24707, !DIExpression(), !24713)
    #dbg_declare(ptr poison, !24613, !DIExpression(), !24714)
    #dbg_declare(ptr poison, !24682, !DIExpression(), !24715)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24771
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24772
  %i.d = load ptr, ptr %i.c, align 8, !dbg !24772, !nonnull !2135, !noundef !2135 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !dbg !24773, !noundef !2135 ; 5 uses
    #dbg_value(ptr %i.d, !24681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24724)
    #dbg_value(i64 %i.e, !24681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24725), !dbg !24774
    #dbg_value(ptr %i.d, !24656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24553)
    #dbg_value(ptr %i.d, !24726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24556)
    #dbg_value(ptr %i.d, !24730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24562)
    #dbg_value(i64 %i.e, !24656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24553)
    #dbg_value(i64 %i.e, !24726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24556)
    #dbg_value(i64 %i.e, !24730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24562)
    #dbg_declare(ptr poison, !24657, !DIExpression(), !24563)
    #dbg_declare(ptr poison, !24736, !DIExpression(), !24566)
    #dbg_declare(ptr poison, !24742, !DIExpression(), !24569)
    #dbg_value(i64 %i.e, !24740, !DIExpression(), !24570)
    #dbg_value(i64 %i.e, !24746, !DIExpression(), !24571)
    #dbg_value(i64 %i.e, !24732, !DIExpression(), !24572)
    #dbg_value(i64 %i.e, !24748, !DIExpression(), !24575)
    #dbg_value(i64 %i.e, !6813, !DIExpression(), !24577)
    #dbg_value(i64 %i.e, !6832, !DIExpression(), !24579)
    #dbg_declare(ptr poison, !6817, !DIExpression(), !24580)
    #dbg_value(i64 8, !6818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24577)
    #dbg_value(i64 8, !6835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24579)
    #dbg_value(i64 16, !6818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24577)
    #dbg_value(i64 16, !6835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24579)
    #dbg_value(i64 0, !6834, !DIExpression(), !24579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24775, !noalias !24751
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !24775, !noalias !24751
  %i.f = load i64, ptr %i.a, align 8, !dbg !24775, !range !4062, !noalias !24751, !noundef !2135
  %i.g = trunc nuw i64 %i.f to i1, !dbg !24776
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24777
  %i.i = load i64, ptr %i.h, align 8, !dbg !24777, !range !6837, !noalias !24751, !noundef !2135 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24777 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i, !dbg !24776, !prof !4645

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !24778, !noalias !24751
    #dbg_value(i64 %i.i, !6820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24582)
    #dbg_value(i64 %i.k, !6820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24582)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !dbg !24779, !noalias !24751
  unreachable, !dbg !24779

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !24780, !noalias !24751, !nonnull !2135, !noundef !2135 ; 4 uses
    #dbg_value(i64 %i.i, !6819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24583)
    #dbg_value(ptr %i.l, !6819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24583)
    #dbg_value(ptr poison, !6833, !DIExpression(), !24584)
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !24781
    #dbg_value(i1 true, !6839, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24586)
  tail call void @llvm.assume(i1 %i.m), !dbg !24782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24783, !noalias !24751
    #dbg_value(i64 %i.i, !24658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24752)
    #dbg_value(ptr %i.l, !24658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24752)
    #dbg_value(ptr undef, !24659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24541)
    #dbg_value(i64 0, !24659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24541)
    #dbg_value(ptr %i.l, !24749, !DIExpression(), !24591)
    #dbg_value(i64 0, !24748, !DIExpression(), !24591)
    #dbg_value(ptr %i.l, !24660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24592)
    #dbg_value(i64 %i.i, !24660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24592)
    #dbg_value(ptr %i.d, !24733, !DIExpression(), !24593)
    #dbg_value(ptr %i.d, !24749, !DIExpression(), !24575)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e, !dbg !24784
    #dbg_value(ptr %i.d, !24661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24594)
    #dbg_value(ptr %i.n, !24661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24594)
    #dbg_value(i64 0, !24661, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24594)
    #dbg_value(i64 %i.i, !24661, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24594)
    #dbg_value(ptr undef, !24647, !DIExpression(), !24540)
  %i.o = icmp eq i64 %i.i, 0, !dbg !24785
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i.preheader, !dbg !24785

.lr.ph.i.preheader:                               ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i
  %i.p = and i64 %i.e, 1152921504606846975, !dbg !24786
  %i.q = add i64 %i.i, -1, !dbg !24786
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q), !dbg !24786 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4, !dbg !24786
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph, !dbg !24786

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846974      ; 4 uses
  br label %vector.body, !dbg !24786

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !24787 ; 4 uses
  %i.s = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %next.gep3 = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !24788, !noalias !24761
  %wide.load4 = load <2 x i64>, ptr %next.gep3, align 8, !dbg !24788, !noalias !24761
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index, !dbg !24789
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index, !dbg !24789
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !24789
  store <2 x i64> %wide.load, ptr %i.u, align 8, !dbg !24790, !noalias !24751
  store <2 x i64> %wide.load4, ptr %i.w, align 8, !dbg !24790, !noalias !24751
  %index.next = add nuw i64 %index, 2, !dbg !24787 ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !24785
  br i1 %i.x, label %.lr.ph.i.preheader7.loopexit, label %vector.body, !dbg !24785, !llvm.loop !24597

.lr.ph.i.preheader7.loopexit:                     ; preds = %vector.body
  %2 = shl nuw i64 %n.vec, 4
  %3 = getelementptr i8, ptr %i.d, i64 %2
  %4 = sub i64 %i.i, %n.vec
  br label %.lr.ph.i.preheader7, !dbg !24786

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader7.loopexit, %.lr.ph.i.preheader
  %.sroa.039.048.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %3, %.lr.ph.i.preheader7.loopexit ]
  %.sroa.7.047.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %.lr.ph.i.preheader7.loopexit ]
  %.sroa.10.046.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.preheader7.loopexit ]
  br label %.lr.ph.i, !dbg !24786

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %bb.c
  %.sroa.039.048.i = phi ptr [ %i.ab, %bb.c ], [ %.sroa.039.048.i.ph, %.lr.ph.i.preheader7 ] ; 3 uses
  %.sroa.7.047.i = phi i64 [ %i.aa, %bb.c ], [ %.sroa.7.047.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.10.046.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.10.046.i.ph, %.lr.ph.i.preheader7 ]
    #dbg_value(ptr %.sroa.039.048.i, !24661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24594)
    #dbg_value(i64 %.sroa.7.047.i, !24661, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24594)
    #dbg_value(i64 %.sroa.10.046.i, !24661, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !24594)
    #dbg_value(ptr undef, !24633, !DIExpression(), !24539)
    #dbg_value(ptr undef, !4159, !DIExpression(), !24538)
    #dbg_value(i64 1, !4175, !DIExpression(), !24599)
    #dbg_value(ptr %.sroa.039.048.i, !4170, !DIExpression(), !24600)
    #dbg_value(ptr %.sroa.039.048.i, !4179, !DIExpression(), !24599)
    #dbg_value(ptr %i.n, !4171, !DIExpression(), !24601)
    #dbg_value(ptr poison, !4182, !DIExpression(), !24603)
    #dbg_value(ptr poison, !4186, !DIExpression(), !24604)
  %i.y = icmp eq ptr %.sroa.039.048.i, %i.n, !dbg !24791
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %bb.c, !dbg !24786

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i64 %.sroa.10.046.i, -1, !dbg !24792 ; 2 uses
    #dbg_value(i64 %i.z, !24661, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24594)
    #dbg_value(ptr %.sroa.039.048.i, !24661, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24594)
    #dbg_value(ptr %.sroa.039.048.i, !24634, !DIExpression(), !24605)
    #dbg_value(i64 %.sroa.7.047.i, !24637, !DIExpression(), !24606)
    #dbg_value(i64 %.sroa.7.047.i, !24661, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !24594)
    #dbg_value(i64 %.sroa.7.047.i, !24662, !DIExpression(), !24607)
    #dbg_value(ptr %.sroa.039.048.i, !24663, !DIExpression(), !24607)
    #dbg_value(i64 %.sroa.7.047.i, !24659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24541)
  %i.aa = add nuw nsw i64 %.sroa.7.047.i, 1, !dbg !24787
    #dbg_value(i64 %i.aa, !24661, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24594)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.039.048.i, i64 16, !dbg !24793
    #dbg_value(ptr %i.ab, !24661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24594)
    #dbg_value(!DIArgList(ptr %i.l, i64 %.sroa.7.047.i), !24766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24608)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.047.i, !dbg !24789
    #dbg_value(ptr %i.ac, !24766, !DIExpression(), !24608)
    #dbg_value(i64 poison, !24767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24608)
    #dbg_value(i64 poison, !24767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24608)
  %i.ad = load <2 x i64>, ptr %.sroa.039.048.i, align 8, !dbg !24788, !alias.scope !24725, !noalias !24761
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !dbg !24790, !noalias !24751
    #dbg_value(i64 %i.aa, !24661, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24594)
    #dbg_value(i64 %i.z, !24661, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24594)
    #dbg_value(ptr undef, !24647, !DIExpression(), !24540)
  %i.ae = icmp eq i64 %i.z, 0, !dbg !24785
  br i1 %i.ae, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i, !dbg !24785, !llvm.loop !24609

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(i64 %i.e, !24658, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24752)
  store i64 %i.i, ptr %0, align 8, !dbg !24794, !noalias !24725
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24794
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24794, !noalias !24725
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24794
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !24794, !noalias !24725
  ret void, !dbg !24795
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24797 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !4203, !DIExpression(), !24829)
    #dbg_value(ptr poison, !24945, !DIExpression(), !24830)
    #dbg_value(ptr poison, !24959, !DIExpression(), !24831)
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !24923, !DIExpression(), !24999)
    #dbg_value(ptr %1, !25000, !DIExpression(), !25006)
    #dbg_value(ptr %1, !25007, !DIExpression(), !25012)
    #dbg_value(ptr %1, !25013, !DIExpression(), !25017)
    #dbg_value(ptr %1, !25018, !DIExpression(), !25024)
    #dbg_declare(ptr poison, !24924, !DIExpression(), !25025)
    #dbg_declare(ptr poison, !24993, !DIExpression(), !25026)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25112
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25113
  %i.f = load ptr, ptr %i.e, align 8, !dbg !25113, !nonnull !2135, !noundef !2135 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !dbg !25114, !noundef !2135 ; 4 uses
    #dbg_value(ptr %i.f, !24992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25035)
    #dbg_value(i64 %i.g, !24992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25035)
    #dbg_value(ptr %i.f, !24967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24841)
    #dbg_value(ptr %i.f, !25036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24844)
    #dbg_value(ptr %i.f, !25040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24850)
    #dbg_value(i64 %i.g, !24967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24841)
    #dbg_value(i64 %i.g, !25036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24844)
    #dbg_value(i64 %i.g, !25040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24850)
    #dbg_declare(ptr poison, !24968, !DIExpression(), !24851)
    #dbg_declare(ptr poison, !25046, !DIExpression(), !24854)
    #dbg_declare(ptr poison, !25052, !DIExpression(), !24857)
    #dbg_declare(ptr %i.c, !24969, !DIExpression(), !24858)
    #dbg_declare(ptr %i.b, !25058, !DIExpression(), !24861)
    #dbg_declare(ptr %i.b, !25065, !DIExpression(), !24864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25115, !noalias !25070
    #dbg_value(i64 %i.g, !25050, !DIExpression(), !24868)
    #dbg_value(i64 %i.g, !25056, !DIExpression(), !24869)
    #dbg_value(i64 %i.g, !25042, !DIExpression(), !24870)
    #dbg_value(i64 %i.g, !25071, !DIExpression(), !24873)
    #dbg_value(i64 %i.g, !25076, !DIExpression(), !24876)
    #dbg_value(i64 %i.g, !6813, !DIExpression(), !24878)
    #dbg_value(i64 %i.g, !6832, !DIExpression(), !24880)
    #dbg_declare(ptr poison, !6817, !DIExpression(), !24881)
    #dbg_value(i64 8, !6818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24878)
    #dbg_value(i64 8, !6835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24880)
    #dbg_value(i64 24, !6818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24878)
    #dbg_value(i64 24, !6835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24880)
    #dbg_value(i64 0, !6834, !DIExpression(), !24880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25116, !noalias !25070
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !25116, !noalias !25070
  %i.h = load i64, ptr %i.a, align 8, !dbg !25116, !range !4062, !noalias !25070, !noundef !2135
  %i.i = trunc nuw i64 %i.h to i1, !dbg !25117
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !25118
  %i.k = load i64, ptr %i.j, align 8, !dbg !25118, !range !6837, !noalias !25070, !noundef !2135 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25118 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i, !dbg !25117, !prof !4645

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !25119, !noalias !25070
    #dbg_value(i64 %i.k, !6820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24882)
    #dbg_value(i64 %i.m, !6820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24882)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #32, !dbg !25120, !noalias !25070
  unreachable, !dbg !25120

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !25121, !noalias !25070, !nonnull !2135, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.k, !6819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24883)
    #dbg_value(ptr %i.n, !6819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24883)
    #dbg_value(ptr poison, !6833, !DIExpression(), !24884)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !25122
    #dbg_value(i1 true, !6839, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24886)
  tail call void @llvm.assume(i1 %i.o), !dbg !25123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25124, !noalias !25070
  store i64 %i.k, ptr %i.c, align 8, !dbg !25125, !noalias !25070
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !25125
  store ptr %i.n, ptr %i.p, align 8, !dbg !25125, !noalias !25070
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !25125 ; 2 uses
    #dbg_value(ptr %i.c, !24970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24887)
    #dbg_value(i64 0, !24970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24887)
    #dbg_value(ptr %i.n, !25074, !DIExpression(), !24892)
    #dbg_value(i64 0, !25071, !DIExpression(), !24892)
    #dbg_value(ptr %i.n, !24971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24893)
    #dbg_value(i64 %i.k, !24971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24893)
    #dbg_value(ptr %i.f, !25043, !DIExpression(), !24894)
    #dbg_value(ptr %i.f, !25074, !DIExpression(), !24873)
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g, !dbg !25126
    #dbg_value(ptr %i.f, !24972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24895)
    #dbg_value(ptr %i.r, !24972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24895)
    #dbg_value(i64 0, !24972, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24895)
    #dbg_value(i64 %i.k, !24972, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24895)
    #dbg_value(ptr undef, !24959, !DIExpression(), !24831)
  %i.s = icmp eq i64 %i.k, 0, !dbg !25127
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i, !dbg !25127

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i, %bb.d
  %.sroa.035.046.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i ] ; 3 uses
  %.sroa.7.045.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshovLROGBtMy_11quinn_proto.exit.i ]
    #dbg_value(ptr %.sroa.035.046.i, !24972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24895)
    #dbg_value(i64 %.sroa.7.045.i, !24972, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24895)
    #dbg_value(i64 %.sroa.10.044.i, !24972, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24895)
  %i.t = add i64 %.sroa.10.044.i, -1, !dbg !25128 ; 2 uses
    #dbg_value(i64 %i.t, !24972, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24895)
    #dbg_value(ptr undef, !24945, !DIExpression(), !24830)
    #dbg_value(ptr undef, !4203, !DIExpression(), !24829)
    #dbg_value(i64 1, !4217, !DIExpression(), !24897)
    #dbg_value(ptr %.sroa.035.046.i, !4213, !DIExpression(), !24898)
    #dbg_value(ptr %.sroa.035.046.i, !4221, !DIExpression(), !24897)
    #dbg_value(ptr %i.r, !4214, !DIExpression(), !24899)
    #dbg_value(ptr poison, !4224, !DIExpression(), !24901)
    #dbg_value(ptr poison, !4227, !DIExpression(), !24902)
  %i.u = icmp eq ptr %.sroa.035.046.i, %i.r, !dbg !25129
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %bb.c, !dbg !25130

bb.c:                                             ; preds = %.lr.ph.i
    #dbg_value(ptr %.sroa.035.046.i, !24972, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24895)
    #dbg_value(ptr %.sroa.035.046.i, !24946, !DIExpression(), !24903)
    #dbg_value(i64 %.sroa.7.045.i, !24949, !DIExpression(), !24904)
    #dbg_value(i64 %.sroa.7.045.i, !24972, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !24895)
    #dbg_value(i64 %.sroa.7.045.i, !24973, !DIExpression(), !24905)
    #dbg_value(ptr %.sroa.035.046.i, !24974, !DIExpression(), !24905)
    #dbg_value(i64 %.sroa.7.045.i, !24970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24887)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.7.045.i), !25063, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !24906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25131, !noalias !25070
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.035.046.i)
          to label %bb.d unwind label %bb.f, !dbg !25132, !noalias !25091

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.045.i, 1, !dbg !25133
    #dbg_value(i64 %i.v, !24972, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24895)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.035.046.i, i64 24, !dbg !25134
    #dbg_value(ptr %i.w, !24972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24895)
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.045.i, !dbg !25135
    #dbg_value(ptr %i.x, !25063, !DIExpression(), !24906)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !25136, !noalias !25091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25137, !noalias !25070
    #dbg_value(i64 %i.v, !24972, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24895)
    #dbg_value(i64 %i.t, !24972, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24895)
    #dbg_value(ptr undef, !24959, !DIExpression(), !24831)
  %i.y = icmp eq i64 %i.t, 0, !dbg !25127
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i, !dbg !25127

bb.e:                                             ; preds = %bb.f
end_hunk_2
