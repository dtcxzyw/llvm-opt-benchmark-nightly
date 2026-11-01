Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates5reset:bb.a
    #dbg_value(i64 %i.u, !20304, !DIExpression(), !20192)
    #dbg_value(i64 %i.u, !20306, !DIExpression(), !20195)
    #dbg_value(i64 %i.u, !20311, !DIExpression(), !20198)
    #dbg_value(ptr %i.q, !20309, !DIExpression(DW_OP_deref), !20195)
    #dbg_value(i64 %..i.i, !20312, !DIExpression(), !20198)
  %i.v = add i64 %i.u, %..i.i, !dbg !20338        ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u, !dbg !20338
    #dbg_value(i1 %i.w, !20280, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20200)
  br i1 %i.w, label %bb.d, label %_RNvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable5reset.exit, !dbg !20339, !prof !2849

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6resize.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #27, !dbg !20340, !noalias !20223
  unreachable, !dbg !20340

_RNvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable5reset.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !20341
    #dbg_value(ptr %i.x, !20224, !DIExpression(), !20128)
    #dbg_value(i64 %i.v, !20249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20140)
    #dbg_value(i64 1, !20249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20140)
    #dbg_value(i64 %i.v, !20231, !DIExpression(), !20201)
  tail call void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, i64 noundef %i.v, i64 noundef 0), !dbg !20342
  ret void, !dbg !20343
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !511 {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20344
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !20345
  store i8 2, ptr %i.c, align 8, !dbg !20345
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !20345
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !20345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20346
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !20346

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #24
          to label %bb.e unwind label %bb.d, !dbg !20347

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !20348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !20348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !dbg !20348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20347
  ret void, !dbg !20349

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !20350
  unreachable, !dbg !20350

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !20350
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !535 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !3126, !DIExpression(), !20391)
    #dbg_value(ptr %2, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20391)
    #dbg_value(i64 %3, !3130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20398
  store ptr %2, ptr %i.b, align 8, !dbg !20398
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20398
  store i64 %3, ptr %i.c, align 8, !dbg !20398
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20392), !dbg !20399
    #dbg_declare(ptr poison, !3134, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !20355)
    #dbg_declare(ptr poison, !3138, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !20356)
    #dbg_declare(ptr poison, !3155, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !20357)
    #dbg_value(ptr %1, !3152, !DIExpression(), !20358)
    #dbg_value(ptr %i.b, !3153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20358)
    #dbg_value(i64 1, !3153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20358)
    #dbg_declare(ptr %i.a, !3158, !DIExpression(), !20360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20400, !noalias !20393
  call void @_RINvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB6_8Compiler10build_manyReEBc_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !20401, !noalias !20392
  %i.d = load i64, ptr %i.a, align 8, !dbg !20402, !range !3188, !noalias !20393, !noundef !1173 ; 2 uses
  %.not.i = icmp eq i64 %i.d, -2, !dbg !20402
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20403
  %i.f = load ptr, ptr %i.e, align 8, !dbg !20403, !noalias !20393 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !20404

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20405
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.514.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.511.0..sroa_idx.i, i64 112, i1 false), !dbg !20405, !noalias !20394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20407, !noalias !20393
    #dbg_value(i64 %i.d, !3155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20362)
    #dbg_value(i64 %i.d, !3138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20363)
    #dbg_value(ptr %i.f, !3155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20362)
    #dbg_value(ptr %i.f, !3138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20363)
    #dbg_value(i64 %i.d, !3134, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20364)
    #dbg_value(ptr %i.f, !3134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20364)
  store i64 %i.d, ptr %0, align 8, !dbg !20406, !alias.scope !20392
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20406
  store ptr %i.f, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !20406, !alias.scope !20392
  br label %_RINvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_7Builder10build_manyReEBb_.exit, !dbg !20408

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20407, !noalias !20393
    #dbg_value(ptr %i.f, !3154, !DIExpression(), !20365)
  call void @llvm.experimental.noalias.scope.decl(metadata !20395), !dbg !20409
    #dbg_value(ptr %1, !3026, !DIExpression(), !20369)
    #dbg_value(ptr %i.f, !3030, !DIExpression(), !20369)
    #dbg_value(i64 1, !3043, !DIExpression(), !20376)
    #dbg_value(i8 0, !3046, !DIExpression(), !20376)
    #dbg_value(i64 1, !3082, !DIExpression(), !20378)
    #dbg_value(i8 0, !3084, !DIExpression(), !20378)
    #dbg_value(ptr %1, !3080, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !20379)
    #dbg_value(ptr %1, !3089, !DIExpression(DW_OP_plus_uconst, 480, DW_OP_stack_value), !20381)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 448, !dbg !20410 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !20410
  %i.i = load i8, ptr %i.h, align 8, !dbg !20410, !range !3094, !noalias !20396, !noundef !1173
    #dbg_value(ptr %1, !3072, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !20382)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !20411 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !dbg !20411, !range !2157, !noalias !20396, !noundef !1173 ; 3 uses
  switch i8 %i.k, label %bb.d [
    i8 -1, label %_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder14build_from_nfa.exit.i
    i8 2, label %_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder14build_from_nfa.exit.i
  ], !dbg !20412

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !3067, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !20383)
    #dbg_value(ptr %1, !3059, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !20384)
    #dbg_value(ptr %1, !3051, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !20385)
    #dbg_value(ptr %1, !3095, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !20387)
  %i.l = load ptr, ptr %i.g, align 8, !dbg !20413, !noalias !20396, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.l, !3045, !DIExpression(), !20389)
    #dbg_value(ptr %i.l, !3083, !DIExpression(), !20378)
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !20414, !noalias !20397
    #dbg_value(i64 %i.m, !3052, !DIExpression(), !20390)
  %i.n = icmp slt i64 %i.m, 0, !dbg !20415
  br i1 %i.n, label %bb.f, label %bb.e, !dbg !20415

bb.e:                                             ; preds = %bb.d
  %i.o = load <2 x ptr>, ptr %i.g, align 8, !dbg !20416, !noalias !20396
  %i.p = load i8, ptr %i.j, align 8, !dbg !20417, !range !2675, !noalias !20396, !noundef !1173
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 464, !dbg !20417
  %i.r = load i64, ptr %i.q, align 8, !dbg !20417, !noalias !20396, !noundef !1173
  br label %_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder14build_from_nfa.exit.i, !dbg !20418

bb.f:                                             ; preds = %bb.d
  call void @llvm.trap(), !dbg !20419
  unreachable, !dbg !20419

_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder14build_from_nfa.exit.i: ; preds = %bb.c, %bb.e, %bb.c
  %.sroa.012.sroa.5.0.i.i = phi i64 [ undef, %bb.c ], [ %i.r, %bb.e ], [ undef, %bb.c ], !dbg !20420
  %.sroa.4.0.i.i = phi i8 [ %i.k, %bb.c ], [ %i.p, %bb.e ], [ %i.k, %bb.c ], !dbg !20421
  %i.s = phi <2 x ptr> [ undef, %bb.c ], [ %i.o, %bb.e ], [ undef, %bb.c ], !dbg !20420
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20422
  store ptr %i.f, ptr %i.t, align 8, !dbg !20422, !alias.scope !20397
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20422
  store <2 x ptr> %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !20422, !alias.scope !20397
  %.sroa.4.sroa.0.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20422
  store i64 %.sroa.012.sroa.5.0.i.i, ptr %.sroa.4.sroa.0.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !20422, !alias.scope !20397
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !20422
  store i8 %.sroa.4.0.i.i, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !20422, !alias.scope !20397
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !20422
  store i8 %i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !20422, !alias.scope !20397
  store i64 -2, ptr %0, align 8, !dbg !20422, !alias.scope !20397
  br label %_RINvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_7Builder10build_manyReEBb_.exit, !dbg !20408

_RINvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_7Builder10build_manyReEBb_.exit: ; preds = %bb.b, %_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder14build_from_nfa.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20423
  ret void, !dbg !20424
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder6syntax(ptr noalias nofree noundef returned align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !20426 {
bb.a:
    #dbg_value(ptr %0, !20443, !DIExpression(), !20446)
    #dbg_declare(ptr %1, !20444, !DIExpression(), !20447)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %1), !dbg !20448 ; 0 uses
  ret ptr %0, !dbg !20449
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder8thompson(ptr noalias nofree noundef returned align 8 dereferenceable(488) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !20450 {
bb.a:
    #dbg_value(ptr %0, !20454, !DIExpression(), !20457)
    #dbg_declare(ptr %1, !20455, !DIExpression(), !20458)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !20459 ; 0 uses
  ret ptr %0, !dbg !20460
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB4_7Builder9configure(ptr noalias nofree noundef returned align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20461 {
bb.a:
  %.sroa.8 = alloca [7 x i8], align 1             ; 5 uses
    #dbg_value(ptr %0, !20564, !DIExpression(), !20567)
    #dbg_declare(ptr %1, !20565, !DIExpression(), !20568)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !20637
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !20637 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20569), !dbg !20638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20570), !dbg !20638
    #dbg_declare(ptr poison, !20571, !DIExpression(DW_OP_LLVM_fragment, 200, 56), !20471)
    #dbg_value(ptr %i.a, !20587, !DIExpression(), !20472)
    #dbg_declare(ptr %1, !20588, !DIExpression(), !20473)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !20639
  %i.c = load i8, ptr %i.b, align 8, !dbg !20639, !range !3094, !alias.scope !20570, !noundef !1173 ; 6 uses
    #dbg_value(i8 %i.c, !20590, !DIExpression(), !20477)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480, !dbg !20640 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !dbg !20640, !range !3094, !alias.scope !20569, !noundef !1173 ; 3 uses
    #dbg_value(i8 poison, !20594, !DIExpression(), !20477)
    #dbg_value(ptr poison, !20571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20478)
  %i.f = load <2 x ptr>, ptr %1, align 8, !dbg !20641, !alias.scope !20570 ; 2 uses
    #dbg_value(ptr poison, !20571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20478)
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20641
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !20641, !alias.scope !20570 ; 2 uses
    #dbg_value(i64 %.sroa.512.0.copyload.i, !20571, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20478)
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !20641
  %.sroa.613.0.copyload.i = load i8, ptr %.sroa.613.0..sroa_idx.i, align 8, !dbg !20641, !alias.scope !20570 ; 3 uses
    #dbg_value(i8 %.sroa.613.0.copyload.i, !20571, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !20478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20597), !dbg !20642
    #dbg_value(ptr %i.a, !20581, !DIExpression(), !20481)
  %.not.i.i = icmp eq i8 %.sroa.613.0.copyload.i, -1, !dbg !20643
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit, !dbg !20644

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20598), !dbg !20645
    #dbg_value(ptr poison, !20599, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20486)
    #dbg_value(ptr %i.a, !20603, !DIExpression(), !20490)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472, !dbg !20646
  %i.h = load i8, ptr %i.g, align 8, !dbg !20646, !range !2157, !alias.scope !20606, !noundef !1173 ; 4 uses
  %.not.i.i.i = icmp eq i8 %i.h, -1, !dbg !20646
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30, label %bb.c, !dbg !20647

_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30: ; preds = %bb.b
  %.not.i35 = icmp eq i8 %i.c, 2, !dbg !20648
  %spec.store.select.i36 = select i1 %.not.i35, i8 %i.e, i8 %i.c, !dbg !20649
    #dbg_value(i8 %spec.store.select.i36, !20594, !DIExpression(), !20477)
    #dbg_value(ptr %i.a, !2146, !DIExpression(), !20492)
    #dbg_value(ptr %i.a, !2151, !DIExpression(), !20494)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472, !dbg !20650
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit, !dbg !20650

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.a, !20604, !DIExpression(), !20495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20607), !dbg !20651
    #dbg_value(ptr %i.a, !20608, !DIExpression(), !20501)
  %.not.i.i.i.i = icmp eq i8 %i.h, 2, !dbg !20652
  br i1 %.not.i.i.i.i, label %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread, label %bb.d, !dbg !20653

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !20609, !DIExpression(), !20502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20611), !dbg !20654
    #dbg_value(ptr %i.a, !20612, !DIExpression(), !20507)
    #dbg_value(i64 1, !20614, !DIExpression(), !20513)
    #dbg_value(i8 0, !20616, !DIExpression(), !20513)
    #dbg_value(i64 1, !20621, !DIExpression(), !20516)
    #dbg_value(i8 0, !20623, !DIExpression(), !20516)
    #dbg_value(ptr %i.a, !20618, !DIExpression(), !20517)
    #dbg_value(ptr %i.a, !20625, !DIExpression(), !20520)
  %i.j = load ptr, ptr %i.a, align 8, !dbg !20655, !alias.scope !20627, !nonnull !1173, !noundef !1173 ; 2 uses
    #dbg_value(ptr %i.j, !20615, !DIExpression(), !20523)
    #dbg_value(ptr %i.j, !20622, !DIExpression(), !20516)
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !dbg !20656, !noalias !20628
    #dbg_value(i64 %i.k, !20619, !DIExpression(), !20530)
  %i.l = icmp slt i64 %i.k, 0, !dbg !20657
  br i1 %i.l, label %bb.e, label %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, !dbg !20657

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !20658
  unreachable, !dbg !20658

_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 456, !dbg !20655
  %3 = load ptr, ptr %2, align 8, !dbg !20659, !alias.scope !20627, !nonnull !1173, !align !3098, !noundef !1173
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 464, !dbg !20660
  %i.n = load i64, ptr %i.m, align 8, !dbg !20660, !alias.scope !20627, !noundef !1173
  %4 = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %3, i64 1
  br label %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread, !dbg !20661

_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread: ; preds = %bb.c, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.6.1.i.ph = phi i64 [ %i.n, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.c ]
  %i.o = phi <2 x ptr> [ %5, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.c ]
  %.not.i18 = icmp eq i8 %i.c, 2, !dbg !20648
  %spec.store.select.i19 = select i1 %.not.i18, i8 %i.e, i8 %i.c, !dbg !20649
    #dbg_value(i8 %spec.store.select.i19, !20594, !DIExpression(), !20477)
    #dbg_value(ptr %i.a, !2146, !DIExpression(), !20492)
    #dbg_value(ptr %i.a, !2151, !DIExpression(), !20494)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472, !dbg !20650
  br label %bb.f, !dbg !20650

_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit: ; preds = %bb.a
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 25, !dbg !20641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.814.0..sroa_idx.i, i64 7, i1 false), !dbg !20662, !noalias !20569
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !dbg !20650, !range !2157, !alias.scope !20629 ; 2 uses
  %.not.i = icmp eq i8 %i.c, 2, !dbg !20648
  %spec.store.select.i = select i1 %.not.i, i8 %i.e, i8 %i.c, !dbg !20649 ; 2 uses
    #dbg_value(i8 %spec.store.select.i, !20594, !DIExpression(), !20477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20630), !dbg !20663
    #dbg_value(ptr %i.a, !2146, !DIExpression(), !20492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20631), !dbg !20664
    #dbg_value(ptr %i.a, !2151, !DIExpression(), !20494)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 472, !dbg !20650 ; 2 uses
  %i.r = icmp eq i8 %.pre, -1, !dbg !20650
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit, label %bb.f, !dbg !20650

bb.f:                                             ; preds = %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit
  %i.s = phi ptr [ %i.p, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread ], [ %i.q, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ] ; 4 uses
  %spec.store.select.i28 = phi i8 [ %spec.store.select.i19, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread ], [ %spec.store.select.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ] ; 4 uses
  %.sroa.6.1.i22 = phi i64 [ %.sroa.6.1.i.ph, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread ], [ %.sroa.512.0.copyload.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ] ; 4 uses
  %.sroa.7.0.i20 = phi i8 [ %i.h, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread ], [ %.sroa.613.0.copyload.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ] ; 4 uses
  %i.t = phi i8 [ %i.h, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread ], [ %.pre, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ]
  %i.u = phi <2 x ptr> [ %i.o, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread ], [ %i.f, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20632), !dbg !20650
    #dbg_value(ptr %i.a, !2159, !DIExpression(), !20538)
  %i.v = icmp eq i8 %i.t, 2, !dbg !20665
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit, label %bb.g, !dbg !20665

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20633), !dbg !20665
    #dbg_value(ptr %i.a, !2164, !DIExpression(), !20542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20634), !dbg !20666
    #dbg_value(ptr %i.a, !2169, !DIExpression(), !20546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20635), !dbg !20667
    #dbg_value(ptr %i.a, !2176, !DIExpression(), !20550)
    #dbg_value(ptr %i.a, !2179, !DIExpression(), !20552)
    #dbg_value(i64 1, !2189, !DIExpression(), !20554)
    #dbg_value(i8 1, !2195, !DIExpression(), !20554)
    #dbg_value(i64 1, !2197, !DIExpression(), !20556)
    #dbg_value(i8 1, !2202, !DIExpression(), !20556)
  %i.w = load ptr, ptr %i.a, align 8, !dbg !20668, !alias.scope !20636, !nonnull !1173, !noundef !1173
    #dbg_value(ptr %i.w, !2194, !DIExpression(), !20558)
    #dbg_value(ptr %i.w, !2201, !DIExpression(), !20556)
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !dbg !20669, !noalias !20636
  %i.y = icmp eq i64 %i.x, 1, !dbg !20670
  br i1 %i.y, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit, !dbg !20670

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !2211, !DIExpression(), !20560)
  fence acquire, !dbg !20671
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit unwind label %bb.i, !dbg !20672

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = extractelement <2 x ptr> %i.u, i64 0, !dbg !20663
  store ptr %i.aa, ptr %i.a, align 8, !dbg !20663
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456, !dbg !20663
  %i.ab = extractelement <2 x ptr> %i.u, i64 1, !dbg !20663
  store ptr %i.ab, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20663
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464, !dbg !20663
  store i64 %.sroa.6.1.i22, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !20663
  store i8 %.sroa.7.0.i20, ptr %i.s, align 8, !dbg !20663
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 473, !dbg !20663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false), !dbg !20663
  store i8 %spec.store.select.i28, ptr %i.d, align 8, !dbg !20663
  resume { ptr, i32 } %i.z, !dbg !20673

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit: ; preds = %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30, %bb.g, %bb.f, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit, %bb.h
  %i.ac = phi ptr [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.q, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ], [ %i.s, %bb.h ], [ %i.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30 ]
  %spec.store.select.i29 = phi i8 [ %spec.store.select.i28, %bb.g ], [ %spec.store.select.i28, %bb.f ], [ %spec.store.select.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ], [ %spec.store.select.i28, %bb.h ], [ %spec.store.select.i36, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30 ]
  %.sroa.6.1.i23 = phi i64 [ %.sroa.6.1.i22, %bb.g ], [ %.sroa.6.1.i22, %bb.f ], [ %.sroa.512.0.copyload.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ], [ %.sroa.6.1.i22, %bb.h ], [ undef, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30 ]
  %.sroa.7.0.i21 = phi i8 [ %.sroa.7.0.i20, %bb.g ], [ %.sroa.7.0.i20, %bb.f ], [ %.sroa.613.0.copyload.i, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ], [ %.sroa.7.0.i20, %bb.h ], [ -1, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30 ]
  %i.ad = phi <2 x ptr> [ %i.u, %bb.g ], [ %i.u, %bb.f ], [ %i.f, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit ], [ %i.u, %bb.h ], [ undef, %_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config9overwrite.exit.thread30 ]
  store <2 x ptr> %i.ad, ptr %i.a, align 8, !dbg !20663
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 464, !dbg !20663
  store i64 %.sroa.6.1.i23, ptr %.sroa.6.0..sroa_idx5, align 8, !dbg !20663
  store i8 %.sroa.7.0.i21, ptr %i.ac, align 8, !dbg !20663
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 473, !dbg !20663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false), !dbg !20663
  store i8 %spec.store.select.i29, ptr %i.d, align 8, !dbg !20663
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !20674
  ret ptr %0, !dbg !20675
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize14add_nfa_states(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20679 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
    #dbg_value(ptr poison, !20749, !DIExpression(), !20757)
    #dbg_value(ptr poison, !20758, !DIExpression(), !20760)
    #dbg_value(ptr %0, !20742, !DIExpression(), !20761)
    #dbg_value(ptr %0, !20762, !DIExpression(), !20766)
    #dbg_value(ptr %0, !20767, !DIExpression(), !20770)
    #dbg_value(ptr %1, !20743, !DIExpression(), !20761)
    #dbg_value(ptr %2, !20744, !DIExpression(), !20761)
    #dbg_value(ptr %2, !20771, !DIExpression(), !20784)
    #dbg_value(ptr %2, !20785, !DIExpression(), !20791)
    #dbg_value(ptr %2, !20792, !DIExpression(), !20801)
    #dbg_value(ptr %2, !20785, !DIExpression(), !20803)
    #dbg_declare(ptr %i.c, !20747, !DIExpression(), !20804)
    #dbg_value(i64 1, !20805, !DIExpression(), !20809)
    #dbg_declare(ptr poison, !20798, !DIExpression(), !20810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20811), !dbg !20859
    #dbg_value(ptr %1, !3674, !DIExpression(), !20696)
    #dbg_value(ptr %1, !3679, !DIExpression(), !20698)
    #dbg_value(i64 0, !3681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20703)
    #dbg_value(i64 0, !3705, !DIExpression(), !20705)
    #dbg_value(ptr %1, !3701, !DIExpression(), !20706)
    #dbg_value(ptr %1, !3708, !DIExpression(), !20708)
    #dbg_value(ptr %1, !3710, !DIExpression(), !20710)
    #dbg_value(ptr %1, !3712, !DIExpression(), !20712)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !20860
  %i.e = load i64, ptr %i.d, align 8, !dbg !20860, !alias.scope !20811, !noundef !1173 ; 4 uses
    #dbg_value(i64 %i.e, !3702, !DIExpression(), !20713)
    #dbg_value(i64 %i.e, !3695, !DIExpression(), !20714)
    #dbg_value(i64 %i.e, !3689, !DIExpression(), !20715)
    #dbg_value(i64 %i.e, !3681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20703)
    #dbg_value(i64 %i.e, !3685, !DIExpression(), !20703)
    #dbg_value(i64 %i.e, !3706, !DIExpression(), !20705)
    #dbg_value(i64 %i.e, !3714, !DIExpression(), !20718)
    #dbg_value(i64 %i.e, !3724, !DIExpression(), !20720)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20861
  %i.g = load i64, ptr %i.f, align 8, !dbg !20861, !alias.scope !20811, !noundef !1173 ; 2 uses
    #dbg_value(ptr poison, !3694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20714)
    #dbg_value(ptr poison, !3690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20715)
    #dbg_value(ptr poison, !3684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20703)
    #dbg_value(i64 %i.g, !3694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20714)
    #dbg_value(i64 %i.g, !3690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20715)
    #dbg_value(i64 %i.g, !3684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20703)
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit, !dbg !20862, !prof !2846

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #27, !dbg !20863, !noalias !20811
  unreachable, !dbg !20863

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20864
  %i.i = load ptr, ptr %i.h, align 8, !dbg !20864, !alias.scope !20811, !nonnull !1173, !noundef !1173 ; 2 uses
    #dbg_value(ptr %i.i, !3694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20714)
    #dbg_value(ptr %i.i, !3690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20715)
    #dbg_value(ptr %i.i, !3684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20703)
    #dbg_value(ptr %i.i, !3722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20724)
    #dbg_value(ptr %i.i, !3718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20725)
    #dbg_value(i64 %i.e, !3722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20724)
    #dbg_value(i64 %i.e, !3718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20725)
    #dbg_value(ptr %i.i, !3719, !DIExpression(), !20726)
    #dbg_value(ptr %i.i, !3727, !DIExpression(), !20720)
  %.idx = shl nuw nsw i64 %i.e, 2, !dbg !20865
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx, !dbg !20865
    #dbg_value(ptr %i.i, !20745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20812)
    #dbg_value(ptr %i.j, !20745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20812)
    #dbg_value(ptr undef, !20758, !DIExpression(), !20760)
    #dbg_value(ptr undef, !20749, !DIExpression(), !20757)
    #dbg_value(ptr %i.i, !20750, !DIExpression(), !20813)
    #dbg_value(ptr %i.i, !20806, !DIExpression(), !20809)
    #dbg_value(ptr %i.j, !20751, !DIExpression(), !20814)
    #dbg_value(ptr poison, !20815, !DIExpression(), !20819)
    #dbg_value(ptr poison, !20816, !DIExpression(), !20820)
  %i.k = icmp eq i64 %i.e, 0, !dbg !20866
  br i1 %i.k, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph, !dbg !20818

.lr.ph:                                           ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.l = load ptr, ptr %0, align 8, !nonnull !1173, !noundef !1173 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  br label %bb.c, !dbg !20818

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.024 = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %bb.k ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 4, !dbg !20867 ; 2 uses
    #dbg_value(ptr %i.o, !20745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20812)
    #dbg_value(ptr %.sroa.0.024, !20821, !DIExpression(), !20825)
  %i.p = load i32, ptr %.sroa.0.024, align 4, !dbg !20868, !noundef !1173 ; 8 uses
    #dbg_value(i32 %i.p, !20746, !DIExpression(), !20826)
    #dbg_value(i32 %i.p, !20763, !DIExpression(), !20766)
    #dbg_value(i32 %i.p, !20827, !DIExpression(), !20831)
    #dbg_value(ptr %i.l, !20832, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !20835)
    #dbg_value(ptr %i.l, !20836, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !20839)
    #dbg_value(ptr %i.l, !20840, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !20843)
  %i.q = load i64, ptr %i.m, align 16, !dbg !20869, !noundef !1173 ; 2 uses
    #dbg_value(ptr poison, !20828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20831)
    #dbg_value(i64 %i.q, !20828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20831)
    #dbg_value(ptr poison, !20844, !DIExpression(), !20847)
    #dbg_value(ptr poison, !20848, !DIExpression(), !20851)
  %i.r = zext i32 %i.p to i64, !dbg !20870        ; 3 uses
  %i.s = icmp ugt i64 %i.q, %i.r, !dbg !20871
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !20871
end_hunk_0
