Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.02?download=true
inline.NumInlined: 459
inline.NumDeleted: 207
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler3new:bb.a
  store i64 -2, ptr %0, align 8, !dbg !20373
  br label %bb.l, !dbg !20351

bb.l:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler9add_empty.exit, %bb.b
  ret void, !dbg !20351
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler6finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !20380 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_declare(ptr poison, !20444, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20450)
    #dbg_declare(ptr poison, !20451, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20456)
    #dbg_declare(ptr poison, !20445, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20457)
    #dbg_declare(ptr poison, !20441, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20458)
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
    #dbg_value(ptr %1, !20436, !DIExpression(), !20459)
    #dbg_declare(ptr %i.d, !20460, !DIExpression(), !20465)
    #dbg_declare(ptr poison, !20437, !DIExpression(), !20466)
    #dbg_declare(ptr poison, !20445, !DIExpression(), !20469)
    #dbg_declare(ptr %i.c, !20439, !DIExpression(), !20470)
    #dbg_declare(ptr %i.b, !20452, !DIExpression(), !20471)
    #dbg_declare(ptr poison, !20462, !DIExpression(), !20472)
    #dbg_declare(ptr poison, !20446, !DIExpression(), !20473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20464
  call fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler12compile_from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !20550
  %i.e = load i64, ptr %i.d, align 8, !dbg !20551, !range !2501, !noundef !1073
  %.not = icmp eq i64 %i.e, -2, !dbg !20551
  br i1 %.not, label %bb.c, label %bb.b, !dbg !20552

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !dbg !20553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20554
  br label %bb.i, !dbg !20555

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20556
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20557
  %.val20 = load ptr, ptr %i.f, align 8, !dbg !20557, !nonnull !1073, !align !2687, !noundef !1073 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20475), !dbg !20557
    #dbg_declare(ptr poison, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 152), !20484)
    #dbg_value(ptr poison, !20489, !DIExpression(), !20498)
    #dbg_value(i8 0, !20495, !DIExpression(), !20499)
    #dbg_value(i64 0, !20500, !DIExpression(), !20503)
    #dbg_value(i64 32, !20504, !DIExpression(), !20507)
    #dbg_value(ptr @34, !20481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20514)
    #dbg_value(i64 15, !20481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20558, !noalias !20475
    #dbg_value(ptr %.val20, !20515, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20517)
  %i.g = getelementptr inbounds nuw i8, ptr %.val20, i64 56, !dbg !20559 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !20559, !noalias !20475, !noundef !1073 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !dbg !20559, !noalias !20475
  %i.i = icmp ult i64 %i.h, 288230376151711744, !dbg !20560
  tail call void @llvm.assume(i1 %i.i), !dbg !20561
    #dbg_value(ptr %i.a, !20492, !DIExpression(), !20518)
    #dbg_value(ptr @41, !20493, !DIExpression(), !20518)
  %i.j = icmp eq i64 %i.h, 1, !dbg !20562
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !20562, !prof !2321

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !dbg !20563, !noalias !20475
  unreachable, !dbg !20563

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20564, !noalias !20475
    #dbg_value(ptr %.val20, !20501, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20519)
    #dbg_value(ptr %.val20, !20520, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20522)
    #dbg_value(ptr %.val20, !20523, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20525)
    #dbg_value(ptr %.val20, !20526, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20528)
  %i.k = getelementptr inbounds nuw i8, ptr %.val20, i64 48, !dbg !20565
  %i.l = load ptr, ptr %i.k, align 8, !dbg !20565, !noalias !20475, !nonnull !1073, !noundef !1073 ; 3 uses
    #dbg_value(ptr %i.l, !20529, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20531)
    #dbg_value(ptr %i.l, !20532, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20534)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !20566
  %i.n = load i8, ptr %i.m, align 8, !dbg !20566, !range !2366, !noalias !20475, !noundef !1073
  %i.o = trunc nuw i8 %i.n to i1, !dbg !20566
  br i1 %i.o, label %bb.f, label %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit, !dbg !20567, !prof !3747

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20, !dbg !20568, !noalias !20475
  unreachable, !dbg !20568

_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit: ; preds = %bb.e
    #dbg_value(ptr %.val20, !20512, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20535)
    #dbg_value(ptr %.val20, !20510, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20536)
    #dbg_value(ptr %.val20, !20526, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20537)
    #dbg_value(ptr %.val20, !20515, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20538)
  store i64 0, ptr %i.g, align 8, !dbg !20569, !noalias !20475
    #dbg_value(i1 true, !20539, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20541)
    #dbg_value(ptr %i.l, !20542, !DIExpression(), !20544)
  %.sroa.03.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !20570, !noalias !20475
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20570
    #dbg_value(i64 %.sroa.03.0.copyload.i, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20514)
  store i64 %.sroa.03.0.copyload.i, ptr %i.c, align 8, !dbg !20571, !alias.scope !20475
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !dbg !20571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20455
  %.val = load ptr, ptr %1, align 8, !dbg !20572
  call fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler7compile(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.b, ptr %.val, ptr nonnull %.val20, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !dbg !20572
  %i.p = load i64, ptr %i.b, align 8, !dbg !20573, !range !2501, !noundef !1073 ; 2 uses
  %.not18 = icmp eq i64 %i.p, -2, !dbg !20573
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20574
  %i.r = load i32, ptr %i.q, align 8, !dbg !20574 ; 2 uses
  br i1 %.not18, label %bb.h, label %bb.g, !dbg !20575

bb.g:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit
    #dbg_value(i64 %i.p, !20451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20545)
    #dbg_value(i32 %i.r, !20451, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20545)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !20576
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.511.0..sroa_idx, i64 116, i1 false), !dbg !20576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20578
    #dbg_value(i64 %i.p, !20441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20546)
    #dbg_value(i64 %i.p, !20445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20547)
    #dbg_value(i32 %i.r, !20441, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20546)
    #dbg_value(i32 %i.r, !20445, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20547)
    #dbg_value(i64 %i.p, !20444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20548)
    #dbg_value(i32 %i.r, !20444, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20548)
  store i64 %i.p, ptr %0, align 8, !dbg !20577
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20577
  store i32 %i.r, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !20577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20579
  br label %bb.i, !dbg !20555

bb.h:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20578
    #dbg_value(i32 %i.r, !20440, !DIExpression(), !20549)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20580
  %i.t = load i32, ptr %i.s, align 8, !dbg !20580, !noundef !1073
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20581
  store i32 %i.r, ptr %i.u, align 8, !dbg !20581
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20581
  store i32 %i.t, ptr %i.v, align 4, !dbg !20581
  store i64 -2, ptr %0, align 8, !dbg !20581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20579
  br label %bb.i, !dbg !20582

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void, !dbg !20582
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler7compile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20588 {
bb.a:
    #dbg_declare(ptr poison, !20662, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20670)
    #dbg_declare(ptr poison, !20671, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20676)
  %i.a = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !20665, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20677)
    #dbg_declare(ptr poison, !20659, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20678)
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !20654, !DIExpression(), !20679)
    #dbg_declare(ptr %1, !20655, !DIExpression(), !20680)
    #dbg_declare(ptr %i.c, !20672, !DIExpression(), !20681)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %1, !20683, !DIExpression(), !20691)
    #dbg_value(ptr %1, !20692, !DIExpression(), !20696)
    #dbg_value(ptr %1, !20697, !DIExpression(), !20703)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20830
  %i.e = load ptr, ptr %i.d, align 8, !dbg !20830, !nonnull !1073, !noundef !1073 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20831
  %i.g = load i64, ptr %i.f, align 8, !dbg !20831, !noundef !1073 ; 3 uses
  %i.h = getelementptr i8, ptr %.8.val, i64 16, !dbg !20832
  %.val = load i64, ptr %i.h, align 8, !dbg !20832 ; 3 uses
    #dbg_value(ptr poison, !20708, !DIExpression(), !20729)
    #dbg_value(ptr poison, !20736, !DIExpression(), !20742)
    #dbg_value(ptr %i.e, !20737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20742)
    #dbg_value(ptr %i.e, !20743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20747)
    #dbg_value(ptr %i.e, !20748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20750)
    #dbg_value(ptr %i.e, !20751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20757)
    #dbg_value(i64 %i.g, !20737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20742)
    #dbg_value(i64 %i.g, !20743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20747)
    #dbg_value(i64 %i.g, !20748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20750)
    #dbg_value(i64 %i.g, !20751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20757)
    #dbg_value(i64 1, !20758, !DIExpression(), !20764)
    #dbg_value(i64 1099511628211, !20765, !DIExpression(), !20768)
    #dbg_value(i64 1099511628211, !20765, !DIExpression(), !20769)
    #dbg_value(i64 1099511628211, !20765, !DIExpression(), !20770)
    #dbg_value(i64 -3750763034362895579, !20738, !DIExpression(), !20771)
    #dbg_value(i64 %i.g, !20753, !DIExpression(), !20772)
    #dbg_value(i64 %i.g, !20773, !DIExpression(), !20776)
    #dbg_value(ptr %i.e, !20754, !DIExpression(), !20777)
    #dbg_value(ptr %i.e, !20774, !DIExpression(), !20776)
    #dbg_value(ptr %i.e, !20739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20739, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20778)
    #dbg_value(ptr undef, !20708, !DIExpression(), !20729)
    #dbg_value(ptr %i.e, !20725, !DIExpression(), !20780)
    #dbg_value(ptr %i.e, !20762, !DIExpression(), !20764)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20726, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20782)
    #dbg_value(ptr poison, !20784, !DIExpression(), !20789)
    #dbg_value(ptr poison, !20787, !DIExpression(), !20790)
  %i.i = icmp eq i64 %i.g, 0, !dbg !20833
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !20834

.lr.ph.i.preheader:                               ; preds = %bb.a
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20726, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20782)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20739, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20778)
  %i.j = add i64 %i.g, 2305843009213693951, !dbg !20834
  %i.k = and i64 %i.j, 2305843009213693951, !dbg !20834 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1, !dbg !20834     ; 3 uses
  %i.m = icmp eq i64 %i.k, 0, !dbg !20834
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !20834

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.l, 4611686018427387902, !dbg !20834
  br label %.lr.ph.i, !dbg !20834

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.02.i = phi ptr [ %i.e, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 7 uses
  %.sroa.02.01.i = phi i64 [ -3750763034362895579, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
    #dbg_value(ptr %.sroa.0.02.i, !20739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(i64 %.sroa.02.01.i, !20738, !DIExpression(), !20771)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8, !dbg !20835
    #dbg_value(ptr %i.n, !20739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(ptr %.sroa.0.02.i, !20740, !DIExpression(), !20791)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4, !dbg !20836
  %i.p = load i8, ptr %i.o, align 4, !dbg !20836, !alias.scope !20792, !noundef !1073
    #dbg_value(i8 %i.p, !20793, !DIExpression(), !20795)
  %i.q = zext i8 %i.p to i64, !dbg !20837
  %i.r = xor i64 %.sroa.02.01.i, %i.q, !dbg !20838
    #dbg_value(i64 %i.r, !20766, !DIExpression(), !20768)
  %i.s = mul i64 %i.r, 1099511628211, !dbg !20839
    #dbg_value(i64 %i.s, !20738, !DIExpression(), !20771)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 5, !dbg !20840
  %i.u = load i8, ptr %i.t, align 1, !dbg !20840, !alias.scope !20792, !noundef !1073
    #dbg_value(i8 %i.u, !20793, !DIExpression(), !20796)
  %i.v = zext i8 %i.u to i64, !dbg !20841
  %i.w = xor i64 %i.s, %i.v, !dbg !20842
    #dbg_value(i64 %i.w, !20766, !DIExpression(), !20769)
  %i.x = mul i64 %i.w, 1099511628211, !dbg !20843
    #dbg_value(i64 %i.x, !20738, !DIExpression(), !20771)
    #dbg_value(ptr %.sroa.0.02.i, !20797, !DIExpression(), !20799)
    #dbg_value(ptr %.sroa.0.02.i, !20800, !DIExpression(), !20802)
  %i.y = load i32, ptr %.sroa.0.02.i, align 4, !dbg !20844, !alias.scope !20792, !noundef !1073
  %i.z = zext i32 %i.y to i64, !dbg !20844
  %i.aa = xor i64 %i.x, %i.z, !dbg !20845
    #dbg_value(i64 %i.aa, !20766, !DIExpression(), !20770)
  %i.ab = mul i64 %i.aa, 1099511628211, !dbg !20846
    #dbg_value(i64 %i.ab, !20738, !DIExpression(), !20771)
    #dbg_value(ptr undef, !20708, !DIExpression(), !20729)
    #dbg_value(ptr %i.n, !20725, !DIExpression(), !20780)
    #dbg_value(ptr %i.n, !20762, !DIExpression(), !20764)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20726, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20782)
    #dbg_value(ptr poison, !20784, !DIExpression(), !20789)
    #dbg_value(ptr poison, !20787, !DIExpression(), !20790)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16, !dbg !20835 ; 2 uses
    #dbg_value(ptr %i.ac, !20739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(ptr %i.n, !20740, !DIExpression(), !20791)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 12, !dbg !20836
  %i.ae = load i8, ptr %i.ad, align 4, !dbg !20836, !alias.scope !20792, !noundef !1073
    #dbg_value(i8 %i.ae, !20793, !DIExpression(), !20795)
  %i.af = zext i8 %i.ae to i64, !dbg !20837
  %i.ag = xor i64 %i.ab, %i.af, !dbg !20838
    #dbg_value(i64 %i.ag, !20766, !DIExpression(), !20768)
  %i.ah = mul i64 %i.ag, 1099511628211, !dbg !20839
    #dbg_value(i64 %i.ah, !20738, !DIExpression(), !20771)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 13, !dbg !20840
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !20840, !alias.scope !20792, !noundef !1073
    #dbg_value(i8 %i.aj, !20793, !DIExpression(), !20796)
  %i.ak = zext i8 %i.aj to i64, !dbg !20841
  %i.al = xor i64 %i.ah, %i.ak, !dbg !20842
    #dbg_value(i64 %i.al, !20766, !DIExpression(), !20769)
  %i.am = mul i64 %i.al, 1099511628211, !dbg !20843
    #dbg_value(i64 %i.am, !20738, !DIExpression(), !20771)
    #dbg_value(ptr %i.n, !20797, !DIExpression(), !20799)
    #dbg_value(ptr %i.n, !20800, !DIExpression(), !20802)
  %i.an = load i32, ptr %i.n, align 4, !dbg !20844, !alias.scope !20792, !noundef !1073
  %i.ao = zext i32 %i.an to i64, !dbg !20844
  %i.ap = xor i64 %i.am, %i.ao, !dbg !20845
    #dbg_value(i64 %i.ap, !20766, !DIExpression(), !20770)
  %i.aq = mul i64 %i.ap, 1099511628211, !dbg !20846 ; 3 uses
    #dbg_value(i64 %i.aq, !20738, !DIExpression(), !20771)
    #dbg_value(ptr %i.ac, !20725, !DIExpression(), !20780)
    #dbg_value(ptr %i.ac, !20762, !DIExpression(), !20764)
  %niter.next.1 = add i64 %niter, 2, !dbg !20834  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !20834
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !20834

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %2 = trunc i64 %i.l to i1, !dbg !20834
  br i1 %2, label %.lr.ph.i.epil.preheader, label %._crit_edge.i, !dbg !20834

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.02.i.epil.init = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.02.01.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.preheader ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.l to i1, !dbg !20834
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !20834
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(i64 %.sroa.02.01.i.epil.init, !20738, !DIExpression(), !20771)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20739, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20778)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20740, !DIExpression(), !20791)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.epil.init, i64 4, !dbg !20836
  %i.as = load i8, ptr %i.ar, align 4, !dbg !20836, !alias.scope !20792, !noundef !1073
    #dbg_value(i8 %i.as, !20793, !DIExpression(), !20795)
  %i.at = zext i8 %i.as to i64, !dbg !20837
  %i.au = xor i64 %.sroa.02.01.i.epil.init, %i.at, !dbg !20838
    #dbg_value(i64 %i.au, !20766, !DIExpression(), !20768)
  %i.av = mul i64 %i.au, 1099511628211, !dbg !20839
    #dbg_value(i64 %i.av, !20738, !DIExpression(), !20771)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.epil.init, i64 5, !dbg !20840
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !20840, !alias.scope !20792, !noundef !1073
    #dbg_value(i8 %i.ax, !20793, !DIExpression(), !20796)
  %i.ay = zext i8 %i.ax to i64, !dbg !20841
  %i.az = xor i64 %i.av, %i.ay, !dbg !20842
    #dbg_value(i64 %i.az, !20766, !DIExpression(), !20769)
  %i.ba = mul i64 %i.az, 1099511628211, !dbg !20843
    #dbg_value(i64 %i.ba, !20738, !DIExpression(), !20771)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20797, !DIExpression(), !20799)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20800, !DIExpression(), !20802)
  %i.bb = load i32, ptr %.sroa.0.02.i.epil.init, align 4, !dbg !20844, !alias.scope !20792, !noundef !1073
  %i.bc = zext i32 %i.bb to i64, !dbg !20844
  %i.bd = xor i64 %i.ba, %i.bc, !dbg !20845
    #dbg_value(i64 %i.bd, !20766, !DIExpression(), !20770)
  %i.be = mul i64 %i.bd, 1099511628211, !dbg !20846
    #dbg_value(i64 %i.be, !20738, !DIExpression(), !20771)
    #dbg_value(ptr undef, !20708, !DIExpression(), !20729)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20725, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20780)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20762, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20764)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20726, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20782)
    #dbg_value(ptr poison, !20784, !DIExpression(), !20789)
    #dbg_value(ptr poison, !20787, !DIExpression(), !20790)
  br label %._crit_edge.i, !dbg !20847

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %.sroa.02.0.lcssa.i = phi i64 [ -3750763034362895579, %bb.a ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.i.epil.preheader ], !dbg !20742
    #dbg_value(ptr poison, !20808, !DIExpression(), !20810)
  %i.bf = icmp ult i64 %.val, 288230376151711744, !dbg !20847
  tail call void @llvm.assume(i1 %i.bf), !dbg !20848
  %i.bg = icmp eq i64 %.val, 0, !dbg !20849
  br i1 %i.bg, label %bb.b, label %bb.c, !dbg !20849

bb.b:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc unwind label %bb.o, !dbg !20849

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !20849

bb.c:                                             ; preds = %._crit_edge.i
  %i.bh = urem i64 %.sroa.02.0.lcssa.i, %.val, !dbg !20849 ; 2 uses
    #dbg_value(i64 %i.bh, !20656, !DIExpression(), !20811)
    #dbg_value(ptr %1, !20683, !DIExpression(), !20813)
    #dbg_value(ptr %1, !20692, !DIExpression(), !20816)
    #dbg_value(ptr %1, !20697, !DIExpression(), !20819)
  %i.bi = invoke { i32, i32 } @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.bh)
          to label %bb.d unwind label %bb.o, !dbg !20850 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.bj = extractvalue { i32, i32 } %i.bi, 0, !dbg !20851
  %i.bk = trunc i32 %i.bj to i1, !dbg !20852
  br i1 %i.bk, label %bb.e, label %bb.f, !dbg !20852

bb.e:                                             ; preds = %bb.d
  %i.bl = extractvalue { i32, i32 } %i.bi, 1, !dbg !20851
    #dbg_value(i32 %i.bl, !20657, !DIExpression(), !20820)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20853
  store i32 %i.bl, ptr %i.bm, align 8, !dbg !20853
  store i64 -2, ptr %0, align 8, !dbg !20853
  br label %bb.g, !dbg !20854

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20675
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20855
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.j unwind label %bb.o, !dbg !20856

bb.g:                                             ; preds = %bb.l, %bb.e
    #dbg_value(ptr %1, !3371, !DIExpression(), !20822)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit unwind label %bb.h, !dbg !20857

bb.h:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !3376, !DIExpression(), !20823)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.i, !dbg !20858

bb.i:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !20857
  unreachable, !dbg !20857

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %lpad.thr_comm, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !20679

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit: ; preds = %bb.g
    #dbg_value(ptr %1, !3376, !DIExpression(), !20824)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !20859
  br label %bb.n, !dbg !20860

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB4_7Builder10add_sparse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.o, !dbg !20861

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20862
  %i.bp = load i64, ptr %i.c, align 8, !dbg !20863, !range !2501, !noundef !1073 ; 2 uses
  %.not = icmp eq i64 %i.bp, -2, !dbg !20863
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20864
  %i.br = load i32, ptr %i.bq, align 8, !dbg !20864 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20811 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l, !dbg !20865

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 %i.bp, !20671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20825)
    #dbg_value(i32 %i.br, !20671, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20825)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !20866
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.515.0..sroa_idx, i64 116, i1 false), !dbg !20866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20868
    #dbg_value(i64 %i.bp, !20659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20826)
    #dbg_value(i64 %i.bp, !20665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20827)
    #dbg_value(i32 %i.br, !20659, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20826)
    #dbg_value(i32 %i.br, !20665, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20827)
    #dbg_value(i64 %i.bp, !20662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20828)
    #dbg_value(i32 %i.br, !20662, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20828)
  store i64 %i.bp, ptr %0, align 8, !dbg !20867
  store i32 %i.br, ptr %i.bs, align 8, !dbg !20867
  br label %bb.g, !dbg !20854

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20868
    #dbg_value(i32 %i.br, !20658, !DIExpression(), !20829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20869
  call void @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3set(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bh, i32 noundef %i.br), !dbg !20870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20871
  store i32 %i.br, ptr %i.bs, align 8, !dbg !20872
  store i64 -2, ptr %0, align 8, !dbg !20872
  br label %bb.n, !dbg !20860

bb.n:                                             ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit
  ret void, !dbg !20873

bb.o:                                             ; preds = %bb.j, %bb.f, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %common.resume unwind label %bb.p, !dbg !20860

bb.p:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !20874
  unreachable, !dbg !20874
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCINvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB2a_8Compiler7compileB1m_Es_0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20875 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %.sroa.19 = alloca [112 x i8], align 8          ; 8 uses
    #dbg_value(ptr %1, !20994, !DIExpression(), !20997)
    #dbg_value(ptr %1, !2700, !DIExpression(), !20998)
    #dbg_value(i64 1, !2715, !DIExpression(), !20999)
  %i.f = load ptr, ptr %1, align 8, !dbg !21133, !alias.scope !21000, !nonnull !1073, !noundef !1073 ; 3 uses
    #dbg_value(ptr %i.f, !2701, !DIExpression(), !21001)
    #dbg_value(ptr %i.f, !2716, !DIExpression(), !20999)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21134
  %i.h = load ptr, ptr %i.g, align 8, !dbg !21134, !alias.scope !21000, !nonnull !1073, !noundef !1073
    #dbg_value(ptr %i.h, !2702, !DIExpression(), !21002)
    #dbg_value(ptr poison, !2718, !DIExpression(), !21003)
    #dbg_value(ptr poison, !2719, !DIExpression(), !21004)
  %i.i = icmp eq ptr %i.f, %i.h, !dbg !21135
  br i1 %i.i, label %bb.y, label %bb.b, !dbg !21136

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !21137
  store ptr %i.j, ptr %1, align 8, !dbg !21138, !alias.scope !21000
    #dbg_value(ptr %i.f, !21005, !DIExpression(), !21016)
    #dbg_value(ptr %1, !21012, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21016)
    #dbg_value(ptr %1, !21017, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21024)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21139
end_hunk_0
