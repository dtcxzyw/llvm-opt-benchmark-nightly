Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.03?download=true
inline.NumInlined: 158
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata:bb.a
  %i.g = icmp sgt i8 %i.f, -1, !dbg !2207
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26, !dbg !2207

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26: ; preds = %bb.b
  %i.h = and i8 %i.f, 31, !dbg !2208
  %i.i = zext nneg i8 %i.h to i32, !dbg !2208     ; 3 uses
    #dbg_value(i32 %i.i, !2125, !DIExpression(), !2209)
    #dbg_value(i32 %i.i, !2210, !DIExpression(), !2216)
    #dbg_value(ptr %0, !2148, !DIExpression(), !2218)
    #dbg_value(i64 1, !2174, !DIExpression(), !2220)
    #dbg_value(ptr %i.e, !2166, !DIExpression(), !2222)
    #dbg_value(ptr %i.e, !2180, !DIExpression(), !2220)
    #dbg_value(ptr %i.c, !2168, !DIExpression(), !2223)
    #dbg_value(ptr poison, !2190, !DIExpression(), !2224)
    #dbg_value(ptr poison, !2197, !DIExpression(), !2226)
  %i.j = icmp ne ptr %i.e, %i.c, !dbg !2227
  tail call void @llvm.assume(i1 %i.j), !dbg !2228
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !2229 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !dbg !2230, !alias.scope !2231
  %i.l = load i8, ptr %i.e, align 1, !dbg !2234, !noundef !22
    #dbg_value(i8 %i.l, !2127, !DIExpression(), !2235)
    #dbg_value(i8 %i.l, !2215, !DIExpression(), !2216)
  %i.m = shl nuw nsw i32 %i.i, 6, !dbg !2236
  %i.n = and i8 %i.l, 63, !dbg !2237
  %i.o = zext nneg i8 %i.n to i32, !dbg !2237     ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o, !dbg !2236
    #dbg_value(i32 %i.p, !2129, !DIExpression(), !2238)
  %i.q = icmp samesign ugt i8 %i.f, -33, !dbg !2239
  br i1 %i.q, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2239

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.f to i32, !dbg !2240
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2241

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26
    #dbg_value(ptr %0, !2148, !DIExpression(), !2244)
    #dbg_value(i64 1, !2174, !DIExpression(), !2246)
    #dbg_value(ptr %i.k, !2166, !DIExpression(), !2248)
    #dbg_value(ptr %i.k, !2180, !DIExpression(), !2246)
    #dbg_value(ptr %i.c, !2168, !DIExpression(), !2249)
    #dbg_value(ptr poison, !2190, !DIExpression(), !2250)
    #dbg_value(ptr poison, !2197, !DIExpression(), !2252)
  %i.s = icmp ne ptr %i.k, %i.c, !dbg !2253
  tail call void @llvm.assume(i1 %i.s), !dbg !2254
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3, !dbg !2255 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !dbg !2256, !alias.scope !2257
  %i.u = load i8, ptr %i.k, align 1, !dbg !2260, !noundef !22
    #dbg_value(i8 %i.u, !2131, !DIExpression(), !2261)
    #dbg_value(i8 %i.u, !2215, !DIExpression(), !2262)
    #dbg_value(i32 %i.o, !2210, !DIExpression(), !2262)
  %i.v = shl nuw nsw i32 %i.o, 6, !dbg !2264
  %i.w = and i8 %i.u, 63, !dbg !2265
  %i.x = zext nneg i8 %i.w to i32, !dbg !2265
  %i.y = or disjoint i32 %i.v, %i.x, !dbg !2264   ; 2 uses
    #dbg_value(i32 %i.y, !2133, !DIExpression(), !2266)
    #dbg_value(i32 %i.y, !2210, !DIExpression(), !2267)
  %i.z = shl nuw nsw i32 %i.i, 12, !dbg !2269
  %i.aa = or disjoint i32 %i.y, %i.z, !dbg !2270
    #dbg_value(i32 %i.aa, !2129, !DIExpression(), !2238)
  %i.ab = icmp samesign ugt i8 %i.f, -17, !dbg !2271
  br i1 %i.ab, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2271

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28
    #dbg_value(ptr %0, !2148, !DIExpression(), !2272)
    #dbg_value(i64 1, !2174, !DIExpression(), !2274)
    #dbg_value(ptr %i.t, !2166, !DIExpression(), !2276)
    #dbg_value(ptr %i.t, !2180, !DIExpression(), !2274)
    #dbg_value(ptr %i.c, !2168, !DIExpression(), !2277)
    #dbg_value(ptr poison, !2190, !DIExpression(), !2278)
    #dbg_value(ptr poison, !2197, !DIExpression(), !2280)
  %i.ac = icmp ne ptr %i.t, %i.c, !dbg !2281
  tail call void @llvm.assume(i1 %i.ac), !dbg !2282
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !2283
  store ptr %i.ad, ptr %0, align 8, !dbg !2284, !alias.scope !2285
  %i.ae = load i8, ptr %i.t, align 1, !dbg !2288, !noundef !22
    #dbg_value(i8 %i.ae, !2135, !DIExpression(), !2289)
    #dbg_value(i8 %i.ae, !2215, !DIExpression(), !2267)
  %i.af = shl nuw nsw i32 %i.i, 18, !dbg !2290
  %i.ag = and i32 %i.af, 1835008, !dbg !2290
  %i.ah = shl nuw nsw i32 %i.y, 6, !dbg !2291
  %i.ai = and i8 %i.ae, 63, !dbg !2292
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !2292
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !2291
  %i.al = or disjoint i32 %i.ak, %i.ag, !dbg !2293
    #dbg_value(i32 %i.al, !2129, !DIExpression(), !2238)
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2294

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.a, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28, %bb.c
  %.sroa.4.0 = phi i32 [ %i.r, %bb.c ], [ %i.p, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26 ], [ %i.al, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30 ], [ %i.aa, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28 ], [ undef, %bb.a ], !dbg !2139
  %.sroa.0.0 = phi i32 [ 1, %bb.c ], [ 1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit26 ], [ 1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit30 ], [ 1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit28 ], [ 0, %bb.a ], !dbg !2139
  %i.am = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !2295
  %i.an = insertvalue { i32, i32 } %i.am, i32 %.sroa.4.0, 1, !dbg !2295
  ret { i32, i32 } %i.an, !dbg !2295
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapper7onepassNtNtB7_7onepass3DFANtB5_10Remappable5remapNCINvMB5_NtB5_8Remapper5remapBY_E0EB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2296 {
bb.a:
    #dbg_value(ptr %0, !2311, !DIExpression(), !2315)
    #dbg_value(ptr %1, !2312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2315)
    #dbg_value(ptr %2, !2312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316), !dbg !2319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320), !dbg !2319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322), !dbg !2319
    #dbg_value(ptr poison, !2324, !DIExpression(), !2334)
    #dbg_value(ptr poison, !2354, !DIExpression(), !2394)
    #dbg_value(ptr poison, !2366, !DIExpression(), !2395)
    #dbg_value(ptr poison, !2324, !DIExpression(), !2396)
    #dbg_value(ptr poison, !2354, !DIExpression(), !2403)
    #dbg_value(ptr poison, !2366, !DIExpression(), !2404)
    #dbg_value(ptr poison, !2324, !DIExpression(), !2405)
    #dbg_value(ptr poison, !2354, !DIExpression(), !2410)
    #dbg_value(ptr poison, !2366, !DIExpression(), !2411)
    #dbg_value(ptr %1, !2377, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2412)
    #dbg_value(ptr %2, !2377, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2412)
    #dbg_value(ptr %0, !2376, !DIExpression(), !2412)
    #dbg_value(ptr %0, !2413, !DIExpression(), !2420)
    #dbg_value(ptr %0, !2422, !DIExpression(), !2426)
    #dbg_value(ptr %0, !2422, !DIExpression(), !2428)
    #dbg_value(i64 1, !2430, !DIExpression(), !2437)
    #dbg_value(i64 1, !2439, !DIExpression(), !2471)
    #dbg_value(i64 1, !2430, !DIExpression(), !2473)
    #dbg_value(i64 1, !2439, !DIExpression(), !2476)
    #dbg_value(i64 1, !2430, !DIExpression(), !2479)
    #dbg_value(i64 1, !2439, !DIExpression(), !2482)
    #dbg_value(ptr %0, !2485, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2493)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2495
  %i.b = load i64, ptr %i.a, align 8, !dbg !2495, !alias.scope !2316, !noalias !2496, !noundef !22 ; 4 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976, !dbg !2497
  tail call void @llvm.assume(i1 %i.c), !dbg !2498
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !2499
  %i.e = load i64, ptr %i.d, align 8, !dbg !2499, !alias.scope !2316, !noalias !2496, !noundef !22
  %i.f = and i64 %i.e, 63, !dbg !2500             ; 2 uses
  %i.g = lshr i64 %i.b, %i.f, !dbg !2500          ; 2 uses
    #dbg_value(i64 0, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2501)
    #dbg_value(i64 %i.g, !2378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2501)
    #dbg_value(ptr undef, !2366, !DIExpression(), !2411)
    #dbg_value(ptr undef, !2354, !DIExpression(), !2410)
    #dbg_value(ptr undef, !2324, !DIExpression(), !2405)
    #dbg_value(ptr undef, !2333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2502)
  %.not.i = icmp eq i64 %i.g, 0, !dbg !2503
  br i1 %.not.i, label %._crit_edge.split.i, label %.lr.ph62.i, !dbg !2504

.lr.ph62.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2316, !noalias !2496, !noundef !22 ; 2 uses
  %.not67.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2316, !noalias !2496, !nonnull !22
  %i.l = load i64, ptr %2, align 8, !alias.scope !2322, !noalias !2505
  %i.m = and i64 %i.l, 63
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2320, !noalias !2506 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2320, !noalias !2506, !nonnull !22
  br i1 %.not67.i, label %._crit_edge.split.i, label %.lr.ph.i, !dbg !2507

..loopexit_crit_edge.i:                           ; preds = %_RNCINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit54.i
    #dbg_value(i64 %i.ac, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2501)
    #dbg_value(ptr undef, !2366, !DIExpression(), !2411)
    #dbg_value(ptr undef, !2354, !DIExpression(), !2410)
    #dbg_value(ptr undef, !2324, !DIExpression(), !2405)
    #dbg_value(ptr undef, !2333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2502)
  %exitcond76.not.i.a = icmp eq i64 %i.ac, %i.g, !dbg !2503
  br i1 %exitcond76.not.i.a, label %._crit_edge.split.i, label %.lr.ph.i, !dbg !2504

._crit_edge.split.i:                              ; preds = %..loopexit_crit_edge.i, %.lr.ph62.i, %bb.a
    #dbg_value(ptr %0, !2508, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !2514)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2516
  %i.s = load i64, ptr %i.r, align 8, !dbg !2516, !alias.scope !2316, !noalias !2496, !noundef !22 ; 3 uses
  %i.t = icmp ult i64 %i.s, 2305843009213693952, !dbg !2517
  tail call void @llvm.assume(i1 %i.t), !dbg !2518
    #dbg_value(i64 0, !2390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2519)
    #dbg_value(i64 %i.s, !2390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2519)
    #dbg_value(ptr undef, !2366, !DIExpression(), !2395)
    #dbg_value(ptr undef, !2354, !DIExpression(), !2394)
    #dbg_value(ptr undef, !2324, !DIExpression(), !2334)
    #dbg_value(ptr undef, !2333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2520)
  %.not68.i = icmp eq i64 %i.s, 0, !dbg !2521
  br i1 %.not68.i, label %_RINvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB6_3DFA5remapNCINvMNtB8_8remapperNtB1b_8Remapper5remapBQ_E0EBa_.exit, label %.lr.ph65.i, !dbg !2522

.lr.ph65.i:                                       ; preds = %._crit_edge.split.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2316, !noalias !2496, !nonnull !22, !noundef !22
  %i.w = load i64, ptr %2, align 8, !alias.scope !2322, !noalias !2505, !noundef !22
  %i.x = and i64 %i.w, 63
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2320, !noalias !2506, !noundef !22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2320, !noalias !2506, !nonnull !22
  br label %bb.b, !dbg !2522

.lr.ph.i:                                         ; preds = %.lr.ph62.i, %..loopexit_crit_edge.i
  %.sroa.0.061.i = phi i64 [ %i.ac, %..loopexit_crit_edge.i ], [ 0, %.lr.ph62.i ] ; 2 uses
    #dbg_value(i64 %.sroa.0.061.i, !2355, !DIExpression(), !2523)
    #dbg_value(i64 %.sroa.0.061.i, !2436, !DIExpression(), !2437)
    #dbg_value(i64 %.sroa.0.061.i, !2470, !DIExpression(), !2471)
  %i.ac = add nuw nsw i64 %.sroa.0.061.i, 1, !dbg !2524 ; 2 uses
    #dbg_value(i64 %i.ac, !2378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2501)
    #dbg_value(i64 %.sroa.0.061.i, !2380, !DIExpression(), !2525)
  %i.ad = shl i64 %.sroa.0.061.i, %i.f, !dbg !2526
    #dbg_value(i64 %i.ad, !2382, !DIExpression(), !2527)
    #dbg_value(i64 0, !2384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2528)
    #dbg_value(i64 %i.i, !2384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2528)
    #dbg_value(ptr undef, !2366, !DIExpression(), !2404)
    #dbg_value(ptr undef, !2354, !DIExpression(), !2403)
    #dbg_value(ptr undef, !2324, !DIExpression(), !2396)
    #dbg_value(ptr undef, !2333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2529)
  br label %bb.e, !dbg !2507

bb.b:                                             ; preds = %bb.d, %.lr.ph65.i
  %.sroa.09.063.i = phi i64 [ 0, %.lr.ph65.i ], [ %i.aj, %bb.d ] ; 2 uses
    #dbg_value(i64 %.sroa.09.063.i, !2359, !DIExpression(), !2530)
    #dbg_value(i64 %.sroa.09.063.i, !2436, !DIExpression(), !2479)
    #dbg_value(i64 %.sroa.09.063.i, !2470, !DIExpression(), !2482)
    #dbg_value(i64 %.sroa.09.063.i, !2390, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2519)
    #dbg_value(i64 %.sroa.09.063.i, !2391, !DIExpression(), !2531)
    #dbg_value(i64 %.sroa.09.063.i, !2532, !DIExpression(), !2542)
    #dbg_value(i64 %.sroa.09.063.i, !2544, !DIExpression(), !2562)
    #dbg_value(i64 %.sroa.09.063.i, !2565, !DIExpression(), !2572)
    #dbg_value(ptr %0, !2539, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !2575)
    #dbg_value(i64 %i.s, !2556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2562)
    #dbg_value(i64 %i.s, !2571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2572)
    #dbg_value(ptr %i.v, !2556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2562)
    #dbg_value(ptr %i.v, !2571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2572)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.09.063.i, !dbg !2576 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !dbg !2577, !noalias !2578, !noundef !22
    #dbg_value(ptr poison, !2579, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !2589)
    #dbg_value(ptr poison, !2586, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !2589)
    #dbg_value(i32 %i.af, !2585, !DIExpression(), !2589)
    #dbg_value(ptr %1, !2591, !DIExpression(), !2595)
    #dbg_value(ptr %2, !2597, !DIExpression(), !2604)
    #dbg_value(i32 %i.af, !2603, !DIExpression(), !2604)
    #dbg_value(ptr poison, !2606, !DIExpression(), !2613)
    #dbg_value(ptr poison, !2615, !DIExpression(), !2622)
  %i.ag = zext i32 %i.af to i64, !dbg !2624
  %i.ah = lshr i64 %i.ag, %i.x, !dbg !2625        ; 3 uses
    #dbg_value(i64 %i.ah, !2594, !DIExpression(), !2595)
    #dbg_value(i64 %i.ah, !2626, !DIExpression(), !2630)
    #dbg_value(i64 %i.ah, !2632, !DIExpression(), !2636)
    #dbg_value(ptr poison, !2629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2630)
    #dbg_value(ptr poison, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2636)
    #dbg_value(i64 %i.z, !2629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2630)
    #dbg_value(i64 %i.z, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2636)
  %i.ai = icmp ult i64 %i.ah, %i.z, !dbg !2638
  br i1 %i.ai, label %bb.d, label %bb.c, !dbg !2638

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !dbg !2638, !noalias !2578
  unreachable, !dbg !2638

bb.d:                                             ; preds = %bb.b
  %i.aj = add nuw nsw i64 %.sroa.09.063.i, 1, !dbg !2639 ; 2 uses
    #dbg_value(i64 %i.aj, !2390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2519)
    #dbg_value(ptr %i.ab, !2629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2630)
    #dbg_value(ptr %i.ab, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2636)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ah, !dbg !2640
  %i.al = load i32, ptr %i.ak, align 4, !dbg !2641, !noalias !2578, !noundef !22
  store i32 %i.al, ptr %i.ae, align 4, !dbg !2642, !noalias !2578
    #dbg_value(ptr undef, !2366, !DIExpression(), !2395)
    #dbg_value(ptr undef, !2354, !DIExpression(), !2394)
    #dbg_value(ptr undef, !2324, !DIExpression(), !2334)
    #dbg_value(ptr undef, !2333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2520)
  %exitcond77.not.i = icmp eq i64 %i.aj, %i.s, !dbg !2521
  br i1 %exitcond77.not.i, label %_RINvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB6_3DFA5remapNCINvMNtB8_8remapperNtB1b_8Remapper5remapBQ_E0EBa_.exit, label %bb.b, !dbg !2522

bb.e:                                             ; preds = %_RNCINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit54.i, %.lr.ph.i
  %.sroa.04.060.i = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %_RNCINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit54.i ] ; 2 uses
    #dbg_value(i64 %.sroa.04.060.i, !2357, !DIExpression(), !2643)
    #dbg_value(i64 %.sroa.04.060.i, !2436, !DIExpression(), !2473)
    #dbg_value(i64 %.sroa.04.060.i, !2470, !DIExpression(), !2476)
  %i.am = add nuw nsw i64 %.sroa.04.060.i, 1, !dbg !2644 ; 2 uses
    #dbg_value(i64 %i.am, !2384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2528)
    #dbg_value(i64 %.sroa.04.060.i, !2386, !DIExpression(), !2645)
    #dbg_value(ptr %0, !2646, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2654)
  %i.an = add nuw nsw i64 %.sroa.04.060.i, %i.ad, !dbg !2656 ; 3 uses
    #dbg_value(i64 %i.an, !2652, !DIExpression(), !2657)
    #dbg_value(i64 %i.an, !2658, !DIExpression(), !2674)
    #dbg_value(i64 %i.an, !2676, !DIExpression(), !2682)
    #dbg_value(ptr poison, !2668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2674)
    #dbg_value(ptr poison, !2681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2682)
    #dbg_value(i64 %i.b, !2668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2674)
    #dbg_value(i64 %i.b, !2681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2682)
  %3 = icmp ult i64 %i.an, %i.b, !dbg !2684
  br i1 %3, label %bb.f, label %bb.h, !dbg !2684

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.k, !2668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2674)
    #dbg_value(ptr %i.k, !2681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2682)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.an, !dbg !2685 ; 2 uses
    #dbg_value(ptr %i.ao, !2686, !DIExpression(), !2692)
    #dbg_value(i64 poison, !2388, !DIExpression(DW_OP_constu, 43, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2694)
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !2695, !noalias !2578, !noundef !22 ; 2 uses
    #dbg_value(i64 %i.ap, !2388, !DIExpression(DW_OP_constu, 43, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2694)
  %i.aq = lshr i64 %i.ap, 43, !dbg !2696
    #dbg_value(i64 %i.aq, !2388, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2694)
    #dbg_value(ptr %i.ao, !2697, !DIExpression(), !2705)
    #dbg_value(ptr poison, !2579, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !2707)
    #dbg_value(ptr poison, !2586, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !2707)
    #dbg_value(i64 %i.aq, !2585, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2707)
    #dbg_value(ptr %1, !2591, !DIExpression(), !2709)
    #dbg_value(ptr %2, !2597, !DIExpression(), !2711)
    #dbg_value(i64 %i.aq, !2603, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2711)
    #dbg_value(ptr poison, !2606, !DIExpression(), !2713)
    #dbg_value(ptr poison, !2615, !DIExpression(), !2715)
  %i.ar = lshr i64 %i.aq, %i.m, !dbg !2717        ; 3 uses
    #dbg_value(i64 %i.ar, !2594, !DIExpression(), !2709)
    #dbg_value(i64 %i.ar, !2626, !DIExpression(), !2718)
    #dbg_value(i64 %i.ar, !2632, !DIExpression(), !2720)
    #dbg_value(ptr poison, !2629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2718)
    #dbg_value(ptr poison, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2720)
    #dbg_value(i64 %i.o, !2629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2718)
    #dbg_value(i64 %i.o, !2635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2720)
  %i.as = icmp ult i64 %i.ar, %i.o, !dbg !2722
  br i1 %i.as, label %_RNCINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit54.i, label %bb.g, !dbg !2722

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !dbg !2722, !noalias !2578
  unreachable, !dbg !2722

_RNCINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit54.i: ; preds = %bb.f
    #dbg_value(ptr %i.q, !2629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2718)
    #dbg_value(ptr %i.q, !2635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2720)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ar, !dbg !2723
  %i.au = load i32, ptr %i.at, align 4, !dbg !2724, !noalias !2578, !noundef !22
    #dbg_value(i32 %i.au, !2704, !DIExpression(), !2705)
    #dbg_value(i64 %i.ap, !2725, !DIExpression(DW_OP_constu, 4398046511104, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2737)
    #dbg_value(i32 %i.au, !2731, !DIExpression(), !2737)
    #dbg_value(i64 %i.ap, !2732, !DIExpression(DW_OP_constu, 4398046511103, DW_OP_and, DW_OP_stack_value), !2737)
    #dbg_value(i64 %i.ap, !2733, !DIExpression(DW_OP_constu, 4398046511104, DW_OP_and, DW_OP_stack_value), !2739)
    #dbg_value(ptr poison, !2740, !DIExpression(), !2746)
    #dbg_value(ptr poison, !2748, !DIExpression(), !2754)
  %i.av = zext i32 %i.au to i64, !dbg !2756
  %i.aw = shl i64 %i.av, 43, !dbg !2757
    #dbg_value(i64 %i.aw, !2735, !DIExpression(), !2758)
  %i.ax = and i64 %i.ap, 8796093022207, !dbg !2759
  %i.ay = or disjoint i64 %i.aw, %i.ax, !dbg !2759
  store i64 %i.ay, ptr %i.ao, align 8, !dbg !2760, !noalias !2578
    #dbg_value(i64 %i.am, !2384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2528)
    #dbg_value(ptr undef, !2366, !DIExpression(), !2404)
    #dbg_value(ptr undef, !2354, !DIExpression(), !2403)
    #dbg_value(ptr undef, !2324, !DIExpression(), !2396)
    #dbg_value(ptr undef, !2333, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2529)
  %exitcond75.not.i = icmp eq i64 %i.am, %i.i, !dbg !2761
  br i1 %exitcond75.not.i, label %..loopexit_crit_edge.i, label %bb.e, !dbg !2507

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !dbg !2684, !noalias !2578
  unreachable, !dbg !2684

_RINvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB6_3DFA5remapNCINvMNtB8_8remapperNtB1b_8Remapper5remapBQ_E0EBa_.exit: ; preds = %bb.d, %._crit_edge.split.i
  ret void, !dbg !2762
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_15InternalBuilder10stack_push(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(800) %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2763 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
    #dbg_value(ptr %1, !3022, !DIExpression(), !3025)
    #dbg_value(i32 %2, !3023, !DIExpression(), !3025)
    #dbg_value(i64 %3, !3024, !DIExpression(), !3025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026), !dbg !3029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %2, ptr %i.d, align 4, !noalias !3026
    #dbg_value(ptr %1, !3030, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3123)
    #dbg_value(ptr %1, !3125, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3132)
    #dbg_value(ptr %1, !3134, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3138)
    #dbg_value(ptr %1, !3134, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3140)
    #dbg_declare(ptr %i.d, !3037, !DIExpression(), !3142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143), !dbg !3146
    #dbg_value(ptr %1, !3147, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3156)
    #dbg_value(ptr %1, !3158, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3161)
    #dbg_value(i32 %2, !3153, !DIExpression(), !3156)
    #dbg_value(ptr %1, !3163, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !3170)
    #dbg_value(ptr %1, !3172, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !3176)
    #dbg_value(ptr %1, !3178, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !3184)
    #dbg_value(ptr %1, !3186, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !3190)
    #dbg_value(ptr %1, !3192, !DIExpression(DW_OP_plus_uconst, 496, DW_OP_stack_value), !3199)
    #dbg_value(i32 %2, !3169, !DIExpression(), !3201)
    #dbg_value(ptr poison, !3202, !DIExpression(), !3205)
    #dbg_value(ptr poison, !3207, !DIExpression(), !3210)
  %i.e = zext i32 %2 to i64, !dbg !3212           ; 3 uses
    #dbg_value(i64 %i.e, !3175, !DIExpression(), !3213)
    #dbg_value(i64 %i.e, !3214, !DIExpression(), !3218)
    #dbg_value(i64 %i.e, !3220, !DIExpression(), !3224)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 512, !dbg !3226
  %i.g = load i64, ptr %i.f, align 8, !dbg !3226, !alias.scope !3143, !noundef !22 ; 2 uses
    #dbg_value(ptr poison, !3217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3218)
    #dbg_value(ptr poison, !3223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3224)
    #dbg_value(i64 %i.g, !3217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3218)
    #dbg_value(i64 %i.g, !3223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3224)
  %i.h = icmp ugt i64 %i.g, %i.e, !dbg !3227
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !3227

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 504, !dbg !3228
  %i.j = load ptr, ptr %i.i, align 8, !dbg !3228, !alias.scope !3143, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.j, !3217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3218)
    #dbg_value(ptr %i.j, !3223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3224)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e, !dbg !3252 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !dbg !3253, !noalias !3143, !noundef !22
    #dbg_value(i32 %i.l, !3154, !DIExpression(), !3254)
    #dbg_value(ptr poison, !3202, !DIExpression(), !3255)
    #dbg_value(ptr poison, !3207, !DIExpression(), !3257)
    #dbg_value(i32 %i.l, !3169, !DIExpression(), !3260)
  %i.m = zext i32 %i.l to i64, !dbg !3262         ; 4 uses
    #dbg_value(i64 %i.m, !3175, !DIExpression(), !3263)
    #dbg_value(i64 %i.m, !3214, !DIExpression(), !3266)
    #dbg_value(i64 %i.m, !3220, !DIExpression(), !3269)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 520, !dbg !3272 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !3272, !alias.scope !3143, !noundef !22 ; 6 uses
  %i.p = icmp ugt i64 %i.o, %i.m, !dbg !3273
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.r = load i64, ptr %i.q, align 8, !dbg !3123  ; 5 uses
  br i1 %i.p, label %bb.d, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread, !dbg !3273

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #20, !dbg !3227, !noalias !3143
  unreachable, !dbg !3227

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3163, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3274)
    #dbg_value(ptr %1, !3172, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3275)
    #dbg_value(ptr %1, !3178, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3276)
    #dbg_value(ptr %1, !3186, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3278)
    #dbg_value(ptr %1, !3192, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3281)
    #dbg_value(ptr poison, !3202, !DIExpression(), !3284)
    #dbg_value(ptr poison, !3207, !DIExpression(), !3286)
    #dbg_value(ptr poison, !3217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3266)
    #dbg_value(ptr poison, !3223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3269)
    #dbg_value(i64 %i.r, !3217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3266)
    #dbg_value(i64 %i.r, !3223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3269)
  %i.s = icmp ugt i64 %i.r, %i.m, !dbg !3289
  br i1 %i.s, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit, label %bb.e, !dbg !3289

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #20, !dbg !3289, !noalias !3143
  unreachable, !dbg !3289

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !3290
  %i.u = load ptr, ptr %i.t, align 8, !dbg !3290, !alias.scope !3143, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.u, !3217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3266)
    #dbg_value(ptr %i.u, !3223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3269)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.m, !dbg !3297
    #dbg_value(ptr %i.v, !3298, !DIExpression(), !3305)
    #dbg_value(ptr poison, !3304, !DIExpression(), !3307)
    #dbg_value(ptr %i.v, !3308, !DIExpression(), !3315)
    #dbg_value(ptr poison, !3314, !DIExpression(), !3315)
  %i.w = load i32, ptr %i.v, align 4, !dbg !3315, !noalias !3143, !noundef !22
  %i.x = icmp eq i32 %i.w, %2, !dbg !3315
  br i1 %i.x, label %bb.g, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread, !dbg !3317

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread: ; preds = %bb.b, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3318, !noalias !3026
    #dbg_value(i64 %i.o, !3038, !DIExpression(), !3319)
    #dbg_value(i64 %i.o, !3320, !DIExpression(), !3326)
    #dbg_value(i64 %i.o, !3328, !DIExpression(), !3334)
  store i64 %i.o, ptr %i.c, align 8, !dbg !3336, !noalias !3026
    #dbg_value(ptr %1, !3337, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3340)
  %i.y = icmp ult i64 %i.r, 2305843009213693952, !dbg !3342
  tail call void @llvm.assume(i1 %i.y), !dbg !3343
  %i.z = icmp ult i64 %i.o, %i.r, !dbg !3344
  br i1 %i.z, label %bb.h, label %bb.f, !dbg !3344, !prof !3345

bb.f:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread
    #dbg_value(ptr %i.c, !3040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3347, !noalias !3026
    #dbg_value(ptr %1, !3337, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !3348)
  store i64 %i.r, ptr %i.b, align 8, !dbg !3351, !noalias !3026
    #dbg_value(ptr %i.b, !3040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3346)
    #dbg_value(ptr %i.d, !3040, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3352, !noalias !3026
  store ptr %i.c, ptr %i.a, align 8, !dbg !3352, !noalias !3026
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3352
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !3352, !noalias !3026
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3352
  store ptr %i.b, ptr %i.aa, align 8, !dbg !3352, !noalias !3026
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3352
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !3352, !noalias !3026
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3352
  store ptr %i.d, ptr %i.ab, align 8, !dbg !3352, !noalias !3026
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder14build_from_nfa:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass15InternalBuilderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(800) %i.w)
          to label %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_15InternalBuilder5build.exit unwind label %bb.q, !dbg !10151

.loopexit554.i:                                   ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit674.i:                                   ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit66:                                      ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit149:                                     ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit199:                                     ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit296:                                     ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i
  br label %.loopexit435.i, !dbg !11564

.loopexit435.i:                                   ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i, %.loopexit296, %.loopexit199, %.loopexit149, %.loopexit66, %.loopexit, %.loopexit674.i, %.loopexit554.i
  %.sroa.0.0.i.ph.i.ph.i = phi i32 [ 65536, %.loopexit199 ], [ 32768, %.loopexit149 ], [ 131072, %.loopexit296 ], [ 2048, %.loopexit554.i ], [ 4096, %.loopexit674.i ], [ 8192, %.loopexit ], [ 16384, %.loopexit66 ], [ 1024, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i.i ]
    #dbg_value(i32 %.sroa.0.0.i.ph.i.ph.i, !9683, !DIExpression(), !10152)
    #dbg_value(i32 %.sroa.0.0.i.ph.i.ph.i, !10153, !DIExpression(), !10160)
    #dbg_value(i32 poison, !10159, !DIExpression(), !10160)
    #dbg_value(!DIArgList(i32 poison, i32 %.sroa.0.0.i.ph.i.ph.i), !8925, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_stack_value), !10118)
    #dbg_value(i32 %.sroa.0.0.i.ph.i.ph.i, !8930, !DIExpression(), !10163)
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11564
  store i64 -9223372036854775798, ptr %i.nb, align 8, !dbg !11564, !alias.scope !9655, !noalias !9659
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11564
  store i32 %.sroa.0.0.i.ph.i.ph.i, ptr %.sroa.472.0..sroa_idx.i, align 8, !dbg !11564, !alias.scope !9655, !noalias !9659
  store i64 -1, ptr %0, align 8, !dbg !11564, !alias.scope !9655, !noalias !9659
  br label %bb.du, !dbg !10230

_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_15InternalBuilder5build.exit: ; preds = %bb.bw, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11565
  call void @llvm.experimental.noalias.scope.decl(metadata !11566), !dbg !9615
    #dbg_value(ptr %i.x, !1557, !DIExpression(), !11569)
  call void @llvm.experimental.noalias.scope.decl(metadata !11571), !dbg !11574
    #dbg_value(ptr %i.x, !1571, !DIExpression(), !11575)
  call void @llvm.experimental.noalias.scope.decl(metadata !11577), !dbg !11580
    #dbg_value(ptr %i.x, !1585, !DIExpression(), !11581)
    #dbg_value(ptr %i.x, !1592, !DIExpression(), !11583)
    #dbg_value(i64 1, !1602, !DIExpression(), !11585)
    #dbg_value(i8 1, !1611, !DIExpression(), !11585)
    #dbg_value(i64 1, !1614, !DIExpression(), !11587)
    #dbg_value(i8 1, !1621, !DIExpression(), !11587)
  %i.nc = load ptr, ptr %i.x, align 8, !dbg !11589, !alias.scope !11591, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.nc, !1610, !DIExpression(), !11592)
    #dbg_value(ptr %i.nc, !1620, !DIExpression(), !11587)
  %i.nd = atomicrmw sub ptr %i.nc, i64 1 release, align 8, !dbg !11593, !noalias !11591
  %i.ne = icmp eq i64 %i.nd, 1, !dbg !11594
  br i1 %i.ne, label %bb.dv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit12, !dbg !11594

bb.dv:                                            ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_15InternalBuilder5build.exit
    #dbg_value(i8 2, !1638, !DIExpression(), !11595)
  fence acquire, !dbg !11597
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #19, !dbg !11598
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit12, !dbg !11598

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit12: ; preds = %_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_15InternalBuilder5build.exit, %bb.dv
  ret void, !dbg !11599

bb.dw:                                            ; preds = %bb.r
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !11600
  unreachable, !dbg !11600

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit: ; preds = %.body, %bb.r
  resume { ptr, i32 } %eh.lpad-body, !dbg !11600
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0) unnamed_addr #0 !dbg !4927 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11601
  tail call void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.a), !dbg !11602
  store i64 2, ptr %0, align 8, !dbg !11601
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11601
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11601
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !11601
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 1, !dbg !11601
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18, !dbg !11601
  store i8 2, ptr %.sroa.7.0..sroa_idx, align 2, !dbg !11601
  ret void, !dbg !11603
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !11604 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !11609, !DIExpression(), !11611)
    #dbg_value(ptr %2, !11610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11611)
    #dbg_value(i64 %3, !11610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11612
  store ptr %2, ptr %i.b, align 8, !dbg !11612
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11612
  store i64 %3, ptr %i.c, align 8, !dbg !11612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11613), !dbg !11616
    #dbg_declare(ptr poison, !11617, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !11622)
    #dbg_declare(ptr poison, !11621, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !11646)
    #dbg_declare(ptr poison, !11642, !DIExpression(DW_OP_LLVM_fragment, 128, 896), !11647)
    #dbg_value(ptr %1, !11638, !DIExpression(), !11648)
    #dbg_value(ptr %i.b, !11639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(i64 1, !11639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_declare(ptr %i.a, !11649, !DIExpression(), !11694)
    #dbg_declare(ptr poison, !11689, !DIExpression(), !11696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11697, !noalias !11698
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11697
  call void @_RINvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB6_8Compiler10build_manyReEBc_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !11700, !noalias !11613
  %i.e = load i64, ptr %i.a, align 8, !dbg !11701, !range !11702, !noalias !11698, !noundef !22 ; 2 uses
  %.not.i = icmp eq i64 %i.e, -2, !dbg !11701
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11703
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11703, !noalias !11698 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !11704

bb.b:                                             ; preds = %bb.a
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11705
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.521.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.530.0..sroa_idx.i, i64 112, i1 false), !dbg !11705, !noalias !11707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11708, !noalias !11698
    #dbg_value(i64 %i.e, !11642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11709)
    #dbg_value(i64 %i.e, !11621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11710)
    #dbg_value(ptr %i.g, !11642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11709)
    #dbg_value(ptr %i.g, !11621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11710)
    #dbg_value(i64 %i.e, !11617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11711)
    #dbg_value(ptr %i.g, !11617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11711)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11706
  store i64 %i.e, ptr %i.h, align 8, !dbg !11706, !alias.scope !11613, !noalias !11707
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11706
  store ptr %i.g, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !11706, !alias.scope !11613, !noalias !11707
  store i64 -1, ptr %0, align 8, !dbg !11706, !alias.scope !11613, !noalias !11707
  br label %_RINvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_7Builder10build_manyReEB9_.exit, !dbg !11712

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11708, !noalias !11698
    #dbg_value(ptr %i.g, !11640, !DIExpression(), !11713)
  call void @_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder14build_from_nfa(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(address) dereferenceable(376) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.g), !dbg !11714
  br label %_RINvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_7Builder10build_manyReEB9_.exit, !dbg !11712

_RINvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_7Builder10build_manyReEB9_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11715
  ret void, !dbg !11716
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder6syntax(ptr noalias nofree noundef returned align 8 dereferenceable(472) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !11717 {
bb.a:
    #dbg_value(ptr %0, !11736, !DIExpression(), !11738)
    #dbg_declare(ptr %1, !11737, !DIExpression(), !11739)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11740
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %1), !dbg !11741 ; 0 uses
  ret ptr %0, !dbg !11742
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder8thompson(ptr noalias nofree noundef returned align 8 dereferenceable(472) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !11743 {
bb.a:
    #dbg_value(ptr %0, !11748, !DIExpression(), !11750)
    #dbg_declare(ptr %1, !11749, !DIExpression(), !11751)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11752
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !11753 ; 0 uses
  ret ptr %0, !dbg !11754
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapper7onepassNtNtB6_7onepass3DFANtB4_10Remappable11swap_states(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !11755 {
bb.a:
    #dbg_value(ptr %0, !11759, !DIExpression(), !11762)
    #dbg_value(i32 %1, !11760, !DIExpression(), !11762)
    #dbg_value(i32 %2, !11761, !DIExpression(), !11762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11763), !dbg !11766
    #dbg_value(ptr poison, !11767, !DIExpression(), !11774)
    #dbg_value(ptr poison, !11772, !DIExpression(), !11831)
    #dbg_value(ptr poison, !11833, !DIExpression(), !11837)
    #dbg_value(ptr poison, !11841, !DIExpression(), !11850)
    #dbg_value(ptr poison, !11847, !DIExpression(), !11851)
    #dbg_value(ptr %0, !11823, !DIExpression(), !11852)
    #dbg_value(ptr %0, !11853, !DIExpression(), !11856)
    #dbg_value(ptr %0, !11853, !DIExpression(), !11858)
    #dbg_value(ptr %0, !11853, !DIExpression(), !11860)
    #dbg_value(i32 %1, !11824, !DIExpression(), !11852)
    #dbg_value(i32 %2, !11825, !DIExpression(), !11852)
    #dbg_value(i64 1, !11866, !DIExpression(), !11870)
    #dbg_value(i64 1, !11872, !DIExpression(), !11876)
    #dbg_value(i64 1, !11773, !DIExpression(), !11774)
    #dbg_value(i64 1, !11878, !DIExpression(), !11883)
    #dbg_value(i64 1, !11773, !DIExpression(), !11831)
    #dbg_value(ptr poison, !11885, !DIExpression(), !11888)
    #dbg_value(ptr poison, !11890, !DIExpression(), !11893)
  %i.a = zext i32 %1 to i64, !dbg !11895
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !11896
  %i.c = load i64, ptr %i.b, align 8, !dbg !11896, !alias.scope !11763, !noundef !22
  %i.d = and i64 %i.c, 63, !dbg !11897            ; 3 uses
  %i.e = shl i64 %i.a, %i.d, !dbg !11897          ; 4 uses
    #dbg_value(i64 %i.e, !11826, !DIExpression(), !11898)
    #dbg_value(ptr poison, !11885, !DIExpression(), !11899)
    #dbg_value(ptr poison, !11890, !DIExpression(), !11901)
  %i.f = zext i32 %2 to i64, !dbg !11904
  %i.g = shl i64 %i.f, %i.d, !dbg !11905          ; 2 uses
    #dbg_value(i64 %i.g, !11827, !DIExpression(), !11906)
    #dbg_value(i64 0, !11828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11907)
    #dbg_value(!DIArgList(i64 1, i64 %i.d), !11828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11907)
    #dbg_value(ptr undef, !11847, !DIExpression(), !11851)
    #dbg_value(ptr undef, !11841, !DIExpression(), !11850)
    #dbg_value(ptr undef, !11833, !DIExpression(), !11837)
    #dbg_value(ptr undef, !11836, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11908)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !11763, !nonnull !22, !noundef !22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !11763, !noundef !22 ; 5 uses
    #dbg_value(i64 0, !11842, !DIExpression(), !11909)
    #dbg_value(i64 0, !11869, !DIExpression(), !11870)
    #dbg_value(i64 0, !11875, !DIExpression(), !11876)
  %3 = icmp ult i64 %i.e, %i.k, !dbg !11910
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !11910

bb.b:                                             ; preds = %bb.c
    #dbg_value(i64 %i.q, !11842, !DIExpression(), !11909)
    #dbg_value(i64 %i.q, !11869, !DIExpression(), !11870)
    #dbg_value(i64 %i.q, !11875, !DIExpression(), !11876)
  %i.l = add nuw i64 %i.q, 1, !dbg !11911
    #dbg_value(i64 %i.l, !11828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11907)
    #dbg_value(i64 %i.q, !11829, !DIExpression(), !11912)
    #dbg_value(ptr %i.i, !11812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11913)
    #dbg_value(ptr %i.i, !11805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11914)
    #dbg_value(i64 %i.k, !11812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11913)
    #dbg_value(i64 %i.k, !11805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11914)
  %i.m = add nuw i64 %i.q, %i.e, !dbg !11915      ; 3 uses
    #dbg_value(i64 %i.m, !11813, !DIExpression(), !11913)
    #dbg_value(i64 %i.m, !11806, !DIExpression(), !11914)
    #dbg_value(i64 %i.m, !11916, !DIExpression(), !11922)
  %i.n = add nuw i64 %i.q, %i.g, !dbg !11924
    #dbg_value(i64 %i.n, !11814, !DIExpression(), !11913)
    #dbg_value(i64 %i.n, !11807, !DIExpression(), !11914)
    #dbg_value(i64 %i.n, !11916, !DIExpression(), !11925)
  %4 = icmp ult i64 %i.m, %i.k, !dbg !11910
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !11910

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.p = phi i64 [ %i.m, %bb.b ], [ %i.e, %bb.a ]
  %i.q = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]    ; 4 uses
  %5 = icmp ult i64 %i.o, %i.k, !dbg !11927
  br i1 %5, label %bb.c, label %bb.d, !dbg !11927

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa20 = phi i64 [ %i.e, %bb.a ], [ %i.m, %bb.b ], !dbg !11915
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa20, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #20, !dbg !11910, !noalias !11763
  unreachable, !dbg !11910

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.i, !11808, !DIExpression(), !11928)
    #dbg_value(ptr %i.i, !11921, !DIExpression(), !11922)
    #dbg_value(ptr %i.i, !11921, !DIExpression(), !11925)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p, !dbg !11929 ; 2 uses
    #dbg_value(ptr %i.r, !11781, !DIExpression(), !11930)
    #dbg_value(ptr %i.r, !11882, !DIExpression(), !11883)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o, !dbg !11931 ; 2 uses
    #dbg_value(ptr %i.s, !11782, !DIExpression(), !11930)
    #dbg_value(ptr %i.s, !11767, !DIExpression(), !11831)
    #dbg_value(ptr %i.r, !11772, !DIExpression(), !11774)
    #dbg_value(ptr undef, !11767, !DIExpression(), !11774)
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !dbg !11932, !noalias !11763
    #dbg_value(i64 %.sroa.0.0.copyload.i, !11783, !DIExpression(), !11933)
    #dbg_value(ptr %i.s, !11881, !DIExpression(), !11883)
  %i.t = load i64, ptr %i.s, align 8, !dbg !11934, !noalias !11763
  store i64 %i.t, ptr %i.r, align 8, !dbg !11934, !noalias !11763
    #dbg_value(ptr undef, !11772, !DIExpression(), !11831)
  store i64 %.sroa.0.0.copyload.i, ptr %i.s, align 8, !dbg !11935, !noalias !11763
    #dbg_value(i64 %i.q, !11828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11907)
    #dbg_value(ptr undef, !11847, !DIExpression(), !11851)
    #dbg_value(ptr undef, !11841, !DIExpression(), !11850)
    #dbg_value(ptr undef, !11833, !DIExpression(), !11837)
    #dbg_value(ptr undef, !11836, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11908)
  %.sroa.0.0.highbits.i = lshr i64 %i.q, %i.d, !dbg !11936
  %i.u = icmp eq i64 %.sroa.0.0.highbits.i, 0, !dbg !11936
  br i1 %i.u, label %bb.b, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA11swap_states.exit, !dbg !11937

bb.d:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #20, !dbg !11927, !noalias !11763
  unreachable, !dbg !11927

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA11swap_states.exit: ; preds = %bb.c
  ret void, !dbg !11938
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1K_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !11939 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !11945, !DIExpression(), !11947)
    #dbg_value(ptr %1, !11946, !DIExpression(), !11947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11948
  store ptr %0, ptr %i.a, align 8, !dbg !11948
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73), !dbg !11949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11950
  ret i1 %i.b, !dbg !11951
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass3DFANtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !11952 {
bb.a:
    #dbg_value(ptr %0, !11959, !DIExpression(), !11961)
    #dbg_value(ptr %1, !11960, !DIExpression(), !11961)
  %i.a = load ptr, ptr %0, align 8, !dbg !11962, !nonnull !22, !align !10391, !noundef !22
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11963
  ret i1 %i.b, !dbg !11964
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11965 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !11232, !DIExpression(), !12103)
    #dbg_value(ptr poison, !12109, !DIExpression(), !12119)
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !12120, !DIExpression(), !12124)
    #dbg_value(ptr poison, !12128, !DIExpression(), !12137)
    #dbg_value(ptr poison, !12134, !DIExpression(), !12138)
    #dbg_value(ptr %0, !11970, !DIExpression(), !12139)
    #dbg_value(ptr %0, !12140, !DIExpression(), !12143)
    #dbg_value(ptr %0, !12145, !DIExpression(), !12148)
    #dbg_value(ptr %0, !12150, !DIExpression(), !12156)
    #dbg_value(ptr %0, !12145, !DIExpression(), !12158)
    #dbg_value(ptr %0, !12140, !DIExpression(), !12160)
    #dbg_value(ptr %0, !12145, !DIExpression(), !12162)
    #dbg_value(ptr %0, !12165, !DIExpression(), !12169)
    #dbg_value(ptr %1, !11971, !DIExpression(), !12139)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12216)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12219)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12222)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12224)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12226)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12229)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12231)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12233)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12235)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12237)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12240)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12243)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12246)
    #dbg_value(ptr %1, !12171, !DIExpression(), !12248)
    #dbg_declare(ptr %i.w, !11995, !DIExpression(), !12250)
    #dbg_value(i64 1, !12251, !DIExpression(), !12255)
    #dbg_value(i64 1, !12257, !DIExpression(), !12261)
    #dbg_value(ptr poison, !12263, !DIExpression(), !12267)
    #dbg_value(ptr @80, !12187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12216)
    #dbg_value(ptr inttoptr (i64 29 to ptr), !12187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12216)
    #dbg_value(ptr @80, !12188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12285)
    #dbg_value(i64 14, !12188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12285)
  %i.x = load ptr, ptr %1, align 8, !dbg !12286, !nonnull !22, !noundef !22 ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12286
  %i.z = load ptr, ptr %i.y, align 8, !dbg !12286, !nonnull !22, !align !10391, !noundef !22 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !12286
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !12286, !invariant.load !22, !nonnull !22 ; 10 uses
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 14) #22, !dbg !12287
    #dbg_value(i1 %i.ac, !12288, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12368)
  br i1 %i.ac, label %.loopexit, label %bb.b, !dbg !12370

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !12371, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12374)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12376
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !12376, !noundef !22 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976, !dbg !12377
  tail call void @llvm.assume(i1 %i.af), !dbg !12378
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !12379
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !12379, !noundef !22
  %i.ai = and i64 %i.ah, 63, !dbg !12380          ; 2 uses
  %i.aj = lshr i64 %i.ae, %i.ai, !dbg !12380      ; 3 uses
    #dbg_value(i64 0, !11989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12381)
    #dbg_value(i64 %i.aj, !11989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12381)
    #dbg_value(ptr undef, !12134, !DIExpression(), !12138)
    #dbg_value(ptr undef, !12128, !DIExpression(), !12137)
    #dbg_value(ptr undef, !12120, !DIExpression(), !12124)
    #dbg_value(ptr undef, !12123, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12382)
  %.not = icmp eq i64 %i.aj, 0, !dbg !12383
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !12125

.lr.ph:                                           ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.al = load i64, ptr %i.ak, align 8, !noundef !22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !22 ; 2 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c, !dbg !12125

bb.c:                                             ; preds = %.lr.ph, %bb.ai
  %.sroa.02.0484 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.ai ] ; 5 uses
    #dbg_value(i64 %.sroa.02.0484, !12129, !DIExpression(), !12384)
    #dbg_value(i64 %.sroa.02.0484, !12254, !DIExpression(), !12255)
    #dbg_value(i64 %.sroa.02.0484, !12260, !DIExpression(), !12261)
  %i.at = add nuw nsw i64 %.sroa.02.0484, 1, !dbg !12385 ; 2 uses
    #dbg_value(i64 %i.at, !11989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12381)
    #dbg_value(i64 %.sroa.02.0484, !11991, !DIExpression(), !12386)
    #dbg_value(i64 %.sroa.02.0484, !12283, !DIExpression(), !12387)
    #dbg_value(i64 %.sroa.02.0484, !12279, !DIExpression(), !12388)
    #dbg_value(i64 %.sroa.02.0484, !12275, !DIExpression(), !12389)
    #dbg_value(i64 %.sroa.02.0484, !12271, !DIExpression(), !12390)
  %exitcond = icmp eq i64 %.sroa.02.0484, 2147483647, !dbg !12391
  br i1 %exitcond, label %bb.j, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6expectBN_.exit, !dbg !12391

._crit_edge:                                      ; preds = %bb.ai, %bb.b
    #dbg_value(ptr @81, !12187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12235)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !12187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12235)
    #dbg_value(ptr @81, !12204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12392)
    #dbg_value(i64 1, !12204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12392)
  %i.au = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 1) #22, !dbg !12393
    #dbg_value(i1 %i.au, !12288, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12394)
  br i1 %i.au, label %.loopexit, label %bb.d, !dbg !12396

bb.d:                                             ; preds = %._crit_edge
    #dbg_value(ptr %0, !12397, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12400)
    #dbg_value(ptr %0, !12402, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12405)
    #dbg_value(ptr %0, !12408, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12411)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12414
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !12414, !nonnull !22, !noundef !22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !12424
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !12424, !noundef !22 ; 3 uses
    #dbg_value(i64 %i.ay, !12425, !DIExpression(), !12434)
    #dbg_value(i64 %i.ay, !12440, !DIExpression(), !12444)
    #dbg_value(ptr %i.aw, !12438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12446)
    #dbg_value(ptr %i.aw, !12429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12447)
    #dbg_value(i64 %i.ay, !12438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12446)
    #dbg_value(i64 %i.ay, !12429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12447)
    #dbg_value(ptr %i.aw, !12430, !DIExpression(), !12448)
    #dbg_value(ptr %i.aw, !12443, !DIExpression(), !12444)
  %.idx = shl nuw nsw i64 %i.ay, 2, !dbg !12449
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx, !dbg !12449
    #dbg_value(ptr %i.aw, !12049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12450)
    #dbg_value(ptr %i.az, !12049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12450)
    #dbg_value(i64 0, !12049, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12450)
    #dbg_value(ptr undef, !12109, !DIExpression(), !12119)
    #dbg_value(ptr undef, !11232, !DIExpression(), !12103)
    #dbg_value(i64 1, !11243, !DIExpression(), !12451)
    #dbg_value(ptr %i.aw, !11235, !DIExpression(), !12453)
    #dbg_value(ptr %i.aw, !11247, !DIExpression(), !12451)
    #dbg_value(ptr %i.az, !11237, !DIExpression(), !12454)
    #dbg_value(ptr poison, !11252, !DIExpression(), !12455)
    #dbg_value(ptr poison, !11255, !DIExpression(), !12457)
  %i.ba = icmp eq i64 %i.ay, 0, !dbg !12458
  br i1 %i.ba, label %._crit_edge489, label %bb.e, !dbg !12459

bb.e:                                             ; preds = %bb.d
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
    #dbg_value(ptr %i.aw, !12049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12450)
    #dbg_value(i64 0, !12049, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12450)
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtNtB17_3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map16Utf8BoundedEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtNtNtBT_3dfa7onepass8EpsilonsEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvXs4_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_24ByteClassRepresentativesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtBW_16DenseTransitions4iter0INtB7_5FnMutTRTjRNtNtNtB12_4util10primitives7StateIDEEE8call_mutB12_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB3_8Remapper3newNtNtB5_7onepass3DFAEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(376)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB3_8Remapper5remapNtNtB5_7onepass3DFAEB7_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(376)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapperNtB3_8Remapper4swapNtNtB5_7onepass3DFAEB7_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(376), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters4take4TakeINtNtNtB22_7sources6repeat6RepeatBG_EEEBM_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB6_11ByteClasses15representativesINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivehEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256), i24) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDBM_EBS_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2_3NFA8patterns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2_3NFA11never_match() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB2_3NFA12always_match() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef range(i32 0, 3), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1n_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtNtNtBT_3dfa7onepass8EpsilonsEE8grow_oneBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr dead_on_unwind noalias nofree noundef writable sret([448 x i8]) align 8 captures(none) dereferenceable(448)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6syntax(ptr noalias nofree noundef align 8 dereferenceable(448), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef align 8 dereferenceable(448), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1s_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE6resizeBL_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives15SmallIndexErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }
attributes #19 = { noinline }
attributes #20 = { noinline noreturn }
attributes #21 = { noreturn }
attributes #22 = { inlinehint }

!llvm.module.flags = !{!54, !55, !56, !57, !58}
!llvm.ident = !{!59}
!llvm.dbg.cu = !{!60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<regex_automata::util::primitives::StateIDError as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_automata::util::primitives::StateIDError as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !12, templateParams: !22, identifier: "a6196868af9c24c53babdb2290d236a0")
!4 = !{!5, !8, !10, !11}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StateIDError", scope: !13, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !16, templateParams: !22, identifier: "66cfda4f0cb0c43f49d38f4990642bc3")
!13 = !DINamespace(name: "primitives", scope: !14)
!14 = !DINamespace(name: "util", scope: !15)
!15 = !DINamespace(name: "regex_automata", scope: null)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12, file: !2, baseType: !18, size: 64, align: 64, flags: DIFlagPrivate)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SmallIndexError", scope: !13, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !19, templateParams: !22, identifier: "6ba28c1d132b57ce27ea6add12fe5bbb")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "attempted", scope: !18, file: !2, baseType: !21, size: 64, align: 64, flags: DIFlagPrivate)
!21 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!22 = !{}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "<regex_syntax::unicode::UnicodeWordError as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !25, isLocal: true, isDefinition: true)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<regex_syntax::unicode::UnicodeWordError as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !26, vtableHolder: !31, templateParams: !22, identifier: "2364033dc4c38a20b86601d0bab16837")
!26 = !{!27, !28, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !25, file: !2, baseType: !6, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !25, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !25, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !25, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnicodeWordError", scope: !32, file: !2, align: 8, flags: DIFlagPublic, elements: !34, templateParams: !22, identifier: "cb1bd62dcc0352efc2afce6c833b127a")
!32 = !DINamespace(name: "unicode", scope: !33)
!33 = !DINamespace(name: "regex_syntax", scope: null)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !31, file: !2, baseType: !7, align: 8, flags: DIFlagPrivate)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "<&regex_automata::util::primitives::SmallIndexError as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !38, isLocal: true, isDefinition: true)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&regex_automata::util::primitives::SmallIndexError as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !39, vtableHolder: !44, templateParams: !22, identifier: "6876f2fc8441bac153a43ef6182067a")
!39 = !{!40, !41, !42, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !38, file: !2, baseType: !6, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !38, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !38, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::util::primitives::SmallIndexError", baseType: !18, size: 64, align: 64, dwarfAddressSpace: 0)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "<&() as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !47, isLocal: true, isDefinition: true)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&() as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !48, vtableHolder: !53, templateParams: !22, identifier: "d5dbfd8cabedda1dc6cea12b6ccc3d0")
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !47, file: !2, baseType: !6, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !47, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !47, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!54 = !{i32 8, !"PIC Level", i32 2}
!55 = !{i32 2, !"RtLibUseGOT", i32 1}
!56 = !{i32 7, !"uwtable", i32 2}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!60 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !61, producer: "clang LLVM (rustc version 1.100.0-nightly (67854e511 2026-08-15))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, globals: !209, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "regex-automata/src/lib.rs/@/regex_automata.70e7117356d4e434-cgu.03", directory: "/opt-bench/work/regex-rs/regex")
!62 = !{!63, !69, !91, !98, !108, !119, !128, !196, !202}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MatchKind", scope: !64, file: !2, baseType: !65, size: 8, align: 8, flags: DIFlagEnumClass, elements: !66)
!64 = !DINamespace(name: "search", scope: !14)
!65 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "All", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "LeftmostFirst", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Look", scope: !70, file: !2, baseType: !71, size: 32, align: 32, flags: DIFlagEnumClass, elements: !72)
!70 = !DINamespace(name: "look", scope: !14)
!71 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!73 = !DIEnumerator(name: "Start", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "End", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "StartLF", value: 4, isUnsigned: true)
!76 = !DIEnumerator(name: "EndLF", value: 8, isUnsigned: true)
!77 = !DIEnumerator(name: "StartCRLF", value: 16, isUnsigned: true)
!78 = !DIEnumerator(name: "EndCRLF", value: 32, isUnsigned: true)
!79 = !DIEnumerator(name: "WordAscii", value: 64, isUnsigned: true)
!80 = !DIEnumerator(name: "WordAsciiNegate", value: 128, isUnsigned: true)
!81 = !DIEnumerator(name: "WordUnicode", value: 256, isUnsigned: true)
!82 = !DIEnumerator(name: "WordUnicodeNegate", value: 512, isUnsigned: true)
!83 = !DIEnumerator(name: "WordStartAscii", value: 1024, isUnsigned: true)
!84 = !DIEnumerator(name: "WordEndAscii", value: 2048, isUnsigned: true)
!85 = !DIEnumerator(name: "WordStartUnicode", value: 4096, isUnsigned: true)
!86 = !DIEnumerator(name: "WordEndUnicode", value: 8192, isUnsigned: true)
!87 = !DIEnumerator(name: "WordStartHalfAscii", value: 16384, isUnsigned: true)
!88 = !DIEnumerator(name: "WordEndHalfAscii", value: 32768, isUnsigned: true)
!89 = !DIEnumerator(name: "WordStartHalfUnicode", value: 65536, isUnsigned: true)
!90 = !DIEnumerator(name: "WordEndHalfUnicode", value: 131072, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "WhichCaptures", scope: !92, file: !2, baseType: !65, size: 8, align: 8, flags: DIFlagEnumClass, elements: !95)
!92 = !DINamespace(name: "compiler", scope: !93)
!93 = !DINamespace(name: "thompson", scope: !94)
!94 = !DINamespace(name: "nfa", scope: !15)
!95 = !{!67, !96, !97}
!96 = !DIEnumerator(name: "Implicit", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "None", value: 2, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ErrorKind", scope: !99, file: !2, baseType: !65, size: 8, align: 8, flags: DIFlagEnumClass, elements: !100)
!99 = !DINamespace(name: "hir", scope: !33)
!100 = !{!101, !102, !103, !104, !105, !106, !107}
!101 = !DIEnumerator(name: "UnicodeNotAllowed", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "InvalidUtf8", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "InvalidLineTerminator", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "UnicodePropertyNotFound", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "UnicodePropertyValueNotFound", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "UnicodePerlClassNotFound", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "UnicodeCaseUnavailable", value: 6, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IntErrorKind", scope: !109, file: !2, baseType: !65, size: 8, align: 8, flags: DIFlagEnumClass, elements: !112)
!109 = !DINamespace(name: "error", scope: !110)
!110 = !DINamespace(name: "num", scope: !111)
!111 = !DINamespace(name: "core", scope: null)
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "Empty", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "InvalidDigit", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "PosOverflow", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "NegOverflow", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "Zero", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "NotAPowerOfTwo", value: 5, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !120, file: !2, baseType: !65, size: 8, align: 8, flags: DIFlagEnumClass, elements: !122)
!120 = !DINamespace(name: "atomic", scope: !121)
!121 = !DINamespace(name: "sync", scope: !111)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "Relaxed", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "Release", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "Acquire", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "AcqRel", value: 3, isUnsigned: true)
!127 = !DIEnumerator(name: "SeqCst", value: 4, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlignmentEnum", scope: !129, file: !2, baseType: !21, size: 64, align: 64, flags: DIFlagEnumClass, elements: !131)
!129 = !DINamespace(name: "alignment", scope: !130)
!130 = !DINamespace(name: "mem", scope: !111)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!132 = !DIEnumerator(name: "_Align1Shl0", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "_Align1Shl1", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "_Align1Shl2", value: 4, isUnsigned: true)
!135 = !DIEnumerator(name: "_Align1Shl3", value: 8, isUnsigned: true)
!136 = !DIEnumerator(name: "_Align1Shl4", value: 16, isUnsigned: true)
!137 = !DIEnumerator(name: "_Align1Shl5", value: 32, isUnsigned: true)
!138 = !DIEnumerator(name: "_Align1Shl6", value: 64, isUnsigned: true)
!139 = !DIEnumerator(name: "_Align1Shl7", value: 128, isUnsigned: true)
!140 = !DIEnumerator(name: "_Align1Shl8", value: 256, isUnsigned: true)
!141 = !DIEnumerator(name: "_Align1Shl9", value: 512, isUnsigned: true)
!142 = !DIEnumerator(name: "_Align1Shl10", value: 1024, isUnsigned: true)
!143 = !DIEnumerator(name: "_Align1Shl11", value: 2048, isUnsigned: true)
!144 = !DIEnumerator(name: "_Align1Shl12", value: 4096, isUnsigned: true)
!145 = !DIEnumerator(name: "_Align1Shl13", value: 8192, isUnsigned: true)
!146 = !DIEnumerator(name: "_Align1Shl14", value: 16384, isUnsigned: true)
!147 = !DIEnumerator(name: "_Align1Shl15", value: 32768, isUnsigned: true)
!148 = !DIEnumerator(name: "_Align1Shl16", value: 65536, isUnsigned: true)
!149 = !DIEnumerator(name: "_Align1Shl17", value: 131072, isUnsigned: true)
!150 = !DIEnumerator(name: "_Align1Shl18", value: 262144, isUnsigned: true)
!151 = !DIEnumerator(name: "_Align1Shl19", value: 524288, isUnsigned: true)
!152 = !DIEnumerator(name: "_Align1Shl20", value: 1048576, isUnsigned: true)
!153 = !DIEnumerator(name: "_Align1Shl21", value: 2097152, isUnsigned: true)
!154 = !DIEnumerator(name: "_Align1Shl22", value: 4194304, isUnsigned: true)
!155 = !DIEnumerator(name: "_Align1Shl23", value: 8388608, isUnsigned: true)
!156 = !DIEnumerator(name: "_Align1Shl24", value: 16777216, isUnsigned: true)
!157 = !DIEnumerator(name: "_Align1Shl25", value: 33554432, isUnsigned: true)
!158 = !DIEnumerator(name: "_Align1Shl26", value: 67108864, isUnsigned: true)
!159 = !DIEnumerator(name: "_Align1Shl27", value: 134217728, isUnsigned: true)
!160 = !DIEnumerator(name: "_Align1Shl28", value: 268435456, isUnsigned: true)
!161 = !DIEnumerator(name: "_Align1Shl29", value: 536870912, isUnsigned: true)
!162 = !DIEnumerator(name: "_Align1Shl30", value: 1073741824, isUnsigned: true)
!163 = !DIEnumerator(name: "_Align1Shl31", value: 2147483648, isUnsigned: true)
!164 = !DIEnumerator(name: "_Align1Shl32", value: 4294967296, isUnsigned: true)
!165 = !DIEnumerator(name: "_Align1Shl33", value: 8589934592, isUnsigned: true)
!166 = !DIEnumerator(name: "_Align1Shl34", value: 17179869184, isUnsigned: true)
!167 = !DIEnumerator(name: "_Align1Shl35", value: 34359738368, isUnsigned: true)
!168 = !DIEnumerator(name: "_Align1Shl36", value: 68719476736, isUnsigned: true)
!169 = !DIEnumerator(name: "_Align1Shl37", value: 137438953472, isUnsigned: true)
!170 = !DIEnumerator(name: "_Align1Shl38", value: 274877906944, isUnsigned: true)
end_hunk_2
begin_hunk_3_@llvm.umin.i64/@llvm.umax.i64
!11709 = !DILocation(line: 0, scope: !11625, inlinedAt: !11645)
!11710 = !DILocation(line: 0, scope: !11619, inlinedAt: !11623)
!11711 = !DILocation(line: 0, scope: !11618, inlinedAt: !11623)
!11712 = !DILocation(line: 372, column: 6, scope: !11626, inlinedAt: !11645)
!11713 = !DILocation(line: 0, scope: !11641, inlinedAt: !11645)
!11714 = !DILocation(line: 371, column: 14, scope: !11641, inlinedAt: !11645)
!11715 = !DILocation(line: 358, column: 5, scope: !11604)
!11716 = !DILocation(line: 358, column: 6, scope: !11604)
!11717 = distinct !DISubprogram(name: "syntax", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder6syntax", scope: !1743, file: !2371, line: 431, type: !11718, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !11734, retainedNodes: !11735)
!11718 = !DISubroutineType(types: !11719)
!11719 = !{!1742, !1742, !11720}
!11720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Config", scope: !11721, file: !2, size: 128, align: 32, flags: DIFlagPublic, elements: !11722, templateParams: !22, identifier: "75a11020ca0e1a6dea0b3a83910ec3fa")
!11721 = !DINamespace(name: "syntax", scope: !14)
!11722 = !{!11723, !11724, !11725, !11726, !11727, !11728, !11729, !11730, !11731, !11732, !11733}
!11723 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 40, flags: DIFlagPrivate)
!11724 = !DIDerivedType(tag: DW_TAG_member, name: "multi_line", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 48, flags: DIFlagPrivate)
!11725 = !DIDerivedType(tag: DW_TAG_member, name: "dot_matches_new_line", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 56, flags: DIFlagPrivate)
!11726 = !DIDerivedType(tag: DW_TAG_member, name: "crlf", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 64, flags: DIFlagPrivate)
!11727 = !DIDerivedType(tag: DW_TAG_member, name: "line_terminator", scope: !11720, file: !2, baseType: !65, size: 8, align: 8, offset: 32, flags: DIFlagPrivate)
!11728 = !DIDerivedType(tag: DW_TAG_member, name: "swap_greed", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 72, flags: DIFlagPrivate)
!11729 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_whitespace", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 80, flags: DIFlagPrivate)
!11730 = !DIDerivedType(tag: DW_TAG_member, name: "unicode", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 88, flags: DIFlagPrivate)
!11731 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 96, flags: DIFlagPrivate)
!11732 = !DIDerivedType(tag: DW_TAG_member, name: "nest_limit", scope: !11720, file: !2, baseType: !71, size: 32, align: 32, flags: DIFlagPrivate)
!11733 = !DIDerivedType(tag: DW_TAG_member, name: "octal", scope: !11720, file: !2, baseType: !1209, size: 8, align: 8, offset: 104, flags: DIFlagPrivate)
!11734 = !DISubprogram(name: "syntax", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder6syntax", scope: !1743, file: !2371, line: 431, type: !11718, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !22)
!11735 = !{!11736, !11737}
!11736 = !DILocalVariable(name: "self", arg: 1, scope: !11717, file: !2371, line: 432, type: !1742)
!11737 = !DILocalVariable(name: "config", arg: 2, scope: !11717, file: !2371, line: 433, type: !11720)
!11738 = !DILocation(line: 0, scope: !11717)
!11739 = !DILocation(line: 433, column: 9, scope: !11717)
!11740 = !DILocation(line: 435, column: 9, scope: !11717)
!11741 = !DILocation(line: 435, column: 23, scope: !11717)
!11742 = !DILocation(line: 437, column: 6, scope: !11717)
!11743 = distinct !DISubprogram(name: "thompson", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder8thompson", scope: !1743, file: !2371, line: 448, type: !11744, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !11746, retainedNodes: !11747)
!11744 = !DISubroutineType(types: !11745)
!11745 = !{!1742, !1742, !1778}
!11746 = !DISubprogram(name: "thompson", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB4_7Builder8thompson", scope: !1743, file: !2371, line: 448, type: !11744, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !22)
!11747 = !{!11748, !11749}
!11748 = !DILocalVariable(name: "self", arg: 1, scope: !11743, file: !2371, line: 448, type: !1742)
!11749 = !DILocalVariable(name: "config", arg: 2, scope: !11743, file: !2371, line: 448, type: !1778)
!11750 = !DILocation(line: 0, scope: !11743)
!11751 = !DILocation(line: 448, column: 32, scope: !11743)
!11752 = !DILocation(line: 449, column: 9, scope: !11743)
!11753 = !DILocation(line: 449, column: 23, scope: !11743)
!11754 = !DILocation(line: 451, column: 6, scope: !11743)
!11755 = distinct !DISubprogram(name: "swap_states", linkageName: "_RNvXNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa8remapper7onepassNtNtB6_7onepass3DFANtB4_10Remappable11swap_states", scope: !2298, file: !2297, line: 234, type: !11756, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !11758)
!11756 = !DISubroutineType(types: !11757)
!11757 = !{null, !1547, !377, !377}
!11758 = !{!11759, !11760, !11761}
!11759 = !DILocalVariable(name: "self", arg: 1, scope: !11755, file: !2297, line: 234, type: !1547)
!11760 = !DILocalVariable(name: "id1", arg: 2, scope: !11755, file: !2297, line: 234, type: !377)
!11761 = !DILocalVariable(name: "id2", arg: 3, scope: !11755, file: !2297, line: 234, type: !377)
!11762 = !DILocation(line: 0, scope: !11755)
!11763 = !{!11764}
!11764 = distinct !{!11764, !11765, !"_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA11swap_states: argument 0"}
!11765 = distinct !{!11765, !"_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA11swap_states"}
!11766 = !DILocation(line: 235, column: 13, scope: !11755)
!11767 = !DILocalVariable(name: "dst", arg: 2, scope: !11768, file: !242, line: 552, type: !4332)
!11768 = distinct !DISubprogram(name: "copy_nonoverlapping<regex_automata::dfa::onepass::Transition>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr19copy_nonoverlappingNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEBS_", scope: !243, file: !242, line: 552, type: !11769, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !11771)
!11769 = !DISubroutineType(types: !11770)
!11770 = !{null, !4298, !4332, !9}
!11771 = !{!11772, !11767, !11773}
!11772 = !DILocalVariable(name: "src", arg: 1, scope: !11768, file: !242, line: 552, type: !4298)
!11773 = !DILocalVariable(name: "count", scope: !11768, file: !242, line: 552, type: !9, align: 64)
!11774 = !DILocation(line: 0, scope: !11768, inlinedAt: !11775)
!11775 = distinct !DILocation(line: 1349, column: 9, scope: !11776, inlinedAt: !11799)
!11776 = distinct !DILexicalBlock(scope: !11777, file: !242, line: 1341, column: 5)
!11777 = distinct !DISubprogram(name: "swap<regex_automata::dfa::onepass::Transition>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr4swapNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEBC_", scope: !243, file: !242, line: 1338, type: !11778, scopeLine: 1338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !11780)
!11778 = !DISubroutineType(types: !11779)
!11779 = !{null, !4332, !4332}
!11780 = !{!11781, !11782, !11783}
!11781 = !DILocalVariable(name: "x", arg: 1, scope: !11777, file: !242, line: 1338, type: !4332)
!11782 = !DILocalVariable(name: "y", arg: 2, scope: !11777, file: !242, line: 1338, type: !4332)
!11783 = !DILocalVariable(name: "tmp", scope: !11776, file: !242, line: 1341, type: !11784, align: 64)
!11784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<regex_automata::dfa::onepass::Transition>", scope: !11785, file: !2, size: 64, align: 64, elements: !11786, templateParams: !1034, identifier: "9913bf2bc376365e9b01ee9f306ef62")
!11785 = !DINamespace(name: "maybe_uninit", scope: !130)
!11786 = !{!11787, !11788}
!11787 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !11784, file: !2, baseType: !7, align: 8)
!11788 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !11784, file: !2, baseType: !11789, size: 64, align: 64)
!11789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<regex_automata::dfa::onepass::Transition>", scope: !11790, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !11791, templateParams: !1034, identifier: "bad9996c683d9e21a8518ec275861614")
!11790 = !DINamespace(name: "manually_drop", scope: !130)
!11791 = !{!11792}
!11792 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !11789, file: !2, baseType: !11793, size: 64, align: 64, flags: DIFlagPrivate)
!11793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<regex_automata::dfa::onepass::Transition>", scope: !11794, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !11795, templateParams: !11797, identifier: "c34461a1193c691c19d68183739c30c5")
!11794 = !DINamespace(name: "maybe_dangling", scope: !130)
!11795 = !{!11796}
!11796 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11793, file: !2, baseType: !1036, size: 64, align: 64, flags: DIFlagPrivate)
!11797 = !{!11798}
!11798 = !DITemplateTypeParameter(name: "P", type: !1036)
!11799 = distinct !DILocation(line: 961, column: 13, scope: !11800, inlinedAt: !11809)
!11800 = distinct !DILexicalBlock(scope: !11801, file: !5634, line: 958, column: 9)
!11801 = distinct !DISubprogram(name: "swap_unchecked<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10Transition14swap_uncheckedBA_", scope: !5635, file: !5634, line: 947, type: !11802, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !11804)
!11802 = !DISubroutineType(types: !11803)
!11803 = !{null, !4695, !9, !9, !2445}
!11804 = !{!11805, !11806, !11807, !11808}
!11805 = !DILocalVariable(name: "self", arg: 1, scope: !11801, file: !5634, line: 947, type: !4695)
!11806 = !DILocalVariable(name: "a", arg: 2, scope: !11801, file: !5634, line: 947, type: !9)
!11807 = !DILocalVariable(name: "b", arg: 3, scope: !11801, file: !5634, line: 947, type: !9)
!11808 = !DILocalVariable(name: "ptr", scope: !11800, file: !5634, line: 958, type: !4332, align: 64)
!11809 = distinct !DILocation(line: 914, column: 18, scope: !11810, inlinedAt: !11815)
!11810 = distinct !DISubprogram(name: "swap<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10Transition4swapBA_", scope: !5635, file: !5634, line: 908, type: !11802, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !11811)
!11811 = !{!11812, !11813, !11814}
!11812 = !DILocalVariable(name: "self", arg: 1, scope: !11810, file: !5634, line: 908, type: !4695)
!11813 = !DILocalVariable(name: "a", arg: 2, scope: !11810, file: !5634, line: 908, type: !9)
!11814 = !DILocalVariable(name: "b", arg: 3, scope: !11810, file: !5634, line: 908, type: !9)
!11815 = distinct !DILocation(line: 2356, column: 24, scope: !11816, inlinedAt: !11830)
!11816 = distinct !DILexicalBlock(scope: !11817, file: !2371, line: 2355, column: 9)
!11817 = distinct !DILexicalBlock(scope: !11818, file: !2371, line: 2355, column: 9)
!11818 = distinct !DILexicalBlock(scope: !11819, file: !2371, line: 2354, column: 9)
!11819 = distinct !DILexicalBlock(scope: !11820, file: !2371, line: 2353, column: 9)
!11820 = distinct !DISubprogram(name: "swap_states", linkageName: "_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA11swap_states", scope: !1181, file: !2371, line: 2352, type: !11756, scopeLine: 2352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !11821, retainedNodes: !11822)
!11821 = !DISubprogram(name: "swap_states", linkageName: "_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA11swap_states", scope: !1181, file: !2371, line: 2352, type: !11756, scopeLine: 2352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !22)
!11822 = !{!11823, !11824, !11825, !11826, !11827, !11828, !11829}
!11823 = !DILocalVariable(name: "self", arg: 1, scope: !11820, file: !2371, line: 2352, type: !1547)
!11824 = !DILocalVariable(name: "id1", arg: 2, scope: !11820, file: !2371, line: 2352, type: !377)
!11825 = !DILocalVariable(name: "id2", arg: 3, scope: !11820, file: !2371, line: 2352, type: !377)
!11826 = !DILocalVariable(name: "o1", scope: !11819, file: !2371, line: 2353, type: !9, align: 64)
!11827 = !DILocalVariable(name: "o2", scope: !11818, file: !2371, line: 2354, type: !9, align: 64)
!11828 = !DILocalVariable(name: "iter", scope: !11817, file: !2371, line: 2355, type: !2345, align: 64)
!11829 = !DILocalVariable(name: "b", scope: !11816, file: !2371, line: 2355, type: !9, align: 64)
!11830 = distinct !DILocation(line: 235, column: 13, scope: !11755)
!11831 = !DILocation(line: 0, scope: !11768, inlinedAt: !11832)
!11832 = distinct !DILocation(line: 1351, column: 9, scope: !11776, inlinedAt: !11799)
!11833 = !DILocalVariable(name: "self", arg: 1, scope: !11834, file: !2326, line: 2192, type: !2331)
!11834 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2327, file: !2326, line: 2192, type: !2329, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !11835)
!11835 = !{!11833, !11836}
!11836 = !DILocalVariable(name: "other", arg: 2, scope: !11834, file: !2326, line: 2192, type: !2331)
!11837 = !DILocation(line: 2192, column: 19, scope: !11834, inlinedAt: !11838)
!11838 = distinct !DILocation(line: 1100, column: 12, scope: !11839, inlinedAt: !11844)
!11839 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs9GYDdpCSJ4S_14regex_automata", scope: !2339, file: !2337, line: 1099, type: !2342, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !975, retainedNodes: !11840)
!11840 = !{!11841, !11842}
!11841 = !DILocalVariable(name: "self", arg: 1, scope: !11839, file: !2337, line: 1099, type: !2344)
!11842 = !DILocalVariable(name: "old", scope: !11843, file: !2337, line: 1101, type: !9, align: 64)
!11843 = distinct !DILexicalBlock(scope: !11839, file: !2337, line: 1101, column: 13)
!11844 = distinct !DILocation(line: 1185, column: 14, scope: !11845, inlinedAt: !11848)
!11845 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata", scope: !2364, file: !2337, line: 1184, type: !2342, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !2367, retainedNodes: !11846)
!11846 = !{!11847}
!11847 = !DILocalVariable(name: "self", arg: 1, scope: !11845, file: !2337, line: 1184, type: !2344)
!11848 = distinct !DILocation(line: 2355, column: 18, scope: !11849, inlinedAt: !11830)
!11849 = !DILexicalBlockFile(scope: !11817, file: !2371, discriminator: 2)
!11850 = !DILocation(line: 1099, column: 18, scope: !11839, inlinedAt: !11844)
!11851 = !DILocation(line: 1184, column: 13, scope: !11845, inlinedAt: !11848)
!11852 = !DILocation(line: 0, scope: !11820, inlinedAt: !11830)
!11853 = !DILocalVariable(name: "self", arg: 1, scope: !11854, file: !2371, line: 1508, type: !1547)
!11854 = distinct !DISubprogram(name: "stride2", linkageName: "_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA7stride2", scope: !1181, file: !2371, line: 1508, type: !2415, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !2424, retainedNodes: !11855)
!11855 = !{!11853}
!11856 = !DILocation(line: 0, scope: !11854, inlinedAt: !11857)
!11857 = distinct !DILocation(line: 2353, column: 41, scope: !11820, inlinedAt: !11830)
!11858 = !DILocation(line: 0, scope: !11854, inlinedAt: !11859)
!11859 = distinct !DILocation(line: 2354, column: 41, scope: !11819, inlinedAt: !11830)
!11860 = !DILocation(line: 0, scope: !11854, inlinedAt: !11861)
!11861 = distinct !DILocation(line: 1525, column: 19, scope: !11862, inlinedAt: !11865)
!11862 = distinct !DISubprogram(name: "stride", linkageName: "_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA6stride", scope: !1181, file: !2371, line: 1524, type: !2415, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !4669, retainedNodes: !11863)
!11863 = !{!11864}
!11864 = !DILocalVariable(name: "self", arg: 1, scope: !11862, file: !2371, line: 1524, type: !1547)
!11865 = distinct !DILocation(line: 2355, column: 26, scope: !11818, inlinedAt: !11830)
!11866 = !DILocalVariable(name: "n", scope: !11867, file: !2337, line: 263, type: !9, align: 64)
!11867 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2432, file: !2337, line: 263, type: !2433, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !11868)
!11868 = !{!11869, !11866}
!11869 = !DILocalVariable(name: "start", arg: 1, scope: !11867, file: !2337, line: 263, type: !9)
!11870 = !DILocation(line: 0, scope: !11867, inlinedAt: !11871)
!11871 = distinct !DILocation(line: 1103, column: 35, scope: !11843, inlinedAt: !11844)
!11872 = !DILocalVariable(name: "rhs", scope: !11873, file: !2441, line: 1001, type: !9, align: 64)
!11873 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !2442, file: !2441, line: 1001, type: !2443, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !11874)
!11874 = !{!11875, !11872}
!11875 = !DILocalVariable(name: "self", arg: 1, scope: !11873, file: !2441, line: 1001, type: !9)
!11876 = !DILocation(line: 0, scope: !11873, inlinedAt: !11877)
!11877 = distinct !DILocation(line: 265, column: 28, scope: !11867, inlinedAt: !11871)
!11878 = !DILocalVariable(name: "count", scope: !11879, file: !242, line: 649, type: !9, align: 64)
!11879 = distinct !DISubprogram(name: "copy<regex_automata::dfa::onepass::Transition>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr4copyNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEBC_", scope: !243, file: !242, line: 649, type: !11769, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !11880)
!11880 = !{!11881, !11882, !11878}
!11881 = !DILocalVariable(name: "src", arg: 1, scope: !11879, file: !242, line: 649, type: !4298)
!11882 = !DILocalVariable(name: "dst", arg: 2, scope: !11879, file: !242, line: 649, type: !4332)
!11883 = !DILocation(line: 0, scope: !11879, inlinedAt: !11884)
!11884 = distinct !DILocation(line: 1350, column: 9, scope: !11776, inlinedAt: !11799)
!11885 = !DILocalVariable(name: "self", arg: 1, scope: !11886, file: !2608, line: 472, type: !2537)
!11886 = distinct !DISubprogram(name: "as_usize", linkageName: "_RNvMs1r_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_7StateID8as_usize", scope: !377, file: !2608, line: 472, type: !2609, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !2611, retainedNodes: !11887)
!11887 = !{!11885}
!11888 = !DILocation(line: 472, column: 35, scope: !11886, inlinedAt: !11889)
!11889 = distinct !DILocation(line: 2353, column: 22, scope: !11820, inlinedAt: !11830)
!11890 = !DILocalVariable(name: "self", arg: 1, scope: !11891, file: !2608, line: 200, type: !2619)
!11891 = distinct !DISubprogram(name: "as_usize", linkageName: "_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndex8as_usize", scope: !380, file: !2608, line: 200, type: !2617, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !2620, retainedNodes: !11892)
!11892 = !{!11890}
!11893 = !DILocation(line: 200, column: 27, scope: !11891, inlinedAt: !11894)
!11894 = distinct !DILocation(line: 473, column: 24, scope: !11886, inlinedAt: !11889)
!11895 = !DILocation(line: 202, column: 9, scope: !11891, inlinedAt: !11894)
!11896 = !DILocation(line: 1509, column: 9, scope: !11854, inlinedAt: !11857)
!11897 = !DILocation(line: 2353, column: 18, scope: !11820, inlinedAt: !11830)
!11898 = !DILocation(line: 0, scope: !11819, inlinedAt: !11830)
!11899 = !DILocation(line: 472, column: 35, scope: !11886, inlinedAt: !11900)
!11900 = distinct !DILocation(line: 2354, column: 22, scope: !11819, inlinedAt: !11830)
!11901 = !DILocation(line: 200, column: 27, scope: !11891, inlinedAt: !11902)
!11902 = distinct !DILocation(line: 473, column: 24, scope: !11903, inlinedAt: !11900)
!11903 = !DILexicalBlockFile(scope: !11886, file: !2608, discriminator: 2)
!11904 = !DILocation(line: 202, column: 9, scope: !11891, inlinedAt: !11902)
!11905 = !DILocation(line: 2354, column: 18, scope: !11819, inlinedAt: !11830)
!11906 = !DILocation(line: 0, scope: !11818, inlinedAt: !11830)
!11907 = !DILocation(line: 0, scope: !11817, inlinedAt: !11830)
!11908 = !DILocation(line: 2192, column: 26, scope: !11834, inlinedAt: !11838)
!11909 = !DILocation(line: 0, scope: !11843, inlinedAt: !11844)
!11910 = !DILocation(line: 910, column: 18, scope: !11810, inlinedAt: !11815)
!11911 = !DILocation(line: 1013, column: 17, scope: !11873, inlinedAt: !11877)
!11912 = !DILocation(line: 0, scope: !11816, inlinedAt: !11830)
!11913 = !DILocation(line: 0, scope: !11810, inlinedAt: !11815)
!11914 = !DILocation(line: 0, scope: !11801, inlinedAt: !11809)
!11915 = !DILocation(line: 2356, column: 29, scope: !11816, inlinedAt: !11830)
!11916 = !DILocalVariable(name: "count", arg: 2, scope: !11917, file: !3533, line: 936, type: !9)
!11917 = distinct !DISubprogram(name: "add<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10Transition3addBI_", scope: !3534, file: !3533, line: 936, type: !11918, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !11920)
!11918 = !DISubroutineType(types: !11919)
!11919 = !{!4332, !4332, !9, !2445}
!11920 = !{!11921, !11916}
!11921 = !DILocalVariable(name: "self", arg: 1, scope: !11917, file: !3533, line: 936, type: !4332)
!11922 = !DILocation(line: 0, scope: !11917, inlinedAt: !11923)
!11923 = distinct !DILocation(line: 961, column: 27, scope: !11800, inlinedAt: !11809)
!11924 = !DILocation(line: 2356, column: 37, scope: !11816, inlinedAt: !11830)
!11925 = !DILocation(line: 0, scope: !11917, inlinedAt: !11926)
!11926 = distinct !DILocation(line: 961, column: 39, scope: !11800, inlinedAt: !11809)
!11927 = !DILocation(line: 911, column: 18, scope: !11810, inlinedAt: !11815)
!11928 = !DILocation(line: 0, scope: !11800, inlinedAt: !11809)
!11929 = !DILocation(line: 970, column: 18, scope: !11917, inlinedAt: !11923)
!11930 = !DILocation(line: 0, scope: !11777, inlinedAt: !11799)
!11931 = !DILocation(line: 970, column: 18, scope: !11917, inlinedAt: !11926)
!11932 = !DILocation(line: 573, column: 14, scope: !11768, inlinedAt: !11775)
!11933 = !DILocation(line: 0, scope: !11776, inlinedAt: !11799)
!11934 = !DILocation(line: 664, column: 9, scope: !11879, inlinedAt: !11884)
!11935 = !DILocation(line: 573, column: 14, scope: !11768, inlinedAt: !11832)
!11936 = !DILocation(line: 2192, column: 50, scope: !11834, inlinedAt: !11838)
!11937 = !DILocation(line: 1100, column: 12, scope: !11839, inlinedAt: !11844)
!11938 = !DILocation(line: 236, column: 10, scope: !11755)
!11939 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs1K_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt", scope: !11940, file: !2608, line: 638, type: !11941, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !11944)
!11940 = !DINamespace(name: "{impl#110}", scope: !13)
!11941 = !DISubroutineType(types: !11942)
!11942 = !{!3074, !11943, !3090}
!11943 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::util::primitives::StateIDError", baseType: !12, size: 64, align: 64, dwarfAddressSpace: 0)
!11944 = !{!11945, !11946}
!11945 = !DILocalVariable(name: "self", arg: 1, scope: !11939, file: !2608, line: 638, type: !11943)
!11946 = !DILocalVariable(name: "f", arg: 2, scope: !11939, file: !2608, line: 638, type: !3090)
!11947 = !DILocation(line: 0, scope: !11939)
!11948 = !DILocation(line: 639, column: 25, scope: !11939)
!11949 = !DILocation(line: 638, column: 25, scope: !11939)
!11950 = !DILocation(line: 638, column: 29, scope: !11939)
!11951 = !DILocation(line: 638, column: 30, scope: !11939)
!11952 = distinct !DISubprogram(name: "fmt<regex_automata::dfa::onepass::DFA>", linkageName: "_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass3DFANtB6_5Debug3fmtBC_", scope: !11954, file: !11953, line: 2887, type: !11955, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1550, retainedNodes: !11958)
!11953 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "05ae4d1b33199de888249ef022c590ca")
!11954 = !DINamespace(name: "{impl#80}", scope: !3055)
!11955 = !DISubroutineType(types: !11956)
!11956 = !{!3074, !11957, !3090}
!11957 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&regex_automata::dfa::onepass::DFA", baseType: !2417, size: 64, align: 64, dwarfAddressSpace: 0)
!11958 = !{!11959, !11960}
!11959 = !DILocalVariable(name: "self", arg: 1, scope: !11952, file: !11953, line: 2887, type: !11957)
!11960 = !DILocalVariable(name: "f", arg: 2, scope: !11952, file: !11953, line: 2887, type: !3090)
!11961 = !DILocation(line: 0, scope: !11952)
!11962 = !DILocation(line: 2887, column: 71, scope: !11952)
!11963 = !DILocation(line: 2887, column: 62, scope: !11952)
!11964 = !DILocation(line: 2887, column: 84, scope: !11952)
!11965 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt", scope: !11966, file: !2371, line: 2377, type: !11967, scopeLine: 2377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !11969)
!11966 = !DINamespace(name: "{impl#7}", scope: !1037)
!11967 = !DISubroutineType(types: !11968)
!11968 = !{!3074, !2417, !3090}
!11969 = !{!11970, !11971, !11972, !11987, !11989, !11991, !11993, !11995, !11997, !11999, !12001, !12003, !12005, !12007, !12009, !12012, !12015, !12017, !12019, !12026, !12029, !12031, !12033, !12035, !12037, !12039, !12041, !12043, !12045, !12047, !12049, !12051, !12053, !12054, !12057, !12060, !12062, !12064, !12071, !12075, !12077, !12079, !12082, !12085, !12087, !12089, !12092, !12095, !12097, !12099, !12101}
!11970 = !DILocalVariable(name: "self", arg: 1, scope: !11965, file: !2371, line: 2377, type: !2417)
!11971 = !DILocalVariable(name: "f", arg: 2, scope: !11965, file: !2371, line: 2377, type: !3090)
!11972 = !DILocalVariable(name: "residual", scope: !11973, file: !2371, line: 2416, type: !11974, align: 8)
!11973 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2416, column: 37)
!11974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<core::convert::Infallible, core::fmt::Error>", scope: !2767, file: !2, align: 8, flags: DIFlagPublic, elements: !11975, templateParams: !22, identifier: "509cef8d7f2496154188c982e2216bdc")
!11975 = !{!11976}
!11976 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !11974, file: !2, align: 8, elements: !11977, templateParams: !22, identifier: "6ce5b6880c87309fc28360d5a2943bae")
!11977 = !{!11978, !11983}
!11978 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !11976, file: !2, baseType: !11979, align: 8)
!11979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !11974, file: !2, align: 8, flags: DIFlagPublic, elements: !11980, templateParams: !11982, identifier: "a39e6b5b8c72bb52a107f17bd4cfe7d4")
!11980 = !{!11981}
!11981 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11979, file: !2, baseType: !2115, align: 8, flags: DIFlagPublic)
!11982 = !{!2114, !3083}
!11983 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !11976, file: !2, baseType: !11984, align: 8)
!11984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !11974, file: !2, align: 8, flags: DIFlagPublic, elements: !11985, templateParams: !11982, identifier: "69d2c8765462f5b222fbdd70224b6e0b")
!11985 = !{!11986}
!11986 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !11984, file: !2, baseType: !3084, align: 8, flags: DIFlagPublic)
!11987 = !DILocalVariable(name: "val", scope: !11988, file: !2371, line: 2416, type: !7, align: 8)
!11988 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2416, column: 37)
!11989 = !DILocalVariable(name: "iter", scope: !11990, file: !2371, line: 2417, type: !2345, align: 64)
!11990 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2417, column: 9)
!11991 = !DILocalVariable(name: "index", scope: !11992, file: !2371, line: 2417, type: !9, align: 64)
!11992 = distinct !DILexicalBlock(scope: !11990, file: !2371, line: 2417, column: 9)
!11993 = !DILocalVariable(name: "sid", scope: !11994, file: !2371, line: 2418, type: !377, align: 32)
!11994 = distinct !DILexicalBlock(scope: !11992, file: !2371, line: 2418, column: 13)
!11995 = !DILocalVariable(name: "pateps", scope: !11996, file: !2371, line: 2419, type: !3823, align: 64)
!11996 = distinct !DILexicalBlock(scope: !11994, file: !2371, line: 2419, column: 13)
!11997 = !DILocalVariable(name: "residual", scope: !11998, file: !2371, line: 2421, type: !11974, align: 8)
!11998 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2421, column: 32)
!11999 = !DILocalVariable(name: "val", scope: !12000, file: !2371, line: 2421, type: !7, align: 8)
!12000 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2421, column: 32)
!12001 = !DILocalVariable(name: "residual", scope: !12002, file: !2371, line: 2423, type: !11974, align: 8)
!12002 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2423, column: 32)
!12003 = !DILocalVariable(name: "val", scope: !12004, file: !2371, line: 2423, type: !7, align: 8)
!12004 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2423, column: 32)
!12005 = !DILocalVariable(name: "residual", scope: !12006, file: !2371, line: 2425, type: !11974, align: 8)
!12006 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2425, column: 32)
!12007 = !DILocalVariable(name: "val", scope: !12008, file: !2371, line: 2425, type: !7, align: 8)
!12008 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2425, column: 32)
!12009 = !DILocalVariable(name: "args", scope: !12010, file: !2371, line: 2427, type: !9568, align: 64)
!12010 = !DILexicalBlockFile(scope: !12011, file: !2371, discriminator: 0)
!12011 = distinct !DILexicalBlock(scope: !11996, file: !8939, line: 610, column: 24)
!12012 = !DILocalVariable(name: "args", scope: !12013, file: !2371, line: 2427, type: !9574, align: 64)
!12013 = !DILexicalBlockFile(scope: !12014, file: !2371, discriminator: 0)
!12014 = distinct !DILexicalBlock(scope: !12011, file: !8939, line: 610, column: 24)
!12015 = !DILocalVariable(name: "residual", scope: !12016, file: !2371, line: 2427, type: !11974, align: 8)
!12016 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2427, column: 48)
!12017 = !DILocalVariable(name: "val", scope: !12018, file: !2371, line: 2427, type: !7, align: 8)
!12018 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2427, column: 48)
!12019 = !DILocalVariable(name: "args", scope: !12020, file: !2371, line: 2429, type: !12022, align: 64)
!12020 = !DILexicalBlockFile(scope: !12021, file: !2371, discriminator: 0)
!12021 = distinct !DILexicalBlock(scope: !11996, file: !8939, line: 610, column: 24)
!12022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_automata::dfa::onepass::PatternEpsilons)", file: !2, size: 64, align: 64, elements: !12023, templateParams: !22, identifier: "e86bf477b1d4d10d3a336add1d830e8b")
!12023 = !{!12024}
!12024 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12022, file: !2, baseType: !12025, size: 64, align: 64)
!12025 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::dfa::onepass::PatternEpsilons", baseType: !3823, size: 64, align: 64, dwarfAddressSpace: 0)
!12026 = !DILocalVariable(name: "args", scope: !12027, file: !2371, line: 2429, type: !9574, align: 64)
!12027 = !DILexicalBlockFile(scope: !12028, file: !2371, discriminator: 0)
!12028 = distinct !DILexicalBlock(scope: !12021, file: !8939, line: 610, column: 24)
!12029 = !DILocalVariable(name: "residual", scope: !12030, file: !2371, line: 2429, type: !11974, align: 8)
!12030 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2429, column: 43)
!12031 = !DILocalVariable(name: "val", scope: !12032, file: !2371, line: 2429, type: !7, align: 8)
!12032 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2429, column: 43)
!12033 = !DILocalVariable(name: "residual", scope: !12034, file: !2371, line: 2431, type: !11974, align: 8)
!12034 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2431, column: 28)
!12035 = !DILocalVariable(name: "val", scope: !12036, file: !2371, line: 2431, type: !7, align: 8)
!12036 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2431, column: 28)
!12037 = !DILocalVariable(name: "residual", scope: !12038, file: !2371, line: 2432, type: !11974, align: 8)
!12038 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2432, column: 50)
!12039 = !DILocalVariable(name: "val", scope: !12040, file: !2371, line: 2432, type: !7, align: 8)
!12040 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2432, column: 50)
!12041 = !DILocalVariable(name: "residual", scope: !12042, file: !2371, line: 2433, type: !11974, align: 8)
!12042 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2433, column: 28)
!12043 = !DILocalVariable(name: "val", scope: !12044, file: !2371, line: 2433, type: !7, align: 8)
!12044 = distinct !DILexicalBlock(scope: !11996, file: !2371, line: 2433, column: 28)
!12045 = !DILocalVariable(name: "residual", scope: !12046, file: !2371, line: 2435, type: !11974, align: 8)
!12046 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2435, column: 24)
!12047 = !DILocalVariable(name: "val", scope: !12048, file: !2371, line: 2435, type: !7, align: 8)
!12048 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2435, column: 24)
!12049 = !DILocalVariable(name: "iter", scope: !12050, file: !2371, line: 2436, type: !9007, align: 64)
!12050 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2436, column: 9)
!12051 = !DILocalVariable(name: "i", scope: !12052, file: !2371, line: 2436, type: !9, align: 64)
!12052 = distinct !DILexicalBlock(scope: !12050, file: !2371, line: 2436, column: 9)
!12053 = !DILocalVariable(name: "sid", scope: !12052, file: !2371, line: 2436, type: !377, align: 32)
!12054 = !DILocalVariable(name: "args", scope: !12055, file: !2371, line: 2438, type: !9568, align: 64)
!12055 = !DILexicalBlockFile(scope: !12056, file: !2371, discriminator: 0)
!12056 = distinct !DILexicalBlock(scope: !12052, file: !8939, line: 652, column: 24)
!12057 = !DILocalVariable(name: "args", scope: !12058, file: !2371, line: 2438, type: !9574, align: 64)
!12058 = !DILexicalBlockFile(scope: !12059, file: !2371, discriminator: 0)
!12059 = distinct !DILexicalBlock(scope: !12056, file: !8939, line: 652, column: 24)
!12060 = !DILocalVariable(name: "residual", scope: !12061, file: !2371, line: 2438, type: !11974, align: 8)
!12061 = distinct !DILexicalBlock(scope: !12052, file: !2371, line: 2438, column: 64)
!12062 = !DILocalVariable(name: "val", scope: !12063, file: !2371, line: 2438, type: !7, align: 8)
!12063 = distinct !DILexicalBlock(scope: !12052, file: !2371, line: 2438, column: 64)
!12064 = !DILocalVariable(name: "args", scope: !12065, file: !2371, line: 2440, type: !12067, align: 64)
!12065 = !DILexicalBlockFile(scope: !12066, file: !2371, discriminator: 0)
!12066 = distinct !DILexicalBlock(scope: !12052, file: !8939, line: 652, column: 24)
!12067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&usize, &usize)", file: !2, size: 128, align: 64, elements: !12068, templateParams: !22, identifier: "3cb66d445dff230a928bd4c12b072466")
!12068 = !{!12069, !12070}
!12069 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12067, file: !2, baseType: !2331, size: 64, align: 64)
!12070 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !12067, file: !2, baseType: !2331, size: 64, align: 64, offset: 64)
!12071 = !DILocalVariable(name: "args", scope: !12072, file: !2371, line: 2440, type: !12074, align: 64)
!12072 = !DILexicalBlockFile(scope: !12073, file: !2371, discriminator: 0)
!12073 = distinct !DILexicalBlock(scope: !12066, file: !8939, line: 652, column: 24)
!12074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3053, size: 256, align: 64, elements: !1453)
!12075 = !DILocalVariable(name: "residual", scope: !12076, file: !2371, line: 2445, type: !11974, align: 8)
!12076 = distinct !DILexicalBlock(scope: !12052, file: !2371, line: 2445, column: 18)
!12077 = !DILocalVariable(name: "val", scope: !12078, file: !2371, line: 2440, type: !7, align: 8)
!12078 = distinct !DILexicalBlock(scope: !12052, file: !2371, line: 2445, column: 18)
!12079 = !DILocalVariable(name: "args", scope: !12080, file: !2371, line: 2448, type: !9568, align: 64)
!12080 = !DILexicalBlockFile(scope: !12081, file: !2371, discriminator: 0)
!12081 = distinct !DILexicalBlock(scope: !11965, file: !8939, line: 652, column: 24)
!12082 = !DILocalVariable(name: "args", scope: !12083, file: !2371, line: 2448, type: !9574, align: 64)
!12083 = !DILexicalBlockFile(scope: !12084, file: !2371, discriminator: 0)
!12084 = distinct !DILexicalBlock(scope: !12081, file: !8939, line: 652, column: 24)
!12085 = !DILocalVariable(name: "residual", scope: !12086, file: !2371, line: 2448, type: !11974, align: 8)
!12086 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2448, column: 60)
!12087 = !DILocalVariable(name: "val", scope: !12088, file: !2371, line: 2448, type: !7, align: 8)
!12088 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2448, column: 60)
!12089 = !DILocalVariable(name: "args", scope: !12090, file: !2371, line: 2449, type: !9568, align: 64)
!12090 = !DILexicalBlockFile(scope: !12091, file: !2371, discriminator: 0)
!12091 = distinct !DILexicalBlock(scope: !11965, file: !8939, line: 652, column: 24)
!12092 = !DILocalVariable(name: "args", scope: !12093, file: !2371, line: 2449, type: !9574, align: 64)
!12093 = !DILexicalBlockFile(scope: !12094, file: !2371, discriminator: 0)
!12094 = distinct !DILexicalBlock(scope: !12091, file: !8939, line: 652, column: 24)
!12095 = !DILocalVariable(name: "residual", scope: !12096, file: !2371, line: 2449, type: !11974, align: 8)
!12096 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2449, column: 64)
!12097 = !DILocalVariable(name: "val", scope: !12098, file: !2371, line: 2449, type: !7, align: 8)
!12098 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2449, column: 64)
!12099 = !DILocalVariable(name: "residual", scope: !12100, file: !2371, line: 2450, type: !11974, align: 8)
!12100 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2450, column: 25)
!12101 = !DILocalVariable(name: "val", scope: !12102, file: !2371, line: 2450, type: !7, align: 8)
!12102 = distinct !DILexicalBlock(scope: !11965, file: !2371, line: 2450, column: 25)
!12103 = !DILocation(line: 0, scope: !11233, inlinedAt: !12104)
!12104 = distinct !DILocation(line: 80, column: 27, scope: !12105, inlinedAt: !12118)
!12105 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<regex_automata::util::primitives::StateID>>", linkageName: "_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtB8_6traits8iterator8Iterator4nextB1D_", scope: !9900, file: !9899, line: 79, type: !12106, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !9018, retainedNodes: !12108)
!12106 = !DISubroutineType(types: !12107)
!12107 = !{!9941, !9922}
!12108 = !{!12109, !12110, !12112, !12114, !12116}
!12109 = !DILocalVariable(name: "self", arg: 1, scope: !12105, file: !9899, line: 79, type: !9922)
!12110 = !DILocalVariable(name: "a", scope: !12111, file: !9899, line: 80, type: !2537, align: 64)
!12111 = distinct !DILexicalBlock(scope: !12105, file: !9899, line: 80, column: 9)
!12112 = !DILocalVariable(name: "residual", scope: !12113, file: !9899, line: 80, type: !2107, align: 8)
!12113 = distinct !DILexicalBlock(scope: !12105, file: !9899, line: 80, column: 33)
!12114 = !DILocalVariable(name: "val", scope: !12115, file: !9899, line: 80, type: !2537, align: 64)
!12115 = distinct !DILexicalBlock(scope: !12105, file: !9899, line: 80, column: 33)
!12116 = !DILocalVariable(name: "i", scope: !12117, file: !9899, line: 81, type: !9, align: 64)
!12117 = distinct !DILexicalBlock(scope: !12111, file: !9899, line: 81, column: 9)
!12118 = distinct !DILocation(line: 2436, column: 26, scope: !12050)
!12119 = !DILocation(line: 0, scope: !12105, inlinedAt: !12118)
!12120 = !DILocalVariable(name: "self", arg: 1, scope: !12121, file: !2326, line: 2192, type: !2331)
!12121 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2327, file: !2326, line: 2192, type: !2329, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !12122)
!12122 = !{!12120, !12123}
!12123 = !DILocalVariable(name: "other", arg: 2, scope: !12121, file: !2326, line: 2192, type: !2331)
!12124 = !DILocation(line: 2192, column: 19, scope: !12121, inlinedAt: !12125)
!12125 = !DILocation(line: 1100, column: 12, scope: !12126, inlinedAt: !12131)
!12126 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs9GYDdpCSJ4S_14regex_automata", scope: !2339, file: !2337, line: 1099, type: !2342, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !975, retainedNodes: !12127)
!12127 = !{!12128, !12129}
!12128 = !DILocalVariable(name: "self", arg: 1, scope: !12126, file: !2337, line: 1099, type: !2344)
!12129 = !DILocalVariable(name: "old", scope: !12130, file: !2337, line: 1101, type: !9, align: 64)
!12130 = distinct !DILexicalBlock(scope: !12126, file: !2337, line: 1101, column: 13)
!12131 = !DILocation(line: 1185, column: 14, scope: !12132, inlinedAt: !12135)
!12132 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata", scope: !2364, file: !2337, line: 1184, type: !2342, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !2367, retainedNodes: !12133)
!12133 = !{!12134}
!12134 = !DILocalVariable(name: "self", arg: 1, scope: !12132, file: !2337, line: 1184, type: !2344)
!12135 = !DILocation(line: 2417, column: 22, scope: !12136)
!12136 = !DILexicalBlockFile(scope: !11990, file: !2371, discriminator: 2)
!12137 = !DILocation(line: 1099, column: 18, scope: !12126, inlinedAt: !12131)
end_hunk_3
begin_hunk_4_@llvm.umin.i64/@llvm.umax.i64
!12755 = !DIDerivedType(tag: DW_TAG_member, scope: !12739, file: !2, baseType: !21, size: 64, align: 64, flags: DIFlagArtificial)
!12756 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::enumerate::Enumerate<regex_automata::dfa::onepass::SparseTransitionIter>", baseType: !12757, size: 64, align: 64, dwarfAddressSpace: 0)
!12757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Enumerate<regex_automata::dfa::onepass::SparseTransitionIter>", scope: !9008, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !12758, templateParams: !12761, identifier: "eeb91078be4d99b29c4fb754bc76a8e0")
!12758 = !{!12759, !12760}
!12759 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !12757, file: !2, baseType: !12701, size: 384, align: 64, flags: DIFlagPrivate)
!12760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !12757, file: !2, baseType: !9, size: 64, align: 64, offset: 384, flags: DIFlagPrivate)
!12761 = !{!12762}
!12762 = !DITemplateTypeParameter(name: "I", type: !12701)
!12763 = !{!12764, !12765, !12767, !12769, !12771}
!12764 = !DILocalVariable(name: "self", arg: 1, scope: !12736, file: !9899, line: 79, type: !12756)
!12765 = !DILocalVariable(name: "a", scope: !12766, file: !9899, line: 80, type: !12672, align: 64)
!12766 = distinct !DILexicalBlock(scope: !12736, file: !9899, line: 80, column: 9)
!12767 = !DILocalVariable(name: "residual", scope: !12768, file: !9899, line: 80, type: !2107, align: 8)
!12768 = distinct !DILexicalBlock(scope: !12736, file: !9899, line: 80, column: 33)
!12769 = !DILocalVariable(name: "val", scope: !12770, file: !9899, line: 80, type: !12672, align: 64)
!12770 = distinct !DILexicalBlock(scope: !12736, file: !9899, line: 80, column: 33)
!12771 = !DILocalVariable(name: "i", scope: !12772, file: !9899, line: 81, type: !9, align: 64)
!12772 = distinct !DILexicalBlock(scope: !12766, file: !9899, line: 81, column: 9)
!12773 = distinct !DILocation(line: 2384, column: 17, scope: !12774, inlinedAt: !12843)
!12774 = distinct !DILexicalBlock(scope: !12775, file: !2371, line: 2383, column: 13)
!12775 = distinct !DISubprogram(name: "debug_state_transitions", linkageName: "_RNvNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB7_3DFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt23debug_state_transitions", scope: !12776, file: !2371, line: 2378, type: !12777, scopeLine: 2378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !12779)
!12776 = !DINamespace(name: "fmt", scope: !11966)
!12777 = !DISubroutineType(cc: DW_CC_nocall, types: !12778)
!12778 = !{!3074, !3090, !2417, !377}
!12779 = !{!12780, !12781, !12782, !12783, !12784, !12786, !12787, !12788, !12789, !12791, !12793, !12795, !12803, !12806, !12808, !12810, !12818, !12821, !12823, !12825, !12827, !12829, !12836, !12839, !12841}
!12780 = !DILocalVariable(name: "f", arg: 1, scope: !12775, file: !2371, line: 2379, type: !3090)
!12781 = !DILocalVariable(name: "dfa", arg: 2, scope: !12775, file: !2371, line: 2380, type: !2417)
!12782 = !DILocalVariable(name: "sid", arg: 3, scope: !12775, file: !2371, line: 2381, type: !377)
!12783 = !DILocalVariable(name: "iter", scope: !12774, file: !2371, line: 2384, type: !12757, align: 64)
!12784 = !DILocalVariable(name: "i", scope: !12785, file: !2371, line: 2383, type: !9, align: 64)
!12785 = distinct !DILexicalBlock(scope: !12774, file: !2371, line: 2383, column: 13)
!12786 = !DILocalVariable(name: "start", scope: !12785, file: !2371, line: 2383, type: !65, align: 8)
!12787 = !DILocalVariable(name: "end", scope: !12785, file: !2371, line: 2383, type: !65, align: 8)
!12788 = !DILocalVariable(name: "trans", scope: !12785, file: !2371, line: 2383, type: !1036, align: 64)
!12789 = !DILocalVariable(name: "next", scope: !12790, file: !2371, line: 2386, type: !377, align: 32)
!12790 = distinct !DILexicalBlock(scope: !12785, file: !2371, line: 2386, column: 17)
!12791 = !DILocalVariable(name: "residual", scope: !12792, file: !2371, line: 2388, type: !11974, align: 8)
!12792 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2388, column: 36)
!12793 = !DILocalVariable(name: "val", scope: !12794, file: !2371, line: 2388, type: !7, align: 8)
!12794 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2388, column: 36)
!12795 = !DILocalVariable(name: "args", scope: !12796, file: !2371, line: 2391, type: !12798, align: 64)
!12796 = !DILexicalBlockFile(scope: !12797, file: !2371, discriminator: 0)
!12797 = distinct !DILexicalBlock(scope: !12790, file: !8939, line: 610, column: 24)
!12798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_automata::util::escape::DebugByte, &usize)", file: !2, size: 128, align: 64, elements: !12799, templateParams: !22, identifier: "84414f82dd1bc473eaff2e3b02e53c39")
!12799 = !{!12800, !12802}
!12800 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12798, file: !2, baseType: !12801, size: 64, align: 64)
!12801 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::util::escape::DebugByte", baseType: !1470, size: 64, align: 64, dwarfAddressSpace: 0)
!12802 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !12798, file: !2, baseType: !2331, size: 64, align: 64, offset: 64)
!12803 = !DILocalVariable(name: "args", scope: !12804, file: !2371, line: 2391, type: !12074, align: 64)
!12804 = !DILexicalBlockFile(scope: !12805, file: !2371, discriminator: 0)
!12805 = distinct !DILexicalBlock(scope: !12797, file: !8939, line: 610, column: 24)
!12806 = !DILocalVariable(name: "residual", scope: !12807, file: !2371, line: 2396, type: !11974, align: 8)
!12807 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2396, column: 22)
!12808 = !DILocalVariable(name: "val", scope: !12809, file: !2371, line: 2391, type: !7, align: 8)
!12809 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2396, column: 22)
!12810 = !DILocalVariable(name: "args", scope: !12811, file: !2371, line: 2398, type: !12813, align: 64)
!12811 = !DILexicalBlockFile(scope: !12812, file: !2371, discriminator: 0)
!12812 = distinct !DILexicalBlock(scope: !12790, file: !8939, line: 610, column: 24)
!12813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_automata::util::escape::DebugByte, &regex_automata::util::escape::DebugByte, &usize)", file: !2, size: 192, align: 64, elements: !12814, templateParams: !22, identifier: "1b789327ee8507309ad62055935ed7dc")
!12814 = !{!12815, !12816, !12817}
!12815 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12813, file: !2, baseType: !12801, size: 64, align: 64)
!12816 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !12813, file: !2, baseType: !12801, size: 64, align: 64, offset: 64)
!12817 = !DIDerivedType(tag: DW_TAG_member, name: "__2", scope: !12813, file: !2, baseType: !2331, size: 64, align: 64, offset: 128)
!12818 = !DILocalVariable(name: "args", scope: !12819, file: !2371, line: 2398, type: !3052, align: 64)
!12819 = !DILexicalBlockFile(scope: !12820, file: !2371, discriminator: 0)
!12820 = distinct !DILexicalBlock(scope: !12812, file: !8939, line: 610, column: 24)
!12821 = !DILocalVariable(name: "residual", scope: !12822, file: !2371, line: 2404, type: !11974, align: 8)
!12822 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2404, column: 22)
!12823 = !DILocalVariable(name: "val", scope: !12824, file: !2371, line: 2398, type: !7, align: 8)
!12824 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2404, column: 22)
!12825 = !DILocalVariable(name: "residual", scope: !12826, file: !2371, line: 2407, type: !11974, align: 8)
!12826 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2407, column: 39)
!12827 = !DILocalVariable(name: "val", scope: !12828, file: !2371, line: 2407, type: !7, align: 8)
!12828 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2407, column: 39)
!12829 = !DILocalVariable(name: "args", scope: !12830, file: !2371, line: 2410, type: !12832, align: 64)
!12830 = !DILexicalBlockFile(scope: !12831, file: !2371, discriminator: 0)
!12831 = distinct !DILexicalBlock(scope: !12790, file: !8939, line: 610, column: 24)
!12832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&regex_automata::dfa::onepass::Epsilons)", file: !2, size: 64, align: 64, elements: !12833, templateParams: !22, identifier: "4f347a31c565a76d35fb0360754fbab3")
!12833 = !{!12834}
!12834 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12832, file: !2, baseType: !12835, size: 64, align: 64)
!12835 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::dfa::onepass::Epsilons", baseType: !1149, size: 64, align: 64, dwarfAddressSpace: 0)
!12836 = !DILocalVariable(name: "args", scope: !12837, file: !2371, line: 2410, type: !9574, align: 64)
!12837 = !DILexicalBlockFile(scope: !12838, file: !2371, discriminator: 0)
!12838 = distinct !DILexicalBlock(scope: !12831, file: !8939, line: 610, column: 24)
!12839 = !DILocalVariable(name: "residual", scope: !12840, file: !2371, line: 2410, type: !11974, align: 8)
!12840 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2410, column: 59)
!12841 = !DILocalVariable(name: "val", scope: !12842, file: !2371, line: 2410, type: !7, align: 8)
!12842 = distinct !DILexicalBlock(scope: !12790, file: !2371, line: 2410, column: 59)
!12843 = distinct !DILocation(line: 2432, column: 13, scope: !11996)
!12844 = !DILocation(line: 1899, column: 23, scope: !12688, inlinedAt: !12694)
!12845 = !DILocation(line: 0, scope: !12696, inlinedAt: !12735)
!12846 = !DILocation(line: 0, scope: !12736, inlinedAt: !12773)
!12847 = !DILocation(line: 0, scope: !12775, inlinedAt: !12843)
!12848 = !DILocalVariable(name: "self", arg: 1, scope: !12849, file: !11953, line: 2128, type: !3090)
!12849 = distinct !DISubprogram(name: "write_fmt", linkageName: "_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_fmt", scope: !3091, file: !11953, line: 2128, type: !12173, scopeLine: 2128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !12185, retainedNodes: !12850)
!12850 = !{!12848, !12851, !12852, !12854, !12856, !12858, !12860}
!12851 = !DILocalVariable(name: "fmt", arg: 2, scope: !12849, file: !11953, line: 2128, type: !12175)
!12852 = !DILocalVariable(name: "s", scope: !12853, file: !11953, line: 2129, type: !2465, align: 64)
!12853 = distinct !DILexicalBlock(scope: !12849, file: !11953, line: 2129, column: 56)
!12854 = !DILocalVariable(name: "s", scope: !12855, file: !11953, line: 2129, type: !2465, align: 64)
!12855 = distinct !DILexicalBlock(scope: !12849, file: !11953, line: 2129, column: 56)
!12856 = !DILocalVariable(name: "s", scope: !12857, file: !11953, line: 2129, type: !2465, align: 64)
!12857 = distinct !DILexicalBlock(scope: !12849, file: !11953, line: 2129, column: 56)
!12858 = !DILocalVariable(name: "s", scope: !12859, file: !11953, line: 2129, type: !2465, align: 64)
!12859 = distinct !DILexicalBlock(scope: !12849, file: !11953, line: 2129, column: 56)
!12860 = !DILocalVariable(name: "s", scope: !12861, file: !11953, line: 2129, type: !2465, align: 64)
!12861 = distinct !DILexicalBlock(scope: !12849, file: !11953, line: 2129, column: 56)
!12862 = !DILocation(line: 0, scope: !12849, inlinedAt: !12863)
!12863 = distinct !DILocation(line: 2388, column: 21, scope: !12864, inlinedAt: !12843)
!12864 = !DILexicalBlockFile(scope: !12790, file: !2371, discriminator: 2)
!12865 = !DILocation(line: 0, scope: !12849, inlinedAt: !12866)
!12866 = distinct !DILocation(line: 2391, column: 21, scope: !12867, inlinedAt: !12843)
!12867 = !DILexicalBlockFile(scope: !12790, file: !2371, discriminator: 6)
!12868 = !DILocation(line: 0, scope: !12849, inlinedAt: !12869)
!12869 = distinct !DILocation(line: 2398, column: 21, scope: !12870, inlinedAt: !12843)
!12870 = !DILexicalBlockFile(scope: !12790, file: !2371, discriminator: 8)
!12871 = !DILocation(line: 0, scope: !12849, inlinedAt: !12872)
!12872 = distinct !DILocation(line: 2407, column: 21, scope: !12864, inlinedAt: !12843)
!12873 = !DILocation(line: 0, scope: !12849, inlinedAt: !12874)
!12874 = distinct !DILocation(line: 2410, column: 21, scope: !12875, inlinedAt: !12843)
!12875 = !DILexicalBlockFile(scope: !12790, file: !2371, discriminator: 4)
!12876 = !DILocalVariable(name: "self", arg: 1, scope: !12877, file: !2371, line: 2298, type: !2417)
!12877 = distinct !DISubprogram(name: "sparse_transitions", linkageName: "_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions", scope: !1181, file: !2371, line: 2298, type: !12878, scopeLine: 2298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !12880, retainedNodes: !12881)
!12878 = !DISubroutineType(types: !12879)
!12879 = !{!12701, !2417, !377}
!12880 = !DISubprogram(name: "sparse_transitions", linkageName: "_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions", scope: !1181, file: !2371, line: 2298, type: !12878, scopeLine: 2298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !22)
!12881 = !{!12876, !12882, !12883, !12885}
!12882 = !DILocalVariable(name: "sid", arg: 2, scope: !12877, file: !2371, line: 2298, type: !377)
!12883 = !DILocalVariable(name: "start", scope: !12884, file: !2371, line: 2299, type: !9, align: 64)
!12884 = distinct !DILexicalBlock(scope: !12877, file: !2371, line: 2299, column: 9)
!12885 = !DILocalVariable(name: "end", scope: !12886, file: !2371, line: 2300, type: !9, align: 64)
!12886 = distinct !DILexicalBlock(scope: !12884, file: !2371, line: 2300, column: 9)
!12887 = !DILocation(line: 0, scope: !12877, inlinedAt: !12888)
!12888 = distinct !DILocation(line: 2384, column: 21, scope: !12775, inlinedAt: !12843)
!12889 = !DILocation(line: 0, scope: !12884, inlinedAt: !12888)
!12890 = !DILocalVariable(name: "index", scope: !12891, file: !2487, line: 3936, type: !2345, align: 64)
!12891 = distinct !DISubprogram(name: "index<regex_automata::dfa::onepass::Transition, core::ops::range::Range<usize>, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexINtNtB1J_5range5RangejEE5indexBL_", scope: !2534, file: !2487, line: 3936, type: !12892, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !12896, retainedNodes: !12894)
!12892 = !DISubroutineType(types: !12893)
!12893 = !{!2662, !2490, !2345, !2445}
!12894 = !{!12895, !12890}
!12895 = !DILocalVariable(name: "self", arg: 1, scope: !12891, file: !2487, line: 3936, type: !2490)
!12896 = !{!1035, !3629, !299}
!12897 = !DILocation(line: 0, scope: !12891, inlinedAt: !12898)
!12898 = distinct !DILocation(line: 2302, column: 27, scope: !12886, inlinedAt: !12888)
!12899 = !DILocalVariable(name: "index", scope: !12900, file: !2546, line: 18, type: !2345, align: 64)
!12900 = distinct !DISubprogram(name: "index<regex_automata::dfa::onepass::Transition, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexSNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionINtNtNtB6_3ops5index5IndexINtNtB1F_5range5RangejEE5indexBI_", scope: !2547, file: !2546, line: 18, type: !12901, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !12905, retainedNodes: !12903)
!12901 = !DISubroutineType(types: !12902)
!12902 = !{!2662, !2662, !2345, !2445}
!12903 = !{!12904, !12899}
!12904 = !DILocalVariable(name: "self", arg: 1, scope: !12900, file: !2546, line: 18, type: !2669)
!12905 = !{!1035, !3629}
!12906 = !DILocation(line: 0, scope: !12900, inlinedAt: !12907)
!12907 = distinct !DILocation(line: 3937, column: 9, scope: !12891, inlinedAt: !12898)
!12908 = !DILocalVariable(name: "self", scope: !12909, file: !2546, line: 405, type: !2345, align: 64)
!12909 = distinct !DISubprogram(name: "index<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionE5indexB1v_", scope: !6307, file: !2546, line: 405, type: !12910, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !12912)
!12910 = !DISubroutineType(types: !12911)
!12911 = !{!2662, !2345, !2662, !2445}
!12912 = !{!12908, !12913, !12914}
!12913 = !DILocalVariable(name: "slice", arg: 2, scope: !12909, file: !2546, line: 405, type: !2669)
!12914 = !DILocalVariable(name: "new_len", scope: !12909, file: !2546, line: 407, type: !9, align: 64)
!12915 = !DILocation(line: 0, scope: !12909, inlinedAt: !12916)
!12916 = distinct !DILocation(line: 19, column: 15, scope: !12900, inlinedAt: !12907)
!12917 = !DILocalVariable(name: "rhs", arg: 2, scope: !12918, file: !2441, line: 1086, type: !9)
!12918 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj11checked_sub", scope: !2442, file: !2441, line: 1086, type: !3686, scopeLine: 1086, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !12919)
!12919 = !{!12920, !12917}
!12920 = !DILocalVariable(name: "self", arg: 1, scope: !12918, file: !2441, line: 1086, type: !9)
!12921 = !DILocation(line: 0, scope: !12918, inlinedAt: !12922)
!12922 = distinct !DILocation(line: 407, column: 32, scope: !12909, inlinedAt: !12916)
!12923 = !DILocalVariable(name: "offset", arg: 2, scope: !12924, file: !2546, line: 85, type: !9)
!12924 = distinct !DISubprogram(name: "get_offset_len_noubcheck<regex_automata::dfa::onepass::Transition>", linkageName: "_RINvNtNtCsj6eKBz9Db1c_4core5slice5index24get_offset_len_noubcheckNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEB17_", scope: !2548, file: !2546, line: 83, type: !12925, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !12927)
!12925 = !DISubroutineType(types: !12926)
!12926 = !{!2669, !2669, !9, !9}
!12927 = !{!12928, !12923, !12929}
!12928 = !DILocalVariable(name: "ptr", arg: 1, scope: !12924, file: !2546, line: 84, type: !2669)
!12929 = !DILocalVariable(name: "len", arg: 3, scope: !12924, file: !2546, line: 86, type: !9)
!12930 = !DILocation(line: 0, scope: !12924, inlinedAt: !12931)
!12931 = distinct !DILocation(line: 411, column: 24, scope: !12909, inlinedAt: !12916)
!12932 = !DILocation(line: 2300, column: 19, scope: !12884, inlinedAt: !12888)
!12933 = !DILocation(line: 0, scope: !12886, inlinedAt: !12888)
!12934 = !DILocation(line: 3936, column: 14, scope: !12891, inlinedAt: !12898)
!12935 = !DILocation(line: 1092, column: 16, scope: !12918, inlinedAt: !12922)
!12936 = !DILocalVariable(name: "len", scope: !12937, file: !5643, line: 95, type: !9, align: 64)
!12937 = distinct !DILexicalBlock(scope: !12938, file: !5643, line: 95, column: 9)
!12938 = distinct !DISubprogram(name: "new<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionE3newBU_", scope: !12707, file: !5643, line: 94, type: !12939, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, declaration: !12941, retainedNodes: !12942)
!12939 = !DISubroutineType(types: !12940)
!12940 = !{!12707, !2662}
!12941 = !DISubprogram(name: "new<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionE3newBU_", scope: !12707, file: !5643, line: 94, type: !12939, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1034)
!12942 = !{!12943, !12936, !12944, !12946}
!12943 = !DILocalVariable(name: "slice", arg: 1, scope: !12938, file: !5643, line: 94, type: !2669)
!12944 = !DILocalVariable(name: "ptr", scope: !12945, file: !5643, line: 96, type: !4323, align: 64)
!12945 = distinct !DILexicalBlock(scope: !12937, file: !5643, line: 96, column: 9)
!12946 = !DILocalVariable(name: "end_or_len", scope: !12947, file: !5643, line: 99, type: !4298, align: 64)
!12947 = distinct !DILexicalBlock(scope: !12945, file: !5643, line: 99, column: 13)
!12948 = !DILocation(line: 0, scope: !12937, inlinedAt: !12949)
!12949 = distinct !DILocation(line: 1040, column: 9, scope: !12950, inlinedAt: !12953)
!12950 = distinct !DISubprogram(name: "iter<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10Transition4iterBA_", scope: !5635, file: !5634, line: 1039, type: !12939, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !12951)
!12951 = !{!12952}
!12952 = !DILocalVariable(name: "self", arg: 1, scope: !12950, file: !5634, line: 1039, type: !2669)
!12953 = distinct !DILocation(line: 2302, column: 40, scope: !12886, inlinedAt: !12888)
!12954 = !DILocalVariable(name: "count", arg: 2, scope: !12955, file: !3533, line: 936, type: !9)
!12955 = distinct !DISubprogram(name: "add<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10Transition3addBI_", scope: !3534, file: !3533, line: 936, type: !11918, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !12956)
!12956 = !{!12957, !12954}
!12957 = !DILocalVariable(name: "self", arg: 1, scope: !12955, file: !3533, line: 936, type: !4332)
!12958 = !DILocation(line: 0, scope: !12955, inlinedAt: !12959)
!12959 = distinct !DILocation(line: 100, column: 78, scope: !12945, inlinedAt: !12949)
!12960 = !DILocation(line: 413, column: 13, scope: !12909, inlinedAt: !12916)
!12961 = !{!12962, !12964, !12965}
!12962 = distinct !{!12962, !12963, !"_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions: argument 0"}
!12963 = distinct !{!12963, !"_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions"}
!12964 = distinct !{!12964, !12963, !"_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions: argument 1"}
!12965 = distinct !{!12965, !12966, !"_RNvNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB7_3DFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt23debug_state_transitions: argument 0"}
!12966 = distinct !{!12966, !"_RNvNvXs5_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB7_3DFANtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt23debug_state_transitions"}
!12967 = !DILocation(line: 90, column: 24, scope: !12924, inlinedAt: !12931)
!12968 = !DILocation(line: 0, scope: !12950, inlinedAt: !12953)
!12969 = !DILocation(line: 0, scope: !12938, inlinedAt: !12949)
!12970 = !DILocation(line: 0, scope: !12945, inlinedAt: !12949)
!12971 = !DILocation(line: 970, column: 18, scope: !12955, inlinedAt: !12959)
!12972 = !DILocation(line: 0, scope: !12774, inlinedAt: !12843)
!12973 = !DILocation(line: 2383, column: 13, scope: !12774, inlinedAt: !12843)
!12974 = !DILocation(line: 2384, column: 17, scope: !12775, inlinedAt: !12843)
!12975 = !DILocation(line: 80, column: 13, scope: !12766, inlinedAt: !12773)
!12976 = !DILocalVariable(name: "self", arg: 1, scope: !12977, file: !9899, line: 79, type: !12997)
!12977 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<regex_automata::dfa::onepass::Transition>>", linkageName: "_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEENtNtNtB8_6traits8iterator8Iterator4nextB1D_", scope: !9900, file: !9899, line: 79, type: !12978, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !12716, retainedNodes: !12998)
!12978 = !DISubroutineType(types: !12979)
!12979 = !{!12980, !12997}
!12980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(usize, &regex_automata::dfa::onepass::Transition)>", scope: !813, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !12981, templateParams: !22, identifier: "c5e1b244b9d67120f01e3f2cc49a3c")
!12981 = !{!12982}
!12982 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !12980, file: !2, size: 128, align: 64, elements: !12983, templateParams: !22, identifier: "69a18198eafe3eb73afbbe6ec675effe", discriminator: !12996)
!12983 = !{!12984, !12992}
!12984 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !12982, file: !2, baseType: !12985, size: 128, align: 64, extraData: i64 0)
!12985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !12980, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !22, templateParams: !12986, identifier: "731744cc1835646f713f80395d58a491")
!12986 = !{!12987}
!12987 = !DITemplateTypeParameter(name: "T", type: !12988)
!12988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, &regex_automata::dfa::onepass::Transition)", file: !2, size: 128, align: 64, elements: !12989, templateParams: !22, identifier: "17df3681b9d5a84ab6b304e2b6b7c2b4")
!12989 = !{!12990, !12991}
!12990 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12988, file: !2, baseType: !9, size: 64, align: 64)
!12991 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !12988, file: !2, baseType: !2650, size: 64, align: 64, offset: 64)
!12992 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !12982, file: !2, baseType: !12993, size: 128, align: 64)
!12993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !12980, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !12994, templateParams: !12986, identifier: "7ae59fbeb0f9f8609c257fb4aeb1946f")
!12994 = !{!12995}
!12995 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !12993, file: !2, baseType: !12988, size: 128, align: 64, flags: DIFlagPublic)
!12996 = !DIDerivedType(tag: DW_TAG_member, scope: !12980, file: !2, baseType: !21, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!12997 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<regex_automata::dfa::onepass::Transition>>", baseType: !12704, size: 64, align: 64, dwarfAddressSpace: 0)
!12998 = !{!12976, !12999, !13001, !13003, !13005}
!12999 = !DILocalVariable(name: "a", scope: !13000, file: !9899, line: 80, type: !2650, align: 64)
!13000 = distinct !DILexicalBlock(scope: !12977, file: !9899, line: 80, column: 9)
!13001 = !DILocalVariable(name: "residual", scope: !13002, file: !9899, line: 80, type: !2107, align: 8)
!13002 = distinct !DILexicalBlock(scope: !12977, file: !9899, line: 80, column: 33)
!13003 = !DILocalVariable(name: "val", scope: !13004, file: !9899, line: 80, type: !2650, align: 64)
!13004 = distinct !DILexicalBlock(scope: !12977, file: !9899, line: 80, column: 33)
!13005 = !DILocalVariable(name: "i", scope: !13006, file: !9899, line: 81, type: !9, align: 64)
!13006 = distinct !DILexicalBlock(scope: !13000, file: !9899, line: 81, column: 9)
!13007 = !DILocation(line: 0, scope: !12977, inlinedAt: !13008)
!13008 = distinct !DILocation(line: 2467, column: 47, scope: !12722, inlinedAt: !12735)
!13009 = !DILocalVariable(name: "self", arg: 1, scope: !13010, file: !2150, line: 157, type: !13024)
!13010 = distinct !DISubprogram(name: "next<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_", scope: !2151, file: !2150, line: 157, type: !13011, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !13025)
!13011 = !DISubroutineType(types: !13012)
!13012 = !{!13013, !13024}
!13013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&regex_automata::dfa::onepass::Transition>", scope: !813, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !13014, templateParams: !22, identifier: "31c4637e6da053cb5eaf606f86427d42")
!13014 = !{!13015}
!13015 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13013, file: !2, size: 64, align: 64, elements: !13016, templateParams: !22, identifier: "1f52982a915f506259ed60f1b99da2f0", discriminator: !13023)
!13016 = !{!13017, !13019}
!13017 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !13015, file: !2, baseType: !13018, size: 64, align: 64, extraData: i64 0)
!13018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !13013, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !22, templateParams: !12713, identifier: "492e2603f98219d8ab205e22322ea798")
!13019 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !13015, file: !2, baseType: !13020, size: 64, align: 64)
!13020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !13013, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !13021, templateParams: !12713, identifier: "cab6630ad1daf6bde69a41caeab6aaee")
!13021 = !{!13022}
!13022 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13020, file: !2, baseType: !2650, size: 64, align: 64, flags: DIFlagPublic)
!13023 = !DIDerivedType(tag: DW_TAG_member, scope: !13013, file: !2, baseType: !21, size: 64, align: 64, flags: DIFlagArtificial)
!13024 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<regex_automata::dfa::onepass::Transition>", baseType: !12707, size: 64, align: 64, dwarfAddressSpace: 0)
!13025 = !{!13009, !13026, !13028, !13030}
!13026 = !DILocalVariable(name: "ptr", scope: !13027, file: !2150, line: 161, type: !4323, align: 64)
!13027 = distinct !DILexicalBlock(scope: !13010, file: !2150, line: 161, column: 17)
!13028 = !DILocalVariable(name: "end_or_len", scope: !13029, file: !2150, line: 162, type: !4298, align: 64)
!13029 = distinct !DILexicalBlock(scope: !13027, file: !2150, line: 162, column: 17)
!13030 = !DILocalVariable(name: "len", scope: !13031, file: !2150, line: 167, type: !9, align: 64)
!13031 = distinct !DILexicalBlock(scope: !13029, file: !2150, line: 167, column: 25)
!13032 = !DILocation(line: 0, scope: !13010, inlinedAt: !13033)
!13033 = distinct !DILocation(line: 80, column: 27, scope: !12977, inlinedAt: !13008)
!13034 = !DILocalVariable(name: "count", scope: !13035, file: !1628, line: 619, type: !9, align: 64)
!13035 = distinct !DISubprogram(name: "add<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionE3addBZ_", scope: !4323, file: !1628, line: 619, type: !13036, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, declaration: !13038, retainedNodes: !13039)
!13036 = !DISubroutineType(types: !13037)
!13037 = !{!4323, !4323, !9}
!13038 = !DISubprogram(name: "add<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionE3addBZ_", scope: !4323, file: !1628, line: 619, type: !13036, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1034)
!13039 = !{!13040, !13034}
!13040 = !DILocalVariable(name: "self", arg: 1, scope: !13035, file: !1628, line: 619, type: !4323)
!13041 = !DILocation(line: 0, scope: !13035, inlinedAt: !13042)
!13042 = distinct !DILocation(line: 185, column: 40, scope: !13029, inlinedAt: !13033)
!13043 = !DILocation(line: 0, scope: !13027, inlinedAt: !13033)
!13044 = !DILocation(line: 0, scope: !13029, inlinedAt: !13033)
!13045 = !DILocalVariable(name: "self", arg: 1, scope: !13046, file: !1628, line: 1662, type: !13049)
!13046 = distinct !DISubprogram(name: "eq<regex_automata::dfa::onepass::Transition>", linkageName: "_RNvXsd_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionENtNtB9_3cmp9PartialEq2eqBZ_", scope: !2192, file: !1628, line: 1662, type: !13047, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !1034, retainedNodes: !13050)
!13047 = !DISubroutineType(types: !13048)
!13048 = !{!1209, !13049, !13049}
!13049 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<regex_automata::dfa::onepass::Transition>", baseType: !4323, size: 64, align: 64, dwarfAddressSpace: 0)
!13050 = !{!13045, !13051}
!13051 = !DILocalVariable(name: "other", arg: 2, scope: !13046, file: !1628, line: 1662, type: !13049)
!13052 = !DILocation(line: 1662, column: 11, scope: !13046, inlinedAt: !13053)
!13053 = distinct !DILocation(line: 180, column: 28, scope: !13029, inlinedAt: !13033)
!13054 = !DILocation(line: 1662, column: 18, scope: !13046, inlinedAt: !13053)
!13055 = !DILocation(line: 1663, column: 9, scope: !13046, inlinedAt: !13053)
!13056 = !DILocation(line: 180, column: 28, scope: !13029, inlinedAt: !13033)
!13057 = !DILocation(line: 627, column: 28, scope: !13035, inlinedAt: !13042)
!13058 = !DILocation(line: 0, scope: !13000, inlinedAt: !13008)
!13059 = !DILocation(line: 0, scope: !13006, inlinedAt: !13008)
!13060 = !DILocation(line: 82, column: 9, scope: !13006, inlinedAt: !13008)
!13061 = !DILocation(line: 0, scope: !12722, inlinedAt: !12735)
!13062 = !DILocalVariable(name: "self", arg: 1, scope: !13063, file: !4265, line: 182, type: !9)
!13063 = distinct !DISubprogram(name: "as_u8", linkageName: "_RNvXs3_NtNtCs9GYDdpCSJ4S_14regex_automata4util3intjNtB5_5Usize5as_u8", scope: !11423, file: !4265, line: 182, type: !13064, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !13066)
!13064 = !DISubroutineType(types: !13065)
!13065 = !{!65, !9}
!13066 = !{!13062}
!13067 = !DILocation(line: 0, scope: !13063, inlinedAt: !13068)
!13068 = distinct !DILocation(line: 2470, column: 23, scope: !12722, inlinedAt: !12735)
!13069 = !DILocation(line: 2467, column: 29, scope: !12722, inlinedAt: !12735)
!13070 = !{!13071, !13073, !13074, !13076, !12965}
!13071 = distinct !{!13071, !13072, !"_RNvXs6_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next: argument 0"}
!13072 = distinct !{!13072, !"_RNvXs6_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next"}
!13073 = distinct !{!13073, !13072, !"_RNvXs6_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next: argument 1"}
!13074 = distinct !{!13074, !13075, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass20SparseTransitionIterENtNtNtB8_6traits8iterator8Iterator4nextB1d_: argument 0"}
!13075 = distinct !{!13075, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass20SparseTransitionIterENtNtNtB8_6traits8iterator8Iterator4nextB1d_"}
!13076 = distinct !{!13076, !13075, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass20SparseTransitionIterENtNtNtB8_6traits8iterator8Iterator4nextB1d_: argument 1"}
!13077 = !DILocation(line: 189, column: 13, scope: !13063, inlinedAt: !13068)
!13078 = !DILocation(line: 0, scope: !12725, inlinedAt: !12735)
!13079 = !DILocation(line: 2471, column: 54, scope: !12725, inlinedAt: !12735)
!13080 = !DILocation(line: 0, scope: !12727, inlinedAt: !12735)
!13081 = !DILocalVariable(name: "self", arg: 1, scope: !13082, file: !2371, line: 2607, type: !2650)
!13082 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsz_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq", scope: !4391, file: !2371, line: 2607, type: !4380, scopeLine: 2607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !13083)
!13083 = !{!13081, !13084}
!13084 = !DILocalVariable(name: "other", arg: 2, scope: !13082, file: !2371, line: 2607, type: !2650)
!13085 = !DILocation(line: 2607, column: 27, scope: !13082, inlinedAt: !13086)
!13086 = distinct !DILocation(line: 2478, column: 16, scope: !12727, inlinedAt: !12735)
!13087 = !DILocation(line: 2478, column: 16, scope: !12727, inlinedAt: !12735)
!13088 = !DILocalVariable(name: "self", arg: 1, scope: !13089, file: !2326, line: 275, type: !2537)
!13089 = distinct !DISubprogram(name: "ne<regex_automata::util::primitives::StateID, regex_automata::util::primitives::StateID>", linkageName: "_RNvYNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_", scope: !4379, file: !2326, line: 275, type: !3301, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !4429, retainedNodes: !13090)
!13090 = !{!13088, !13091}
!13091 = !DILocalVariable(name: "other", arg: 2, scope: !13089, file: !2326, line: 275, type: !2537)
!13092 = !DILocation(line: 275, column: 11, scope: !13089, inlinedAt: !13093)
!13093 = distinct !DILocation(line: 2482, column: 20, scope: !12727, inlinedAt: !12735)
!13094 = !DILocalVariable(name: "self", arg: 1, scope: !13095, file: !2608, line: 748, type: !2537)
!13095 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsX_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_7StateIDNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq", scope: !3300, file: !2608, line: 748, type: !3301, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !13096)
!13096 = !{!13094, !13097}
!13097 = !DILocalVariable(name: "other", arg: 2, scope: !13095, file: !2608, line: 748, type: !2537)
!13098 = !DILocation(line: 748, column: 42, scope: !13095, inlinedAt: !13099)
!13099 = distinct !DILocation(line: 276, column: 15, scope: !13089, inlinedAt: !13093)
!13100 = !DILocation(line: 0, scope: !13089, inlinedAt: !13093)
!13101 = !DILocation(line: 0, scope: !13095, inlinedAt: !13099)
!13102 = !DILocalVariable(name: "self", arg: 1, scope: !13103, file: !2608, line: 141, type: !2619)
!13103 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsw_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB5_10SmallIndexNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq", scope: !3310, file: !2608, line: 141, type: !3311, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, retainedNodes: !13104)
!13104 = !{!13102, !13105}
!13105 = !DILocalVariable(name: "other", arg: 2, scope: !13103, file: !2608, line: 141, type: !2619)
!13106 = !DILocation(line: 141, column: 44, scope: !13103, inlinedAt: !13107)
!13107 = distinct !DILocation(line: 748, column: 42, scope: !13095, inlinedAt: !13099)
!13108 = !DILocation(line: 2482, column: 20, scope: !12727, inlinedAt: !12735)
!13109 = distinct !{!13109, !12552}
!13110 = !DILocation(line: 975, column: 22, scope: !12660, inlinedAt: !12687)
!13111 = !DILocalVariable(name: "self", arg: 1, scope: !13112, file: !3651, line: 2868, type: !12664)
!13112 = distinct !DISubprogram(name: "branch<(u8, u8, regex_automata::dfa::onepass::Transition)>", linkageName: "_RNvXsJ_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionThhNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass10TransitionEENtNtNtB7_3ops9try_trait3Try6branchBT_", scope: !13113, file: !3651, line: 2868, type: !13114, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !12670, retainedNodes: !13132)
!13113 = !DINamespace(name: "{impl#47}", scope: !813)
!13114 = !DISubroutineType(types: !13115)
!13115 = !{!13116, !12664}
!13116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<core::option::Option<core::convert::Infallible>, (u8, u8, regex_automata::dfa::onepass::Transition)>", scope: !3974, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13117, templateParams: !22, identifier: "d4c09e11d4b03c9f82f275aca1938489")
!13117 = !{!13118}
!13118 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !13116, file: !2, size: 192, align: 64, elements: !13119, templateParams: !22, identifier: "5a21c425609ac783fff453f8f5140213", discriminator: !13131)
!13119 = !{!13120, !13127}
!13120 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !13118, file: !2, baseType: !13121, size: 192, align: 64, extraData: i64 0)
!13121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !13116, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13122, templateParams: !13124, identifier: "e49f90e96efcfb394b66f1b8453a64c1")
!13122 = !{!13123}
!13123 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13121, file: !2, baseType: !12672, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!13124 = !{!13125, !13126}
!13125 = !DITemplateTypeParameter(name: "B", type: !2107)
!13126 = !DITemplateTypeParameter(name: "C", type: !12672)
!13127 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !13118, file: !2, baseType: !13128, size: 192, align: 64, extraData: i64 1)
!13128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !13116, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !13129, templateParams: !13124, identifier: "3ba168f139b90b9751c101b65542e34e")
!13129 = !{!13130}
!13130 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !13128, file: !2, baseType: !2107, align: 8, offset: 64, flags: DIFlagPublic)
!13131 = !DIDerivedType(tag: DW_TAG_member, scope: !13116, file: !2, baseType: !21, size: 64, align: 64, flags: DIFlagArtificial)
!13132 = !{!13111, !13133}
!13133 = !DILocalVariable(name: "v", scope: !13134, file: !3651, line: 2870, type: !12672, align: 64)
!13134 = distinct !DILexicalBlock(scope: !13112, file: !3651, line: 2870, column: 13)
!13135 = !DILocation(line: 0, scope: !13112, inlinedAt: !13136)
!13136 = distinct !DILocation(line: 80, column: 17, scope: !12736, inlinedAt: !12773)
!13137 = !DILocation(line: 0, scope: !12695, inlinedAt: !12735)
!13138 = !DILocation(line: 275, column: 11, scope: !13089, inlinedAt: !13139)
!13139 = distinct !DILocation(line: 2488, column: 16, scope: !12695, inlinedAt: !12735)
!13140 = !DILocation(line: 748, column: 42, scope: !13095, inlinedAt: !13141)
!13141 = distinct !DILocation(line: 276, column: 15, scope: !13142, inlinedAt: !13139)
!13142 = !DILexicalBlockFile(scope: !13089, file: !2326, discriminator: 2)
!13143 = !DILocation(line: 0, scope: !13089, inlinedAt: !13139)
!13144 = !DILocation(line: 0, scope: !13095, inlinedAt: !13141)
!13145 = !DILocation(line: 141, column: 44, scope: !13103, inlinedAt: !13146)
!13146 = distinct !DILocation(line: 748, column: 42, scope: !13147, inlinedAt: !13141)
!13147 = !DILexicalBlockFile(scope: !13095, file: !2608, discriminator: 2)
!13148 = !DILocation(line: 2487, column: 16, scope: !12695, inlinedAt: !12735)
!13149 = !DILocation(line: 2869, column: 9, scope: !13112, inlinedAt: !13136)
!13150 = !DILocation(line: 0, scope: !12766, inlinedAt: !12773)
!13151 = !DILocation(line: 0, scope: !12772, inlinedAt: !12773)
!13152 = !DILocation(line: 82, column: 9, scope: !12772, inlinedAt: !12773)
!13153 = !DILocation(line: 0, scope: !12785, inlinedAt: !12843)
!13154 = !DILocalVariable(name: "self", arg: 1, scope: !13155, file: !2371, line: 2643, type: !2650)
!13155 = distinct !DISubprogram(name: "state_id", linkageName: "_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_10Transition8state_id", scope: !1036, file: !2371, line: 2643, type: !2688, scopeLine: 2643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, templateParams: !22, declaration: !2690, retainedNodes: !13156)
end_hunk_4
