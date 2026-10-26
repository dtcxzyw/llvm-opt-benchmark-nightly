Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvXsh_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRangeNtNtB5_8interval8Interval16case_fold_simple:bb.a
    #dbg_value(i8 %.val.i, !2522, !DIExpression(), !12902)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !13052
  %.val7.i = load i8, ptr %i.a, align 1, !dbg !13052, !alias.scope !13004, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val7.i, !2511, !DIExpression(), !12907)
    #dbg_value(i8 %.val7.i, !2525, !DIExpression(), !12904)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !12909)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !12909)
  %..i.i = tail call noundef i8 @llvm.umax.i8(i8 %.val.i, i8 97), !dbg !13053 ; 2 uses
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !12911)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !12911)
  %..i9.i = tail call noundef i8 @llvm.umin.i8(i8 %.val7.i, i8 122), !dbg !13054 ; 2 uses
    #dbg_value(ptr undef, !2517, !DIExpression(), !12899)
    #dbg_value(ptr undef, !2513, !DIExpression(), !12899)
  %i.b = icmp ugt i8 %..i.i, %..i9.i, !dbg !13055
  br i1 %i.b, label %bb.d, label %bb.b, !dbg !13056

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !12914)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !12914)
    #dbg_value(i8 %..i.i, !12988, !DIExpression(), !13009)
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !12917)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !12917)
    #dbg_value(i8 %..i9.i, !12989, !DIExpression(), !13014)
  %i.c = add nsw i8 %..i.i, -32, !dbg !13057
  %i.d = add nsw i8 %..i9.i, -32, !dbg !13058
    #dbg_value(i8 %i.c, !12998, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13001)
    #dbg_value(i8 %i.d, !12998, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13001)
    #dbg_value(ptr %1, !13015, !DIExpression(), !12922)
    #dbg_value(ptr %1, !13024, !DIExpression(), !12925)
    #dbg_value(i8 %i.c, !13020, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12922)
    #dbg_value(i8 %i.d, !13020, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12922)
    #dbg_value(i64 2, !13029, !DIExpression(), !12930)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13059 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !13059, !alias.scope !13037, !noundef !658 ; 3 uses
    #dbg_value(i64 %i.f, !13021, !DIExpression(), !12933)
    #dbg_value(i64 %i.f, !13038, !DIExpression(), !12936)
    #dbg_value(ptr %1, !13035, !DIExpression(), !12937)
  %i.g = load i64, ptr %1, align 8, !dbg !13060, !range !1697, !alias.scope !13037, !noundef !658
  %i.h = icmp eq i64 %i.f, %i.g, !dbg !13061
  br i1 %i.h, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit, !dbg !13061

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29, !dbg !13062
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit, !dbg !13063

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13064
  %i.j = load ptr, ptr %i.i, align 8, !dbg !13064, !alias.scope !13037, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.j, !13039, !DIExpression(), !12936)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.f, !dbg !13065 ; 2 uses
    #dbg_value(ptr %i.k, !13022, !DIExpression(), !12944)
    #dbg_value(ptr %i.k, !13041, !DIExpression(), !12947)
    #dbg_value(i8 %i.c, !13044, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12947)
    #dbg_value(i8 %i.d, !13044, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12947)
  store i8 %i.c, ptr %i.k, align 1, !dbg !13066
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !13066
  store i8 %i.d, ptr %i.l, align 1, !dbg !13066
  %i.m = add i64 %i.f, 1, !dbg !13067
  store i64 %i.m, ptr %i.e, align 8, !dbg !13067, !alias.scope !13037
  br label %bb.d, !dbg !13068

bb.d:                                             ; preds = %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit
    #dbg_value(ptr poison, !2513, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12949)
    #dbg_value(ptr poison, !2517, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12949)
    #dbg_value(ptr undef, !2505, !DIExpression(), !12894)
    #dbg_value(ptr %0, !2507, !DIExpression(), !12894)
    #dbg_value(i8 65, !2508, !DIExpression(), !12950)
    #dbg_value(i8 65, !2519, !DIExpression(), !12952)
    #dbg_value(i8 90, !2509, !DIExpression(), !12950)
    #dbg_value(i8 90, !2524, !DIExpression(), !12954)
    #dbg_value(i8 %.val.i, !2510, !DIExpression(), !12955)
    #dbg_value(i8 %.val.i, !2522, !DIExpression(), !12952)
    #dbg_value(i8 %.val7.i, !2511, !DIExpression(), !12955)
    #dbg_value(i8 %.val7.i, !2525, !DIExpression(), !12954)
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !12957)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !12957)
  %..i.i23 = tail call noundef i8 @llvm.umax.i8(i8 %.val.i, i8 65), !dbg !13069 ; 2 uses
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !12959)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !12959)
  %..i9.i24 = tail call noundef i8 @llvm.umin.i8(i8 %.val7.i, i8 90), !dbg !13070 ; 2 uses
    #dbg_value(ptr undef, !2517, !DIExpression(), !12949)
    #dbg_value(ptr undef, !2513, !DIExpression(), !12949)
  %i.n = icmp ugt i8 %..i.i23, %..i9.i24, !dbg !13071
  br i1 %i.n, label %bb.g, label %bb.e, !dbg !13072

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr undef, !2527, !DIExpression(DW_OP_deref), !12961)
    #dbg_value(ptr undef, !2529, !DIExpression(DW_OP_deref), !12961)
    #dbg_value(i8 %..i.i23, !12990, !DIExpression(), !13047)
    #dbg_value(ptr undef, !2533, !DIExpression(DW_OP_deref), !12963)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !12963)
    #dbg_value(i8 %..i9.i24, !12991, !DIExpression(), !13049)
  %i.o = add nuw nsw i8 %..i.i23, 32, !dbg !13073
  %i.p = add nuw nsw i8 %..i9.i24, 32, !dbg !13074
    #dbg_value(i8 %i.o, !12998, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13003)
    #dbg_value(i8 %i.p, !12998, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13003)
    #dbg_value(ptr %1, !13015, !DIExpression(), !12965)
    #dbg_value(ptr %1, !13024, !DIExpression(), !12967)
    #dbg_value(i8 %i.o, !13020, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12965)
    #dbg_value(i8 %i.p, !13020, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12965)
    #dbg_value(i64 2, !13029, !DIExpression(), !12970)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13075 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !13075, !alias.scope !13050, !noundef !658 ; 3 uses
    #dbg_value(i64 %i.r, !13021, !DIExpression(), !12973)
    #dbg_value(i64 %i.r, !13038, !DIExpression(), !12975)
    #dbg_value(ptr %1, !13035, !DIExpression(), !12976)
  %i.s = load i64, ptr %1, align 8, !dbg !13076, !range !1697, !alias.scope !13050, !noundef !658
  %i.t = icmp eq i64 %i.r, %i.s, !dbg !13077
  br i1 %i.t, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit29, !dbg !13077

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29, !dbg !13078
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit29, !dbg !13079

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit29: ; preds = %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13080
  %i.v = load ptr, ptr %i.u, align 8, !dbg !13080, !alias.scope !13050, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.v, !13039, !DIExpression(), !12975)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.r, !dbg !13081 ; 2 uses
    #dbg_value(ptr %i.w, !13022, !DIExpression(), !12980)
    #dbg_value(ptr %i.w, !13041, !DIExpression(), !12982)
    #dbg_value(i8 %i.o, !13044, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12982)
    #dbg_value(i8 %i.p, !13044, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12982)
  store i8 %i.o, ptr %i.w, align 1, !dbg !13082
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1, !dbg !13082
  store i8 %i.p, ptr %i.x, align 1, !dbg !13082
  %i.y = add i64 %i.r, 1, !dbg !13083
  store i64 %i.y, ptr %i.q, align 8, !dbg !13083, !alias.scope !13050
  br label %bb.g, !dbg !13084

bb.g:                                             ; preds = %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit29
  ret i1 false, !dbg !13085
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsj_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRangeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !437 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !2423, !DIExpression(), !13086)
    #dbg_value(ptr %1, !2427, !DIExpression(), !13086)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13087
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3024, i64 noundef 15), !dbg !13088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13089
  %i.d = load i8, ptr %0, align 1, !dbg !13090, !noundef !658
  store i8 %i.d, ptr %i.b, align 1, !dbg !13089
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3025), !dbg !13091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13092
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !13093
  %i.g = load i8, ptr %i.f, align 1, !dbg !13093, !noundef !658
  store i8 %i.g, ptr %i.a, align 1, !dbg !13092
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3025), !dbg !13094
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !dbg !13095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13096
  ret i1 %i.i, !dbg !13097
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13108 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
    #dbg_value(ptr %0, !13333, !DIExpression(), !13349)
    #dbg_value(ptr %0, !13350, !DIExpression(), !13356)
    #dbg_declare(ptr %i.g, !13342, !DIExpression(), !13357)
    #dbg_declare(ptr %i.e, !13343, !DIExpression(), !13358)
    #dbg_declare(ptr %i.d, !13359, !DIExpression(), !13363)
    #dbg_declare(ptr %i.c, !13359, !DIExpression(), !13365)
    #dbg_declare(ptr %i.b, !13366, !DIExpression(), !13383)
    #dbg_declare(ptr %i.b, !13384, !DIExpression(), !13390)
    #dbg_declare(ptr %i.a, !13366, !DIExpression(), !13392)
    #dbg_declare(ptr %i.a, !13384, !DIExpression(), !13395)
    #dbg_declare(ptr poison, !13396, !DIExpression(), !13412)
    #dbg_declare(ptr poison, !13430, !DIExpression(), !13439)
    #dbg_value(i64 48, !13440, !DIExpression(), !13447)
  %i.h = load i64, ptr %0, align 8, !dbg !13582, !range !1414, !noundef !658 ; 3 uses
  %i.i = icmp ne i64 %i.h, 4, !dbg !13582
  tail call void @llvm.assume(i1 %i.i), !dbg !13582
  %i.j = add nsw i64 %i.h, -2, !dbg !13582
  %.inv = icmp samesign ult i64 %i.h, 2, !dbg !13582
  %i.k = select i1 %.inv, i64 2, i64 %i.j, !dbg !13582
  switch i64 %i.k, label %.loopexit [
    i64 0, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 1, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 2, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 3, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 4, label %bb.b
    i64 5, label %bb.d
    i64 6, label %bb.f
    i64 7, label %bb.g
  ], !dbg !13583

default.unreachable:                              ; preds = %bb.o
  unreachable

.loopexit:                                        ; preds = %bb.a
  unreachable, !dbg !13584

_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %bb.g, %bb.f, %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit47, %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit, %bb.a, %bb.a, %bb.a, %bb.a
  ret void, !dbg !13585

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13586
  %i.m = load ptr, ptr %i.l, align 8, !dbg !13586, !nonnull !658, !noundef !658 ; 2 uses
    #dbg_value(ptr %i.m, !13454, !DIExpression(), !13135)
  %i.n = load i64, ptr %i.m, align 8, !dbg !13587, !range !1414, !alias.scope !13463, !noundef !658 ; 3 uses
  %i.o = icmp ne i64 %i.n, 4, !dbg !13587
  tail call void @llvm.assume(i1 %i.o), !dbg !13587
  %i.p = add nsw i64 %i.n, -2, !dbg !13587
  %.inv.i = icmp samesign ult i64 %i.n, 2, !dbg !13587
  %i.q = select i1 %.inv.i, i64 2, i64 %i.p, !dbg !13587
  switch i64 %i.q, label %bb.c [
    i64 0, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 1, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 2, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 3, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 4, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread
    i64 5, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread
    i64 6, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit
    i64 7, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit
  ], !dbg !13588

bb.c:                                             ; preds = %bb.b
  unreachable, !dbg !13587

_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit: ; preds = %bb.b, %bb.b
  %.sroa.6.0.i.in = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !13589
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.i.in, align 8, !dbg !13589, !alias.scope !13463, !noundef !658
    #dbg_value(ptr poison, !13470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13473)
    #dbg_value(i64 %.sroa.6.0.i, !13470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13473)
  %i.r = icmp eq i64 %.sroa.6.0.i, 0, !dbg !13590
  br i1 %i.r, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread, !dbg !13586

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13591
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13591, !nonnull !658, !noundef !658 ; 2 uses
    #dbg_value(ptr %i.t, !13454, !DIExpression(), !13142)
  %i.u = load i64, ptr %i.t, align 8, !dbg !13592, !range !1414, !alias.scope !13474, !noundef !658 ; 3 uses
  %i.v = icmp ne i64 %i.u, 4, !dbg !13592
  tail call void @llvm.assume(i1 %i.v), !dbg !13592
  %i.w = add nsw i64 %i.u, -2, !dbg !13592
  %.inv.i44 = icmp samesign ult i64 %i.u, 2, !dbg !13592
  %i.x = select i1 %.inv.i44, i64 2, i64 %i.w, !dbg !13592
  switch i64 %i.x, label %bb.e [
    i64 0, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 1, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 2, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 3, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76
    i64 4, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread
    i64 5, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread
    i64 6, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit47
    i64 7, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit47
  ], !dbg !13593

bb.e:                                             ; preds = %bb.d
  unreachable, !dbg !13592

_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit47: ; preds = %bb.d, %bb.d
  %.sroa.6.0.i45.in = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !13594
  %.sroa.6.0.i45 = load i64, ptr %.sroa.6.0.i45.in, align 8, !dbg !13594, !alias.scope !13474, !noundef !658
    #dbg_value(ptr poison, !13470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13478)
    #dbg_value(i64 %.sroa.6.0.i45, !13470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13478)
  %i.y = icmp eq i64 %.sroa.6.0.i45, 0, !dbg !13595
  br i1 %i.y, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread, !dbg !13591

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !13479, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13482)
    #dbg_value(ptr %0, !13483, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13487)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13596
  %i.aa = load i64, ptr %i.z, align 8, !dbg !13596, !noundef !658 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 192153584101141163, !dbg !13597
  tail call void @llvm.assume(i1 %i.ab), !dbg !13598
  %i.ac = icmp eq i64 %i.aa, 0, !dbg !13599
  br i1 %i.ac, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread, !dbg !13600

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !13479, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13489)
    #dbg_value(ptr %0, !13483, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13491)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13601
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !13601, !noundef !658 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 192153584101141163, !dbg !13602
  tail call void @llvm.assume(i1 %i.af), !dbg !13603
  %i.ag = icmp eq i64 %i.ae, 0, !dbg !13604
  br i1 %i.ag, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76, label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread, !dbg !13605

_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread: ; preds = %bb.d, %bb.d, %bb.b, %bb.b, %bb.g, %bb.f, %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit47, %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13606
    #dbg_value(i64 8, !1122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13149)
    #dbg_value(i64 8, !1138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13151)
    #dbg_value(i64 8, !1157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13153)
    #dbg_value(i64 48, !1122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13149)
    #dbg_value(i64 48, !1138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13151)
    #dbg_value(i64 48, !1157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13153)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1155, !DIExpression(), !13151)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1161, !DIExpression(), !13153)
    #dbg_value(i8 0, !1162, !DIExpression(), !13153)
    #dbg_value(i64 8, !1164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13155)
    #dbg_value(i64 8, !1186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13157)
    #dbg_value(i64 48, !1164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13155)
    #dbg_value(i64 48, !1186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13157)
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13155)
    #dbg_value(i64 48, !1169, !DIExpression(), !13158)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13607
  %i.ah = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 48, i64 noundef range(i64 1, 9) 8) #23, !dbg !13608 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null, !dbg !13609
  br i1 %i.ai, label %bb.h, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !13610, !prof !1189

bb.h:                                             ; preds = %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24, !dbg !13611
  unreachable, !dbg !13611

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13164)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13166)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13164)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13166)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13164)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13166)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13164)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13166)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !13164)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !13166)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !13164)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !13166)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !13164)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !13166)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !13164)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !13166)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !13164)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !13166)
    #dbg_value(i8 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !13164)
    #dbg_value(i8 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !13166)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13164)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13166)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13164)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13166)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13164)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13166)
    #dbg_value(i8 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !13164)
    #dbg_value(i8 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !13166)
    #dbg_value(i8 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !13164)
    #dbg_value(i8 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !13166)
    #dbg_value(i64 8, !1122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13168)
    #dbg_value(i64 8, !1138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13170)
    #dbg_value(i64 8, !1157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13172)
    #dbg_value(i64 80, !1122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13168)
    #dbg_value(i64 80, !1138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13170)
    #dbg_value(i64 80, !1157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13172)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1155, !DIExpression(), !13170)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1161, !DIExpression(), !13172)
    #dbg_value(i8 0, !1162, !DIExpression(), !13172)
    #dbg_value(i64 8, !1164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13174)
    #dbg_value(i64 8, !1186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13176)
    #dbg_value(i64 80, !1164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13174)
    #dbg_value(i64 80, !1186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13176)
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13174)
    #dbg_value(i64 80, !1169, !DIExpression(), !13177)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13612, !noalias !13500
  %i.aj = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !13613, !noalias !13500 ; 11 uses
  %i.ak = icmp eq ptr %i.aj, null, !dbg !13614
  br i1 %i.ak, label %bb.i, label %bb.k, !dbg !13615, !prof !1189

bb.i:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc unwind label %bb.j, !dbg !13616

.noexc:                                           ; preds = %bb.i
  unreachable, !dbg !13616

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !13502, !DIExpression(), !13182)
    #dbg_value(ptr poison, !13508, !DIExpression(), !13190)
    #dbg_value(ptr %i.ah, !13509, !DIExpression(), !13191)
    #dbg_value(i64 8, !13510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13192)
    #dbg_value(i64 48, !13510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13192)
    #dbg_value(ptr poison, !1226, !DIExpression(), !13194)
    #dbg_value(ptr poison, !1232, !DIExpression(), !13196)
    #dbg_value(ptr %i.ah, !1229, !DIExpression(), !13194)
    #dbg_value(ptr %i.ah, !1235, !DIExpression(), !13196)
    #dbg_value(ptr %i.ah, !1238, !DIExpression(), !13198)
    #dbg_value(ptr %i.ah, !1244, !DIExpression(), !13200)
    #dbg_value(i64 8, !1230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13194)
    #dbg_value(i64 8, !1236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13196)
    #dbg_value(i64 8, !1242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13198)
    #dbg_value(i64 8, !1245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13200)
    #dbg_value(i64 48, !1230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13194)
    #dbg_value(i64 48, !1236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13196)
    #dbg_value(i64 48, !1242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13198)
    #dbg_value(i64 48, !1245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13200)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 48, i64 noundef 8) #23, !dbg !13617
  br label %common.resume, !dbg !13618

bb.k:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
    #dbg_value(ptr %i.aj, !1105, !DIExpression(), !13201)
  store i64 1, ptr %i.aj, align 8, !dbg !13619
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !13619
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !13619
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !13619
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !13619
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24, !dbg !13619
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !13619
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32, !dbg !13619
  store i64 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !13619
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40, !dbg !13619
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 76, !dbg !13619
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.8.0..sroa_idx.i, i8 0, i64 36, i1 false), !dbg !13619
  store i8 1, ptr %.sroa.15.0..sroa_idx.i, align 4, !dbg !13619
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 77, !dbg !13619
  store i8 0, ptr %.sroa.16.0..sroa_idx.i, align 1, !dbg !13619
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 78, !dbg !13619
  store i8 0, ptr %.sroa.17.0..sroa_idx.i, align 2, !dbg !13619
    #dbg_value(i64 2, !13353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13356)
    #dbg_value(ptr %i.aj, !13353, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13356)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !dbg !13620
  store i64 2, ptr %0, align 8, !dbg !13621
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13621
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13621
    #dbg_value(ptr %i.ah, !13428, !DIExpression(), !13521)
    #dbg_value(ptr %i.ah, !13402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13522)
    #dbg_value(i64 1, !13402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13522)
    #dbg_value(i64 1, !13403, !DIExpression(), !13523)
    #dbg_value(i64 1, !13435, !DIExpression(), !13524)
    #dbg_value(i64 1, !13436, !DIExpression(), !13524)
    #dbg_value(ptr %i.ah, !13404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13525)
    #dbg_value(i64 1, !13404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13525)
    #dbg_value(ptr %i.ah, !13434, !DIExpression(), !13524)
  store i64 1, ptr %i.g, align 8, !dbg !13622
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13622 ; 4 uses
  store ptr %i.ah, ptr %i.am, align 8, !dbg !13622
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !13622 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13623
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  br label %bb.o, !dbg !13624

bb.l:                                             ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13625
    #dbg_value(ptr %i.g, !1269, !DIExpression(), !13203)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit unwind label %bb.m, !dbg !13626

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1274, !DIExpression(), !13205)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.n, !dbg !13627

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !13626
  unreachable, !dbg !13626

common.resume:                                    ; preds = %.body, %bb.j, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %.pn, %.body ], [ %i.al, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !13349

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit: ; preds = %bb.l
    #dbg_value(ptr %i.g, !1274, !DIExpression(), !13207)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !13628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13629
  br label %_RNvMs4_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7HirKind4subs.exit.thread76, !dbg !13585

bb.o:                                             ; preds = %bb.k, %bb.an
  %i.at = phi i64 [ 1, %bb.k ], [ %.pr, %bb.an ]  ; 2 uses
  %i.au = add nsw i64 %i.at, -1, !dbg !13630      ; 3 uses
  store i64 %i.au, ptr %i.an, align 8, !dbg !13630
  %i.av = load i64, ptr %i.g, align 8, !dbg !13631, !range !1697, !noundef !658
  %i.aw = icmp samesign ult i64 %i.au, %i.av, !dbg !13632
    #dbg_value(i1 true, !13526, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13529)
  call void @llvm.assume(i1 %i.aw), !dbg !13633
  %i.ax = load ptr, ptr %i.am, align 8, !dbg !13634, !nonnull !658, !noundef !658
    #dbg_value(ptr %i.ax, !13536, !DIExpression(), !13540)
    #dbg_value(i64 %i.au, !13537, !DIExpression(), !13540)
  %i.ay = icmp samesign ult i64 %i.at, 192153584101141164, !dbg !13635
  call void @llvm.assume(i1 %i.ay), !dbg !13636
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.au, !dbg !13637
    #dbg_value(ptr %i.az, !13542, !DIExpression(), !13545)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !dbg !13638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !13358
  %i.ba = load i64, ptr %i.e, align 8, !dbg !13584, !range !1414, !noundef !658 ; 3 uses
  %i.bb = icmp ne i64 %i.ba, 4, !dbg !13584
  call void @llvm.assume(i1 %i.bb), !dbg !13584
  %i.bc = add nsw i64 %i.ba, -2, !dbg !13584
  %.inv41 = icmp samesign ult i64 %i.ba, 2, !dbg !13584
  %i.bd = select i1 %.inv41, i64 2, i64 %i.bc, !dbg !13584
  switch i64 %i.bd, label %default.unreachable [
    i64 0, label %bb.p
    i64 1, label %bb.p
    i64 2, label %bb.p
    i64 3, label %bb.p
    i64 4, label %bb.v
    i64 5, label %bb.w
    i64 6, label %bb.x
    i64 7, label %bb.y
  ], !dbg !13639

bb.p:                                             ; preds = %bb.am, %bb.ak, %bb.ai, %bb.ad, %bb.o, %bb.o, %bb.o, %bb.o
    #dbg_value(ptr %i.e, !1317, !DIExpression(), !13216)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.r unwind label %bb.q, !dbg !13640, !inline_history !1321

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #26
          to label %bb.s unwind label %bb.u, !dbg !13640, !inline_history !1321

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.an unwind label %bb.t, !dbg !13640, !inline_history !1321

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %i.be, %bb.q ]
  %.val3.i = load ptr, ptr %i.aq, align 8, !dbg !13640, !alias.scope !13546, !nonnull !658, !noundef !658
    #dbg_value(ptr poison, !1323, !DIExpression(), !13220)
    #dbg_value(ptr poison, !1330, !DIExpression(), !13222)
    #dbg_value(ptr poison, !1336, !DIExpression(), !13224)
    #dbg_value(ptr %.val3.i, !1337, !DIExpression(), !13225)
    #dbg_value(i64 8, !1338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13226)
    #dbg_value(i64 80, !1338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13226)
    #dbg_value(ptr poison, !1226, !DIExpression(), !13228)
    #dbg_value(ptr poison, !1232, !DIExpression(), !13230)
    #dbg_value(ptr %.val3.i, !1229, !DIExpression(), !13228)
    #dbg_value(ptr %.val3.i, !1235, !DIExpression(), !13230)
    #dbg_value(ptr %.val3.i, !1238, !DIExpression(), !13232)
    #dbg_value(ptr %.val3.i, !1244, !DIExpression(), !13234)
    #dbg_value(i64 8, !1230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13228)
    #dbg_value(i64 8, !1236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13230)
    #dbg_value(i64 8, !1242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13232)
    #dbg_value(i64 8, !1245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13234)
    #dbg_value(i64 80, !1230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13228)
    #dbg_value(i64 80, !1236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13230)
    #dbg_value(i64 80, !1242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13232)
    #dbg_value(i64 80, !1245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13234)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 80, i64 noundef 8) #23, !dbg !13641, !inline_history !1321
  br label %.body, !dbg !13640

bb.t:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !13640, !inline_history !1321
  unreachable, !dbg !13640

bb.v:                                             ; preds = %bb.o
    #dbg_value(ptr %i.e, !13345, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13547)
    #dbg_value(ptr %i.g, !13360, !DIExpression(), !13548)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13549
  %i.bh = load ptr, ptr %i.ap, align 8, !dbg !13642, !nonnull !658, !noundef !658 ; 3 uses
    #dbg_value(ptr %i.bh, !13350, !DIExpression(), !13550)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13236)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13238)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13236)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13238)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13236)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13238)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13236)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13238)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !13236)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !13238)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !13236)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !13238)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !13236)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !13238)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !13236)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !13238)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !13236)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !13238)
    #dbg_value(i8 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !13236)
    #dbg_value(i8 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !13238)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13236)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13238)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13236)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13238)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13236)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13238)
    #dbg_value(i8 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !13236)
    #dbg_value(i8 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !13238)
    #dbg_value(i8 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !13236)
    #dbg_value(i8 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !13238)
    #dbg_value(i64 8, !1122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13240)
    #dbg_value(i64 8, !1138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13242)
    #dbg_value(i64 8, !1157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13244)
    #dbg_value(i64 80, !1122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13240)
    #dbg_value(i64 80, !1138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13242)
    #dbg_value(i64 80, !1157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13244)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1155, !DIExpression(), !13242)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1161, !DIExpression(), !13244)
    #dbg_value(i8 0, !1162, !DIExpression(), !13244)
    #dbg_value(i64 8, !1164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13246)
    #dbg_value(i64 8, !1186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13248)
    #dbg_value(i64 80, !1164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13246)
    #dbg_value(i64 80, !1186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13248)
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13246)
    #dbg_value(i64 80, !1169, !DIExpression(), !13249)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13643, !noalias !13552
  %i.bi = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !13644, !noalias !13552 ; 11 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !13645
  br i1 %i.bj, label %.invoke, label %bb.z, !dbg !13646, !prof !1189

bb.w:                                             ; preds = %bb.o
    #dbg_value(ptr %i.e, !13344, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13553)
    #dbg_value(ptr %i.g, !13360, !DIExpression(), !13554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13555
  %i.bk = load ptr, ptr %i.ao, align 8, !dbg !13647, !nonnull !658, !noundef !658 ; 3 uses
    #dbg_value(ptr %i.bk, !13350, !DIExpression(), !13556)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13253)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13255)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13253)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13255)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13253)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13255)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13253)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13255)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !13253)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !13255)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !13253)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !13255)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !13253)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !13255)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !13253)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !13255)
    #dbg_value(i32 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !13253)
    #dbg_value(i32 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !13255)
    #dbg_value(i8 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !13253)
    #dbg_value(i8 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !13255)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13253)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13255)
    #dbg_value(i64 1, !1190, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13253)
    #dbg_value(i64 1, !1099, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13255)
    #dbg_value(i64 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13253)
    #dbg_value(i64 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13255)
    #dbg_value(i8 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !13253)
    #dbg_value(i8 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !13255)
    #dbg_value(i8 0, !1190, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !13253)
    #dbg_value(i8 0, !1099, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !13255)
    #dbg_value(i64 8, !1122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13257)
    #dbg_value(i64 8, !1138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13259)
    #dbg_value(i64 8, !1157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13261)
    #dbg_value(i64 80, !1122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13257)
    #dbg_value(i64 80, !1138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13259)
    #dbg_value(i64 80, !1157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13261)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1155, !DIExpression(), !13259)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1161, !DIExpression(), !13261)
    #dbg_value(i8 0, !1162, !DIExpression(), !13261)
    #dbg_value(i64 8, !1164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13263)
    #dbg_value(i64 8, !1186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13265)
    #dbg_value(i64 80, !1164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13263)
    #dbg_value(i64 80, !1186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13265)
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13263)
    #dbg_value(i64 80, !1169, !DIExpression(), !13266)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !13648, !noalias !13558
  %i.bl = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !13649, !noalias !13558 ; 11 uses
  %i.bm = icmp eq ptr %i.bl, null, !dbg !13650
  br i1 %i.bm, label %.invoke, label %bb.ae, !dbg !13651, !prof !1189

.invoke:                                          ; preds = %bb.w, %bb.v
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13652

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ao, !13346, !DIExpression(), !13563)
    #dbg_value(ptr %i.g, !13378, !DIExpression(), !13564)
    #dbg_value(ptr %i.g, !13386, !DIExpression(), !13565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13653
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13654

bb.y:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ao, !13347, !DIExpression(), !13566)
    #dbg_value(ptr %i.g, !13378, !DIExpression(), !13567)
    #dbg_value(ptr %i.g, !13386, !DIExpression(), !13568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13655
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13656

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.aj, %bb.y, %bb.x, %.invoke
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
