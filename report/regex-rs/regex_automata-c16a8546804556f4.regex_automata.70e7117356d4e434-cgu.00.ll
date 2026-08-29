Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.00?download=true
inline.NumInlined: 948
inline.NumDeleted: 510
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_:bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !21735, !noalias !21732
    #dbg_value(i64 %i.i, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21736)
    #dbg_value(i64 %i.k, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21736)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19, !dbg !21737, !noalias !21732
  unreachable, !dbg !21737

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !21738, !noalias !21732, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.i, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21739)
    #dbg_value(ptr %i.l, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21739)
    #dbg_value(ptr poison, !10545, !DIExpression(), !21740)
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !21741
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21742)
  tail call void @llvm.assume(i1 %i.m), !dbg !21744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21745, !noalias !21732
  store i64 %i.i, ptr %0, align 8, !dbg !21746, !alias.scope !21698, !noalias !21747
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21746
  store ptr %i.l, ptr %i.n, align 8, !dbg !21746, !alias.scope !21698, !noalias !21747
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21746 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !21746, !alias.scope !21698, !noalias !21747
  %.not.i = icmp eq i64 %i.e, 0, !dbg !21748
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBU_.exit, label %bb.c, !dbg !21748

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i
    #dbg_value(ptr %i.d, !10499, !DIExpression(), !21713)
    #dbg_value(ptr %i.d, !10508, !DIExpression(), !21715)
    #dbg_value(ptr %i.l, !10500, !DIExpression(), !21713)
    #dbg_value(ptr %i.l, !10509, !DIExpression(), !21715)
  %i.p = shl nuw nsw i64 %i.e, 3, !dbg !21749
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %i.d, i64 %i.p, i1 false), !dbg !21749, !noalias !21698
    #dbg_value(ptr %0, !21723, !DIExpression(), !21750)
  store i64 %i.e, ptr %i.o, align 8, !dbg !21751, !alias.scope !21698, !noalias !21747
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBU_.exit, !dbg !21752

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBU_.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.c
  ret void, !dbg !21753
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21754 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !21762, !DIExpression(), !21794)
    #dbg_value(ptr poison, !21824, !DIExpression(), !21900)
    #dbg_value(ptr poison, !21845, !DIExpression(), !21901)
  %i.e = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !21759, !DIExpression(), !21902)
    #dbg_value(ptr %1, !21903, !DIExpression(), !21909)
    #dbg_value(ptr %1, !21911, !DIExpression(), !21916)
    #dbg_value(ptr %1, !21918, !DIExpression(), !21922)
    #dbg_value(ptr %1, !21924, !DIExpression(), !21930)
    #dbg_declare(ptr poison, !21760, !DIExpression(), !21932)
    #dbg_declare(ptr poison, !21898, !DIExpression(), !21933)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21934
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21942
  %i.h = load ptr, ptr %i.g, align 8, !dbg !21942, !nonnull !221, !noundef !221 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !dbg !21949, !noundef !221 ; 4 uses
    #dbg_value(ptr %i.h, !21893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21950)
    #dbg_value(i64 %i.i, !21893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21951), !dbg !21954
    #dbg_value(ptr %i.h, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21955)
    #dbg_value(ptr %i.h, !21956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21961)
    #dbg_value(ptr %i.h, !21963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21973)
    #dbg_value(i64 %i.i, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21955)
    #dbg_value(i64 %i.i, !21956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21961)
    #dbg_value(i64 %i.i, !21963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21973)
    #dbg_declare(ptr poison, !21861, !DIExpression(), !21975)
    #dbg_declare(ptr poison, !21976, !DIExpression(), !21983)
    #dbg_declare(ptr poison, !21985, !DIExpression(), !21992)
    #dbg_declare(ptr %i.e, !21862, !DIExpression(), !21994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21995, !noalias !21996
    #dbg_value(i64 %i.i, !21982, !DIExpression(), !21998)
    #dbg_value(i64 %i.i, !21991, !DIExpression(), !21999)
    #dbg_value(i64 %i.i, !21967, !DIExpression(), !22000)
    #dbg_value(i64 %i.i, !22001, !DIExpression(), !22007)
    #dbg_value(i64 %i.i, !22009, !DIExpression(), !22016)
    #dbg_value(i64 %i.i, !10512, !DIExpression(), !22018)
    #dbg_value(i64 %i.i, !10542, !DIExpression(), !22020)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !22022)
    #dbg_value(i64 8, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22018)
    #dbg_value(i64 8, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22020)
    #dbg_value(i64 32, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22018)
    #dbg_value(i64 32, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22020)
    #dbg_value(i64 0, !10546, !DIExpression(), !22020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22023, !noalias !21996
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 288230376151711744) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !22023, !noalias !21996
  %i.j = load i64, ptr %i.d, align 8, !dbg !22023, !range !1422, !noalias !21996, !noundef !221
  %i.k = trunc nuw i64 %i.j to i1, !dbg !22024
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !22018
  %i.m = load i64, ptr %i.l, align 8, !dbg !22018, !range !10557, !noalias !21996, !noundef !221 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22018 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !22024, !prof !1502

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !dbg !22025, !noalias !21996
    #dbg_value(i64 %i.m, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22026)
    #dbg_value(i64 %i.o, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22026)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #19, !dbg !22027, !noalias !21996
  unreachable, !dbg !22027

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !dbg !22028, !noalias !21996, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.m, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22029)
    #dbg_value(ptr %i.p, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22029)
    #dbg_value(ptr poison, !10545, !DIExpression(), !22030)
  %i.q = icmp ule i64 %i.i, %i.m, !dbg !22031
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22032)
  tail call void @llvm.assume(i1 %i.q), !dbg !22034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22035, !noalias !21996
  store i64 %i.m, ptr %i.e, align 8, !dbg !22036, !noalias !21996
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !22036
  store ptr %i.p, ptr %i.r, align 8, !dbg !22036, !noalias !21996
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !22036 ; 2 uses
    #dbg_value(ptr %i.e, !21863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22037)
    #dbg_value(i64 0, !21863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22037)
    #dbg_value(ptr %i.p, !22006, !DIExpression(), !22038)
    #dbg_value(i64 0, !22001, !DIExpression(), !22038)
    #dbg_value(ptr %i.p, !21868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22051)
    #dbg_value(i64 %i.m, !21868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22051)
    #dbg_value(ptr %i.h, !21969, !DIExpression(), !22052)
    #dbg_value(ptr %i.h, !22006, !DIExpression(), !22007)
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i, !dbg !22053
    #dbg_value(ptr %i.h, !21886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22054)
    #dbg_value(ptr %i.t, !21886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22054)
    #dbg_value(i64 0, !21886, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22054)
    #dbg_value(i64 %i.m, !21886, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22054)
    #dbg_value(ptr undef, !21845, !DIExpression(), !21901)
  %i.u = icmp eq i64 %i.m, 0, !dbg !22055
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %.lr.ph.i, !dbg !22055

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %bb.c, !dbg !22055

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.040.094.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ad, %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 17 uses
  %.sroa.7.093.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.092.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.ab, %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
    #dbg_value(ptr %.sroa.040.094.i, !21886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22054)
    #dbg_value(i64 %.sroa.7.093.i, !21886, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22054)
    #dbg_value(i64 %.sroa.10.092.i, !21886, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22054)
  %i.ab = add i64 %.sroa.10.092.i, -1, !dbg !22056 ; 2 uses
    #dbg_value(i64 %i.ab, !21886, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22054)
    #dbg_value(ptr undef, !21824, !DIExpression(), !21900)
    #dbg_value(ptr undef, !21762, !DIExpression(), !21794)
    #dbg_value(i64 1, !22057, !DIExpression(), !22064)
    #dbg_value(ptr %.sroa.040.094.i, !21788, !DIExpression(), !22066)
    #dbg_value(ptr %.sroa.040.094.i, !22063, !DIExpression(), !22064)
    #dbg_value(ptr %i.t, !21790, !DIExpression(), !22067)
    #dbg_value(ptr poison, !22068, !DIExpression(), !22075)
    #dbg_value(ptr poison, !22074, !DIExpression(), !22077)
  %i.ac = icmp eq ptr %.sroa.040.094.i, %i.t, !dbg !22078
  br i1 %i.ac, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.d, !dbg !22079

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 32, !dbg !22080
    #dbg_value(ptr %i.ad, !21886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22054)
    #dbg_value(ptr %.sroa.040.094.i, !21825, !DIExpression(), !22081)
    #dbg_value(i64 %.sroa.7.093.i, !21831, !DIExpression(), !22082)
  %i.ae = add nuw nsw i64 %.sroa.7.093.i, 1, !dbg !22083
    #dbg_value(i64 %i.ae, !21886, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22054)
    #dbg_value(i64 %.sroa.7.093.i, !21887, !DIExpression(), !22084)
    #dbg_value(ptr %.sroa.040.094.i, !21889, !DIExpression(), !22084)
    #dbg_value(i64 %.sroa.7.093.i, !21863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22037)
    #dbg_value(!DIArgList(ptr %i.p, i64 %.sroa.7.093.i), !22085, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !22093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22095), !dbg !22098
    #dbg_value(ptr %.sroa.040.094.i, !22099, !DIExpression(), !22132)
  %i.af = load i32, ptr %.sroa.040.094.i, align 8, !dbg !22134, !range !4950, !alias.scope !22135, !noalias !22136, !noundef !221 ; 2 uses
  switch i32 %i.af, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.p
    i32 8, label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
    i32 9, label %bb.s
  ], !dbg !22134

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22106, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22138)
    #dbg_value(ptr %.sroa.040.094.i, !22139, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22142)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 4, !dbg !22142
  %i.ah = load i32, ptr %i.ag, align 4, !dbg !22142, !alias.scope !22135, !noalias !22136, !noundef !221
  %.sroa.442.i.sroa.0.0.vec.insert67 = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.ah, i64 0, !dbg !22144
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.0.vec.insert67, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.0.vec.insert67, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22108, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22154)
    #dbg_value(ptr %.sroa.040.094.i, !22155, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22162)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 4, !dbg !22162
  %.sroa.0.0.copyload.i.i72 = load <2 x i32>, ptr %i.ai, align 4, !dbg !22162, !alias.scope !22135, !noalias !22136
    #dbg_value(<2 x i32> %.sroa.0.0.copyload.i.i72, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %.sroa.0.0.copyload.i.i72, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22110, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22165), !dbg !22168
    #dbg_value(ptr %.sroa.040.094.i, !10379, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22169)
    #dbg_value(ptr %.sroa.040.094.i, !21570, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22171)
    #dbg_value(ptr %.sroa.040.094.i, !10390, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22173)
    #dbg_value(ptr %.sroa.040.094.i, !10402, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22175)
    #dbg_value(ptr %.sroa.040.094.i, !10408, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22177)
    #dbg_declare(ptr poison, !10386, !DIExpression(), !22179)
    #dbg_declare(ptr poison, !10418, !DIExpression(), !22180)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 24, !dbg !22182
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 16, !dbg !22185
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !22185, !alias.scope !22189, !noalias !22190, !nonnull !221, !noundef !221
  %i.am = load i64, ptr %i.aj, align 8, !dbg !22192, !alias.scope !22189, !noalias !22190, !noundef !221 ; 5 uses
    #dbg_value(ptr %i.al, !10426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22193)
    #dbg_value(i64 %i.am, !10426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22193)
    #dbg_value(ptr %i.al, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22194)
    #dbg_value(i64 %i.am, !10460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22194)
    #dbg_declare(ptr poison, !10465, !DIExpression(), !22196)
    #dbg_declare(ptr poison, !10473, !DIExpression(), !22197)
    #dbg_declare(ptr poison, !10482, !DIExpression(), !22199)
    #dbg_value(i64 %i.am, !10466, !DIExpression(), !22201)
    #dbg_value(i64 %i.am, !10479, !DIExpression(), !22202)
    #dbg_value(i64 %i.am, !10488, !DIExpression(), !22203)
    #dbg_value(i64 %i.am, !10494, !DIExpression(), !22204)
    #dbg_value(i64 %i.am, !10503, !DIExpression(), !22206)
    #dbg_value(i64 %i.am, !10512, !DIExpression(), !22208)
    #dbg_value(i64 %i.am, !10542, !DIExpression(), !22210)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !22212)
    #dbg_value(i64 4, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22208)
    #dbg_value(i64 4, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22210)
    #dbg_value(i64 8, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22208)
    #dbg_value(i64 8, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22210)
    #dbg_value(i64 0, !10546, !DIExpression(), !22210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22213, !noalias !22214
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.am, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !22213, !noalias !21996

.noexc.i:                                         ; preds = %bb.g
  %i.an = load i64, ptr %i.c, align 8, !dbg !22213, !range !1422, !noalias !22214, !noundef !221
  %i.ao = trunc nuw i64 %i.an to i1, !dbg !22218
  %i.ap = load i32, ptr %i.z, align 8, !dbg !22208
  %i.aq = load i32, ptr %.sroa_idx64, align 4, !dbg !22208
  %i.ar = load i64, ptr %i.z, align 8, !dbg !22208, !range !10557, !noalias !22214, !noundef !221 ; 2 uses
  br i1 %i.ao, label %bb.h, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i, !dbg !22218, !prof !1502

bb.h:                                             ; preds = %.noexc.i
  %i.as = load i64, ptr %i.aa, align 8, !dbg !22219, !noalias !22214
    #dbg_value(i64 %i.ar, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22220)
    #dbg_value(i64 %i.as, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22220)
  br label %.invoke, !dbg !22221

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i: ; preds = %.noexc.i
  %i.at = load ptr, ptr %i.aa, align 8, !dbg !22222, !noalias !22214, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.ar, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22223)
    #dbg_value(ptr %i.at, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22223)
    #dbg_value(ptr poison, !10545, !DIExpression(), !22224)
  %i.au = icmp ule i64 %i.am, %i.ar, !dbg !22225
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22226)
  tail call void @llvm.assume(i1 %i.au), !dbg !22228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22229, !noalias !22214
    #dbg_value(i64 %i.ar, !10468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22230)
    #dbg_value(ptr %i.at, !10468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22230)
    #dbg_value(i64 0, !10468, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22230)
  %.not.i.i.i.i = icmp eq i64 %i.am, 0, !dbg !22231
  br i1 %.not.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i, label %bb.i, !dbg !22231

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i
    #dbg_value(ptr %i.al, !10499, !DIExpression(), !22204)
    #dbg_value(ptr %i.al, !10508, !DIExpression(), !22206)
    #dbg_value(ptr %i.at, !10500, !DIExpression(), !22204)
    #dbg_value(ptr %i.at, !10509, !DIExpression(), !22206)
  %i.av = shl nuw nsw i64 %i.am, 3, !dbg !22232
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr nonnull readonly align 4 %i.al, i64 %i.av, i1 false), !dbg !22232, !noalias !22233
    #dbg_value(i64 %i.am, !10468, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22230)
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i, !dbg !22234

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i: ; preds = %bb.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i
    #dbg_value(i64 %i.am, !10468, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22230)
  %.sroa.442.i.sroa.0.4.vec.insert71 = insertelement <2 x i32> <i32 undef, i32 poison>, i32 %i.ap, i64 1, !dbg !22235
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.4.vec.insert71, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.4.vec.insert71, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
    #dbg_value(i32 %i.aq, !22145, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22151)
    #dbg_value(i32 %i.aq, !22092, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22093)
    #dbg_value(ptr %i.at, !22092, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22093)
    #dbg_value(ptr %i.at, !22145, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22151)
    #dbg_value(i64 %i.am, !22092, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22093)
    #dbg_value(i64 %i.am, !22145, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22151)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.j:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22112, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22236)
    #dbg_value(ptr %.sroa.040.094.i, !22237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22244)
    #dbg_value(ptr %.sroa.040.094.i, !22115, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22246)
    #dbg_value(ptr %.sroa.040.094.i, !22139, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22247)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 4, !dbg !22247
  %2 = load <2 x i32>, ptr %i.aw, align 4, !dbg !22247, !alias.scope !22135, !noalias !22136
    #dbg_value(<2 x i32> %2, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %2, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.k:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22116, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22249)
    #dbg_value(ptr %.sroa.040.094.i, !22250, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22256)
    #dbg_value(ptr %.sroa.040.094.i, !22119, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22258)
    #dbg_value(ptr %.sroa.040.094.i, !22259, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22265)
    #dbg_value(ptr %.sroa.040.094.i, !22121, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !22267)
    #dbg_value(ptr %.sroa.040.094.i, !22139, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !22268)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 4, !dbg !22256
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 12, !dbg !22268
  %i.az = load i32, ptr %i.ay, align 4, !dbg !22268, !alias.scope !22135, !noalias !22136, !noundef !221
  %3 = load <2 x i32>, ptr %i.ax, align 4, !dbg !22256, !alias.scope !22135, !noalias !22136
    #dbg_value(<2 x i32> %3, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %3, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
    #dbg_value(i32 %i.az, !22145, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22151)
    #dbg_value(i32 %i.az, !22092, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22093)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.l:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22122, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22270)
    #dbg_value(ptr %.sroa.040.094.i, !22250, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22271)
    #dbg_value(ptr %.sroa.040.094.i, !22124, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22273)
    #dbg_value(ptr %.sroa.040.094.i, !22259, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22274)
    #dbg_value(ptr %.sroa.040.094.i, !22125, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !22276)
    #dbg_value(ptr %.sroa.040.094.i, !22139, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !22277)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 4, !dbg !22271
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 12, !dbg !22277
  %i.bc = load i32, ptr %i.bb, align 4, !dbg !22277, !alias.scope !22135, !noalias !22136, !noundef !221
  %4 = load <2 x i32>, ptr %i.ba, align 4, !dbg !22271, !alias.scope !22135, !noalias !22136
    #dbg_value(<2 x i32> %4, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %4, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
    #dbg_value(i32 %i.bc, !22145, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22151)
    #dbg_value(i32 %i.bc, !22092, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22093)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.m:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22126, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22280), !dbg !22283
    #dbg_value(ptr %.sroa.040.094.i, !18949, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22284)
    #dbg_value(ptr %.sroa.040.094.i, !18953, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22286)
    #dbg_value(ptr %.sroa.040.094.i, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22288)
    #dbg_value(ptr %.sroa.040.094.i, !18972, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22290)
    #dbg_value(ptr %.sroa.040.094.i, !18978, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22292)
    #dbg_declare(ptr poison, !18950, !DIExpression(), !22294)
    #dbg_declare(ptr poison, !18987, !DIExpression(), !22295)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 24, !dbg !22297
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 16, !dbg !22300
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !22300, !alias.scope !22304, !noalias !22305, !nonnull !221, !noundef !221
  %i.bg = load i64, ptr %i.bd, align 8, !dbg !22307, !alias.scope !22304, !noalias !22305, !noundef !221 ; 5 uses
    #dbg_value(ptr %i.bf, !18992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22308)
    #dbg_value(i64 %i.bg, !18992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22308)
    #dbg_value(ptr %i.bf, !19025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22309)
    #dbg_value(i64 %i.bg, !19025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22309)
    #dbg_declare(ptr poison, !19026, !DIExpression(), !22311)
    #dbg_declare(ptr poison, !19032, !DIExpression(), !22312)
    #dbg_declare(ptr poison, !19038, !DIExpression(), !22314)
    #dbg_value(i64 %i.bg, !19027, !DIExpression(), !22316)
    #dbg_value(i64 %i.bg, !19035, !DIExpression(), !22317)
    #dbg_value(i64 %i.bg, !19041, !DIExpression(), !22318)
    #dbg_value(i64 %i.bg, !19047, !DIExpression(), !22319)
    #dbg_value(i64 %i.bg, !19056, !DIExpression(), !22321)
    #dbg_value(i64 %i.bg, !10512, !DIExpression(), !22323)
    #dbg_value(i64 %i.bg, !10542, !DIExpression(), !22325)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !22327)
    #dbg_value(i64 4, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22323)
    #dbg_value(i64 4, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22325)
    #dbg_value(i64 4, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22323)
    #dbg_value(i64 4, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22325)
    #dbg_value(i64 0, !10546, !DIExpression(), !22325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22328, !noalias !22329
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.bg, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc36.i unwind label %.loopexit.i, !dbg !22328, !noalias !21996

.noexc36.i:                                       ; preds = %bb.m
  %i.bh = load i64, ptr %i.b, align 8, !dbg !22328, !range !1422, !noalias !22329, !noundef !221
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !22333
  %i.bj = load i32, ptr %i.x, align 8, !dbg !22323
  %i.bk = load i32, ptr %.sroa_idx63, align 4, !dbg !22323
  %i.bl = load i64, ptr %i.x, align 8, !dbg !22323, !range !10557, !noalias !22329, !noundef !221 ; 2 uses
  br i1 %i.bi, label %bb.n, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i6.i.i, !dbg !22333, !prof !1502

bb.n:                                             ; preds = %.noexc36.i
  %i.bm = load i64, ptr %i.y, align 8, !dbg !22334, !noalias !22329
    #dbg_value(i64 %i.bl, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22335)
    #dbg_value(i64 %i.bm, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22335)
  br label %.invoke, !dbg !22336

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i6.i.i: ; preds = %.noexc36.i
  %i.bn = load ptr, ptr %i.y, align 8, !dbg !22337, !noalias !22329, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.bl, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22338)
    #dbg_value(ptr %i.bn, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22338)
    #dbg_value(ptr poison, !10545, !DIExpression(), !22339)
  %i.bo = icmp ule i64 %i.bg, %i.bl, !dbg !22340
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22341)
  tail call void @llvm.assume(i1 %i.bo), !dbg !22343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22344, !noalias !22329
    #dbg_value(i64 %i.bl, !19020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22345)
    #dbg_value(ptr %i.bn, !19020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22345)
    #dbg_value(i64 0, !19020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22345)
  %.not.i.i7.i.i = icmp eq i64 %i.bg, 0, !dbg !22346
  br i1 %.not.i.i7.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, label %bb.o, !dbg !22346

bb.o:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i6.i.i
    #dbg_value(ptr %i.bf, !19052, !DIExpression(), !22319)
    #dbg_value(ptr %i.bf, !19061, !DIExpression(), !22321)
    #dbg_value(ptr %i.bn, !19053, !DIExpression(), !22319)
    #dbg_value(ptr %i.bn, !19062, !DIExpression(), !22321)
  %i.bp = shl nuw nsw i64 %i.bg, 2, !dbg !22347
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr nonnull readonly align 4 %i.bf, i64 %i.bp, i1 false), !dbg !22347, !noalias !22348
    #dbg_value(i64 %i.bg, !19020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22345)
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, !dbg !22349

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i: ; preds = %bb.o, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i6.i.i
    #dbg_value(i64 %i.bg, !19020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22345)
  %.sroa.442.i.sroa.0.4.vec.insert69 = insertelement <2 x i32> <i32 undef, i32 poison>, i32 %i.bj, i64 1, !dbg !22350
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.4.vec.insert69, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.4.vec.insert69, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
    #dbg_value(i32 %i.bk, !22145, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22151)
    #dbg_value(i32 %i.bk, !22092, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22093)
    #dbg_value(ptr %i.bn, !22092, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22093)
    #dbg_value(ptr %i.bn, !22145, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22151)
    #dbg_value(i64 %i.bg, !22092, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22093)
    #dbg_value(i64 %i.bg, !22145, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22151)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.p:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22128, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22352), !dbg !22355
    #dbg_value(ptr %.sroa.040.094.i, !18949, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22356)
    #dbg_value(ptr %.sroa.040.094.i, !18953, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22358)
    #dbg_value(ptr %.sroa.040.094.i, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22360)
    #dbg_value(ptr %.sroa.040.094.i, !18972, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22362)
    #dbg_value(ptr %.sroa.040.094.i, !18978, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22364)
    #dbg_declare(ptr poison, !18950, !DIExpression(), !22366)
    #dbg_declare(ptr poison, !18987, !DIExpression(), !22367)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 24, !dbg !22369
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 16, !dbg !22372
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !22372, !alias.scope !22376, !noalias !22377, !nonnull !221, !noundef !221
  %i.bt = load i64, ptr %i.bq, align 8, !dbg !22379, !alias.scope !22376, !noalias !22377, !noundef !221 ; 5 uses
    #dbg_value(ptr %i.bs, !18992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22380)
    #dbg_value(i64 %i.bt, !18992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22380)
    #dbg_value(ptr %i.bs, !19025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22381)
    #dbg_value(i64 %i.bt, !19025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22381)
    #dbg_declare(ptr poison, !19026, !DIExpression(), !22383)
    #dbg_declare(ptr poison, !19032, !DIExpression(), !22384)
    #dbg_declare(ptr poison, !19038, !DIExpression(), !22386)
    #dbg_value(i64 %i.bt, !19027, !DIExpression(), !22388)
    #dbg_value(i64 %i.bt, !19035, !DIExpression(), !22389)
    #dbg_value(i64 %i.bt, !19041, !DIExpression(), !22390)
    #dbg_value(i64 %i.bt, !19047, !DIExpression(), !22391)
    #dbg_value(i64 %i.bt, !19056, !DIExpression(), !22393)
    #dbg_value(i64 %i.bt, !10512, !DIExpression(), !22395)
    #dbg_value(i64 %i.bt, !10542, !DIExpression(), !22397)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !22399)
    #dbg_value(i64 4, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22395)
    #dbg_value(i64 4, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22397)
    #dbg_value(i64 4, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22395)
    #dbg_value(i64 4, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22397)
    #dbg_value(i64 0, !10546, !DIExpression(), !22397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22400, !noalias !22401
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.bt, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc38.i unwind label %.loopexit.i, !dbg !22400, !noalias !21996

.noexc38.i:                                       ; preds = %bb.p
  %i.bu = load i64, ptr %i.a, align 8, !dbg !22400, !range !1422, !noalias !22401, !noundef !221
  %i.bv = trunc nuw i64 %i.bu to i1, !dbg !22405
  %i.bw = load i32, ptr %i.v, align 8, !dbg !22395
  %i.bx = load i32, ptr %.sroa_idx, align 4, !dbg !22395
  %i.by = load i64, ptr %i.v, align 8, !dbg !22395, !range !10557, !noalias !22401, !noundef !221 ; 2 uses
  br i1 %i.bv, label %bb.q, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i8.i.i, !dbg !22405, !prof !1502

bb.q:                                             ; preds = %.noexc38.i
  %i.bz = load i64, ptr %i.w, align 8, !dbg !22406, !noalias !22401
    #dbg_value(i64 %i.by, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22407)
    #dbg_value(i64 %i.bz, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22407)
  br label %.invoke, !dbg !22408

.invoke:                                          ; preds = %bb.h, %bb.n, %bb.q
  %i.ca = phi i64 [ %i.by, %bb.q ], [ %i.bl, %bb.n ], [ %i.ar, %bb.h ]
  %i.cb = phi i64 [ %i.bz, %bb.q ], [ %i.bm, %bb.n ], [ %i.as, %bb.h ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cb) #19
          to label %.cont unwind label %.loopexit.split-lp.i, !dbg !22132, !noalias !21996

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i8.i.i: ; preds = %.noexc38.i
  %i.cc = load ptr, ptr %i.w, align 8, !dbg !22409, !noalias !22401, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.by, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22410)
    #dbg_value(ptr %i.cc, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22410)
    #dbg_value(ptr poison, !10545, !DIExpression(), !22411)
  %i.cd = icmp ule i64 %i.bt, %i.by, !dbg !22412
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22413)
  tail call void @llvm.assume(i1 %i.cd), !dbg !22415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22416, !noalias !22401
    #dbg_value(i64 %i.by, !19020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22417)
    #dbg_value(ptr %i.cc, !19020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22417)
    #dbg_value(i64 0, !19020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22417)
  %.not.i.i9.i.i = icmp eq i64 %i.bt, 0, !dbg !22418
  br i1 %.not.i.i9.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i, label %bb.r, !dbg !22418

bb.r:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i8.i.i
    #dbg_value(ptr %i.bs, !19052, !DIExpression(), !22391)
    #dbg_value(ptr %i.bs, !19061, !DIExpression(), !22393)
    #dbg_value(ptr %i.cc, !19053, !DIExpression(), !22391)
    #dbg_value(ptr %i.cc, !19062, !DIExpression(), !22393)
  %i.ce = shl nuw nsw i64 %i.bt, 2, !dbg !22419
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull readonly align 4 %i.bs, i64 %i.ce, i1 false), !dbg !22419, !noalias !22420
    #dbg_value(i64 %i.bt, !19020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22417)
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i, !dbg !22421

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i: ; preds = %bb.r, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i8.i.i
    #dbg_value(i64 %i.bt, !19020, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22417)
  %.sroa.442.i.sroa.0.4.vec.insert = insertelement <2 x i32> <i32 undef, i32 poison>, i32 %i.bw, i64 1, !dbg !22422
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.4.vec.insert, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.4.vec.insert, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
    #dbg_value(i32 %i.bx, !22145, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22151)
    #dbg_value(i32 %i.bx, !22092, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22093)
    #dbg_value(ptr %i.cc, !22092, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22093)
    #dbg_value(ptr %i.cc, !22145, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22151)
    #dbg_value(i64 %i.bt, !22092, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22093)
    #dbg_value(i64 %i.bt, !22145, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22151)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

bb.s:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.040.094.i, !22130, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22423)
    #dbg_value(ptr %.sroa.040.094.i, !22250, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22424)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.040.094.i, i64 4, !dbg !22424
  %i.cg = load i32, ptr %i.cf, align 4, !dbg !22424, !alias.scope !22135, !noalias !22136, !noundef !221
  %.sroa.442.i.sroa.0.0.vec.insert = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.cg, i64 0, !dbg !22426
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.0.vec.insert, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.0.vec.insert, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
  br label %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, !dbg !22153

_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.s, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, %bb.l, %bb.k, %bb.j, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i, %bb.f, %bb.e, %bb.d
  %.sroa.442.i.sroa.12.0 = phi i32 [ undef, %bb.e ], [ undef, %bb.f ], [ %i.aq, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i ], [ undef, %bb.j ], [ %i.az, %bb.k ], [ %i.bc, %bb.l ], [ %i.bk, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %i.bx, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i ], [ undef, %bb.d ], [ undef, %bb.s ], !dbg !22427
  %.sroa.442.i.sroa.0.0 = phi <2 x i32> [ %.sroa.442.i.sroa.0.0.vec.insert67, %bb.e ], [ %.sroa.0.0.copyload.i.i72, %bb.f ], [ %.sroa.442.i.sroa.0.4.vec.insert71, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i ], [ %2, %bb.j ], [ %3, %bb.k ], [ %4, %bb.l ], [ %.sroa.442.i.sroa.0.4.vec.insert69, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %.sroa.442.i.sroa.0.4.vec.insert, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i ], [ undef, %bb.d ], [ %.sroa.442.i.sroa.0.0.vec.insert, %bb.s ], !dbg !22427
  %.sroa.21.0.i = phi i64 [ undef, %bb.e ], [ undef, %bb.f ], [ %i.am, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ %i.bg, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %i.bt, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i ], [ undef, %bb.d ], [ undef, %bb.s ], !dbg !22427
  %.sroa.18.0.i = phi ptr [ undef, %bb.e ], [ undef, %bb.f ], [ %i.at, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_.exit.i.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ %i.bn, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %i.cc, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit10.i.i ], [ undef, %bb.d ], [ undef, %bb.s ], !dbg !22427
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.0, !22092, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22093)
    #dbg_value(<2 x i32> %.sroa.442.i.sroa.0.0, !22145, !DIExpression(DW_OP_LLVM_fragment, 32, 64), !22151)
    #dbg_value(i32 %.sroa.442.i.sroa.12.0, !22092, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22093)
    #dbg_value(i32 %.sroa.442.i.sroa.12.0, !22145, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !22151)
    #dbg_value(ptr %.sroa.18.0.i, !22145, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22151)
    #dbg_value(ptr %.sroa.18.0.i, !22092, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22093)
    #dbg_value(i64 %.sroa.21.0.i, !22145, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22151)
    #dbg_value(i64 %.sroa.21.0.i, !22092, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22093)
    #dbg_value(i32 %i.af, !22092, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22093)
    #dbg_value(i32 %i.af, !22145, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22151)
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.093.i, !dbg !22428 ; 5 uses
    #dbg_value(ptr %i.ch, !22085, !DIExpression(), !22093)
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4, !dbg !22429
  store <2 x i32> %.sroa.442.i.sroa.0.0, ptr %.sroa.471.0..sroa_idx.i, align 4, !dbg !22430, !noalias !21996
  %.sroa.442.i.sroa.12.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 12, !dbg !22430
  store i32 %.sroa.442.i.sroa.12.0, ptr %.sroa.442.i.sroa.12.0..sroa.471.0..sroa_idx.i.sroa_idx, align 4, !dbg !22430, !noalias !21996
  store i32 %i.af, ptr %i.ch, align 8, !dbg !22429, !noalias !21996
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16, !dbg !22429
  store ptr %.sroa.18.0.i, ptr %.sroa.572.0..sroa_idx.i, align 8, !dbg !22429, !noalias !21996
  %.sroa.673.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24, !dbg !22429
  store i64 %.sroa.21.0.i, ptr %.sroa.673.0..sroa_idx.i, align 8, !dbg !22429, !noalias !21996
    #dbg_value(ptr %i.ad, !21886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22054)
    #dbg_value(i64 %i.ae, !21886, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22054)
    #dbg_value(i64 %i.ab, !21886, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22054)
    #dbg_value(ptr undef, !21845, !DIExpression(), !21901)
  %i.ci = icmp eq i64 %i.ab, 0, !dbg !22055
  br i1 %i.ci, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.c, !dbg !22055

bb.t:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !22442, !noalias !21996
  unreachable, !dbg !22442

.loopexit.i:                                      ; preds = %bb.p, %bb.m, %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
    #dbg_value(ptr poison, !22443, !DIExpression(), !22451)
    #dbg_value(ptr poison, !22453, !DIExpression(), !22456)
    #dbg_value(ptr %i.e, !22458, !DIExpression(), !22462)
    #dbg_value(i64 %.sroa.7.093.i, !22461, !DIExpression(), !22462)
  store i64 %.sroa.7.093.i, ptr %i.s, align 8, !dbg !22464, !noalias !21996
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %bb.v unwind label %bb.t, !dbg !22465, !noalias !21996

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %lpad.phi.i, !dbg !22442

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builder5StateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit: ; preds = %bb.c, %_RNvXs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB5_5StateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i
    #dbg_value(ptr %i.e, !22015, !DIExpression(), !22466)
  store i64 %i.i, ptr %i.s, align 8, !dbg !22467, !noalias !21996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !22468, !noalias !21951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22465, !noalias !21996
  ret void, !dbg !22469
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22470 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !22478, !DIExpression(), !22510)
    #dbg_value(ptr poison, !22540, !DIExpression(), !22616)
    #dbg_value(ptr poison, !22561, !DIExpression(), !22617)
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !22475, !DIExpression(), !22618)
    #dbg_value(ptr %1, !22619, !DIExpression(), !22625)
    #dbg_value(ptr %1, !22627, !DIExpression(), !22632)
    #dbg_value(ptr %1, !22634, !DIExpression(), !22638)
    #dbg_value(ptr %1, !22640, !DIExpression(), !22646)
    #dbg_declare(ptr poison, !22476, !DIExpression(), !22648)
    #dbg_declare(ptr poison, !22614, !DIExpression(), !22649)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22650
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22658
  %i.f = load ptr, ptr %i.e, align 8, !dbg !22658, !nonnull !221, !noundef !221 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !dbg !22665, !noundef !221 ; 4 uses
    #dbg_value(ptr %i.f, !22609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22666)
    #dbg_value(i64 %i.g, !22609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22667), !dbg !22670
    #dbg_value(ptr %i.f, !22576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22671)
    #dbg_value(ptr %i.f, !22672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22677)
    #dbg_value(ptr %i.f, !22679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22689)
    #dbg_value(i64 %i.g, !22576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22671)
    #dbg_value(i64 %i.g, !22672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22677)
    #dbg_value(i64 %i.g, !22679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22689)
    #dbg_declare(ptr poison, !22577, !DIExpression(), !22691)
    #dbg_declare(ptr poison, !22692, !DIExpression(), !22699)
    #dbg_declare(ptr poison, !22701, !DIExpression(), !22708)
    #dbg_declare(ptr %i.c, !22578, !DIExpression(), !22710)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22711, !noalias !22712
    #dbg_value(i64 %i.g, !22698, !DIExpression(), !22714)
    #dbg_value(i64 %i.g, !22707, !DIExpression(), !22715)
    #dbg_value(i64 %i.g, !22683, !DIExpression(), !22716)
    #dbg_value(i64 %i.g, !22717, !DIExpression(), !22723)
    #dbg_value(i64 %i.g, !22725, !DIExpression(), !22732)
    #dbg_value(i64 %i.g, !10512, !DIExpression(), !22734)
    #dbg_value(i64 %i.g, !10542, !DIExpression(), !22736)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !22738)
    #dbg_value(i64 8, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22734)
    #dbg_value(i64 8, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22736)
    #dbg_value(i64 32, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22734)
    #dbg_value(i64 32, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22736)
    #dbg_value(i64 0, !10546, !DIExpression(), !22736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22739, !noalias !22712
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !22739, !noalias !22712
  %i.h = load i64, ptr %i.b, align 8, !dbg !22739, !range !1422, !noalias !22712, !noundef !221
  %i.i = trunc nuw i64 %i.h to i1, !dbg !22740
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22734
  %i.k = load i64, ptr %i.j, align 8, !dbg !22734, !range !10557, !noalias !22712, !noundef !221 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22734 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !22740, !prof !1502

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !22741, !noalias !22712
    #dbg_value(i64 %i.k, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22742)
    #dbg_value(i64 %i.m, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22742)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !dbg !22743, !noalias !22712
  unreachable, !dbg !22743

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !22744, !noalias !22712, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.k, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22745)
    #dbg_value(ptr %i.n, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22745)
    #dbg_value(ptr poison, !10545, !DIExpression(), !22746)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !22747
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22748)
  tail call void @llvm.assume(i1 %i.o), !dbg !22750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22751, !noalias !22712
  store i64 %i.k, ptr %i.c, align 8, !dbg !22752, !noalias !22712
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22752
  store ptr %i.n, ptr %i.p, align 8, !dbg !22752, !noalias !22712
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22752 ; 2 uses
    #dbg_value(ptr %i.c, !22579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22753)
    #dbg_value(i64 0, !22579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22753)
    #dbg_value(ptr %i.n, !22722, !DIExpression(), !22754)
    #dbg_value(i64 0, !22717, !DIExpression(), !22754)
    #dbg_value(ptr %i.n, !22584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22767)
    #dbg_value(i64 %i.k, !22584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22767)
    #dbg_value(ptr %i.f, !22685, !DIExpression(), !22768)
    #dbg_value(ptr %i.f, !22722, !DIExpression(), !22723)
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g, !dbg !22769
    #dbg_value(ptr %i.f, !22602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22770)
    #dbg_value(ptr %i.r, !22602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22770)
    #dbg_value(i64 0, !22602, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22770)
    #dbg_value(i64 %i.k, !22602, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22770)
    #dbg_value(ptr undef, !22561, !DIExpression(), !22617)
  %i.s = icmp eq i64 %i.k, 0, !dbg !22771
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8Utf8NodeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %.lr.ph.i, !dbg !22771

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c, !dbg !22771

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.036.075.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.g ] ; 7 uses
  %.sroa.7.074.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.g ] ; 3 uses
  %.sroa.10.073.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.v, %bb.g ]
    #dbg_value(ptr %.sroa.036.075.i, !22602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22770)
    #dbg_value(i64 %.sroa.7.074.i, !22602, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22770)
    #dbg_value(i64 %.sroa.10.073.i, !22602, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22770)
  %i.v = add i64 %.sroa.10.073.i, -1, !dbg !22772 ; 2 uses
    #dbg_value(i64 %i.v, !22602, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22770)
    #dbg_value(ptr undef, !22540, !DIExpression(), !22616)
    #dbg_value(ptr undef, !22478, !DIExpression(), !22510)
    #dbg_value(i64 1, !22773, !DIExpression(), !22780)
    #dbg_value(ptr %.sroa.036.075.i, !22504, !DIExpression(), !22782)
    #dbg_value(ptr %.sroa.036.075.i, !22779, !DIExpression(), !22780)
    #dbg_value(ptr %i.r, !22506, !DIExpression(), !22783)
    #dbg_value(ptr poison, !22784, !DIExpression(), !22791)
    #dbg_value(ptr poison, !22790, !DIExpression(), !22793)
  %i.w = icmp eq ptr %.sroa.036.075.i, %i.r, !dbg !22794
  br i1 %i.w, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8Utf8NodeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.d, !dbg !22795

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.036.075.i, i64 32, !dbg !22796
    #dbg_value(ptr %i.x, !22602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22770)
    #dbg_value(ptr %.sroa.036.075.i, !22541, !DIExpression(), !22797)
    #dbg_value(i64 %.sroa.7.074.i, !22547, !DIExpression(), !22798)
  %i.y = add nuw nsw i64 %.sroa.7.074.i, 1, !dbg !22799
    #dbg_value(i64 %i.y, !22602, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22770)
    #dbg_value(i64 %.sroa.7.074.i, !22603, !DIExpression(), !22800)
    #dbg_value(ptr %.sroa.036.075.i, !22605, !DIExpression(), !22800)
    #dbg_value(i64 %.sroa.7.074.i, !22579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22753)
    #dbg_value(!DIArgList(ptr %i.n, i64 %.sroa.7.074.i), !22801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !22809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22811), !dbg !22814
    #dbg_value(ptr %.sroa.036.075.i, !22815, !DIExpression(), !22822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22824), !dbg !22827
    #dbg_value(ptr %.sroa.036.075.i, !10379, !DIExpression(), !22828)
    #dbg_value(ptr %.sroa.036.075.i, !21570, !DIExpression(), !22830)
    #dbg_value(ptr %.sroa.036.075.i, !10390, !DIExpression(), !22832)
    #dbg_value(ptr %.sroa.036.075.i, !10402, !DIExpression(), !22834)
    #dbg_value(ptr %.sroa.036.075.i, !10408, !DIExpression(), !22836)
    #dbg_declare(ptr poison, !10386, !DIExpression(), !22838)
    #dbg_declare(ptr poison, !10418, !DIExpression(), !22839)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.036.075.i, i64 16, !dbg !22841
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.036.075.i, i64 8, !dbg !22844
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !22844, !alias.scope !22848, !noalias !22849, !nonnull !221, !noundef !221
  %i.ac = load i64, ptr %i.z, align 8, !dbg !22852, !alias.scope !22848, !noalias !22849, !noundef !221 ; 5 uses
    #dbg_value(ptr %i.ab, !10426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22853)
    #dbg_value(i64 %i.ac, !10426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22853)
    #dbg_value(ptr %i.ab, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22854)
    #dbg_value(i64 %i.ac, !10460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22854)
    #dbg_declare(ptr poison, !10465, !DIExpression(), !22856)
    #dbg_declare(ptr poison, !10473, !DIExpression(), !22857)
end_hunk_0
