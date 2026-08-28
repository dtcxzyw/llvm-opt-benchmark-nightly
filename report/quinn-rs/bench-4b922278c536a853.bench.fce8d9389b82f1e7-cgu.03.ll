Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.03?download=true
begin_hunk_0_@_RINvMNtCsB8MOEg02Qk_5quinn11send_streamNtB3_10SendStream12execute_pollNCNCNCNvB2_12write_chunks000NtNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4send7WrittenECslIemzedAtQF_5bench:bb.a
bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapCslIemzedAtQF_5bench.exit
    #dbg_value(ptr %i.r, !6437, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6459)
    #dbg_value(ptr %i.r, !6461, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6469)
    #dbg_value(ptr %i.r, !6471, !DIExpression(DW_OP_plus_uconst, 6072, DW_OP_stack_value), !6478)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 6136, !dbg !6480
  %i.ab = load i8, ptr %i.aa, align 8, !dbg !6480, !range !6481, !noundef !24
  %i.ac = icmp samesign ult i8 %i.ab, 2, !dbg !6480
  br i1 %i.ac, label %bb.f, label %bb.h, !dbg !6482

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.r, !6483, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6487)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 6227, !dbg !6489
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !6489, !range !6426, !noundef !24
  %i.af = trunc nuw i8 %i.ae to i1, !dbg !6489
  br i1 %i.af, label %bb.f, label %bb.i, !dbg !6490

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.r, !6491, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6497)
    #dbg_value(ptr %i.r, !6499, !DIExpression(DW_OP_plus_uconst, 5480, DW_OP_stack_value), !6506)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 5480, !dbg !6508
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !6508, !range !6509, !noundef !24
  %i.ai = icmp eq i64 %i.ah, -1, !dbg !6508
  br i1 %i.ai, label %bb.f, label %bb.j, !dbg !6510

bb.j:                                             ; preds = %bb.i
    #dbg_value(i64 13, !6243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6511)
    #dbg_value(i64 13, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6523)
    #dbg_value(i64 13, !6519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6526)
  store i64 13, ptr %0, align 8, !dbg !6527
  br label %bb.k, !dbg !6528

bb.k:                                             ; preds = %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.j
    #dbg_value(ptr poison, !6531, !DIExpression(), !6539)
    #dbg_value(ptr poison, !6541, !DIExpression(), !6546)
    #dbg_value(ptr poison, !6548, !DIExpression(), !6552)
    #dbg_value(i32 0, !6554, !DIExpression(), !6564)
    #dbg_value(i8 1, !6563, !DIExpression(), !6564)
    #dbg_value(i32 0, !6575, !DIExpression(), !6583)
    #dbg_value(i8 1, !6582, !DIExpression(), !6583)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !6585
    #dbg_value(ptr %i.aj, !6586, !DIExpression(), !6597)
    #dbg_value(ptr poison, !6596, !DIExpression(), !6597)
    #dbg_value(i8 0, !6599, !DIExpression(), !6607)
    #dbg_value(i8 1, !6623, !DIExpression(), !6632)
    #dbg_value(i8 0, !6631, !DIExpression(), !6632)
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !dbg !6634

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !6606, !DIExpression(), !6607)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !6635, !DIExpression(), !6642)
    #dbg_value(i8 0, !6641, !DIExpression(), !6642)
  %i.ak = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !6644
  %i.al = and i64 %i.ak, 9223372036854775807, !dbg !6645
  %i.am = icmp eq i64 %i.al, 0, !dbg !6645
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !dbg !6645, !prof !6646

bb.m:                                             ; preds = %bb.l
  %i.an = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20, !dbg !6647
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n, !dbg !6648

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.aj, !6630, !DIExpression(), !6649)
    #dbg_value(ptr %i.aj, !6650, !DIExpression(), !6658)
    #dbg_value(i8 1, !6656, !DIExpression(), !6658)
    #dbg_value(i8 0, !6657, !DIExpression(), !6658)
  store atomic i8 1, ptr %i.aj monotonic, align 4, !dbg !6660
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !6661

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
    #dbg_value(ptr %i.r, !6573, !DIExpression(), !6662)
    #dbg_value(ptr %i.r, !6562, !DIExpression(), !6663)
    #dbg_value(ptr %i.r, !6581, !DIExpression(), !6583)
  %i.ao = atomicrmw xchg ptr %i.r, i32 0 release, align 4, !dbg !6664
  %i.ap = icmp eq i32 %i.ao, 2, !dbg !6665
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit, !dbg !6665, !prof !6423

bb.o:                                             ; preds = %bb.f
    #dbg_value(ptr %i.y, !6262, !DIExpression(), !6666)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6667
  call void @llvm.experimental.noalias.scope.decl(metadata !6668), !dbg !6671
    #dbg_value(ptr %i.y, !6672, !DIExpression(), !6684)
  %i.aq = icmp ne i64 %i.z, 4, !dbg !6686
  call void @llvm.assume(i1 %i.aq), !dbg !6686
  %i.ar = add nsw i64 %i.z, -2, !dbg !6686
  %.inv.i = icmp samesign ult i64 %i.z, 2, !dbg !6686
  %i.as = select i1 %.inv.i, i64 2, i64 %i.ar, !dbg !6686
  switch i64 %i.as, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
    i64 5, label %bb.v
    i64 6, label %bb.w
    i64 7, label %bb.x
  ], !dbg !6686

bb.p:                                             ; preds = %bb.o
  unreachable, !dbg !6687

bb.q:                                             ; preds = %bb.o
  store i64 2, ptr %i.e, align 8, !dbg !6686, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6686

bb.r:                                             ; preds = %bb.o
    #dbg_value(ptr %i.y, !6678, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6689)
    #dbg_value(ptr %i.y, !6690, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6697)
    #dbg_value(ptr %i.y, !6699, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6706)
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 6648, !dbg !6706
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 6688, !dbg !6706
  %i.av = load i64, ptr %i.au, align 16, !dbg !6706, !noalias !6668, !noundef !24
    #dbg_value(ptr %i.y, !6708, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6721)
  %i.aw = load i64, ptr %i.at, align 8, !dbg !6724, !range !6421, !noalias !6668, !noundef !24
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !6725
  br i1 %i.ax, label %bb.y, label %bb.z, !dbg !6725

bb.s:                                             ; preds = %bb.o
    #dbg_value(ptr %i.y, !6680, !DIExpression(), !6726)
    #dbg_value(ptr %i.y, !6727, !DIExpression(), !6734)
    #dbg_value(ptr %i.y, !6699, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !6736)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 6688, !dbg !6736
  %i.az = load i64, ptr %i.ay, align 16, !dbg !6736, !noalias !6668, !noundef !24
    #dbg_value(ptr %i.y, !6708, !DIExpression(), !6738)
  %i.ba = trunc nuw i64 %i.z to i1, !dbg !6741
  br i1 %i.ba, label %bb.aa, label %bb.ab, !dbg !6741

bb.t:                                             ; preds = %bb.o
    #dbg_value(ptr %i.y, !6682, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6742)
    #dbg_value(ptr %i.y, !6743, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6749)
    #dbg_value(ptr %i.y, !6751, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !6758)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 6648, !dbg !6758
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 6680, !dbg !6758
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !6758, !noalias !6668, !noundef !24
    #dbg_value(ptr %i.y, !6760, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6768)
  %i.be = load ptr, ptr %i.bb, align 8, !dbg !6771, !noalias !6668, !nonnull !24, !align !6772, !noundef !24
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !6771, !noalias !6668, !nonnull !24, !noundef !24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 6672, !dbg !6773
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 6656, !dbg !6774
  %i.bi = load ptr, ptr %i.bh, align 16, !dbg !6774, !noalias !6668, !noundef !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 6664, !dbg !6775
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !6775, !noalias !6668, !noundef !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6776
  invoke void %i.bf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bl, ptr noundef nonnull align 8 %i.bg, ptr noundef %i.bi, i64 noundef %i.bk)
          to label %.noexc unwind label %bb.ae, !dbg !6771, !inline_history !6777

.noexc:                                           ; preds = %bb.t
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !6776
  store i64 %i.bd, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !6776, !alias.scope !6668
  store i64 5, ptr %i.e, align 8, !dbg !6776, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6778

bb.u:                                             ; preds = %bb.o
  store i64 6, ptr %i.e, align 8, !dbg !6686, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6686

bb.v:                                             ; preds = %bb.o
  store i64 7, ptr %i.e, align 8, !dbg !6686, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6686

bb.w:                                             ; preds = %bb.o
  store i64 8, ptr %i.e, align 8, !dbg !6686, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6686

bb.x:                                             ; preds = %bb.o
  store i64 9, ptr %i.e, align 8, !dbg !6686, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6686

bb.y:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 6656, !dbg !6724
    #dbg_value(ptr %i.y, !6719, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6779)
    #dbg_value(ptr %i.y, !6780, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6786)
  %i.bn = load i64, ptr %i.bm, align 16, !dbg !6786, !noalias !6668, !noundef !24
  br label %bb.z, !dbg !6789

bb.z:                                             ; preds = %bb.y, %bb.r
  %.sroa.09.0.i = phi i64 [ 1, %bb.y ], [ 0, %bb.r ], !dbg !6790
  %.sroa.510.0.i = phi i64 [ %i.bn, %bb.y ], [ undef, %bb.r ], !dbg !6790
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 6664, !dbg !6697
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !6791
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %.noexc64 unwind label %bb.ae, !dbg !6697

.noexc64:                                         ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6791
  store i64 %.sroa.09.0.i, ptr %i.bp, align 8, !dbg !6791, !alias.scope !6668
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6791
  store i64 %.sroa.510.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6791, !alias.scope !6668
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !6791
  store i64 %i.av, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !6791, !alias.scope !6668
  store i64 3, ptr %i.e, align 8, !dbg !6791, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6778

bb.aa:                                            ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 6648, !dbg !6792
    #dbg_value(ptr %i.y, !6716, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6793)
    #dbg_value(ptr %i.y, !6780, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6794)
  %i.br = load i64, ptr %i.bq, align 8, !dbg !6794, !noalias !6668, !noundef !24
  br label %bb.ab, !dbg !6796

bb.ab:                                            ; preds = %bb.aa, %bb.s
  %.sroa.07.0.i.a = phi i64 [ 1, %bb.aa ], [ 0, %bb.s ], !dbg !6797
  %.sroa.58.0.i = phi i64 [ %i.br, %bb.aa ], [ undef, %bb.s ], !dbg !6797
    #dbg_value(ptr %i.y, !6760, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6798)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 6656, !dbg !6801
  %i.bt = load ptr, ptr %i.bs, align 16, !dbg !6801, !noalias !6668, !nonnull !24, !align !6772, !noundef !24
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !6801, !noalias !6668, !nonnull !24, !noundef !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 6680, !dbg !6802
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 6664, !dbg !6803
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !6803, !noalias !6668, !noundef !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 6672, !dbg !6804
  %i.bz = load i64, ptr %i.by, align 16, !dbg !6804, !noalias !6668, !noundef !24
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6805
  invoke void %i.bu(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %.sroa.53.0..sroa_idx.i, ptr noundef nonnull align 8 %i.bv, ptr noundef %i.bx, i64 noundef %i.bz)
          to label %.noexc65 unwind label %bb.ae, !dbg !6801, !inline_history !6777

.noexc65:                                         ; preds = %bb.ab
  store i64 %.sroa.07.0.i.a, ptr %i.e, align 8, !dbg !6805, !alias.scope !6668
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6805
  store i64 %.sroa.58.0.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !6805, !alias.scope !6668
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !6805
  store i64 %i.az, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !6805, !alias.scope !6668
  br label %_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !6778

bb.ac:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6300
    #dbg_value(ptr undef, !6290, !DIExpression(), !6301)
    #dbg_value(ptr undef, !6271, !DIExpression(), !6298)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !6807 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6815
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !6815, !noundef !24 ; 2 uses
  invoke void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection11send_stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %i.ca, i64 noundef %i.cc)
          to label %bb.ag unwind label %bb.af, !dbg !6816

bb.ad:                                            ; preds = %bb.af, %bb.aj, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ae ], [ %i.cl, %bb.aj ], [ %i.ce, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench(ptr nonnull %i.r, i8 %i.t) #18
          to label %common.resume unwind label %bb.ay, !dbg !6817

bb.ae:                                            ; preds = %bb.at, %bb.ab, %bb.z, %bb.t, %bb.ar, %bb.ao
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_RNvXsb_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %.noexc65, %.noexc64, %bb.x, %bb.w, %bb.v, %bb.u, %.noexc, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !6818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6819
  br label %bb.k, !dbg !6528

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i70, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r), !dbg !6820
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit, !dbg !6824

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i70, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  ret void, !dbg !6824

bb.af:                                            ; preds = %bb.ag, %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad, !dbg !6825

bb.ag:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.c, !6826, !DIExpression(), !6870)
  invoke void @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection7streamsNtB5_10SendStream12write_chunks(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4)
          to label %_RNCNCNCNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB8_10SendStream12write_chunks000CslIemzedAtQF_5bench.exit unwind label %bb.af, !dbg !6872

_RNCNCNCNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB8_10SendStream12write_chunks000CslIemzedAtQF_5bench.exit: ; preds = %bb.ag
  %i.cf = load i64, ptr %i.d, align 8, !dbg !6806, !range !6421, !noundef !24
  %i.cg = trunc nuw i64 %i.cf to i1, !dbg !6873
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !6432
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !6432, !noundef !24 ; 2 uses
  br i1 %i.cg, label %bb.ah, label %bb.ai, !dbg !6873

bb.ah:                                            ; preds = %_RNCNCNCNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB8_10SendStream12write_chunks000CslIemzedAtQF_5bench.exit
  switch i64 %i.ci, label %default.unreachable81 [
    i64 0, label %bb.ao
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ], !dbg !6873

bb.ai:                                            ; preds = %_RNCNCNCNvMNtCsB8MOEg02Qk_5quinn11send_streamNtB8_10SendStream12write_chunks000CslIemzedAtQF_5bench.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6874
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !6874, !noundef !24
    #dbg_value(i64 %i.ci, !6264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6875)
    #dbg_value(i64 %i.ck, !6264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6875)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6876
    #dbg_value(ptr undef, !6290, !DIExpression(), !6297)
    #dbg_value(ptr undef, !6271, !DIExpression(), !6293)
  invoke void @_RNvMsd_NtCsB8MOEg02Qk_5quinn10connectionNtB5_5State4wake(ptr noalias nofree noundef nonnull align 16 dereferenceable(6736) %i.ca)
          to label %bb.ak unwind label %bb.aj, !dbg !6877

bb.aj:                                            ; preds = %bb.ai
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad, !dbg !6878

bb.ak:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8, !dbg !6879
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6879
  store i64 %i.ci, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !6879
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6879
  store i64 %i.ck, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !6879
    #dbg_value(ptr poison, !6531, !DIExpression(), !6880)
    #dbg_value(ptr poison, !6541, !DIExpression(), !6882)
    #dbg_value(ptr poison, !6548, !DIExpression(), !6884)
    #dbg_value(i32 0, !6554, !DIExpression(), !6886)
    #dbg_value(i8 1, !6563, !DIExpression(), !6886)
    #dbg_value(i32 0, !6575, !DIExpression(), !6889)
    #dbg_value(i8 1, !6582, !DIExpression(), !6889)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !6891
    #dbg_value(ptr %i.cm, !6586, !DIExpression(), !6892)
    #dbg_value(ptr poison, !6596, !DIExpression(), !6892)
    #dbg_value(i8 0, !6599, !DIExpression(), !6894)
    #dbg_value(i8 1, !6623, !DIExpression(), !6899)
    #dbg_value(i8 0, !6631, !DIExpression(), !6899)
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67, label %bb.al, !dbg !6901

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !6606, !DIExpression(), !6894)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !6635, !DIExpression(), !6902)
    #dbg_value(i8 0, !6641, !DIExpression(), !6902)
  %i.cn = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !6904
  %i.co = and i64 %i.cn, 9223372036854775807, !dbg !6905
  %i.cp = icmp eq i64 %i.co, 0, !dbg !6905
  br i1 %i.cp, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67, label %bb.am, !dbg !6905, !prof !6646

bb.am:                                            ; preds = %bb.al
  %i.cq = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20, !dbg !6906
  br i1 %i.cq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67, label %bb.an, !dbg !6907

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.cm, !6630, !DIExpression(), !6908)
    #dbg_value(ptr %i.cm, !6650, !DIExpression(), !6909)
    #dbg_value(i8 1, !6656, !DIExpression(), !6909)
    #dbg_value(i8 0, !6657, !DIExpression(), !6909)
  store atomic i8 1, ptr %i.cm monotonic, align 4, !dbg !6911
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67, !dbg !6912

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
    #dbg_value(ptr %i.r, !6573, !DIExpression(), !6913)
    #dbg_value(ptr %i.r, !6562, !DIExpression(), !6914)
    #dbg_value(ptr %i.r, !6581, !DIExpression(), !6889)
  %i.cr = atomicrmw xchg ptr %i.r, i32 0 release, align 4, !dbg !6915
  %i.cs = icmp eq i32 %i.cr, 2, !dbg !6916
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEECslIemzedAtQF_5bench.exit, !dbg !6916, !prof !6423

default.unreachable81:                            ; preds = %bb.ah
  unreachable

bb.ao:                                            ; preds = %bb.ah
    #dbg_value(ptr undef, !6290, !DIExpression(), !6292)
    #dbg_value(ptr undef, !6271, !DIExpression(), !6280)
    #dbg_value(ptr %i.r, !6917, !DIExpression(DW_OP_plus_uconst, 6464, DW_OP_stack_value), !6927)
    #dbg_value(i64 %i.cc, !6925, !DIExpression(), !6929)
  %i.ct = load ptr, ptr %2, align 8, !dbg !6930, !nonnull !24, !align !6772, !noundef !24 ; 2 uses
    #dbg_value(ptr %i.ct, !6931, !DIExpression(), !6937)
  %i.cu = load ptr, ptr %i.ct, align 8, !dbg !6939, !nonnull !24, !align !6772, !noundef !24
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !6939, !nonnull !24, !noundef !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !6940
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !6940, !noundef !24
  %i.cy = invoke { ptr, ptr } %i.cv(ptr noundef %i.cx)
          to label %bb.ar unwind label %bb.ae, !dbg !6939 ; 2 uses

bb.ap:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6806
  %i.da = load i64, ptr %i.cz, align 8, !dbg !6941, !noundef !24
    #dbg_value(i64 %i.da, !6268, !DIExpression(), !6942)
  store i64 10, ptr %0, align 8, !dbg !6943
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6943
  store i64 %i.da, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !6943
  br label %bb.au, !dbg !6528

bb.aq:                                            ; preds = %bb.ah
  store i64 12, ptr %0, align 8, !dbg !6944
  br label %bb.au, !dbg !6945

bb.ar:                                            ; preds = %bb.ao
    #dbg_value(ptr %i.r, !6917, !DIExpression(DW_OP_plus_uconst, 6464, DW_OP_stack_value), !6927)
  %i.db = extractvalue { ptr, ptr } %i.cy, 0, !dbg !6939
  %i.dc = extractvalue { ptr, ptr } %i.cy, 1, !dbg !6939
    #dbg_value(ptr %i.db, !6926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6929)
    #dbg_value(ptr %i.dc, !6926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6929)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 6464, !dbg !6946
  %i.de = invoke { ptr, ptr } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtNtCskKLDkoKarTP_4core4task4wake5WakerNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE6insertCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dd, i64 noundef %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.db, ptr noundef %i.dc)
          to label %bb.as unwind label %bb.ae, !dbg !6947 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.df = extractvalue { ptr, ptr } %i.de, 0, !dbg !6946 ; 2 uses
    #dbg_value(ptr poison, !6948, !DIExpression(), !6954)
  %i.dg = icmp eq ptr %i.df, null, !dbg !6956
  br i1 %i.dg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslIemzedAtQF_5bench.exit, label %bb.at, !dbg !6956

bb.at:                                            ; preds = %bb.as
  %i.dh = extractvalue { ptr, ptr } %i.de, 1, !dbg !6946
    #dbg_value(ptr poison, !6957, !DIExpression(), !6963)
    #dbg_value(ptr poison, !6965, !DIExpression(), !6969)
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 24, !dbg !6971
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !6971, !nonnull !24, !noundef !24
  invoke void %i.dj(ptr noundef %i.dh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslIemzedAtQF_5bench.exit unwind label %bb.ae, !dbg !6971, !inline_history !6972

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslIemzedAtQF_5bench.exit: ; preds = %bb.as, %bb.at
  store i64 -2, ptr %0, align 8, !dbg !6973
  br label %bb.au, !dbg !6974

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslIemzedAtQF_5bench.exit, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6876
    #dbg_value(ptr poison, !6531, !DIExpression(), !6975)
    #dbg_value(ptr poison, !6541, !DIExpression(), !6977)
    #dbg_value(ptr poison, !6548, !DIExpression(), !6979)
    #dbg_value(i32 0, !6554, !DIExpression(), !6981)
    #dbg_value(i8 1, !6563, !DIExpression(), !6981)
    #dbg_value(i32 0, !6575, !DIExpression(), !6984)
    #dbg_value(i8 1, !6582, !DIExpression(), !6984)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !6986
    #dbg_value(ptr %i.dk, !6586, !DIExpression(), !6987)
    #dbg_value(ptr poison, !6596, !DIExpression(), !6987)
end_hunk_0
