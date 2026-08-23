Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.08?download=true
inline.NumInlined: 268
inline.NumDeleted: 146
begin_hunk_0_@_RNvXCs37Y8JGf013z_9hashbrowneINtB2_10EquivalentINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEE10equivalentCs9GYDdpCSJ4S_14regex_automata:bb.a
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ], !dbg !11624
  ret i1 %.sroa.0.0.i, !dbg !11643
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1K_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !dbg !11644 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !11650, !DIExpression(), !11652)
    #dbg_value(ptr %1, !11651, !DIExpression(), !11652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11653
  store ptr %0, ptr %i.a, align 8, !dbg !11653
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68), !dbg !11654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11655
  ret i1 %i.b, !dbg !11656
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_5InnerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(384) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !11657 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr poison, !11771, !DIExpression(), !11778)
    #dbg_value(ptr poison, !11788, !DIExpression(), !11800)
    #dbg_value(ptr poison, !11795, !DIExpression(), !11801)
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !11662, !DIExpression(), !11802)
    #dbg_value(ptr %1, !11663, !DIExpression(), !11802)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11835)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11838)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11841)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11844)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11847)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11849)
    #dbg_value(ptr %1, !11803, !DIExpression(), !11852)
    #dbg_declare(ptr %i.i, !11681, !DIExpression(), !11854)
    #dbg_value(i64 1, !11855, !DIExpression(), !11862)
    #dbg_value(i64 1, !11864, !DIExpression(), !11870)
    #dbg_value(ptr @73, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11835)
    #dbg_value(ptr inttoptr (i64 31 to ptr), !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11835)
    #dbg_value(ptr @73, !11821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11872)
    #dbg_value(i64 15, !11821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11872)
  %i.j = load ptr, ptr %1, align 8, !dbg !11873, !nonnull !22, !noundef !22 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11873
  %i.l = load ptr, ptr %i.k, align 8, !dbg !11873, !nonnull !22, !align !1590, !noundef !22 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !11873
  %i.n = load ptr, ptr %i.m, align 8, !dbg !11873, !invariant.load !22, !nonnull !22 ; 4 uses
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15) #25, !dbg !11874
    #dbg_value(i1 %i.o, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11924)
  br i1 %i.o, label %bb.g, label %bb.b, !dbg !11927

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11928, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !11931)
    #dbg_value(ptr %0, !11933, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !11936)
    #dbg_value(ptr %0, !11938, !DIExpression(DW_OP_plus_uconst, 304, DW_OP_stack_value), !11941)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !11943
  %i.q = load ptr, ptr %i.p, align 8, !dbg !11943, !nonnull !22, !noundef !22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !11950
  %i.s = load i64, ptr %i.r, align 16, !dbg !11950, !noundef !22
    #dbg_value(i64 %i.s, !11951, !DIExpression(), !11963)
    #dbg_value(i64 %i.s, !11969, !DIExpression(), !11973)
    #dbg_value(ptr %i.q, !11967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11975)
    #dbg_value(ptr %i.q, !11958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11976)
    #dbg_value(i64 %i.s, !11967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11975)
    #dbg_value(i64 %i.s, !11958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11976)
    #dbg_value(ptr %i.q, !11959, !DIExpression(), !11977)
    #dbg_value(ptr %i.q, !11972, !DIExpression(), !11973)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.s, !dbg !11978
    #dbg_value(ptr %i.q, !11979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11987)
    #dbg_value(ptr %i.t, !11979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11932
  call void @_RNvMs1H_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson3nfa5StateEE3newBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t), !dbg !11989
  %i.u = call { i32, ptr } @_RNvXs1I_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson3nfa5StateEENtNtNtNtB1p_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i), !dbg !11854 ; 2 uses
  %i.v = extractvalue { i32, ptr } %i.u, 1, !dbg !11854 ; 2 uses
  %.not233 = icmp eq ptr %i.v, null, !dbg !11854
  br i1 %.not233, label %._crit_edge, label %.lr.ph, !dbg !11854

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load i32, ptr %i.w, align 16, !noundef !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.z = load i32, ptr %i.y, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.c, !dbg !11854

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.ac = phi ptr [ %i.v, %.lr.ph ], [ %i.az, %bb.l ]
  %.pn = phi { i32, ptr } [ %i.u, %.lr.ph ], [ %i.ay, %bb.l ]
  %i.ad = extractvalue { i32, ptr } %.pn, 0, !dbg !11854 ; 3 uses
    #dbg_value(i32 %i.ad, !11700, !DIExpression(), !11990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11991
    #dbg_value(ptr %i.ac, !11702, !DIExpression(), !11990)
  store ptr %i.ac, ptr %i.h, align 8, !dbg !11991, !captures !11135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11992
    #dbg_value(ptr poison, !11993, !DIExpression(), !11997)
    #dbg_value(ptr %0, !11996, !DIExpression(DW_OP_plus_uconst, 352, DW_OP_stack_value), !11997)
    #dbg_value(ptr poison, !11999, !DIExpression(), !12003)
    #dbg_value(ptr %0, !12002, !DIExpression(DW_OP_plus_uconst, 352, DW_OP_stack_value), !12003)
  %i.ae = icmp eq i32 %i.ad, %i.x, !dbg !12003
  %i.af = icmp eq i32 %i.ad, %i.z, !dbg !11998
  %. = select i1 %i.af, i32 62, i32 32, !dbg !11998
  %.sink = select i1 %i.ae, i32 94, i32 %., !dbg !11998
  store i32 %.sink, ptr %i.g, align 4, !dbg !11990
    #dbg_value(ptr %i.g, !11705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12004)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12005
    #dbg_value(ptr poison, !12006, !DIExpression(), !12009)
    #dbg_value(ptr poison, !12011, !DIExpression(), !12014)
  %i.ag = zext i32 %i.ad to i64, !dbg !12016
  store i64 %i.ag, ptr %i.f, align 8, !dbg !12016
    #dbg_value(ptr %i.f, !11705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12004)
    #dbg_value(ptr %i.h, !11705, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12004)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12017
  store ptr %i.g, ptr %i.e, align 8, !dbg !12017
  store ptr @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !12017
  store ptr %i.f, ptr %i.aa, align 8, !dbg !12017
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !12017
  store ptr %i.h, ptr %i.ab, align 8, !dbg !12017
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5StateNtB6_5Debug3fmtBE_, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !12017
    #dbg_value(ptr @70, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11838)
    #dbg_value(ptr %i.e, !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11838)
  %i.ah = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @70, ptr noundef nonnull %i.e), !dbg !12018
    #dbg_value(i1 %i.ah, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12019)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12024
  br i1 %i.ah, label %bb.k, label %bb.l, !dbg !12025

._crit_edge:                                      ; preds = %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12026
    #dbg_value(ptr %0, !12027, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !12030)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !12032
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !12032, !noundef !22 ; 3 uses
    #dbg_value(i64 %i.aj, !11722, !DIExpression(), !12033)
  %i.ak = icmp ult i64 %i.aj, 2305843009213693952, !dbg !12034
  call void @llvm.assume(i1 %i.ak), !dbg !12035
  %i.al = icmp samesign ugt i64 %i.aj, 1, !dbg !12036
  br i1 %i.al, label %bb.d, label %.loopexit, !dbg !12036

bb.d:                                             ; preds = %._crit_edge
    #dbg_value(ptr @74, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11841)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11841)
    #dbg_value(ptr @74, !11825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12037)
    #dbg_value(i64 1, !11825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12037)
  %i.am = call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 1) #25, !dbg !12038
    #dbg_value(i1 %i.am, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12039)
  br i1 %i.am, label %bb.g, label %.preheader, !dbg !12041

.preheader:                                       ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ao = load ptr, ptr %i.an, align 16, !nonnull !22, !noundef !22
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(i64 0, !11728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12042)
    #dbg_value(ptr undef, !11795, !DIExpression(), !11801)
    #dbg_value(ptr undef, !11788, !DIExpression(), !11800)
    #dbg_value(ptr undef, !11771, !DIExpression(), !11778)
    #dbg_value(ptr undef, !11777, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12043)
  br label %bb.h, !dbg !11779

.loopexit:                                        ; preds = %bb.j, %._crit_edge
    #dbg_value(ptr @74, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11847)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11847)
    #dbg_value(ptr @74, !11829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12044)
    #dbg_value(i64 1, !11829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12044)
  %i.aq = call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 1) #25, !dbg !12045
    #dbg_value(i1 %i.aq, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12046)
  br i1 %i.aq, label %bb.g, label %bb.e, !dbg !12048

bb.e:                                             ; preds = %.loopexit
    #dbg_value(ptr %0, !11753, !DIExpression(), !12049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12050
  store ptr %0, ptr %i.a, align 8, !dbg !12050
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12050
  store ptr @_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_11ByteClassesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.497.0..sroa_idx, align 8, !dbg !12050
    #dbg_value(ptr @72, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11849)
    #dbg_value(ptr %i.a, !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11849)
  %i.ar = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @72, ptr noundef nonnull %i.a), !dbg !12051
    #dbg_value(i1 %i.ar, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12052)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12055
  br i1 %i.ar, label %bb.g, label %bb.f, !dbg !12056

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr @75, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11852)
    #dbg_value(ptr inttoptr (i64 5 to ptr), !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11852)
    #dbg_value(ptr @75, !11833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12057)
    #dbg_value(i64 2, !11833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12057)
  %i.as = call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 2) #25, !dbg !12058
    #dbg_value(i1 %i.as, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12059)
  br label %bb.g, !dbg !12061

bb.g:                                             ; preds = %bb.e, %bb.f, %.loopexit, %bb.d, %bb.a, %bb.i, %bb.k
  %.sroa.0.0 = phi i1 [ %i.as, %bb.f ], [ true, %bb.k ], [ true, %bb.a ], [ true, %bb.i ], [ true, %bb.d ], [ true, %.loopexit ], [ true, %bb.e ], !dbg !11802
  ret i1 %.sroa.0.0, !dbg !12062

bb.h:                                             ; preds = %.preheader, %bb.j
  %.sroa.08.0234 = phi i64 [ 0, %.preheader ], [ %i.ax, %bb.j ] ; 3 uses
    #dbg_value(i64 %.sroa.08.0234, !11789, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.08.0234, !11861, !DIExpression(), !11862)
    #dbg_value(i64 %.sroa.08.0234, !11869, !DIExpression(), !11870)
    #dbg_value(i64 %.sroa.08.0234, !11728, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12064
    #dbg_value(i64 %.sroa.08.0234, !11730, !DIExpression(), !12065)
    #dbg_value(i64 %.sroa.08.0234, !12066, !DIExpression(), !12070)
    #dbg_value(i64 %.sroa.08.0234, !12072, !DIExpression(), !12076)
    #dbg_value(i64 %.sroa.08.0234, !12078, !DIExpression(), !12082)
  store i64 %.sroa.08.0234, ptr %i.d, align 8, !dbg !12064
    #dbg_value(ptr %0, !12069, !DIExpression(DW_OP_plus_uconst, 328, DW_OP_stack_value), !12084)
    #dbg_value(i64 %i.aj, !12075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12076)
    #dbg_value(i64 %i.aj, !12081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12082)
    #dbg_value(ptr %i.ao, !12075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12076)
    #dbg_value(ptr %i.ao, !12081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12082)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.08.0234, !dbg !12085
  %i.au = load i32, ptr %i.at, align 4, !dbg !12086, !noundef !22
    #dbg_value(i32 %i.au, !11732, !DIExpression(), !12087)
    #dbg_value(ptr %i.d, !11734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12089
    #dbg_value(ptr poison, !12006, !DIExpression(), !12090)
    #dbg_value(ptr poison, !12011, !DIExpression(), !12092)
  %i.av = zext i32 %i.au to i64, !dbg !12095
  store i64 %i.av, ptr %i.c, align 8, !dbg !12095
    #dbg_value(ptr %i.c, !11734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12096
  store ptr %i.d, ptr %i.b, align 8, !dbg !12096
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.465.0..sroa_idx, align 8, !dbg !12096
  store ptr %i.c, ptr %i.ap, align 8, !dbg !12096
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.469.0..sroa_idx, align 8, !dbg !12096
    #dbg_value(ptr @71, !11820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11844)
    #dbg_value(ptr %i.b, !11820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11844)
  %i.aw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @71, ptr noundef nonnull %i.b), !dbg !12097
    #dbg_value(i1 %i.aw, !11875, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12098)
  br i1 %i.aw, label %bb.i, label %bb.j, !dbg !12101

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12103
  br label %bb.g, !dbg !12104

bb.j:                                             ; preds = %bb.h
  %i.ax = add nuw nsw i64 %.sroa.08.0234, 1, !dbg !12106 ; 2 uses
    #dbg_value(i64 %i.ax, !11728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12042)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12103
    #dbg_value(ptr undef, !11795, !DIExpression(), !11801)
    #dbg_value(ptr undef, !11788, !DIExpression(), !11800)
    #dbg_value(ptr undef, !11771, !DIExpression(), !11778)
    #dbg_value(ptr undef, !11777, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12043)
  %exitcond.not = icmp eq i64 %i.ax, %i.aj, !dbg !12107
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !dbg !11779

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12026
  br label %bb.g, !dbg !12108

bb.l:                                             ; preds = %bb.c
  %i.ay = call { i32, ptr } @_RNvXs1I_NtNtCs9GYDdpCSJ4S_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson3nfa5StateEENtNtNtNtB1p_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i), !dbg !11854 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 1, !dbg !11854 ; 2 uses
  %.not = icmp eq ptr %i.az, null, !dbg !11854
  br i1 %.not, label %._crit_edge, label %bb.c, !dbg !11854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs5_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtBW_16DenseTransitions4iter0INtB7_5FnMutTRTjRNtNtNtB12_4util10primitives7StateIDEEE8call_mutB12_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 !dbg !12110 {
bb.a:
    #dbg_value(ptr %1, !12127, !DIExpression(), !12134)
    #dbg_value(ptr %0, !12126, !DIExpression(), !12134)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12135
  %.val = load ptr, ptr %i.a, align 8, !dbg !12135, !nonnull !22, !align !12136, !noundef !22
    #dbg_value(ptr poison, !12137, !DIExpression(), !12145)
    #dbg_value(ptr poison, !12144, !DIExpression(), !12145)
    #dbg_value(ptr poison, !12147, !DIExpression(), !12155)
    #dbg_value(ptr poison, !12157, !DIExpression(), !12161)
  %i.b = load i32, ptr %.val, align 4, !dbg !12163, !noundef !22
    #dbg_value(i32 %i.b, !12142, !DIExpression(), !12164)
    #dbg_value(ptr poison, !12151, !DIExpression(), !12165)
    #dbg_value(ptr poison, !12160, !DIExpression(), !12166)
    #dbg_value(ptr poison, !12167, !DIExpression(), !12171)
    #dbg_value(ptr poison, !12170, !DIExpression(), !12171)
  %i.c = icmp ne i32 %i.b, 0, !dbg !12171
  ret i1 %i.c, !dbg !12173
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !12174 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
    #dbg_value(ptr %0, !12180, !DIExpression(), !12182)
    #dbg_value(ptr %1, !12181, !DIExpression(), !12182)
  %i.h = load ptr, ptr %0, align 8, !dbg !12183, !nonnull !22, !align !12136, !noundef !22 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12184), !dbg !12187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12188), !dbg !12187
    #dbg_value(ptr %i.h, !12190, !DIExpression(), !12223)
    #dbg_value(ptr %1, !12196, !DIExpression(), !12223)
    #dbg_value(ptr %1, !12225, !DIExpression(), !12233)
    #dbg_value(ptr %1, !12225, !DIExpression(), !12236)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4, !dbg !12239
  %i.j = load i8, ptr %i.i, align 4, !dbg !12239, !alias.scope !12184, !noalias !12188, !noundef !22 ; 3 uses
    #dbg_value(i8 %i.j, !12197, !DIExpression(), !12240)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 5, !dbg !12241
  %i.l = load i8, ptr %i.k, align 1, !dbg !12241, !alias.scope !12184, !noalias !12188, !noundef !22 ; 2 uses
    #dbg_value(i8 %i.l, !12199, !DIExpression(), !12240)
  %i.m = load i32, ptr %i.h, align 4, !dbg !12242, !alias.scope !12184, !noalias !12188, !noundef !22 ; 2 uses
    #dbg_value(i32 %i.m, !12200, !DIExpression(), !12240)
  %i.n = icmp eq i8 %i.j, %i.l, !dbg !12243
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !12243

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12244, !noalias !12245
  store i8 %i.j, ptr %i.d, align 1, !dbg !12244, !noalias !12245
    #dbg_value(ptr %i.d, !12212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12247, !noalias !12245
  store i8 %i.l, ptr %i.c, align 1, !dbg !12247, !noalias !12245
    #dbg_value(ptr %i.c, !12212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12248, !noalias !12245
    #dbg_value(ptr poison, !12249, !DIExpression(), !12252)
    #dbg_value(ptr poison, !12254, !DIExpression(), !12257)
  %i.o = zext i32 %i.m to i64, !dbg !12260
  store i64 %i.o, ptr %i.b, align 8, !dbg !12260, !noalias !12245
    #dbg_value(ptr %i.b, !12212, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12261, !noalias !12245
  store ptr %i.d, ptr %i.a, align 8, !dbg !12261, !noalias !12245
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12261
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !12261, !noalias !12245
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12261
  store ptr %i.c, ptr %i.p, align 8, !dbg !12261, !noalias !12245
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !12261
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !dbg !12261, !noalias !12245
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !12261
  store ptr %i.b, ptr %i.q, align 8, !dbg !12261, !noalias !12245
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !12261
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.430.0..sroa_idx.i, align 8, !dbg !12261, !noalias !12245
    #dbg_value(ptr @116, !12228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12236)
    #dbg_value(ptr %i.a, !12228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12236)
  %i.r = load ptr, ptr %1, align 8, !dbg !12262, !alias.scope !12188, !noalias !12184, !nonnull !22, !noundef !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12262
  %i.t = load ptr, ptr %i.s, align 8, !dbg !12262, !alias.scope !12188, !noalias !12184, !nonnull !22, !align !1590, !noundef !22
  %i.u = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull @116, ptr noundef nonnull %i.a), !dbg !12263, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12264, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12264, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12264, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12264, !noalias !12245
  br label %_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !12265

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12266, !noalias !12245
  store i8 %i.j, ptr %i.g, align 1, !dbg !12266, !noalias !12245
    #dbg_value(ptr %i.g, !12201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12268, !noalias !12245
    #dbg_value(ptr poison, !12249, !DIExpression(), !12269)
    #dbg_value(ptr poison, !12254, !DIExpression(), !12271)
  %i.v = zext i32 %i.m to i64, !dbg !12273
  store i64 %i.v, ptr %i.f, align 8, !dbg !12273, !noalias !12245
    #dbg_value(ptr %i.f, !12201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12274, !noalias !12245
  store ptr %i.g, ptr %i.e, align 8, !dbg !12274, !noalias !12245
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12274
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !12274, !noalias !12245
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !12274
  store ptr %i.f, ptr %i.w, align 8, !dbg !12274, !noalias !12245
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !12274
  store ptr @_RNvXsZ_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !12274, !noalias !12245
    #dbg_value(ptr @93, !12228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12233)
    #dbg_value(ptr %i.e, !12228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12233)
  %i.x = load ptr, ptr %1, align 8, !dbg !12275, !alias.scope !12188, !noalias !12184, !nonnull !22, !noundef !22
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12275
  %i.z = load ptr, ptr %i.y, align 8, !dbg !12275, !alias.scope !12188, !noalias !12184, !nonnull !22, !align !1590, !noundef !22
  %i.aa = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @93, ptr noundef nonnull %i.e), !dbg !12276, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12277, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12277, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12277, !noalias !12245
  br label %_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !12265

_RNvXs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfaNtB5_10TransitionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.aa, %bb.c ], [ %i.u, %bb.b ]
  ret i1 %.sroa.0.1.in.i, !dbg !12278
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFANtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !12279 {
bb.a:
    #dbg_value(ptr %0, !12284, !DIExpression(), !12287)
    #dbg_value(ptr %1, !12285, !DIExpression(), !12287)
  %i.a = load ptr, ptr %0, align 8, !dbg !12288, !nonnull !22, !align !1590, !noundef !22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12289), !dbg !12292
    #dbg_value(ptr %i.a, !12293, !DIExpression(), !12300)
end_hunk_0
