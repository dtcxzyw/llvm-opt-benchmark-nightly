Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.08?download=true
inline.NumInlined: 268
inline.NumDeleted: 146
begin_hunk_0_@_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvB8_4next0EBc_:bb.a
  %i.g = load i64, ptr %i.f, align 8, !dbg !3795, !noundef !870 ; 7 uses
    #dbg_value(ptr %i.e, !3749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3753)
    #dbg_value(ptr %i.e, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3760)
    #dbg_value(ptr %i.e, !3761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3766)
    #dbg_value(i64 %i.g, !3749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3753)
    #dbg_value(i64 %i.g, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3760)
    #dbg_value(i64 %i.g, !3761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3766)
    #dbg_value(ptr poison, !1215, !DIExpression(), !3568)
    #dbg_value(i64 4, !1223, !DIExpression(), !3570)
    #dbg_value(i64 4, !1240, !DIExpression(), !3572)
    #dbg_value(i64 13, !1248, !DIExpression(), !3574)
    #dbg_value(ptr poison, !1251, !DIExpression(), !3576)
    #dbg_value(ptr poison, !1254, !DIExpression(), !3578)
    #dbg_value(i64 9, !1259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3580)
    #dbg_value(i64 13, !1259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3580)
    #dbg_value(i64 9, !1269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3582)
    #dbg_value(i64 13, !1269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3582)
    #dbg_value(i64 4, !1274, !DIExpression(), !3582)
    #dbg_value(i64 9, !1276, !DIExpression(), !3584)
    #dbg_value(i64 4, !1278, !DIExpression(), !3584)
  %.not.i.i = icmp eq i64 %i.g, 0, !dbg !3796
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !3796

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.e, align 1, !dbg !3796, !noundef !870
  %i.i = and i8 %i.h, 2, !dbg !3796
  %.not14.i.i = icmp eq i8 %i.i, 0, !dbg !3796
  br i1 %.not14.i.i, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit, label %bb.d, !dbg !3797

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !dbg !3796
  unreachable, !dbg !3796

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !1265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3580)
    #dbg_value(ptr poison, !1273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3582)
    #dbg_value(ptr poison, !1277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(i64 %i.g, !1265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3580)
    #dbg_value(i64 %i.g, !1273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3582)
    #dbg_value(i64 %i.g, !1277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3584)
  %i.j = icmp ugt i64 %i.g, 12, !dbg !3798
  br i1 %i.j, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i, label %bb.e, !dbg !3798, !prof !1280

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 9, i64 noundef 13, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !dbg !3799
  unreachable, !dbg !3799

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i: ; preds = %bb.d
    #dbg_value(ptr %i.e, !1265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3580)
    #dbg_value(ptr %i.e, !1273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3582)
    #dbg_value(ptr %i.e, !1277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(ptr %i.e, !1283, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3586)
    #dbg_value(i64 4, !1283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3586)
    #dbg_value(ptr %i.e, !1293, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3588)
    #dbg_value(ptr %i.e, !1316, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3590)
    #dbg_value(i64 4, !1293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3588)
    #dbg_value(i64 4, !1316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3590)
    #dbg_value(ptr %i.e, !1321, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !3592)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 9, !dbg !3800
    #dbg_value(ptr %i.k, !1283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3586)
    #dbg_value(ptr %i.k, !1293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3588)
    #dbg_value(ptr %i.k, !1316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3590)
    #dbg_value(ptr %i.k, !1321, !DIExpression(), !3592)
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.k, align 1, !dbg !3801, !alias.scope !3767 ; 2 uses
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i, !1341, !DIExpression(), !3596)
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i, !1220, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3597)
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i, !1236, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3570)
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i, !1246, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3572)
  %i.l = icmp eq i32 %.sroa.04.0.copyload.i.i.i, 0, !dbg !3802
  br i1 %i.l, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit, label %bb.f, !dbg !3802

bb.f:                                             ; preds = %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i
  %i.m = zext i32 %.sroa.04.0.copyload.i.i.i to i64, !dbg !3803
    #dbg_value(i64 %i.m, !1220, !DIExpression(), !3597)
    #dbg_value(i64 %i.m, !1236, !DIExpression(), !3570)
    #dbg_value(i64 %i.m, !1246, !DIExpression(), !3572)
    #dbg_value(i64 %i.m, !1249, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !3574)
  %i.n = shl nuw nsw i64 %i.m, 2, !dbg !3804
    #dbg_value(i64 %i.n, !1249, !DIExpression(), !3574)
  %i.o = add nuw nsw i64 %i.n, 13, !dbg !3805
  br label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit, !dbg !3806

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit: ; preds = %bb.b, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.f ], [ 9, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i ], [ 9, %bb.b ], !dbg !3807 ; 4 uses
    #dbg_value(i64 %.sroa.0.0.i, !3750, !DIExpression(), !3753)
    #dbg_value(i64 %.sroa.0.0.i, !3755, !DIExpression(), !3760)
    #dbg_value(i64 %.sroa.0.0.i, !3762, !DIExpression(), !3766)
  %i.p = icmp ugt i64 %.sroa.0.0.i, %i.g, !dbg !3808
  br i1 %i.p, label %bb.h, label %bb.g, !dbg !3808, !prof !1361

bb.g:                                             ; preds = %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit
  %i.q = sub nuw i64 %i.g, %.sroa.0.0.i, !dbg !3809 ; 2 uses
    #dbg_value(i64 %i.q, !3756, !DIExpression(), !3768)
    #dbg_value(i64 %i.q, !3763, !DIExpression(), !3766)
    #dbg_value(!DIArgList(ptr %i.e, i64 %.sroa.0.0.i), !3742, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3769)
    #dbg_value(!DIArgList(ptr %i.e, i64 %.sroa.0.0.i), !3749, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3771)
    #dbg_value(!DIArgList(ptr %i.e, i64 %.sroa.0.0.i), !3754, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3774)
    #dbg_value(!DIArgList(ptr %i.e, i64 %.sroa.0.0.i), !3761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3777)
    #dbg_value(i64 %i.q, !3742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3769)
    #dbg_value(i64 %i.q, !3749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3771)
    #dbg_value(i64 %i.q, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3774)
    #dbg_value(i64 %i.q, !3761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3777)
    #dbg_value(i32 0, !3743, !DIExpression(), !3778)
    #dbg_value(!DIArgList(ptr %i.e, i64 %.sroa.0.0.i), !3779, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3782)
    #dbg_value(i64 %i.q, !3779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3782)
  %i.r = icmp eq i64 %i.q, 0, !dbg !3810
  br i1 %i.r, label %._crit_edge, label %.lr.ph, !dbg !3811

.lr.ph:                                           ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i, !dbg !3812
    #dbg_value(ptr %i.s, !3742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3769)
    #dbg_value(ptr %i.s, !3749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3771)
    #dbg_value(ptr %i.s, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3774)
    #dbg_value(ptr %i.s, !3761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3777)
    #dbg_value(ptr %i.s, !3779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3782)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !870
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !870 ; 2 uses
  %i.ac = icmp ult i64 %i.z, 2305843009213693952
  %.promoted = load i64, ptr %i.x, align 8
  br label %bb.i, !dbg !3811

bb.h:                                             ; preds = %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i, i64 noundef %i.g, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !dbg !3813
  unreachable, !dbg !3813

bb.i:                                             ; preds = %.lr.ph, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit
  %i.ad = phi i64 [ %.promoted, %.lr.ph ], [ %i.br, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit ] ; 7 uses
  %.sroa.0.048 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit ]
  %.sroa.01.047 = phi ptr [ %i.s, %.lr.ph ], [ %i.ay, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit ] ; 3 uses
  %.sroa.6.046 = phi i64 [ %i.q, %.lr.ph ], [ %i.ax, %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit ] ; 5 uses
    #dbg_value(i32 %.sroa.0.048, !3743, !DIExpression(), !3778)
    #dbg_value(ptr %.sroa.01.047, !3761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3777)
    #dbg_value(i64 %.sroa.6.046, !3761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3777)
    #dbg_value(ptr %.sroa.01.047, !1367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3600)
    #dbg_value(i64 %.sroa.6.046, !1367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3600)
    #dbg_value(ptr poison, !1379, !DIExpression(), !3604)
    #dbg_value(ptr poison, !1427, !DIExpression(), !3605)
    #dbg_value(ptr %.sroa.01.047, !1447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3606)
    #dbg_value(ptr %.sroa.01.047, !1454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3608)
    #dbg_value(ptr %.sroa.01.047, !1459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3610)
    #dbg_value(i64 %.sroa.6.046, !1447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3606)
    #dbg_value(i64 %.sroa.6.046, !1454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3608)
    #dbg_value(i64 %.sroa.6.046, !1459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3610)
    #dbg_value(i32 0, !1448, !DIExpression(), !3611)
    #dbg_value(i32 0, !1449, !DIExpression(), !3612)
    #dbg_value(i64 %.sroa.6.046, !1461, !DIExpression(), !3613)
    #dbg_value(i64 %.sroa.6.046, !1466, !DIExpression(), !3615)
    #dbg_value(ptr %.sroa.01.047, !1462, !DIExpression(), !3616)
    #dbg_value(ptr %.sroa.01.047, !1472, !DIExpression(), !3615)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.047, i64 %.sroa.6.046, !dbg !3814
    #dbg_value(ptr %.sroa.01.047, !1450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3617)
    #dbg_value(ptr %i.ae, !1450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3617)
    #dbg_value(i64 0, !1450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3617)
    #dbg_value(ptr undef, !1427, !DIExpression(), !3605)
    #dbg_value(ptr undef, !1379, !DIExpression(), !3604)
    #dbg_value(i64 1, !1476, !DIExpression(), !3619)
    #dbg_value(ptr %.sroa.01.047, !1398, !DIExpression(), !3620)
    #dbg_value(ptr %.sroa.01.047, !1480, !DIExpression(), !3619)
    #dbg_value(ptr %i.ae, !1399, !DIExpression(), !3621)
    #dbg_value(ptr poison, !1483, !DIExpression(), !3623)
    #dbg_value(ptr poison, !1487, !DIExpression(), !3624)
  br label %.lr.ph.i.i, !dbg !3815

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.i
  %.sroa.01.034.i.i = phi i32 [ %i.an, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.sroa.03.033.i.i = phi i32 [ %i.ao, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.sroa.0.02232.i.i = phi ptr [ %i.ai, %bb.j ], [ %.sroa.01.047, %bb.i ] ; 2 uses
  %.sroa.8.031.i.i = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.i ] ; 3 uses
    #dbg_value(i32 %.sroa.01.034.i.i, !1448, !DIExpression(), !3611)
    #dbg_value(i32 %.sroa.03.033.i.i, !1449, !DIExpression(), !3612)
    #dbg_value(ptr %.sroa.0.02232.i.i, !1450, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3617)
    #dbg_value(ptr %.sroa.0.02232.i.i, !1428, !DIExpression(), !3625)
    #dbg_value(i64 %.sroa.8.031.i.i, !1431, !DIExpression(), !3626)
    #dbg_value(i64 %.sroa.8.031.i.i, !1450, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !3617)
    #dbg_value(i64 %.sroa.8.031.i.i, !1451, !DIExpression(), !3627)
  %i.af = load i8, ptr %.sroa.0.02232.i.i, align 1, !dbg !3816, !alias.scope !3783, !noundef !870 ; 3 uses
    #dbg_value(i8 %i.af, !1452, !DIExpression(), !3627)
    #dbg_value(i8 %i.af, !1491, !DIExpression(), !3633)
    #dbg_value(i8 %i.af, !1491, !DIExpression(), !3635)
  %i.ag = icmp sgt i8 %i.af, -1, !dbg !3815
  br i1 %i.ag, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit, label %bb.j, !dbg !3815

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw nsw i64 %.sroa.8.031.i.i, 1, !dbg !3817
    #dbg_value(i64 %i.ah, !1450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3617)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02232.i.i, i64 1, !dbg !3818 ; 2 uses
    #dbg_value(ptr %i.ai, !1450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3617)
  %i.aj = and i8 %i.af, 127, !dbg !3819
  %i.ak = zext nneg i8 %i.aj to i32, !dbg !3819
  %i.al = and i32 %.sroa.03.033.i.i, 31, !dbg !3819
  %i.am = shl i32 %i.ak, %i.al, !dbg !3819
  %i.an = or i32 %i.am, %.sroa.01.034.i.i, !dbg !3820
    #dbg_value(i32 %i.an, !1448, !DIExpression(), !3611)
  %i.ao = add i32 %.sroa.03.033.i.i, 7, !dbg !3821
    #dbg_value(i64 %i.ah, !1450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3617)
    #dbg_value(i32 %i.ao, !1449, !DIExpression(), !3612)
    #dbg_value(ptr undef, !1427, !DIExpression(), !3605)
    #dbg_value(ptr undef, !1379, !DIExpression(), !3604)
    #dbg_value(i64 1, !1476, !DIExpression(), !3619)
    #dbg_value(ptr %i.ai, !1398, !DIExpression(), !3620)
    #dbg_value(ptr %i.ai, !1480, !DIExpression(), !3619)
    #dbg_value(ptr %i.ae, !1399, !DIExpression(), !3621)
    #dbg_value(ptr poison, !1483, !DIExpression(), !3623)
    #dbg_value(ptr poison, !1487, !DIExpression(), !3624)
  %i.ap = icmp eq ptr %i.ai, %i.ae, !dbg !3822
  br i1 %i.ap, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread, label %.lr.ph.i.i, !dbg !3823

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit: ; preds = %.lr.ph.i.i
  %i.aq = zext nneg i8 %i.af to i32, !dbg !3824
  %i.ar = and i32 %.sroa.03.033.i.i, 31, !dbg !3825
  %i.as = shl i32 %i.aq, %i.ar, !dbg !3825
  %i.at = or i32 %i.as, %.sroa.01.034.i.i, !dbg !3826
  %i.au = add nuw i64 %.sroa.8.031.i.i, 1, !dbg !3827 ; 2 uses
    #dbg_value(i32 %i.at, !1373, !DIExpression(), !3636)
    #dbg_value(i64 %i.au, !1374, !DIExpression(), !3636)
    #dbg_value(!DIArgList(i32 %i.at, i32 0, i32 %i.at), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_and, DW_OP_minus, DW_OP_xor, DW_OP_stack_value), !3637)
    #dbg_value(i32 poison, !3744, !DIExpression(), !3784)
    #dbg_value(i64 %i.au, !3745, !DIExpression(), !3784)
    #dbg_value(i64 %i.au, !3750, !DIExpression(), !3771)
    #dbg_value(i64 %i.au, !3755, !DIExpression(), !3774)
    #dbg_value(i64 %i.au, !3762, !DIExpression(), !3777)
  %.not = icmp ult i64 %.sroa.8.031.i.i, %.sroa.6.046, !dbg !3828
  br i1 %.not, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread, label %bb.q, !dbg !3828, !prof !1497

._crit_edge:                                      ; preds = %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit, %bb.g
  ret void, !dbg !3829

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread: ; preds = %bb.j, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit
  %.sroa.0.0.i.i83 = phi i32 [ %i.at, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit ], [ 0, %bb.j ] ; 2 uses
  %.sroa.3.0.i.i82 = phi i64 [ %i.au, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit ], [ 0, %bb.j ] ; 2 uses
  %i.av = lshr i32 %.sroa.0.0.i.i83, 1, !dbg !3830
    #dbg_value(!DIArgList(i32 %i.av, i32 0, i32 %.sroa.0.0.i.i83), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_and, DW_OP_minus, DW_OP_xor, DW_OP_stack_value), !3637)
  %i.aw = and i32 %.sroa.0.0.i.i83, 1, !dbg !3831
    #dbg_value(!DIArgList(i32 %i.av, i32 0, i32 %i.aw), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_xor, DW_OP_stack_value), !3637)
  %sext.i = sub nsw i32 0, %i.aw, !dbg !3831
    #dbg_value(!DIArgList(i32 %i.av, i32 %sext.i), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3637)
  %spec.select.i = xor i32 %i.av, %sext.i, !dbg !3831
    #dbg_value(i32 %spec.select.i, !1375, !DIExpression(), !3637)
    #dbg_value(i32 %spec.select.i, !3744, !DIExpression(), !3784)
  %i.ax = sub nuw i64 %.sroa.6.046, %.sroa.3.0.i.i82, !dbg !3832 ; 2 uses
    #dbg_value(i64 %i.ax, !3757, !DIExpression(), !3785)
    #dbg_value(i64 %i.ax, !3763, !DIExpression(), !3777)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.01.047, i64 %.sroa.3.0.i.i82, !dbg !3833
    #dbg_value(ptr %i.ay, !3742, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3769)
    #dbg_value(ptr %i.ay, !3749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3771)
    #dbg_value(ptr %i.ay, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3774)
    #dbg_value(ptr %i.ay, !3761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3777)
    #dbg_value(i64 %i.ax, !3742, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3769)
    #dbg_value(i64 %i.ax, !3749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3771)
    #dbg_value(i64 %i.ax, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3774)
    #dbg_value(i64 %i.ax, !3761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3777)
  %i.az = add i32 %spec.select.i, %.sroa.0.048, !dbg !3834 ; 5 uses
    #dbg_value(i32 %i.az, !3746, !DIExpression(), !3786)
    #dbg_value(i32 %i.az, !3743, !DIExpression(), !3778)
    #dbg_value(ptr poison, !3787, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !3640)
    #dbg_value(i32 %i.az, !3791, !DIExpression(), !3640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793), !dbg !3835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.az, ptr %i.d, align 4, !noalias !3793
    #dbg_value(ptr %1, !1504, !DIExpression(), !3644)
    #dbg_value(ptr %1, !1578, !DIExpression(), !3646)
    #dbg_value(ptr %1, !1584, !DIExpression(), !3648)
    #dbg_value(ptr %1, !1584, !DIExpression(), !3650)
    #dbg_declare(ptr %i.d, !1508, !DIExpression(), !3651)
    #dbg_value(ptr %1, !1587, !DIExpression(), !3653)
    #dbg_value(i32 %i.az, !1591, !DIExpression(), !3653)
    #dbg_value(ptr %1, !1597, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3655)
    #dbg_value(ptr %1, !1604, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3657)
    #dbg_value(i32 %i.az, !1601, !DIExpression(), !3658)
    #dbg_value(ptr poison, !1612, !DIExpression(), !3660)
    #dbg_value(ptr poison, !1618, !DIExpression(), !3662)
  %i.ba = zext i32 %i.az to i64, !dbg !3836       ; 3 uses
    #dbg_value(i64 %i.ba, !1608, !DIExpression(), !3663)
    #dbg_value(i64 %i.ba, !1623, !DIExpression(), !3665)
    #dbg_value(i64 %i.ba, !1636, !DIExpression(), !3667)
    #dbg_value(ptr poison, !1630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3665)
    #dbg_value(ptr poison, !1640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3667)
    #dbg_value(i64 %i.u, !1630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3665)
    #dbg_value(i64 %i.u, !1640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3667)
  %i.bb = icmp ugt i64 %i.u, %i.ba, !dbg !3837
  br i1 %i.bb, label %bb.k, label %bb.l, !dbg !3837

bb.k:                                             ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread
    #dbg_value(ptr %i.w, !1630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3665)
    #dbg_value(ptr %i.w, !1640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3667)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ba, !dbg !3838 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !3839, !noalias !3794, !noundef !870
    #dbg_value(i32 %i.bd, !1592, !DIExpression(), !3670)
    #dbg_value(ptr poison, !1612, !DIExpression(), !3672)
    #dbg_value(ptr poison, !1618, !DIExpression(), !3674)
    #dbg_value(i32 %i.bd, !1601, !DIExpression(), !3676)
  %i.be = zext i32 %i.bd to i64, !dbg !3840       ; 4 uses
    #dbg_value(i64 %i.be, !1608, !DIExpression(), !3678)
    #dbg_value(i64 %i.be, !1623, !DIExpression(), !3680)
    #dbg_value(i64 %i.be, !1636, !DIExpression(), !3682)
  %i.bf = icmp ugt i64 %i.ad, %i.be, !dbg !3841
  br i1 %i.bf, label %bb.m, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread.i, !dbg !3841

bb.l:                                             ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #19, !dbg !3837, !noalias !3794
  unreachable, !dbg !3837

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !1597, !DIExpression(), !3683)
    #dbg_value(ptr %1, !1604, !DIExpression(), !3684)
    #dbg_value(ptr poison, !1612, !DIExpression(), !3686)
    #dbg_value(ptr poison, !1618, !DIExpression(), !3688)
    #dbg_value(ptr poison, !1630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3680)
    #dbg_value(ptr poison, !1640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3682)
    #dbg_value(i64 %i.z, !1630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3680)
    #dbg_value(i64 %i.z, !1640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3682)
  %i.bg = icmp ugt i64 %i.z, %i.be, !dbg !3842
  br i1 %i.bg, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.i, label %bb.n, !dbg !3842

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #19, !dbg !3842, !noalias !3794
  unreachable, !dbg !3842

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.i: ; preds = %bb.m
    #dbg_value(ptr %i.ab, !1630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3680)
    #dbg_value(ptr %i.ab, !1640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3682)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.be, !dbg !3843
    #dbg_value(ptr %i.bh, !1647, !DIExpression(), !3690)
    #dbg_value(ptr poison, !1651, !DIExpression(), !3691)
    #dbg_value(ptr %i.bh, !1653, !DIExpression(), !3693)
    #dbg_value(ptr poison, !1657, !DIExpression(), !3693)
  %i.bi = load i32, ptr %i.bh, align 4, !dbg !3844, !noalias !3794, !noundef !870
  %i.bj = icmp eq i32 %i.bi, %i.az, !dbg !3844
  br i1 %i.bj, label %_RNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize4next0B7_.exit, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread.i, !dbg !3845

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3846, !noalias !3793
    #dbg_value(i64 %i.ad, !1509, !DIExpression(), !3694)
    #dbg_value(i64 %i.ad, !1659, !DIExpression(), !3696)
    #dbg_value(i64 %i.ad, !1664, !DIExpression(), !3698)
  store i64 %i.ad, ptr %i.c, align 8, !dbg !3847, !noalias !3793
    #dbg_value(ptr %1, !1669, !DIExpression(), !3700)
  tail call void @llvm.assume(i1 %i.ac), !dbg !3848
  %i.bk = icmp ult i64 %i.ad, %i.z, !dbg !3849
  br i1 %i.bk, label %bb.p, label %bb.o, !dbg !3849, !prof !1280

bb.o:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread.i
    #dbg_value(ptr %i.c, !1511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3850, !noalias !3793
    #dbg_value(ptr %1, !1669, !DIExpression(), !3703)
  store i64 %i.z, ptr %i.b, align 8, !dbg !3851, !noalias !3793
    #dbg_value(ptr %i.b, !1511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3701)
    #dbg_value(ptr %i.d, !1511, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3852, !noalias !3793
  store ptr %i.c, ptr %i.a, align 8, !dbg !3852, !noalias !3793
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3852
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !3852, !noalias !3793
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3852
  store ptr %i.b, ptr %i.bl, align 8, !dbg !3852, !noalias !3793
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3852
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !dbg !3852, !noalias !3793
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3852
  store ptr %i.d, ptr %i.bm, align 8, !dbg !3852, !noalias !3793
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !3852
  store ptr @_RNvXs1s_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !dbg !3852, !noalias !3793
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #19, !dbg !3853
  unreachable, !dbg !3853

bb.p:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread.i
    #dbg_value(i64 %i.ad, !1676, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3705)
    #dbg_value(i64 %i.ad, !1517, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3706)
    #dbg_value(ptr %1, !1682, !DIExpression(), !3707)
    #dbg_value(ptr %1, !1684, !DIExpression(), !3709)
    #dbg_value(ptr poison, !1690, !DIExpression(), !3711)
    #dbg_value(ptr poison, !1692, !DIExpression(), !3713)
    #dbg_value(i64 %i.ad, !1688, !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value), !3714)
    #dbg_value(i64 %i.ad, !1695, !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value), !3716)
    #dbg_value(i64 %i.ad, !1707, !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value), !3718)
    #dbg_value(ptr poison, !1702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3716)
    #dbg_value(ptr poison, !1710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3718)
    #dbg_value(i64 %i.z, !1702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3716)
    #dbg_value(i64 %i.z, !1710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3718)
  %i.bn = and i64 %i.ad, 4294967295, !dbg !3854
    #dbg_value(i64 %i.bn, !1688, !DIExpression(), !3714)
    #dbg_value(i64 %i.bn, !1695, !DIExpression(), !3716)
    #dbg_value(i64 %i.bn, !1707, !DIExpression(), !3718)
    #dbg_value(ptr %i.ab, !1702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3716)
    #dbg_value(ptr %i.ab, !1710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3718)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bn, !dbg !3855
  store i32 %i.az, ptr %i.bo, align 4, !dbg !3856
    #dbg_value(ptr %1, !1682, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3720)
    #dbg_value(ptr %1, !1684, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3722)
    #dbg_value(i32 %i.az, !1676, !DIExpression(), !3723)
    #dbg_value(ptr poison, !1690, !DIExpression(), !3725)
    #dbg_value(ptr poison, !1692, !DIExpression(), !3727)
    #dbg_value(i64 %i.ba, !1688, !DIExpression(), !3728)
    #dbg_value(i64 %i.ba, !1695, !DIExpression(), !3730)
    #dbg_value(i64 %i.ba, !1707, !DIExpression(), !3732)
    #dbg_value(ptr poison, !1702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3730)
end_hunk_0
begin_hunk_1_@_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
    #dbg_value(ptr %0, !14853, !DIExpression(), !14856)
    #dbg_value(ptr %0, !14857, !DIExpression(), !14861)
    #dbg_value(ptr %0, !14862, !DIExpression(), !14866)
    #dbg_value(ptr %1, !14849, !DIExpression(), !14852)
    #dbg_declare(ptr %i.i, !14850, !DIExpression(), !14867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15043
  store i64 0, ptr %i.i, align 8, !dbg !15044
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15044 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8, !dbg !15044
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15044 ; 2 uses
  store i64 0, ptr %i.k, align 8, !dbg !15044
  %.val13 = load ptr, ptr %0, align 8, !dbg !15045, !nonnull !870, !noundef !870 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15045
  %.val14 = load i64, ptr %i.l, align 8, !dbg !15045, !noundef !870 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14869), !dbg !15045
    #dbg_value(ptr %i.i, !14870, !DIExpression(), !14520)
    #dbg_value(ptr poison, !14880, !DIExpression(), !14520)
    #dbg_value(ptr %.val13, !14887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14523)
    #dbg_value(ptr %.val13, !14890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14528)
    #dbg_value(ptr %.val13, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14531)
    #dbg_value(i64 %.val14, !14887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14523)
    #dbg_value(i64 %.val14, !14890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14528)
    #dbg_value(i64 %.val14, !14895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14531)
    #dbg_value(ptr poison, !1215, !DIExpression(), !14533)
    #dbg_value(i64 4, !1223, !DIExpression(), !14535)
    #dbg_value(i64 4, !1240, !DIExpression(), !14537)
    #dbg_value(i64 13, !1248, !DIExpression(), !14539)
    #dbg_value(ptr poison, !1251, !DIExpression(), !14541)
    #dbg_value(ptr poison, !1254, !DIExpression(), !14543)
    #dbg_value(i64 9, !1259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(i64 13, !1259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14545)
    #dbg_value(i64 9, !1269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(i64 13, !1269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14547)
    #dbg_value(i64 4, !1274, !DIExpression(), !14547)
    #dbg_value(i64 9, !1276, !DIExpression(), !14549)
    #dbg_value(i64 4, !1278, !DIExpression(), !14549)
  %.not.i.i.i = icmp eq i64 %.val14, 0, !dbg !15046
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !dbg !15046

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %.val13, align 1, !dbg !15046, !noalias !14869, !noundef !870
  %i.n = and i8 %i.m, 2, !dbg !15046
  %.not14.i.i.i = icmp eq i8 %i.n, 0, !dbg !15046
  br i1 %.not14.i.i.i, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i, label %bb.d, !dbg !15047

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15046

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !15046

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !1265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(ptr poison, !1273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(ptr poison, !1277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14549)
    #dbg_value(i64 %.val14, !1265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14545)
    #dbg_value(i64 %.val14, !1273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14547)
    #dbg_value(i64 %.val14, !1277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14549)
  %i.o = icmp ugt i64 %.val14, 12, !dbg !15048
  br i1 %i.o, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i.i, label %.invoke, !dbg !15048, !prof !1280

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i.i: ; preds = %bb.d
    #dbg_value(ptr %.val13, !1265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(ptr %.val13, !1273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(ptr %.val13, !1277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14549)
    #dbg_value(ptr %.val13, !1283, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14551)
    #dbg_value(i64 4, !1283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14551)
    #dbg_value(ptr %.val13, !1293, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14553)
    #dbg_value(ptr %.val13, !1316, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14555)
    #dbg_value(i64 4, !1293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14553)
    #dbg_value(i64 4, !1316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14555)
    #dbg_value(ptr %.val13, !1321, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !14557)
  %i.p = getelementptr inbounds nuw i8, ptr %.val13, i64 9, !dbg !15049
    #dbg_value(ptr %i.p, !1283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14551)
    #dbg_value(ptr %i.p, !1293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14553)
    #dbg_value(ptr %i.p, !1316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14555)
    #dbg_value(ptr %i.p, !1321, !DIExpression(), !14557)
  %.sroa.04.0.copyload.i.i.i.i = load i32, ptr %i.p, align 1, !dbg !15050, !alias.scope !14899, !noalias !14869 ; 2 uses
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i.i, !1341, !DIExpression(), !14561)
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i.i, !1220, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14562)
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i.i, !1236, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14535)
    #dbg_value(i32 %.sroa.04.0.copyload.i.i.i.i, !1246, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !14537)
  %i.q = icmp eq i32 %.sroa.04.0.copyload.i.i.i.i, 0, !dbg !15051
  br i1 %i.q, label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i, label %bb.e, !dbg !15051

bb.e:                                             ; preds = %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i.i
  %i.r = zext i32 %.sroa.04.0.copyload.i.i.i.i to i64, !dbg !15052
    #dbg_value(i64 %i.r, !1220, !DIExpression(), !14562)
    #dbg_value(i64 %i.r, !1236, !DIExpression(), !14535)
    #dbg_value(i64 %i.r, !1246, !DIExpression(), !14537)
    #dbg_value(i64 %i.r, !1249, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !14539)
  %i.s = shl nuw nsw i64 %i.r, 2, !dbg !15053
    #dbg_value(i64 %i.s, !1249, !DIExpression(), !14539)
  %i.t = add nuw nsw i64 %i.s, 13, !dbg !15054
  br label %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i, !dbg !15055

_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i: ; preds = %bb.e, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.t, %bb.e ], [ 9, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr19encoded_pattern_len.exit.i.i ], [ 9, %bb.b ], !dbg !15056 ; 4 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !14888, !DIExpression(), !14523)
    #dbg_value(i64 %.sroa.0.0.i.i, !14891, !DIExpression(), !14528)
    #dbg_value(i64 %.sroa.0.0.i.i, !14896, !DIExpression(), !14531)
  %i.u = icmp ugt i64 %.sroa.0.0.i.i, %.val14, !dbg !15057
  br i1 %i.u, label %.invoke, label %bb.f, !dbg !15057, !prof !1361

bb.f:                                             ; preds = %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i
  %i.v = sub nuw i64 %.val14, %.sroa.0.0.i.i, !dbg !15058 ; 2 uses
    #dbg_value(i64 %i.v, !14892, !DIExpression(), !14563)
    #dbg_value(i64 %i.v, !14897, !DIExpression(), !14531)
    #dbg_value(!DIArgList(ptr %.val13, i64 %.sroa.0.0.i.i), !14881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14564)
    #dbg_value(!DIArgList(ptr %.val13, i64 %.sroa.0.0.i.i), !14887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14566)
    #dbg_value(!DIArgList(ptr %.val13, i64 %.sroa.0.0.i.i), !14890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14568)
    #dbg_value(!DIArgList(ptr %.val13, i64 %.sroa.0.0.i.i), !14895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14570)
    #dbg_value(i64 %i.v, !14881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14564)
    #dbg_value(i64 %i.v, !14887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14566)
    #dbg_value(i64 %i.v, !14890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14568)
    #dbg_value(i64 %i.v, !14895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14570)
    #dbg_value(i32 0, !14882, !DIExpression(), !14571)
    #dbg_value(!DIArgList(ptr %.val13, i64 %.sroa.0.0.i.i), !14902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14574)
    #dbg_value(i64 %i.v, !14902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14574)
  %i.w = icmp eq i64 %i.v, 0, !dbg !15059
  br i1 %i.w, label %_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvXs7_B6_B14_NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0EBc_.exit, label %.lr.ph.i, !dbg !15060

.lr.ph.i:                                         ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.0.i.i, !dbg !15061
    #dbg_value(ptr %i.x, !14881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14564)
    #dbg_value(ptr %i.x, !14887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14566)
    #dbg_value(ptr %i.x, !14890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14568)
    #dbg_value(ptr %i.x, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14570)
    #dbg_value(ptr %i.x, !14902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14574)
  br label %bb.g, !dbg !15060

bb.g:                                             ; preds = %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i, %.lr.ph.i
  %i.y = phi i64 [ 0, %.lr.ph.i ], [ %i.az, %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i ] ; 3 uses
  %.sroa.0.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i ]
  %.sroa.01.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.at, %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i ] ; 3 uses
  %.sroa.6.06.i = phi i64 [ %i.v, %.lr.ph.i ], [ %i.as, %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i ] ; 5 uses
    #dbg_value(i32 %.sroa.0.08.i, !14882, !DIExpression(), !14571)
    #dbg_value(ptr %.sroa.01.07.i, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14570)
    #dbg_value(i64 %.sroa.6.06.i, !14895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14570)
    #dbg_value(ptr %.sroa.01.07.i, !1367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14576)
    #dbg_value(i64 %.sroa.6.06.i, !1367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14576)
    #dbg_value(ptr poison, !1379, !DIExpression(), !14580)
    #dbg_value(ptr poison, !1427, !DIExpression(), !14581)
    #dbg_value(ptr %.sroa.01.07.i, !1447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14582)
    #dbg_value(ptr %.sroa.01.07.i, !1454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14584)
    #dbg_value(ptr %.sroa.01.07.i, !1459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14586)
    #dbg_value(i64 %.sroa.6.06.i, !1447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14582)
    #dbg_value(i64 %.sroa.6.06.i, !1454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14584)
    #dbg_value(i64 %.sroa.6.06.i, !1459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14586)
    #dbg_value(i32 0, !1448, !DIExpression(), !14587)
    #dbg_value(i32 0, !1449, !DIExpression(), !14588)
    #dbg_value(i64 %.sroa.6.06.i, !1461, !DIExpression(), !14589)
    #dbg_value(i64 %.sroa.6.06.i, !1466, !DIExpression(), !14591)
    #dbg_value(ptr %.sroa.01.07.i, !1462, !DIExpression(), !14592)
    #dbg_value(ptr %.sroa.01.07.i, !1472, !DIExpression(), !14591)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 %.sroa.6.06.i, !dbg !15062
    #dbg_value(ptr %.sroa.01.07.i, !1450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14593)
    #dbg_value(ptr %i.z, !1450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14593)
    #dbg_value(i64 0, !1450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14593)
    #dbg_value(ptr undef, !1427, !DIExpression(), !14581)
    #dbg_value(ptr undef, !1379, !DIExpression(), !14580)
    #dbg_value(i64 1, !1476, !DIExpression(), !14595)
    #dbg_value(ptr %.sroa.01.07.i, !1398, !DIExpression(), !14596)
    #dbg_value(ptr %.sroa.01.07.i, !1480, !DIExpression(), !14595)
    #dbg_value(ptr %i.z, !1399, !DIExpression(), !14597)
    #dbg_value(ptr poison, !1483, !DIExpression(), !14599)
    #dbg_value(ptr poison, !1487, !DIExpression(), !14600)
  br label %.lr.ph.i.i.i, !dbg !15063

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.g
  %.sroa.01.034.i.i.i = phi i32 [ %i.ai, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.sroa.03.033.i.i.i = phi i32 [ %i.aj, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.sroa.0.02232.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.sroa.01.07.i, %bb.g ] ; 2 uses
  %.sroa.8.031.i.i.i = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ] ; 3 uses
    #dbg_value(i32 %.sroa.01.034.i.i.i, !1448, !DIExpression(), !14587)
    #dbg_value(i32 %.sroa.03.033.i.i.i, !1449, !DIExpression(), !14588)
    #dbg_value(ptr %.sroa.0.02232.i.i.i, !1450, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14593)
    #dbg_value(ptr %.sroa.0.02232.i.i.i, !1428, !DIExpression(), !14601)
    #dbg_value(i64 %.sroa.8.031.i.i.i, !1431, !DIExpression(), !14602)
    #dbg_value(i64 %.sroa.8.031.i.i.i, !1450, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !14593)
    #dbg_value(i64 %.sroa.8.031.i.i.i, !1451, !DIExpression(), !14603)
  %i.aa = load i8, ptr %.sroa.0.02232.i.i.i, align 1, !dbg !15064, !alias.scope !14904, !noalias !14869, !noundef !870 ; 3 uses
    #dbg_value(i8 %i.aa, !1452, !DIExpression(), !14603)
    #dbg_value(i8 %i.aa, !1491, !DIExpression(), !14609)
    #dbg_value(i8 %i.aa, !1491, !DIExpression(), !14611)
  %i.ab = icmp sgt i8 %i.aa, -1, !dbg !15063
  br i1 %i.ab, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i, label %bb.h, !dbg !15063

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.8.031.i.i.i, 1, !dbg !15065
    #dbg_value(i64 %i.ac, !1450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14593)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02232.i.i.i, i64 1, !dbg !15066 ; 2 uses
    #dbg_value(ptr %i.ad, !1450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14593)
  %i.ae = and i8 %i.aa, 127, !dbg !15067
  %i.af = zext nneg i8 %i.ae to i32, !dbg !15067
  %i.ag = and i32 %.sroa.03.033.i.i.i, 31, !dbg !15067
  %i.ah = shl i32 %i.af, %i.ag, !dbg !15067
  %i.ai = or i32 %i.ah, %.sroa.01.034.i.i.i, !dbg !15068
    #dbg_value(i32 %i.ai, !1448, !DIExpression(), !14587)
  %i.aj = add i32 %.sroa.03.033.i.i.i, 7, !dbg !15069
    #dbg_value(i64 %i.ac, !1450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14593)
    #dbg_value(i32 %i.aj, !1449, !DIExpression(), !14588)
    #dbg_value(ptr undef, !1427, !DIExpression(), !14581)
    #dbg_value(ptr undef, !1379, !DIExpression(), !14580)
    #dbg_value(i64 1, !1476, !DIExpression(), !14595)
    #dbg_value(ptr %i.ad, !1398, !DIExpression(), !14596)
    #dbg_value(ptr %i.ad, !1480, !DIExpression(), !14595)
    #dbg_value(ptr %i.z, !1399, !DIExpression(), !14597)
    #dbg_value(ptr poison, !1483, !DIExpression(), !14599)
    #dbg_value(ptr poison, !1487, !DIExpression(), !14600)
  %i.ak = icmp eq ptr %i.ad, %i.z, !dbg !15070
  br i1 %i.ak, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread.i, label %.lr.ph.i.i.i, !dbg !15071

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i: ; preds = %.lr.ph.i.i.i
  %i.al = zext nneg i8 %i.aa to i32, !dbg !15072
  %i.am = and i32 %.sroa.03.033.i.i.i, 31, !dbg !15073
  %i.an = shl i32 %i.al, %i.am, !dbg !15073
  %i.ao = or i32 %i.an, %.sroa.01.034.i.i.i, !dbg !15074
  %i.ap = add nuw i64 %.sroa.8.031.i.i.i, 1, !dbg !15075 ; 2 uses
    #dbg_value(i32 %i.ao, !1373, !DIExpression(), !14612)
    #dbg_value(i64 %i.ap, !1374, !DIExpression(), !14612)
    #dbg_value(!DIArgList(i32 %i.ao, i32 0, i32 %i.ao), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_and, DW_OP_minus, DW_OP_xor, DW_OP_stack_value), !14613)
    #dbg_value(i32 poison, !14883, !DIExpression(), !14614)
    #dbg_value(i64 %i.ap, !14884, !DIExpression(), !14614)
    #dbg_value(i64 %i.ap, !14888, !DIExpression(), !14566)
    #dbg_value(i64 %i.ap, !14891, !DIExpression(), !14568)
    #dbg_value(i64 %i.ap, !14896, !DIExpression(), !14570)
  %.not.i = icmp ult i64 %.sroa.8.031.i.i.i, %.sroa.6.06.i, !dbg !15076
  br i1 %.not.i, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread.i, label %.invoke, !dbg !15076, !prof !1497

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread.i: ; preds = %bb.h, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i
  %.sroa.0.0.i.i21.i = phi i32 [ %i.ao, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.3.0.i.i20.i = phi i64 [ %i.ap, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i ], [ 0, %bb.h ] ; 2 uses
  %i.aq = lshr i32 %.sroa.0.0.i.i21.i, 1, !dbg !15077
    #dbg_value(!DIArgList(i32 %i.aq, i32 0, i32 %.sroa.0.0.i.i21.i), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_and, DW_OP_minus, DW_OP_xor, DW_OP_stack_value), !14613)
  %i.ar = and i32 %.sroa.0.0.i.i21.i, 1, !dbg !15078
    #dbg_value(!DIArgList(i32 %i.aq, i32 0, i32 %i.ar), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_xor, DW_OP_stack_value), !14613)
  %sext.i.i = sub nsw i32 0, %i.ar, !dbg !15078
    #dbg_value(!DIArgList(i32 %i.aq, i32 %sext.i.i), !1375, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !14613)
  %spec.select.i.i = xor i32 %i.aq, %sext.i.i, !dbg !15078
    #dbg_value(i32 %spec.select.i.i, !1375, !DIExpression(), !14613)
    #dbg_value(i32 %spec.select.i.i, !14883, !DIExpression(), !14614)
  %i.as = sub nuw i64 %.sroa.6.06.i, %.sroa.3.0.i.i20.i, !dbg !15079 ; 2 uses
    #dbg_value(i64 %i.as, !14893, !DIExpression(), !14615)
    #dbg_value(i64 %i.as, !14897, !DIExpression(), !14570)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 %.sroa.3.0.i.i20.i, !dbg !15080
    #dbg_value(ptr %i.at, !14881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14564)
    #dbg_value(ptr %i.at, !14887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14566)
    #dbg_value(ptr %i.at, !14890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14568)
    #dbg_value(ptr %i.at, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14570)
    #dbg_value(i64 %i.as, !14881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14564)
    #dbg_value(i64 %i.as, !14887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14566)
    #dbg_value(i64 %i.as, !14890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14568)
    #dbg_value(i64 %i.as, !14895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14570)
  %i.au = add i32 %spec.select.i.i, %.sroa.0.08.i, !dbg !15081 ; 2 uses
    #dbg_value(i32 %i.au, !14885, !DIExpression(), !14616)
    #dbg_value(i32 %i.au, !14882, !DIExpression(), !14571)
    #dbg_value(ptr poison, !14905, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14619)
    #dbg_value(i32 %i.au, !14909, !DIExpression(), !14619)
    #dbg_value(i32 %i.au, !14911, !DIExpression(), !14622)
    #dbg_value(ptr %i.i, !14912, !DIExpression(), !14622)
    #dbg_value(ptr %i.i, !3037, !DIExpression(), !14624)
    #dbg_value(ptr %i.i, !3045, !DIExpression(), !14626)
    #dbg_value(i32 %i.au, !3038, !DIExpression(), !14624)
    #dbg_value(i64 4, !3047, !DIExpression(), !14629)
    #dbg_value(i64 %i.y, !3039, !DIExpression(), !14630)
    #dbg_value(i64 %i.y, !3052, !DIExpression(), !14632)
    #dbg_value(ptr %i.i, !3050, !DIExpression(), !14633)
  %i.av = load i64, ptr %i.i, align 8, !dbg !15082, !range !2959, !alias.scope !14914, !noundef !870
  %i.aw = icmp eq i64 %i.y, %i.av, !dbg !15083
  br i1 %i.aw, label %bb.i, label %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i, !dbg !15083

bb.i:                                             ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #22
          to label %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15084

_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i: ; preds = %bb.i, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.thread.i
  %i.ax = load ptr, ptr %i.j, align 8, !dbg !15085, !alias.scope !14914, !nonnull !870, !noundef !870
    #dbg_value(ptr %i.ax, !3053, !DIExpression(), !14632)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.y, !dbg !15086
    #dbg_value(ptr %i.ay, !3040, !DIExpression(), !14639)
    #dbg_value(ptr %i.ay, !3055, !DIExpression(), !14641)
    #dbg_value(i32 %i.au, !3058, !DIExpression(), !14641)
  store i32 %i.au, ptr %i.ay, align 4, !dbg !15087
  %i.az = add i64 %i.y, 1, !dbg !15088            ; 2 uses
  store i64 %i.az, ptr %i.k, align 8, !dbg !15088, !alias.scope !14914
    #dbg_value(i32 %i.au, !14882, !DIExpression(), !14571)
    #dbg_value(ptr %i.at, !14895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14570)
    #dbg_value(ptr %i.at, !14890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14568)
    #dbg_value(ptr %i.at, !14887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14566)
    #dbg_value(ptr %i.at, !14881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14564)
    #dbg_value(i64 %i.as, !14895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14570)
    #dbg_value(i64 %i.as, !14890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14568)
    #dbg_value(i64 %i.as, !14887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14566)
    #dbg_value(i64 %i.as, !14881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14564)
    #dbg_value(ptr %i.at, !14902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14574)
    #dbg_value(i64 %i.as, !14902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14574)
  %i.ba = icmp eq i64 %i.as, 0, !dbg !15059
  br i1 %i.ba, label %_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvXs7_B6_B14_NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0EBc_.exit, label %bb.g, !dbg !15060

.invoke:                                          ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i, %bb.d
  %i.bb = phi i64 [ %.sroa.0.0.i.i, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i ], [ 9, %bb.d ], [ %i.ap, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i ]
  %i.bc = phi i64 [ %.val14, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i ], [ 13, %bb.d ], [ %.sroa.6.06.i, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i ]
  %i.bd = phi i64 [ %.val14, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i ], [ %.val14, %bb.d ], [ %.sroa.6.06.i, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i ]
  %i.be = phi ptr [ @2, %_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB5_4Repr18pattern_offset_end.exit.i ], [ @41, %bb.d ], [ @1, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state11read_vari32.exit.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bb, i64 noundef %i.bc, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15089

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.invoke, %bb.c, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvXs7_B6_B14_NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0EBc_.exit
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #21
          to label %common.resume unwind label %bb.ah, !dbg !15090

_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvXs7_B6_B14_NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0EBc_.exit: ; preds = %_RNCNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB7_4ReprNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0Bd_.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15091
  invoke void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 4)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15092

bb.j:                                             ; preds = %_RINvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5stateNtB6_4Repr18iter_nfa_state_idsNCNvXs7_B6_B14_NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt0EBc_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15093
  %i.bf = load i8, ptr %.val13, align 1, !dbg !15094, !noundef !870
  %i.bg = and i8 %i.bf, 1, !dbg !15094
  store i8 %i.bg, ptr %i.g, align 1, !dbg !15094
  %i.bh = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @118)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15095

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15096
  %i.bi = load i8, ptr %.val13, align 1, !dbg !15097, !noundef !870
  %i.bj = lshr i8 %i.bi, 2, !dbg !15097
  %.lobit = and i8 %i.bj, 1, !dbg !15097
  store i8 %.lobit, ptr %i.f, align 1, !dbg !15097
  %i.bk = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 12, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @118)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15098

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15099
  %i.bl = load i8, ptr %.val13, align 1, !dbg !15100, !noundef !870
  %i.bm = lshr i8 %i.bl, 3, !dbg !15100
  %.lobit7 = and i8 %i.bm, 1, !dbg !15100
  store i8 %.lobit7, ptr %i.e, align 1, !dbg !15100
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @118)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15101

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15102
    #dbg_value(ptr poison, !1758, !DIExpression(), !14643)
    #dbg_value(i64 1, !1764, !DIExpression(), !14645)
    #dbg_value(i64 1, !1767, !DIExpression(), !14647)
    #dbg_value(i64 1, !1771, !DIExpression(), !14649)
    #dbg_value(i64 %.val14, !1765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14645)
    #dbg_value(i64 %.val14, !1768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14647)
    #dbg_value(i64 %.val14, !1772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14649)
    #dbg_value(ptr %.val13, !1765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14645)
    #dbg_value(ptr %.val13, !1768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14647)
    #dbg_value(ptr %.val13, !1772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14649)
    #dbg_value(i64 %.val14, !1769, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !14650)
    #dbg_value(i64 %.val14, !1773, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !14649)
    #dbg_value(ptr %.val13, !1776, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14652)
    #dbg_value(i64 %.val14, !1776, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14652)
  %i.bo = getelementptr inbounds nuw i8, ptr %.val13, i64 1, !dbg !15103
    #dbg_value(ptr %i.bo, !1776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14652)
    #dbg_value(ptr %i.bo, !1817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14654)
    #dbg_value(ptr %i.bo, !1819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14656)
    #dbg_value(i64 4, !1817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14654)
    #dbg_value(i64 4, !1819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14656)
    #dbg_value(ptr %i.bo, !1821, !DIExpression(), !14658)
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.bo, align 1, !dbg !15104, !alias.scope !14916
  store i32 %.sroa.04.0.copyload.i.i, ptr %i.d, align 4, !dbg !15102
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 9, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15105

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15106
    #dbg_value(ptr poison, !1847, !DIExpression(), !14662)
    #dbg_value(i64 5, !1850, !DIExpression(), !14664)
    #dbg_value(i64 5, !1853, !DIExpression(), !14666)
    #dbg_value(i64 5, !1857, !DIExpression(), !14668)
    #dbg_value(i64 %.val14, !1851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14664)
    #dbg_value(i64 %.val14, !1854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14666)
    #dbg_value(i64 %.val14, !1858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14668)
    #dbg_value(ptr %.val13, !1851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14664)
    #dbg_value(ptr %.val13, !1854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14666)
    #dbg_value(ptr %.val13, !1858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14668)
    #dbg_value(i64 %.val14, !1855, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !14669)
    #dbg_value(i64 %.val14, !1859, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value), !14668)
    #dbg_value(ptr %.val13, !1776, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14671)
    #dbg_value(i64 %.val14, !1776, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14671)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val13, i64 5, !dbg !15107
    #dbg_value(ptr %i.bq, !1776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14671)
    #dbg_value(ptr %i.bq, !1817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14673)
    #dbg_value(ptr %i.bq, !1819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14675)
end_hunk_1
