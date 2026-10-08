Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
    #dbg_value(ptr %3, !18746, !DIExpression(), !18759)
    #dbg_value(ptr %3, !18760, !DIExpression(), !18764)
    #dbg_value(i64 0, !18706, !DIExpression(), !18709)
    #dbg_value(i64 0, !18765, !DIExpression(), !18769)
    #dbg_value(i64 0, !18770, !DIExpression(), !18774)
    #dbg_value(i64 0, !18765, !DIExpression(), !18776)
    #dbg_value(i64 0, !18770, !DIExpression(), !18779)
    #dbg_value(i8 1, !18780, !DIExpression(), !18786)
    #dbg_value(ptr %1, !18789, !DIExpression(), !18793)
    #dbg_value(ptr %1, !18794, !DIExpression(), !18797)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19148 ; 31 uses
    #dbg_value(ptr poison, !18790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18798)
    #dbg_value(i64 poison, !18790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18798)
  store i64 0, ptr %i.s, align 8, !dbg !19149
    #dbg_value(ptr %1, !18766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18799)
    #dbg_value(ptr %1, !18800, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18803)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19150
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !19150 ; 6 uses
  store i64 0, ptr %i.u, align 8, !dbg !19150
    #dbg_value(ptr %1, !18771, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !18804)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !19151 ; 5 uses
  store i64 0, ptr %i.v, align 8, !dbg !19151
    #dbg_value(ptr %1, !18766, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !18805)
    #dbg_value(ptr %1, !18800, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !18807)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !19152
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !19152 ; 11 uses
  store i64 0, ptr %i.x, align 8, !dbg !19152
    #dbg_value(ptr %1, !18771, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !18808)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !19153 ; 4 uses
  store i64 0, ptr %i.y, align 8, !dbg !19153
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !19154
  %i.aa = load i64, ptr %i.z, align 8, !dbg !19154, !noundef !1173 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !19155
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !19155, !noundef !1173 ; 2 uses
  %i.ad = icmp ugt i64 %i.aa, %i.ac, !dbg !19156
  br i1 %i.ad, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.b, !dbg !19157

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !19158
  %i.af = load i64, ptr %i.ae, align 8, !dbg !19158, !noundef !1173 ; 52 uses
  %.not = icmp eq i64 %i.af, -1, !dbg !19159
  br i1 %.not, label %bb.c, label %bb.d, !dbg !19159, !prof !2849

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27, !dbg !19160
  unreachable, !dbg !19160

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !18787, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18809)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !19161
  %i.ah = load i8, ptr %i.ag, align 8, !dbg !19161, !range !3094, !noundef !1173 ; 2 uses
    #dbg_value(i8 %i.ah, !18781, !DIExpression(), !18786)
  %.not43 = icmp ne i8 %i.ah, 2, !dbg !19162
  %i.ai = and i8 %i.ah, 1, !dbg !19163
  %i.aj = icmp eq i8 %i.ai, 0, !dbg !19163
  %.sroa.0.0 = and i1 %.not43, %i.aj, !dbg !19163 ; 3 uses
    #dbg_value(i1 %.sroa.0.0, !18667, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18810)
  %.val = load ptr, ptr %0, align 8, !dbg !19164, !nonnull !1173, !noundef !1173 ; 10 uses
  %.val71 = load i32, ptr %2, align 8, !dbg !19164, !range !3512, !noundef !1173
    #dbg_value(ptr poison, !3513, !DIExpression(), !16645)
    #dbg_value(ptr poison, !3527, !DIExpression(), !16645)
  switch i32 %.val71, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ], !dbg !19165

default.unreachable:                              ; preds = %.lr.ph4651, %bb.aa, %bb.w, %bb.gy, %bb.gu, %bb.fn, %bb.fj, %bb.ct, %bb.cp, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !3626, !DIExpression(), !16647)
    #dbg_value(ptr poison, !3532, !DIExpression(), !16649)
    #dbg_value(ptr poison, !3629, !DIExpression(), !16651)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 368, !dbg !19166
  %i.al = load i32, ptr %i.ak, align 16, !dbg !19166, !noundef !1173 ; 2 uses
    #dbg_value(ptr poison, !3632, !DIExpression(), !16653)
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 372, !dbg !19167
  %i.an = load i32, ptr %i.am, align 4, !dbg !19167, !noundef !1173
    #dbg_value(ptr poison, !3636, !DIExpression(), !16653)
    #dbg_value(ptr poison, !3638, !DIExpression(), !16655)
    #dbg_value(ptr poison, !3642, !DIExpression(), !16655)
  %i.ao = icmp eq i32 %i.al, %i.an, !dbg !19168
    #dbg_value(ptr poison, !3532, !DIExpression(), !16657)
  br label %.lr.ph1391, !dbg !19169

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !3532, !DIExpression(), !16659)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 368, !dbg !19170
  %i.aq = load i32, ptr %i.ap, align 16, !dbg !19170, !noundef !1173
  br label %.lr.ph1391, !dbg !19171

bb.g:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !19164
  %.val72 = load i32, ptr %i.ar, align 4, !dbg !19164
    #dbg_value(i32 %.val72, !3528, !DIExpression(), !16660)
    #dbg_value(i32 %.val72, !3537, !DIExpression(), !16662)
    #dbg_value(ptr poison, !3548, !DIExpression(), !16663)
    #dbg_value(ptr %.val, !3552, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16665)
    #dbg_value(ptr %.val, !3560, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16667)
    #dbg_value(ptr %.val, !3563, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16669)
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 360, !dbg !19172
  %i.at = load i64, ptr %i.as, align 8, !dbg !19172, !noundef !1173
    #dbg_value(ptr poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16671)
    #dbg_value(ptr poison, !3588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16673)
    #dbg_value(i64 %i.at, !3569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16671)
    #dbg_value(i64 %i.at, !3588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16673)
    #dbg_value(ptr poison, !3595, !DIExpression(), !16675)
    #dbg_value(ptr poison, !3601, !DIExpression(), !16677)
  %i.au = zext i32 %.val72 to i64, !dbg !19173    ; 2 uses
    #dbg_value(i64 %i.au, !3585, !DIExpression(), !16671)
    #dbg_value(i64 %i.au, !3591, !DIExpression(), !16673)
  %i.av = icmp ugt i64 %i.at, %i.au, !dbg !19174
  br i1 %i.av, label %bb.h, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !19174

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 352, !dbg !19175
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !19175, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.ax, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16671)
    #dbg_value(ptr %i.ax, !3588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16673)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.au, !dbg !19176
    #dbg_value(ptr %i.ay, !3620, !DIExpression(), !16682)
  %i.az = load i32, ptr %i.ay, align 4, !dbg !19177, !noundef !1173
  br label %.lr.ph1391, !dbg !19178

.lr.ph1391:                                       ; preds = %bb.f, %bb.e, %bb.h
  %.sroa.5.1.i.ph = phi i32 [ %i.aq, %bb.f ], [ %i.al, %bb.e ], [ %i.az, %bb.h ]
  %.sroa.0.1.i.ph = phi i1 [ true, %bb.f ], [ %i.ao, %bb.e ], [ true, %bb.h ]
    #dbg_value(i1 %.sroa.0.1.i.ph, !18668, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18811)
    #dbg_value(i32 %.sroa.5.1.i.ph, !18669, !DIExpression(), !18811)
    #dbg_value(ptr %1, !18671, !DIExpression(), !18812)
    #dbg_value(ptr %i.t, !18672, !DIExpression(), !18812)
    #dbg_value(ptr %i.t, !18813, !DIExpression(), !18817)
    #dbg_value(ptr %i.w, !18673, !DIExpression(), !18812)
    #dbg_value(ptr %i.w, !18814, !DIExpression(), !18817)
    #dbg_value(i64 %i.aa, !18674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18818)
    #dbg_value(i64 %i.ac, !18674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18818)
    #dbg_value(i8 poison, !18674, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18818)
    #dbg_value(ptr undef, !18700, !DIExpression(), !16624)
    #dbg_value(ptr undef, !18691, !DIExpression(), !16623)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.0.0.not = xor i1 %.sroa.0.0, true
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !1173 ; 31 uses
  %.not23.i = icmp eq i64 %i.af, 0                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 386
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 387
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bz = load i8, ptr %i.by, align 8, !range !2675
  %i.ca = trunc nuw i8 %i.bz to i1
  %.pre = load i64, ptr %i.ba, align 8, !dbg !19179
  br label %bb.i, !dbg !19180

_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.ic, %bb.id, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit, %bb.g, %bb.a
  ret void, !dbg !19181

bb.i:                                             ; preds = %.lr.ph1391, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit
  %i.cb = phi i64 [ %.pre, %.lr.ph1391 ], [ %i.agy, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 2 uses
  %.sroa.0.02611389 = phi i64 [ %i.aa, %.lr.ph1391 ], [ %i.cc, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 28 uses
    #dbg_value(i64 %.sroa.0.02611389, !18674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18818)
    #dbg_value(i64 %.sroa.0.02611389, !18820, !DIExpression(), !16686)
    #dbg_value(i64 1, !18821, !DIExpression(), !16686)
  %i.cc = add i64 %.sroa.0.02611389, 1, !dbg !19182 ; 25 uses
    #dbg_value(i64 %i.cc, !18674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18818)
    #dbg_value(i64 %.sroa.0.02611389, !18674, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 8), !18818)
    #dbg_value(i64 %.sroa.0.02611389, !18675, !DIExpression(), !18824)
  %i.cd = icmp eq i64 %i.cb, 0, !dbg !19183       ; 2 uses
    #dbg_value(i1 %i.cd, !18676, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18825)
    #dbg_value(ptr %i.t, !18826, !DIExpression(), !18829)
    #dbg_value(ptr %i.t, !18830, !DIExpression(), !18833)
  %i.ce = load i64, ptr %i.u, align 8, !dbg !19184, !noundef !1173
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !19185
  br i1 %i.cf, label %bb.k, label %bb.j, !dbg !19186

bb.j:                                             ; preds = %bb.i
  %brmerge = or i1 %.sroa.0.0, %i.cd, !dbg !19187
  br i1 %brmerge, label %bb.l, label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, !dbg !19187

bb.k:                                             ; preds = %bb.i
    #dbg_value(i1 %i.cd, !18676, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18825)
  %i.cg = icmp ugt i64 %.sroa.0.02611389, %i.aa
  %or.cond46 = and i1 %.sroa.0.1.i.ph, %i.cg      ; 2 uses
  br i1 %i.cd, label %bb.ic, label %bb.id, !dbg !19188

bb.l:                                             ; preds = %bb.id, %bb.ic, %bb.j
    #dbg_value(ptr inttoptr (i64 8 to ptr), !18681, !DIExpression(), !18834)
    #dbg_value(ptr %0, !3977, !DIExpression(), !16692)
    #dbg_value(ptr %1, !3981, !DIExpression(), !16692)
    #dbg_value(ptr %1, !3992, !DIExpression(), !16694)
    #dbg_value(ptr %1, !3998, !DIExpression(), !16696)
    #dbg_value(ptr %1, !4010, !DIExpression(), !16698)
    #dbg_value(ptr %1, !4016, !DIExpression(), !16700)
    #dbg_value(ptr %1, !4022, !DIExpression(), !16702)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !3982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16692)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16704)
    #dbg_value(i64 0, !3982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16692)
    #dbg_value(i64 0, !4025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16704)
    #dbg_value(ptr %i.t, !3983, !DIExpression(), !16692)
    #dbg_value(ptr %2, !3984, !DIExpression(), !16692)
    #dbg_value(i64 %.sroa.0.02611389, !3985, !DIExpression(), !16692)
    #dbg_value(i32 %.sroa.5.1.i.ph, !3986, !DIExpression(), !16692)
    #dbg_value(i64 16, !4032, !DIExpression(), !16707)
    #dbg_value(i32 %.sroa.5.1.i.ph, !3996, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18835)
    #dbg_value(i32 %.sroa.5.1.i.ph, !4044, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18836)
    #dbg_value(i32 %.sroa.5.1.i.ph, !4054, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18837)
    #dbg_value(i32 0, !3996, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18835)
    #dbg_value(i32 0, !4044, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18836)
    #dbg_value(i32 0, !4054, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18837)
    #dbg_value(ptr %1, !4049, !DIExpression(), !16710)
    #dbg_value(ptr %1, !4059, !DIExpression(), !16712)
    #dbg_value(i64 16, !4064, !DIExpression(), !16715)
  %i.ch = load i64, ptr %i.s, align 8, !dbg !19189, !alias.scope !18838, !noalias !18839, !noundef !1173 ; 3 uses
    #dbg_value(i64 %i.ch, !4050, !DIExpression(), !16724)
    #dbg_value(i64 %i.ch, !4069, !DIExpression(), !16726)
    #dbg_value(ptr %1, !4067, !DIExpression(), !16727)
  %i.ci = load i64, ptr %1, align 8, !dbg !19190, !range !4074, !alias.scope !18838, !noalias !18839, !noundef !1173
  %i.cj = icmp eq i64 %i.ch, %i.ci, !dbg !19191
  br i1 %i.cj, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit, !dbg !19191

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26, !dbg !19192, !noalias !18839
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit, !dbg !19193

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit: ; preds = %bb.l, %bb.m
  %i.ck = load ptr, ptr %i.bb, align 8, !dbg !19194, !alias.scope !18838, !noalias !18839, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.ck, !4072, !DIExpression(), !16726)
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ch, !dbg !19195 ; 2 uses
    #dbg_value(ptr %i.cl, !4052, !DIExpression(), !16731)
    #dbg_value(ptr %i.cl, !4057, !DIExpression(), !16732)
  store i32 0, ptr %i.cl, align 8, !dbg !19196, !noalias !18840
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 4, !dbg !19196
  store i32 %.sroa.5.1.i.ph, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !19196, !noalias !18840
  %i.cm = add i64 %i.ch, 1, !dbg !19197           ; 3 uses
  store i64 %i.cm, ptr %i.s, align 8, !dbg !19197, !alias.scope !18838, !noalias !18839
  %i.cn = icmp eq i64 %i.cm, 0, !dbg !19198
  br i1 %i.cn, label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, label %.lr.ph1356, !dbg !19198

.lr.ph1356:                                       ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit
  %i.co = icmp ult i64 %.sroa.0.02611389, %i.af   ; 9 uses
  %i.cp = getelementptr i8, ptr %i.bk, i64 %.sroa.0.02611389 ; 10 uses
  %.not.i98 = icmp eq i64 %.sroa.0.02611389, 0    ; 9 uses
  %i.cq = add i64 %.sroa.0.02611389, -1           ; 9 uses
  %i.cr = icmp ult i64 %i.cq, %i.af               ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq ; 7 uses
  %i.ct = icmp eq i64 %.sroa.0.02611389, %i.af    ; 3 uses
  %i.cu = getelementptr i8, ptr %i.cp, i64 -1
  br label %bb.n, !dbg !19198

bb.n:                                             ; preds = %.lr.ph1356, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit
  %i.cv = phi i64 [ %i.cm, %.lr.ph1356 ], [ %.pr, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit ] ; 2 uses
  %i.cw = add nsw i64 %i.cv, -1, !dbg !19199      ; 3 uses
  store i64 %i.cw, ptr %i.s, align 8, !dbg !19199, !alias.scope !18841, !noalias !18840
  %i.cx = load i64, ptr %1, align 8, !dbg !19200, !range !4074, !alias.scope !18841, !noalias !18840, !noundef !1173
  %i.cy = icmp samesign ult i64 %i.cw, %i.cx, !dbg !19201
    #dbg_value(i1 true, !4087, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16735)
  tail call void @llvm.assume(i1 %i.cy), !dbg !19202
  %i.cz = load ptr, ptr %i.bb, align 8, !dbg !19203, !alias.scope !18841, !noalias !18840, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.cz, !4089, !DIExpression(), !16740)
    #dbg_value(i64 %i.cw, !4092, !DIExpression(), !16740)
  %i.da = icmp samesign ult i64 %i.cv, 576460752303423489, !dbg !19204
  tail call void @llvm.assume(i1 %i.da), !dbg !19205
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !19206 ; 2 uses
    #dbg_value(ptr %i.db, !4094, !DIExpression(), !16742)
  %.sroa.04.0.copyload.i = load i32, ptr %i.db, align 8, !dbg !19207
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 4, !dbg !19207
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4, !dbg !19207 ; 4 uses
    #dbg_value(i32 %.sroa.04.0.copyload.i, !3987, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16743)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !3987, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !16743)
    #dbg_value(i64 poison, !3987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16743)
  %i.dc = trunc i32 %.sroa.04.0.copyload.i to i1, !dbg !19208
  br i1 %i.dc, label %bb.o, label %bb.p, !dbg !19208

bb.o:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.45.0.copyload.i, !3988, !DIExpression(), !16744)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !4030, !DIExpression(), !16704)
    #dbg_value(i64 poison, !3989, !DIExpression(), !16744)
    #dbg_value(ptr poison, !4098, !DIExpression(), !16746)
  %i.dd = zext i32 %.sroa.45.0.copyload.i to i64, !dbg !19209
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27, !dbg !19210
  unreachable, !dbg !19210

bb.p:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.45.0.copyload.i, !3990, !DIExpression(), !16747)
    #dbg_value(ptr %0, !4100, !DIExpression(), !16749)
    #dbg_value(ptr %1, !4102, !DIExpression(), !16749)
    #dbg_value(ptr %1, !4118, !DIExpression(), !16751)
    #dbg_value(ptr %1, !4121, !DIExpression(), !16753)
    #dbg_value(ptr %1, !4151, !DIExpression(), !16755)
    #dbg_value(ptr %1, !4118, !DIExpression(), !16757)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16749)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16759)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16761)
    #dbg_value(i64 0, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16749)
    #dbg_value(i64 0, !4157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16759)
    #dbg_value(i64 0, !4160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16761)
    #dbg_value(ptr %i.t, !4104, !DIExpression(), !16749)
    #dbg_value(ptr %2, !4105, !DIExpression(), !16749)
    #dbg_value(i64 %.sroa.0.02611389, !4106, !DIExpression(), !16749)
    #dbg_value(i64 %.sroa.0.02611389, !4167, !DIExpression(), !16763)
    #dbg_declare(ptr poison, !4119, !DIExpression(), !16764)
    #dbg_value(i64 0, !4172, !DIExpression(), !16766)
    #dbg_value(i64 0, !4175, !DIExpression(), !16768)
    #dbg_value(i64 1, !4178, !DIExpression(), !16770)
    #dbg_value(i64 1, !4184, !DIExpression(), !16772)
    #dbg_value(i64 1, !4190, !DIExpression(), !16774)
    #dbg_declare(ptr poison, !4199, !DIExpression(), !16776)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !4115, !DIExpression(), !16777)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !4113, !DIExpression(), !16778)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !4109, !DIExpression(), !16779)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !4107, !DIExpression(), !16749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.45.0.copyload.i, ptr %i.f, align 4, !noalias !18842
  %i.de = zext i32 %.sroa.45.0.copyload.i to i64, !dbg !19211 ; 3 uses
  %i.df = load i64, ptr %i.bc, align 8, !dbg !19212, !alias.scope !18843, !noalias !18844, !noundef !1173 ; 2 uses
  %i.dg = icmp ugt i64 %i.df, %i.de, !dbg !19213
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !dbg !19213

.lr.ph:                                           ; preds = %bb.p, %.backedge392
  %i.dh = phi i64 [ %i.if, %.backedge392 ], [ %i.de, %bb.p ] ; 5 uses
  %i.di = phi i32 [ %.sroa.0.0.i49.be, %.backedge392 ], [ %.sroa.45.0.copyload.i, %bb.p ] ; 3 uses
    #dbg_value(i32 %i.di, !4115, !DIExpression(), !16777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18845), !dbg !19214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18846), !dbg !19215
  %i.dj = load ptr, ptr %i.bd, align 8, !dbg !19216, !alias.scope !18846, !noalias !18844, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.dj, !4323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16804)
    #dbg_value(ptr %i.dj, !4319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16805)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dh, !dbg !19217
  %i.dl = load i32, ptr %i.dk, align 4, !dbg !19218, !noalias !18847, !noundef !1173
    #dbg_value(i32 %i.dl, !4233, !DIExpression(), !16806)
    #dbg_value(ptr poison, !4220, !DIExpression(), !16808)
    #dbg_value(ptr poison, !4218, !DIExpression(), !16810)
    #dbg_value(i32 %i.dl, !4226, !DIExpression(), !16812)
  %i.dm = zext i32 %i.dl to i64, !dbg !19219      ; 4 uses
    #dbg_value(i64 %i.dm, !4313, !DIExpression(), !16814)
    #dbg_value(i64 %i.dm, !4324, !DIExpression(), !16816)
    #dbg_value(i64 %i.dm, !4318, !DIExpression(), !16818)
  %i.dn = load i64, ptr %i.u, align 8, !dbg !19220, !alias.scope !18846, !noalias !18844, !noundef !1173 ; 5 uses
  %i.do = icmp ugt i64 %i.dn, %i.dm, !dbg !19221
  %.pre2544 = load i64, ptr %i.be, align 8, !dbg !19222, !noalias !18844 ; 5 uses
  br i1 %i.do, label %bb.q, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread, !dbg !19221

._crit_edge:                                      ; preds = %bb.p, %.backedge392
  %.lcssa421 = phi i64 [ %i.if, %.backedge392 ], [ %i.de, %bb.p ], !dbg !19211
  %.lcssa402 = phi i64 [ %i.ig, %.backedge392 ], [ %i.df, %bb.p ], !dbg !19212
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa421, i64 noundef %.lcssa402, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #27, !dbg !19213, !noalias !18847
  unreachable, !dbg !19213

bb.q:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.t, !4225, !DIExpression(), !16822)
    #dbg_value(ptr %i.t, !4312, !DIExpression(), !16823)
    #dbg_value(ptr %i.t, !4308, !DIExpression(), !16825)
    #dbg_value(ptr %i.t, !4306, !DIExpression(), !16827)
    #dbg_value(ptr %i.t, !4326, !DIExpression(), !16829)
    #dbg_value(ptr poison, !4220, !DIExpression(), !16831)
    #dbg_value(ptr poison, !4218, !DIExpression(), !16833)
    #dbg_value(ptr poison, !4323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16816)
    #dbg_value(ptr poison, !4319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16818)
    #dbg_value(i64 %.pre2544, !4323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16816)
    #dbg_value(i64 %.pre2544, !4319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16818)
  %i.dp = icmp ugt i64 %.pre2544, %i.dm, !dbg !19223
  br i1 %i.dp, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit, label %bb.r, !dbg !19223

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %.pre2544, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #27, !dbg !19223, !noalias !18847
  unreachable, !dbg !19223

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit: ; preds = %bb.q
  %i.dq = load ptr, ptr %i.bf, align 8, !dbg !19224, !alias.scope !18846, !noalias !18844, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.dq, !4323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16816)
    #dbg_value(ptr %i.dq, !4319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16818)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dm, !dbg !19225
    #dbg_value(ptr %i.dr, !4348, !DIExpression(), !16838)
    #dbg_value(ptr poison, !4349, !DIExpression(), !16839)
    #dbg_value(ptr %i.dr, !4351, !DIExpression(), !16841)
    #dbg_value(ptr poison, !4352, !DIExpression(), !16841)
  %i.ds = load i32, ptr %i.dr, align 4, !dbg !19226, !noalias !18847, !noundef !1173
  %i.dt = icmp eq i32 %i.ds, %i.di, !dbg !19226
  br i1 %i.dt, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit70, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread, !dbg !19227

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread: ; preds = %.lr.ph, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19228, !noalias !18848
    #dbg_value(i64 %i.dn, !4240, !DIExpression(), !16842)
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
  %i.afz = load i64, ptr %i.afy, align 8, !dbg !20061, !alias.scope !19054, !noalias !19084, !noundef !1173
    #dbg_value(i32 %i.afq, !4119, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !19085)
    #dbg_value(i32 %i.afq, !4044, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !19086)
    #dbg_value(i32 %i.afq, !4054, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !19087)
    #dbg_value(i64 %i.afz, !4119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19085)
    #dbg_value(i64 %i.afz, !4044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19086)
    #dbg_value(i64 %i.afz, !4054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19087)
    #dbg_value(i32 1, !4119, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !19085)
    #dbg_value(i32 1, !4044, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !19086)
    #dbg_value(i32 1, !4054, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !19087)
    #dbg_value(ptr %1, !4049, !DIExpression(), !18560)
    #dbg_value(ptr %1, !4059, !DIExpression(), !18562)
    #dbg_value(i64 16, !4064, !DIExpression(), !18565)
  %i.aga = load i64, ptr %i.s, align 8, !dbg !20062, !alias.scope !19088, !noalias !19089, !noundef !1173 ; 3 uses
    #dbg_value(i64 %i.aga, !4050, !DIExpression(), !18569)
    #dbg_value(i64 %i.aga, !4069, !DIExpression(), !18571)
    #dbg_value(ptr %1, !4067, !DIExpression(), !18572)
  %i.agb = load i64, ptr %1, align 8, !dbg !20063, !range !4074, !alias.scope !19088, !noalias !19089, !noundef !1173
  %i.agc = icmp eq i64 %i.aga, %i.agb, !dbg !20064
  br i1 %i.agc, label %bb.hq, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit223, !dbg !20064

bb.hq:                                            ; preds = %bb.hp
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26, !dbg !20065, !noalias !19089
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit223, !dbg !20066

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit223: ; preds = %bb.hp, %bb.hq
  %i.agd = load ptr, ptr %i.bb, align 8, !dbg !20067, !alias.scope !19088, !noalias !19089, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.agd, !4072, !DIExpression(), !18571)
  %i.age = getelementptr inbounds nuw [16 x i8], ptr %i.agd, i64 %i.aga, !dbg !20068 ; 3 uses
    #dbg_value(ptr %i.age, !4052, !DIExpression(), !18576)
    #dbg_value(ptr %i.age, !4057, !DIExpression(), !18577)
  store i32 1, ptr %i.age, align 8, !dbg !20069, !noalias !19057
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.age, i64 4, !dbg !20069
  store i32 %i.afq, ptr %.sroa.4259.0..sroa_idx, align 4, !dbg !20069, !noalias !19057
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.age, i64 8, !dbg !20069
  store i64 %i.afz, ptr %.sroa.5260.0..sroa_idx, align 8, !dbg !20069, !noalias !19057
  %i.agf = add i64 %i.aga, 1, !dbg !20070
  store i64 %i.agf, ptr %i.s, align 8, !dbg !20070, !alias.scope !19088, !noalias !19089
    #dbg_value(i64 %i.jo, !4215, !DIExpression(), !18578)
  br i1 %.not.i63.i, label %bb.hs, label %bb.hr, !dbg !20071, !prof !2849

bb.hr:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit223
    #dbg_value(i64 %i.jo, !4538, !DIExpression(), !18580)
    #dbg_value(ptr poison, !4436, !DIExpression(), !18583)
  store i64 %i.jo, ptr %i.afy, align 8, !dbg !20072, !alias.scope !19054, !noalias !19084
  br label %.backedge388, !dbg !20073

bb.hs:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit223
    #dbg_value(i64 0, !4538, !DIExpression(), !18580)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27, !dbg !20074, !noalias !19057
  unreachable, !dbg !20074

_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit69.i: ; preds = %bb.hg, %bb.gy, %bb.hd, %bb.ha, %_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i65.i, %bb.hk, %.split350, %.split351, %.split352, %.split353, %.split354, %.split355, %.split356, %.split357, %_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit206, %.split358, %.split359, %.split360, %.split361, %.split362, %.split363, %.split364, %_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit212, %.split2672, %_RNvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit193, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit65, %bb.ht
  %.pr342 = load i64, ptr %i.s, align 8, !dbg !19887, !alias.scope !19052, !noalias !19053 ; 2 uses
  %i.agg = icmp eq i64 %.pr342, 0, !dbg !19887
  br i1 %i.agg, label %.backedge393, label %.lr.ph1365, !dbg !19887

bb.ht:                                            ; preds = %bb.gn
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.aaf, !dbg !20075
  store i64 %.sroa.56.0.copyload.i.i, ptr %i.agh, align 8, !dbg !20076, !alias.scope !19045, !noalias !19090
  br label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit69.i, !dbg !20077

bb.hu:                                            ; preds = %bb.gn
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aaf, i64 noundef range(i64 0, 1152921504606846976) %i.zk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27, !dbg !19899, !noalias !18941
  unreachable, !dbg !19899

bb.hv:                                            ; preds = %.lr.ph4651
  %i.agi = getelementptr inbounds nuw i8, ptr %i.jz, i64 4, !dbg !20078
  %i.agj = load i32, ptr %i.agi, align 4, !dbg !20078, !noalias !18941, !noundef !1173
    #dbg_value(i32 %i.agj, !18895, !DIExpression(), !18584)
  br i1 %.sroa.0.0.i, label %bb.hz, label %bb.hw, !dbg !19385

.backedge393:                                     ; preds = %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit69.i, %bb.ew, %.lr.ph4649, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit61.i, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i, %bb.ev, %bb.ib, %.lr.ph4651, %.lr.ph4651, %.lr.ph4651, %.lr.ph4651, %.lr.ph4651, %bb.bz, %bb.ca, %_RNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_16DenseTransitions7matches.exit, %bb.cb, %bb.ia, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit106, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit149, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit188
    #dbg_value(ptr %i.jx, !18893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17167)
    #dbg_value(ptr undef, !18877, !DIExpression(), !17094)
    #dbg_value(ptr undef, !18872, !DIExpression(), !17093)
    #dbg_value(ptr %i.jx, !18873, !DIExpression(), !17168)
    #dbg_value(ptr %i.jx, !18917, !DIExpression(), !17111)
    #dbg_value(ptr %i.jj, !18874, !DIExpression(), !17169)
    #dbg_value(ptr poison, !18933, !DIExpression(), !17172)
    #dbg_value(ptr poison, !18934, !DIExpression(), !17173)
  %.old = icmp eq ptr %i.jx, %i.jj, !dbg !19394
  br i1 %.old, label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit, label %.backedge1405, !dbg !19395

.backedge1405:                                    ; preds = %.backedge393, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit
    #dbg_value(ptr %i.jx, !18893, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17167)
    #dbg_value(ptr %i.jx, !18936, !DIExpression(), !18585)
  %i.agk = load i32, ptr %i.jx, align 4, !dbg !19396, !noundef !1173
    #dbg_value(i32 %i.agk, !18894, !DIExpression(), !18586)
    #dbg_value(ptr %0, !3732, !DIExpression(), !18587)
    #dbg_value(ptr %1, !3736, !DIExpression(), !18587)
    #dbg_value(ptr %1, !3737, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !18587)
    #dbg_value(ptr %i.w, !3738, !DIExpression(), !18587)
    #dbg_value(ptr %2, !3739, !DIExpression(), !18587)
    #dbg_value(i64 %.sroa.0.02611389, !3740, !DIExpression(), !18587)
    #dbg_value(i64 %.sroa.0.02611389, !3758, !DIExpression(), !17203)
    #dbg_value(i64 %.sroa.0.02611389, !3765, !DIExpression(), !17205)
    #dbg_value(i64 %.sroa.0.02611389, !3771, !DIExpression(), !17207)
    #dbg_value(i32 %i.agk, !3741, !DIExpression(), !18587)
    #dbg_value(ptr %0, !3776, !DIExpression(), !18588)
    #dbg_value(ptr %0, !3783, !DIExpression(), !18589)
    #dbg_value(i32 %i.agk, !3781, !DIExpression(), !18590)
    #dbg_value(i32 %i.agk, !3792, !DIExpression(), !17196)
    #dbg_value(ptr %.val, !3803, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !18591)
    #dbg_value(ptr %.val, !3807, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !18592)
    #dbg_value(ptr %.val, !3810, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !18593)
  %i.agl = load i64, ptr %i.bg, align 16, !dbg !19397, !noalias !19091, !noundef !1173 ; 2 uses
    #dbg_value(ptr poison, !3796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17196)
    #dbg_value(i64 %i.agl, !3796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17196)
    #dbg_value(ptr poison, !3816, !DIExpression(), !18595)
    #dbg_value(ptr poison, !3821, !DIExpression(), !18596)
  %i.agm = zext i32 %i.agk to i64, !dbg !19398    ; 3 uses
  %i.agn = icmp ugt i64 %i.agl, %i.agm, !dbg !19399
  br i1 %i.agn, label %.lr.ph4651, label %.lr.ph1387._crit_edge, !dbg !19399

bb.hw:                                            ; preds = %bb.ib, %bb.ia, %bb.hv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19092), !dbg !20079
    #dbg_value(ptr %3, !19093, !DIExpression(), !18606)
    #dbg_value(ptr %3, !19113, !DIExpression(), !18609)
    #dbg_value(ptr %3, !19113, !DIExpression(), !18611)
    #dbg_value(i32 %i.agj, !19111, !DIExpression(), !18606)
    #dbg_value(ptr poison, !19115, !DIExpression(), !18614)
    #dbg_value(ptr poison, !19117, !DIExpression(), !18617)
    #dbg_value(i32 %i.agj, !19119, !DIExpression(), !18622)
  %i.ago = zext i32 %i.agj to i64, !dbg !20080    ; 2 uses
  %i.agp = load i64, ptr %i.bq, align 8, !dbg !20081, !alias.scope !19092, !noalias !19132, !noundef !1173
  %.not.i224 = icmp ugt i64 %i.agp, %i.ago, !dbg !20082
  br i1 %.not.i224, label %bb.hx, label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit, !dbg !20082

bb.hx:                                            ; preds = %bb.hw
  %i.agq = load ptr, ptr %3, align 8, !dbg !20081, !alias.scope !19092, !noalias !19132, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.agq, !19127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18622)
    #dbg_value(i64 %i.agp, !19127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18622)
    #dbg_value(ptr poison, !19115, !DIExpression(), !18625)
    #dbg_value(ptr poison, !19117, !DIExpression(), !18627)
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.ago, !dbg !20083 ; 2 uses
  %i.ags = load i8, ptr %i.agr, align 1, !dbg !20084, !range !2675, !noalias !19134, !noundef !1173
  %i.agt = trunc nuw i8 %i.ags to i1, !dbg !20084
  br i1 %i.agt, label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit, label %bb.hy, !dbg !20084

bb.hy:                                            ; preds = %bb.hx
  %i.agu = load i64, ptr %i.ba, align 8, !dbg !20085, !alias.scope !19092, !noalias !19132, !noundef !1173
  %i.agv = add i64 %i.agu, 1, !dbg !20085
  store i64 %i.agv, ptr %i.ba, align 8, !dbg !20085, !alias.scope !19092, !noalias !19132
    #dbg_value(ptr poison, !19115, !DIExpression(), !18632)
    #dbg_value(ptr poison, !19117, !DIExpression(), !18634)
  store i8 1, ptr %i.agr, align 1, !dbg !20086, !noalias !19134
  br label %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit, !dbg !20087

_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit: ; preds = %bb.hx, %bb.hw, %bb.hy
    #dbg_value(ptr %0, !18923, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18635)
    #dbg_value(i8 %i.ah, !18920, !DIExpression(), !17117)
    #dbg_value(ptr %i.jx, !18893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17167)
    #dbg_value(ptr undef, !18877, !DIExpression(), !17094)
    #dbg_value(ptr undef, !18872, !DIExpression(), !17093)
    #dbg_value(ptr %i.jx, !18873, !DIExpression(), !17168)
    #dbg_value(ptr %i.jx, !18917, !DIExpression(), !17111)
    #dbg_value(ptr %i.jj, !18874, !DIExpression(), !17169)
    #dbg_value(ptr poison, !18933, !DIExpression(), !17172)
    #dbg_value(ptr poison, !18934, !DIExpression(), !17173)
  %i.agw = icmp ne ptr %i.jx, %i.jj
  %or.cond1394.not = select i1 %.sroa.0.0, i1 %i.agw, i1 false, !dbg !20088
  br i1 %or.cond1394.not, label %.backedge1405, label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit, !dbg !20088

bb.hz:                                            ; preds = %bb.hv
    #dbg_value(ptr poison, !18907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17102)
    #dbg_value(ptr poison, !18911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17105)
    #dbg_value(ptr poison, !18914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17108)
    #dbg_value(i64 %i.af, !18907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17102)
    #dbg_value(i64 %i.af, !18911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17105)
    #dbg_value(i64 %i.af, !18914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17108)
  br i1 %i.jl, label %bb.ia, label %bb.ib, !dbg !20089

bb.ia:                                            ; preds = %bb.hz
    #dbg_value(ptr %i.bk, !18907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17102)
    #dbg_value(ptr %i.bk, !18911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17105)
    #dbg_value(ptr %i.bk, !18914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17108)
  %i.agx = load i8, ptr %i.jn, align 1, !dbg !20090, !noundef !1173
    #dbg_value(i8 %i.agx, !18908, !DIExpression(), !18636)
  %or.cond375 = icmp sgt i8 %i.agx, -65, !dbg !20091
  br i1 %or.cond375, label %bb.hw, label %.backedge393, !dbg !20091

bb.ib:                                            ; preds = %bb.hz
  br i1 %i.jm, label %bb.hw, label %.backedge393, !dbg !20092

_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit: ; preds = %.backedge393, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit
  %.pre2548 = load i64, ptr %i.ba, align 8, !dbg !20093
  br label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit, !dbg !20093

_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit: ; preds = %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.agy = phi i64 [ %.pre2548, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit ], [ %i.cb, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit ], !dbg !20093 ; 2 uses
  %i.agz = load i64, ptr %i.bq, align 8, !dbg !20094, !noundef !1173
  %i.aha = icmp eq i64 %i.agy, %i.agz, !dbg !20095
  %or.cond = select i1 %i.aha, i1 true, i1 %i.ca, !dbg !20096
  br i1 %or.cond, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.ie, !dbg !20096

bb.ic:                                            ; preds = %bb.k
  br i1 %or.cond46, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.l, !dbg !20097

bb.id:                                            ; preds = %bb.k
  %or.cond376 = or i1 %or.cond46, %.sroa.0.0.not, !dbg !20098
  br i1 %or.cond376, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.l, !dbg !20098

bb.ie:                                            ; preds = %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit
    #dbg_value(ptr %i.t, !4623, !DIExpression(), !18638)
    #dbg_value(ptr %i.w, !4626, !DIExpression(), !18638)
    #dbg_value(ptr %i.t, !4628, !DIExpression(), !18640)
    #dbg_value(ptr %i.t, !4634, !DIExpression(), !18642)
    #dbg_value(ptr %i.w, !4631, !DIExpression(), !18640)
    #dbg_value(ptr %i.w, !4637, !DIExpression(), !18642)
    #dbg_value(i64 1, !4632, !DIExpression(), !18640)
    #dbg_value(i64 1, !4638, !DIExpression(), !18642)
    #dbg_value(ptr %i.t, !4639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18643)
    #dbg_value(i64 1, !4639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18643)
    #dbg_value(i64 96, !4640, !DIExpression(), !18644)
    #dbg_value(i64 96, !4641, !DIExpression(), !18645)
    #dbg_value(ptr %i.t, !2811, !DIExpression(), !18647)
    #dbg_value(ptr %i.w, !2812, !DIExpression(), !18647)
    #dbg_value(i64 96, !2813, !DIExpression(), !18647)
    #dbg_value(i64 96, !2814, !DIExpression(), !18648)
    #dbg_value(i64 0, !2816, !DIExpression(), !18649)
    #dbg_value(i64 12, !2815, !DIExpression(), !18650)
    #dbg_value(i64 12, !2817, !DIExpression(), !18651)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull %i.t, ptr noundef nonnull %i.w, i64 noundef 12)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit unwind label %bb.if, !dbg !20099

bb.if:                                            ; preds = %bb.ie
  %i.ahb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #23, !dbg !20100
  unreachable, !dbg !20100

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit: ; preds = %bb.ie
    #dbg_value(ptr %i.w, !18800, !DIExpression(), !19147)
  store i64 0, ptr %i.x, align 8, !dbg !20101
    #dbg_value(i64 %i.cc, !18674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18818)
    #dbg_value(i8 poison, !18674, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18818)
    #dbg_value(ptr undef, !18700, !DIExpression(), !16624)
    #dbg_value(ptr undef, !18691, !DIExpression(), !16623)
  %exitcond.not = icmp eq i64 %.sroa.0.02611389, %i.ac, !dbg !19180
  br i1 %exitcond.not, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.i, !dbg !19180
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_5Cache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !509 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !3012, !DIExpression(), !20102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20103
  store i64 0, ptr %i.c, align 8, !dbg !20104
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20104
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !dbg !20104
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !20104
  store i64 0, ptr %i.e, align 8, !dbg !20104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20105
  %.val3 = load ptr, ptr %1, align 8, !dbg !20105 ; 2 uses
  invoke fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.b, ptr %.val3)
          to label %bb.d unwind label %bb.c, !dbg !20105

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %bb.h unwind label %bb.g, !dbg !20106

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20107
  invoke fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.a, ptr %.val3)
          to label %bb.f unwind label %bb.e, !dbg !20107

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEBJ_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b) #24
          to label %bb.b unwind label %bb.g, !dbg !20106

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !20108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !dbg !20108
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !20108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !20108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20106
  ret void, !dbg !20109

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !20110
  unreachable, !dbg !20110

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !20110
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_5Cache5reset(ptr noalias nofree noundef align 8 dereferenceable(216) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 !dbg !508 {
bb.a:
    #dbg_value(ptr %0, !3004, !DIExpression(), !20111)
    #dbg_value(ptr %1, !3008, !DIExpression(), !20111)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20112
  %.val2 = load ptr, ptr %1, align 8, !dbg !20113, !nonnull !1173, !noundef !1173 ; 2 uses
  tail call fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates5reset(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a, ptr nonnull %.val2), !dbg !20113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !20114
  tail call fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates5reset(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b, ptr nonnull %.val2), !dbg !20115
  ret void, !dbg !20116
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20118 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [96 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !20134, !DIExpression(), !20137)
    #dbg_declare(ptr %i.b, !20135, !DIExpression(), !20138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20146
    #dbg_value(i64 0, !20139, !DIExpression(), !20122)
    #dbg_declare(ptr %i.a, !20143, !DIExpression(), !20123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20147, !noalias !20145
  store i64 0, ptr %i.a, align 8, !dbg !20148, !noalias !20145
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20148
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !20148, !noalias !20145
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20148
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !20148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !20148, !noalias !20145
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !20148, !noalias !20145
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !20148
    #dbg_value(ptr %i.a, !4651, !DIExpression(), !20127)
    #dbg_value(ptr %i.a, !4666, !DIExpression(), !20129)
    #dbg_value(i64 0, !4655, !DIExpression(), !20127)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !20149, !noalias !20145
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef 0, i32 noundef 0)
          to label %.noexc.i unwind label %bb.b, !dbg !20150, !noalias !20145

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !20148
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i32 noundef 0)
          to label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet3new.exit unwind label %bb.b, !dbg !20151, !noalias !20145

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_set9SparseSetEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24
          to label %common.resume unwind label %bb.c, !dbg !20152, !noalias !20145

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !20153, !noalias !20145
  unreachable, !dbg !20153

common.resume:                                    ; preds = %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !20137

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet3new.exit: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !dbg !20154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20152, !noalias !20145
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !20155
  store i64 0, ptr %i.f, align 8, !dbg !20155
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !20155
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !20155
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !20155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !20155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates5reset(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b, ptr nonnull %.0.val)
          to label %bb.e unwind label %bb.d, !dbg !20156

bb.d:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet3new.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEBJ_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b) #24
          to label %common.resume unwind label %bb.f, !dbg !20157

bb.e:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet3new.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !dbg !20158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20157
  ret void, !dbg !20159

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !20160
  unreachable, !dbg !20160
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20161 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !20256, !DIExpression(), !20259)
    #dbg_value(ptr poison, !20257, !DIExpression(), !20259)
    #dbg_value(ptr poison, !20260, !DIExpression(), !20263)
end_hunk_1
