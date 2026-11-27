Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.07?download=true
inline.NumInlined: 426
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB2_13PacketBuilder3new:bb.a
bb.ab:                                            ; preds = %bb.b, %bb.l
    #dbg_value(ptr %i.as, !12914, !DIExpression(), !13485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !13950
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 3120, !dbg !13951
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 3872, !dbg !13952
  call void @llvm.experimental.noalias.scope.decl(metadata !13486), !dbg !13953
  call void @llvm.experimental.noalias.scope.decl(metadata !13487), !dbg !13953
    #dbg_value(ptr %i.du, !12994, !DIExpression(), !12523)
    #dbg_value(ptr %i.dv, !12995, !DIExpression(), !12523)
    #dbg_value(ptr %i.as, !12996, !DIExpression(), !12523)
    #dbg_declare(ptr %i.g, !13005, !DIExpression(), !12524)
    #dbg_declare(ptr %i.f, !13010, !DIExpression(), !12525)
    #dbg_declare(ptr %i.b, !13016, !DIExpression(), !12526)
    #dbg_value(i8 0, !13488, !DIExpression(), !12531)
    #dbg_value(i8 0, !13492, !DIExpression(), !12536)
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13498, !DIExpression(), !12539)
    #dbg_value(ptr @7, !13504, !DIExpression(), !12542)
    #dbg_value(ptr poison, !13511, !DIExpression(), !12545)
    #dbg_value(i8 0, !13516, !DIExpression(), !12550)
    #dbg_value(i8 0, !13488, !DIExpression(), !12554)
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13498, !DIExpression(), !12556)
    #dbg_value(ptr @7, !13504, !DIExpression(), !12558)
    #dbg_value(i32 1, !13523, !DIExpression(), !12561)
    #dbg_value(i64 2, !13526, !DIExpression(), !12566)
    #dbg_value(i64 2, !13526, !DIExpression(), !12568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13954, !noalias !13533
  call void @llvm.experimental.noalias.scope.decl(metadata !13534), !dbg !13955
    #dbg_value(ptr %i.as, !13535, !DIExpression(), !12575)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 608, !dbg !13956 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 16, !dbg !13956, !alias.scope !13541, !noundef !1498 ; 8 uses
  %i.dy = icmp ult i64 %i.dx, 4611686018427387904, !dbg !13956
  br i1 %i.dy, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit.i, label %bb.ac, !dbg !13956, !prof !3591

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !dbg !13957, !noalias !13542
  unreachable, !dbg !13957

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit.i: ; preds = %bb.ab
    #dbg_value(i64 %i.dx, !13539, !DIExpression(), !12576)
  %i.dz = add nuw nsw i64 %i.dx, 1, !dbg !13958   ; 2 uses
  store i64 %i.dz, ptr %i.dw, align 16, !dbg !13958, !alias.scope !13541
  %i.ea = load i64, ptr %i.at, align 8, !dbg !13959, !alias.scope !13541, !noundef !1498 ; 2 uses
  %i.eb = add i64 %i.ea, 1, !dbg !13959
  store i64 %i.eb, ptr %i.at, align 8, !dbg !13959, !alias.scope !13541
    #dbg_value(i64 %i.dx, !12997, !DIExpression(), !12577)
  store i64 %i.dx, ptr %i.k, align 8, !dbg !13955, !noalias !13533
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 3136, !dbg !13960 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 16, !dbg !13960, !alias.scope !13486, !noundef !1498
  %.not.i242 = icmp eq i64 %i.dx, %i.ed, !dbg !13961
  br i1 %.not.i242, label %bb.ad, label %_RINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB6_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEBa_.exit, !dbg !13961

bb.ad:                                            ; preds = %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit.i
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !13489, !DIExpression(), !12531)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !3689, !DIExpression(), !12579)
    #dbg_value(i8 0, !3692, !DIExpression(), !12579)
  %i.ee = load atomic i64, ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !13962, !noalias !13533
  %i.ef = icmp eq i64 %i.ee, 0, !dbg !13963
  br i1 %i.ef, label %bb.ae, label %bb.ao, !dbg !13964

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13495, !DIExpression(), !12580)
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13493, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12581)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, i64 16), !2998, !DIExpression(), !12583)
    #dbg_value(i8 0, !3001, !DIExpression(), !12583)
  %i.eg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, i64 16) monotonic, align 8, !dbg !13965, !noalias !13533 ; 3 uses
  switch i8 %i.eg, label %bb.af [
    i8 0, label %bb.ao
    i8 1, label %bb.ag
    i8 2, label %bb.ag
  ], !dbg !13966, !prof !3695

bb.af:                                            ; preds = %bb.ae
  %i.eh = call noundef i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE) #32, !dbg !13967, !noalias !13533 ; 2 uses
    #dbg_value(i8 %i.eh, !13001, !DIExpression(), !12584)
    #dbg_value(ptr undef, !13021, !DIExpression(), !12347)
  %i.ei = icmp eq i8 %i.eh, 0, !dbg !13968
  br i1 %i.ei, label %bb.ao, label %bb.ag, !dbg !13969

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ae
  %.sroa.03.0.i = phi i8 [ %i.eh, %bb.af ], [ %i.eg, %bb.ae ], [ %i.eg, %bb.ae ], !dbg !13970
    #dbg_value(i8 %.sroa.03.0.i, !13001, !DIExpression(), !12584)
  %i.ej = load ptr, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, align 8, !dbg !13971, !noalias !13533, !nonnull !1498, !align !2010, !noundef !1498
  %i.ek = call noundef zeroext i1 @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ej, i8 noundef %.sroa.03.0.i), !dbg !13969, !noalias !13533
    #dbg_value(i1 %i.ek, !12999, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12585)
  br i1 %i.ek, label %bb.ah, label %bb.ao, !dbg !13972

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13972, !noalias !13533
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13499, !DIExpression(), !12587)
  %i.el = load ptr, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, align 8, !dbg !13973, !noalias !13533, !nonnull !1498, !align !2010, !noundef !1498 ; 2 uses
    #dbg_value(ptr %i.el, !13544, !DIExpression(), !12590)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48, !dbg !13974
    #dbg_value(ptr %i.em, !13547, !DIExpression(), !12597)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13972, !noalias !13533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13972, !noalias !13533
    #dbg_value(ptr %i.k, !13003, !DIExpression(), !12598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13975, !noalias !13533
  store ptr %i.k, ptr %i.g, align 8, !dbg !13975, !noalias !13533
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13975
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !13975, !noalias !13533
    #dbg_value(ptr %i.g, !13508, !DIExpression(), !12542)
  store ptr @7, ptr %i.h, align 8, !dbg !13976, !noalias !13533
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !13976
  store ptr %i.g, ptr %i.en, align 8, !dbg !13976, !noalias !13533
  store ptr %i.h, ptr %i.i, align 8, !dbg !13972, !noalias !13533
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13972
  store ptr @8, ptr %i.eo, align 8, !dbg !13972, !noalias !13533
    #dbg_value(ptr %i.i, !13548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(i64 1, !13548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12597)
  store i64 1, ptr %i.j, align 8, !dbg !13972, !noalias !13533
  %.sroa.05.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !13972
  store ptr %i.i, ptr %.sroa.05.sroa.4.0..sroa_idx.i, align 8, !dbg !13972, !noalias !13533
  %.sroa.05.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !13972
  store i64 1, ptr %.sroa.05.sroa.5.0..sroa_idx.i, align 8, !dbg !13972, !noalias !13533
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !13972
  store ptr %i.em, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !13972, !noalias !13533
    #dbg_value(ptr poison, !13561, !DIExpression(), !12611)
    #dbg_value(ptr poison, !13563, !DIExpression(), !12612)
    #dbg_value(ptr poison, !13575, !DIExpression(), !12613)
    #dbg_declare(ptr %i.j, !13569, !DIExpression(), !12614)
    #dbg_declare(ptr %i.a, !13573, !DIExpression(), !12615)
    #dbg_value(ptr poison, !13577, !DIExpression(), !12618)
    #dbg_value(i8 0, !13581, !DIExpression(), !12623)
    #dbg_value(i8 0, !13585, !DIExpression(), !12628)
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13589, !DIExpression(), !12631)
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13590, !DIExpression(), !12633)
    #dbg_value(ptr %i.el, !13570, !DIExpression(), !12634)
  call void @_RNvMNtCsgb4gPAseikh_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j), !dbg !13977, !noalias !13533
    #dbg_value(ptr poison, !13578, !DIExpression(), !12635)
    #dbg_value(i8 0, !13593, !DIExpression(), !12644)
    #dbg_value(i8 0, !13595, !DIExpression(), !12645)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !13582, !DIExpression(), !12623)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !2998, !DIExpression(), !12647)
    #dbg_value(i8 0, !3001, !DIExpression(), !12647)
  %i.ep = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !13978, !noalias !13600
  %.not.i.i243 = icmp eq i8 %i.ep, 0, !dbg !13979
  br i1 %.not.i.i243, label %bb.ai, label %_RNCINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB8_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngE0Bc_.exit.i, !dbg !13980

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(i64 5, !13571, !DIExpression(), !12650)
    #dbg_value(ptr poison, !13578, !DIExpression(), !12652)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !13586, !DIExpression(), !12628)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !3689, !DIExpression(), !12654)
    #dbg_value(i8 0, !3692, !DIExpression(), !12654)
  %i.eq = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13981, !noalias !13600 ; 2 uses
  %i.er = icmp ult i64 %i.eq, 6, !dbg !13982
  call void @llvm.assume(i1 %i.er), !dbg !13982
    #dbg_value(ptr poison, !13579, !DIExpression(), !12655)
    #dbg_value(i8 poison, !13598, !DIExpression(), !12657)
    #dbg_value(i8 poison, !13593, !DIExpression(), !12660)
    #dbg_value(i8 poison, !13595, !DIExpression(), !12661)
  %i.es = icmp samesign ugt i64 %i.eq, 4, !dbg !13983
  br i1 %i.es, label %bb.aj, label %_RNCINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB8_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngE0Bc_.exit.i, !dbg !13984

bb.aj:                                            ; preds = %bb.ai
  %i.et = load ptr, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, align 8, !dbg !13985, !noalias !13600, !nonnull !1498, !align !2010, !noundef !1498 ; 3 uses
    #dbg_value(ptr %i.et, !13572, !DIExpression(), !12662)
    #dbg_value(ptr %i.et, !13605, !DIExpression(), !12665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13986, !noalias !13600
    #dbg_value(ptr undef, !13563, !DIExpression(), !12612)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32, !dbg !13987
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !13987, !noalias !13533, !nonnull !1498, !noundef !1498
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 40, !dbg !13987
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !13987, !noalias !13533, !noundef !1498
    #dbg_value(ptr undef, !13561, !DIExpression(), !12611)
  store i64 5, ptr %i.a, align 8, !dbg !13988, !noalias !13600
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13988
  store ptr %i.ev, ptr %i.ey, align 8, !dbg !13988, !noalias !13600
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13988
  store i64 %i.ex, ptr %i.ez, align 8, !dbg !13988, !noalias !13600
  %i.fa = call { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger(), !dbg !13989, !noalias !13533 ; 2 uses
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0, !dbg !13989 ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1, !dbg !13989 ; 2 uses
    #dbg_value(ptr %i.fb, !13574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12666)
    #dbg_value(ptr %i.fc, !13574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12666)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24, !dbg !13990
  %i.fe = load ptr, ptr %i.fd, align 8, !dbg !13990, !invariant.load !1498, !noalias !13533, !nonnull !1498
  %i.ff = call noundef zeroext i1 %i.fe(ptr noundef %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #29, !dbg !13990, !noalias !13533, !inline_history !12667
  br i1 %i.ff, label %bb.ak, label %bb.al, !dbg !13990

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.et, ptr noundef nonnull %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j), !dbg !13990, !noalias !13533
  br label %bb.al, !dbg !13990

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13986, !noalias !13600
  br label %_RNCINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB8_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngE0Bc_.exit.i, !dbg !13984

_RNCINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB8_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngE0Bc_.exit.i: ; preds = %bb.al, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13972, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13972, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13972, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13972, !noalias !13533
  br label %bb.am, !dbg !13972

bb.am:                                            ; preds = %bb.as, %bb.ap, %bb.ao, %_RNCINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB8_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngE0Bc_.exit.i
  store i64 1, ptr %i.du, align 16, !dbg !13991, !alias.scope !13486
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 3128, !dbg !13991
  store i64 %i.dx, ptr %i.fg, align 8, !dbg !13991, !alias.scope !13486
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 3144, !dbg !13992 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !dbg !13992, !alias.scope !13486, !noundef !1498 ; 3 uses
    #dbg_value(i32 %i.fi, !13524, !DIExpression(), !12561)
  %i.fj = call i32 @llvm.uadd.sat.i32(i32 %i.fi, i32 1), !dbg !13993 ; 3 uses
    #dbg_value(i32 %i.fj, !13017, !DIExpression(), !12668)
    #dbg_value(i32 %i.fj, !13529, !DIExpression(), !12568)
    #dbg_value(i32 %i.fi, !13529, !DIExpression(), !12566)
    #dbg_value(i64 2, !13608, !DIExpression(), !12680)
    #dbg_value(i64 2, !13612, !DIExpression(), !12681)
    #dbg_value(i32 %i.fi, !13611, !DIExpression(), !12680)
    #dbg_value(i64 1, !13623, !DIExpression(), !12684)
    #dbg_value(i64 1, !13613, !DIExpression(), !12685)
    #dbg_value(i32 1, !13614, !DIExpression(), !12686)
    #dbg_value(i32 %i.fi, !13615, !DIExpression(), !12687)
    #dbg_value(i32 %i.fi, !13624, !DIExpression(), !12684)
  %i.fk = icmp ult i32 %i.fi, 64, !dbg !13994
  %i.fl = zext nneg i32 %i.fi to i64, !dbg !13994
  %i.fm = shl nuw i64 1, %i.fl, !dbg !13994
  %.sroa.07.0.i = select i1 %i.fk, i64 %i.fm, i64 -1, !dbg !13995
    #dbg_value(i64 2, !13608, !DIExpression(), !12689)
    #dbg_value(i64 2, !13612, !DIExpression(), !12690)
    #dbg_value(i32 %i.fj, !13611, !DIExpression(), !12689)
    #dbg_value(i64 1, !13623, !DIExpression(), !12692)
    #dbg_value(i64 1, !13613, !DIExpression(), !12693)
    #dbg_value(i32 1, !13614, !DIExpression(), !12694)
    #dbg_value(i32 %i.fj, !13615, !DIExpression(), !12695)
    #dbg_value(i32 %i.fj, !13624, !DIExpression(), !12692)
  %i.fn = icmp ult i32 %i.fj, 64, !dbg !13996
  %i.fo = zext nneg i32 %i.fj to i64, !dbg !13996
  %i.fp = shl nuw i64 1, %i.fo, !dbg !13996
  %.sroa.08.0.i = select i1 %i.fn, i64 %i.fp, i64 -1, !dbg !13997
  %i.fq = call noundef i64 @_RINvYNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.dv, i64 noundef %.sroa.07.0.i, i64 noundef %.sroa.08.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !dbg !13998, !noalias !13626
  store i64 %i.fq, ptr %i.ec, align 16, !dbg !13999, !alias.scope !13486
  store i32 %i.fj, ptr %i.fh, align 8, !dbg !14000, !alias.scope !13486
  call void @llvm.experimental.noalias.scope.decl(metadata !13627), !dbg !14001
    #dbg_value(ptr %i.as, !13535, !DIExpression(), !12699)
  %.not88.i = icmp eq i64 %i.dx, 4611686018427387903, !dbg !14002
  br i1 %.not88.i, label %bb.an, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit85.i, !dbg !14002, !prof !2011

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !dbg !14003, !noalias !13628
  unreachable, !dbg !14003

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit85.i: ; preds = %bb.am
    #dbg_value(i64 %i.dz, !13539, !DIExpression(), !12700)
  %i.fr = add nuw nsw i64 %i.dx, 2, !dbg !14004
  store i64 %i.fr, ptr %i.dw, align 16, !dbg !14004, !alias.scope !13629
  %i.fs = add i64 %i.ea, 2, !dbg !14005
  store i64 %i.fs, ptr %i.at, align 8, !dbg !14005, !alias.scope !13629
  br label %_RINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB6_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEBa_.exit, !dbg !14006

bb.ao:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
    #dbg_value(ptr poison, !13512, !DIExpression(), !12701)
    #dbg_value(i8 0, !13630, !DIExpression(), !12710)
    #dbg_value(i8 0, !13632, !DIExpression(), !12711)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !13517, !DIExpression(), !12550)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !2998, !DIExpression(), !12713)
    #dbg_value(i8 0, !3001, !DIExpression(), !12713)
  %i.ft = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !14007, !noalias !13533
  %.not82.i = icmp eq i8 %i.ft, 0, !dbg !14008
  br i1 %.not82.i, label %bb.ap, label %bb.am, !dbg !13972

bb.ap:                                            ; preds = %bb.ao
    #dbg_value(i64 5, !13007, !DIExpression(), !12714)
    #dbg_value(ptr poison, !13512, !DIExpression(), !12716)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !13489, !DIExpression(), !12554)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !3689, !DIExpression(), !12718)
    #dbg_value(i8 0, !3692, !DIExpression(), !12718)
  %i.fu = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14009, !noalias !13533 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 6, !dbg !14010
  call void @llvm.assume(i1 %i.fv), !dbg !14010
    #dbg_value(ptr poison, !13513, !DIExpression(), !12719)
    #dbg_value(i8 poison, !13635, !DIExpression(), !12721)
    #dbg_value(i8 poison, !13630, !DIExpression(), !12724)
    #dbg_value(i8 poison, !13632, !DIExpression(), !12725)
  %i.fw = icmp samesign ugt i64 %i.fu, 4, !dbg !14011
  br i1 %i.fw, label %bb.aq, label %bb.am, !dbg !14012

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, !13499, !DIExpression(), !12727)
  %i.fx = load ptr, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, align 8, !dbg !14013, !noalias !13533, !nonnull !1498, !align !2010, !noundef !1498 ; 3 uses
    #dbg_value(ptr %i.fx, !13008, !DIExpression(), !12728)
    #dbg_value(ptr %i.fx, !13642, !DIExpression(), !12731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14014, !noalias !13533
    #dbg_value(ptr undef, !12986, !DIExpression(), !12344)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32, !dbg !14015
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !14015, !noalias !13533, !nonnull !1498, !noundef !1498
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 40, !dbg !14015
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !14015, !noalias !13533, !noundef !1498
    #dbg_value(ptr undef, !12984, !DIExpression(), !12343)
  store i64 5, ptr %i.f, align 8, !dbg !14016, !noalias !13533
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14016
  store ptr %i.fz, ptr %i.gc, align 8, !dbg !14016, !noalias !13533
  %i.gd = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14016
  store i64 %i.gb, ptr %i.gd, align 8, !dbg !14016, !noalias !13533
  %i.ge = call { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger(), !dbg !14017, !noalias !13533 ; 2 uses
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0, !dbg !14017 ; 2 uses
  %i.gg = extractvalue { ptr, ptr } %i.ge, 1, !dbg !14017 ; 2 uses
    #dbg_value(ptr %i.gf, !13012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12732)
    #dbg_value(ptr %i.gg, !13012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12732)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24, !dbg !14018
  %i.gi = load ptr, ptr %i.gh, align 8, !dbg !14018, !invariant.load !1498, !noalias !13533, !nonnull !1498
  %i.gj = call noundef zeroext i1 %i.gi(ptr noundef %i.gf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #29, !dbg !14018, !noalias !13533, !inline_history !12733
  br i1 %i.gj, label %bb.ar, label %bb.as, !dbg !14018

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14018, !noalias !13533
  %i.gk = load ptr, ptr @_RNvNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB7_18PacketNumberFilter8allocate10___CALLSITE, align 8, !dbg !14019, !noalias !13533, !nonnull !1498, !align !2010, !noundef !1498
    #dbg_value(ptr %i.gk, !13544, !DIExpression(), !12735)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48, !dbg !14020
    #dbg_value(ptr %i.gl, !13547, !DIExpression(), !12737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14018, !noalias !13533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14018, !noalias !13533
    #dbg_value(ptr %i.k, !13014, !DIExpression(), !12738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14021, !noalias !13533
  store ptr %i.k, ptr %i.b, align 8, !dbg !14021, !noalias !13533
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14021
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !14021, !noalias !13533
    #dbg_value(ptr %i.b, !13508, !DIExpression(), !12558)
  store ptr @7, ptr %i.c, align 8, !dbg !14022, !noalias !13533
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14022
  store ptr %i.b, ptr %i.gm, align 8, !dbg !14022, !noalias !13533
  store ptr %i.c, ptr %i.d, align 8, !dbg !14018, !noalias !13533
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !14018
  store ptr @8, ptr %i.gn, align 8, !dbg !14018, !noalias !13533
    #dbg_value(ptr %i.d, !13548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12737)
    #dbg_value(i64 1, !13548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12737)
  store i64 1, ptr %i.e, align 8, !dbg !14023, !noalias !13533
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14023
  store ptr %i.d, ptr %.sroa.424.0..sroa_idx.i, align 8, !dbg !14023, !noalias !13533
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !14023
  store i64 1, ptr %.sroa.525.0..sroa_idx.i, align 8, !dbg !14023, !noalias !13533
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !14023
  store ptr %i.gl, ptr %i.go, align 8, !dbg !14023, !noalias !13533
  call void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fx, ptr noundef nonnull %i.gf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e), !dbg !14018, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14018, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14018, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14018, !noalias !13533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14018, !noalias !13533
  br label %bb.as, !dbg !14018

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14014, !noalias !13533
  br label %bb.am, !dbg !14012

_RINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB6_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEBa_.exit: ; preds = %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit.i, %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit85.i
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit85.i ], [ %i.dx, %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit.i ], !dbg !14024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14025, !noalias !13533
    #dbg_value(i64 %.sroa.0.0.i, !12915, !DIExpression(), !13647)
  br label %bb.av, !dbg !14026

bb.at:                                            ; preds = %bb.w, %bb.v
    #dbg_value(ptr %i.as, !12914, !DIExpression(), !13485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !13950
  call void @llvm.experimental.noalias.scope.decl(metadata !13648), !dbg !14027
    #dbg_value(ptr %i.as, !13535, !DIExpression(), !12742)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.as, i64 608, !dbg !14028 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 16, !dbg !14028, !alias.scope !13648, !noundef !1498 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 4611686018427387904, !dbg !14028
  br i1 %i.gr, label %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit, label %bb.au, !dbg !14028, !prof !3591

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !dbg !14029, !noalias !13648
  unreachable, !dbg !14029

_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit: ; preds = %bb.at
    #dbg_value(i64 %i.gq, !13539, !DIExpression(), !12743)
  %i.gs = add nuw nsw i64 %i.gq, 1, !dbg !14030
  store i64 %i.gs, ptr %i.gp, align 16, !dbg !14030, !alias.scope !13648
  %i.gt = load i64, ptr %i.at, align 8, !dbg !14031, !alias.scope !13648, !noundef !1498
  %i.gu = add i64 %i.gt, 1, !dbg !14031
  store i64 %i.gu, ptr %i.at, align 8, !dbg !14031, !alias.scope !13648
    #dbg_value(i64 %i.gq, !12915, !DIExpression(), !13647)
  br label %bb.av, !dbg !14027

bb.av:                                            ; preds = %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit, %_RINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB6_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEBa_.exit
  %storemerge = phi i64 [ %i.gq, %_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB2_11PacketSpace13get_tx_number.exit ], [ %.sroa.0.0.i, %_RINvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB6_18PacketNumberFilter8allocateNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEBa_.exit ], !dbg !13485
  store i64 %storemerge, ptr %i.ad, align 8, !dbg !13485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !14032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !14033
    #dbg_value(i8 0, !12918, !DIExpression(), !13649)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !13115, !DIExpression(), !13192)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL, !3689, !DIExpression(), !12745)
    #dbg_value(i8 0, !3692, !DIExpression(), !12745)
  %i.gv = load atomic i64, ptr @_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !14034
  %i.gw = icmp eq i64 %i.gv, 0, !dbg !14035
  br i1 %i.gw, label %bb.aw, label %bb.bc, !dbg !14036

bb.aw:                                            ; preds = %bb.av
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE, !13128, !DIExpression(), !13650)
    #dbg_value(ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE, !13122, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13651)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE, i64 16), !2998, !DIExpression(), !12747)
    #dbg_value(i8 0, !3001, !DIExpression(), !12747)
  %i.gx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE, i64 16) monotonic, align 8, !dbg !14037 ; 3 uses
  switch i8 %i.gx, label %bb.ax [
    i8 0, label %bb.bc
    i8 1, label %bb.ay
    i8 2, label %bb.ay
  ], !dbg !14038, !prof !3695

bb.ax:                                            ; preds = %bb.aw
  %i.gy = call noundef i8 @_RNvMNtCsgb4gPAseikh_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE) #32, !dbg !14039 ; 2 uses
    #dbg_value(i8 %i.gy, !12918, !DIExpression(), !13649)
    #dbg_value(ptr undef, !13057, !DIExpression(), !13061)
  %.not231 = icmp eq i8 %i.gy, 0, !dbg !14040
  br i1 %.not231, label %bb.bc, label %bb.ay, !dbg !14036

bb.ay:                                            ; preds = %bb.aw, %bb.aw, %bb.ax
  %.sroa.019.0 = phi i8 [ %i.gy, %bb.ax ], [ %i.gx, %bb.aw ], [ %i.gx, %bb.aw ], !dbg !13650
    #dbg_value(i8 %.sroa.019.0, !12918, !DIExpression(), !13649)
  %i.gz = load ptr, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE, align 8, !dbg !14041, !nonnull !1498, !align !2010, !noundef !1498
  %i.ha = call noundef zeroext i1 @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gz, i8 noundef %.sroa.019.0), !dbg !14036
  br i1 %i.ha, label %bb.az, label %bb.bc, !dbg !14036

bb.az:                                            ; preds = %bb.ay
  %i.hb = load ptr, ptr @_RNvNvMNtNtCshovLROGBtMy_11quinn_proto10connection14packet_builderNtB4_13PacketBuilder3news_10___CALLSITE, align 8, !dbg !14042, !nonnull !1498, !align !2010, !noundef !1498 ; 2 uses
    #dbg_value(ptr %i.hb, !12920, !DIExpression(), !13652)
    #dbg_value(ptr %i.hb, !13252, !DIExpression(), !13655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !14043
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48, !dbg !14044
    #dbg_value(ptr %i.hc, !13257, !DIExpression(), !13658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !14043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !14043
    #dbg_value(ptr %i.an, !13659, !DIExpression(), !13665)
  store ptr %i.an, ptr %i.y, align 8, !dbg !14045
  store ptr %i.y, ptr %i.z, align 8, !dbg !14043
  %i.hd = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !14043
  store ptr @32, ptr %i.hd, align 8, !dbg !14043
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup6insert:bb.a
    #dbg_value(i8 poison, !24462, !DIExpression(), !24507)
  ret i1 %.sroa.0.0, !dbg !24524

bb.g:                                             ; preds = %bb.c
  %i.o = add nsw i64 %i.g, -1, !dbg !24525
    #dbg_value(i64 %i.o, !24460, !DIExpression(), !24508)
  %i.p = zext nneg i64 %i.o to i128, !dbg !24526  ; 2 uses
  %i.q = shl nuw i128 1, %i.p, !dbg !24526
    #dbg_value(i128 %i.q, !24461, !DIExpression(), !24509)
  %i.r = load i128, ptr %0, align 16, !dbg !24527, !noundef !1498 ; 2 uses
  %i.s = lshr i128 %i.r, %i.p, !dbg !24527
  %i.t = trunc i128 %i.s to i1, !dbg !24527
    #dbg_value(i128 %i.s, !24462, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !24507)
  %i.u = or i128 %i.r, %i.q, !dbg !24528
  store i128 %i.u, ptr %0, align 16, !dbg !24528
  br label %bb.f, !dbg !24529
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks10insert_one(ptr noalias nofree noundef align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 !dbg !24530 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
    #dbg_value(ptr %0, !24543, !DIExpression(), !24547)
    #dbg_value(i64 %1, !24544, !DIExpression(), !24547)
    #dbg_value(i64 %2, !24545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24547)
    #dbg_value(i32 %3, !24545, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24547)
  %i.b = tail call noundef zeroext i1 @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto9range_set15array_range_setNtB4_13ArrayRangeSet10insert_one(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1), !dbg !24589 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !24590 ; 2 uses
    #dbg_value(i64 poison, !24548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24561)
    #dbg_value(i64 poison, !24548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24561)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !24590 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !24590
    #dbg_value(i32 %.sroa.6.0.copyload, !24548, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !24561)
    #dbg_value(i32 poison, !24548, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !24561)
    #dbg_value(ptr poison, !24557, !DIExpression(), !24562)
  %.not = icmp eq i32 %.sroa.6.0.copyload, -1, !dbg !24591
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
    #dbg_value(i64 %.sroa.0.0.copyload, !24548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24561)
  %i.d = icmp ugt i64 %1, %.sroa.0.0.copyload
  %or.cond = select i1 %.not, i1 true, i1 %i.d, !dbg !24592
  br i1 %or.cond, label %bb.b, label %bb.c, !dbg !24592

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !24590
  store i64 %1, ptr %i.c, align 8, !dbg !24593
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !24593
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !24593
  br label %bb.c, !dbg !24594

bb.c:                                             ; preds = %bb.a, %bb.b
    #dbg_value(ptr %0, !24563, !DIExpression(), !24569)
    #dbg_value(ptr %0, !24571, !DIExpression(), !24578)
  %i.e = load i64, ptr %0, align 8, !dbg !24578, !range !3960, !noundef !1498
  %i.f = trunc nuw i64 %i.e to i1, !dbg !24578
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !24578

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !24575, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24579)
    #dbg_value(ptr %0, !24580, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24582)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24595
  %i.h = load i64, ptr %i.g, align 8, !dbg !24595, !noundef !1498 ; 2 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488, !dbg !24596
  tail call void @llvm.assume(i1 %i.i), !dbg !24597
  br label %bb.f, !dbg !24578

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !24573, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24583)
    #dbg_value(ptr %0, !24584, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24588)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24598
  %i.k = load i16, ptr %i.j, align 8, !dbg !24598, !noundef !1498
  %i.l = zext i16 %i.k to i64, !dbg !24598
  br label %bb.f, !dbg !24578

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.09.0 = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.e ], !dbg !24578
  %i.m = icmp samesign ugt i64 %.sroa.09.0, 64, !dbg !24599
  br i1 %i.m, label %bb.g, label %bb.h, !dbg !24599

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24600
  call void @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto9range_set15array_range_setNtB4_13ArrayRangeSet7pop_min(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !dbg !24601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24602
  br label %bb.h, !dbg !24603

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void, !dbg !24604
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks14subtract_below(ptr noalias nofree noundef align 8 dereferenceable(160) %0, i64 noundef %1) unnamed_addr #0 !dbg !24605 {
bb.a:
    #dbg_value(ptr %0, !24609, !DIExpression(), !24612)
    #dbg_value(i64 %1, !24610, !DIExpression(), !24612)
  %i.a = add i64 %1, 1, !dbg !24613
  %i.b = tail call noundef zeroext i1 @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto9range_set15array_range_setNtB4_13ArrayRangeSet6remove(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0, i64 noundef %i.a), !dbg !24614 ; 0 uses
  ret void, !dbg !24615
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15packet_received(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(32) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24617 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !24719, !DIExpression(), !24726)
    #dbg_value(ptr %0, !24727, !DIExpression(), !24730)
    #dbg_value(i64 %1, !24720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24726)
    #dbg_value(i32 %2, !24720, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24726)
    #dbg_value(i64 %3, !24721, !DIExpression(), !24726)
    #dbg_value(i1 %4, !24722, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24726)
    #dbg_value(ptr %5, !24723, !DIExpression(), !24726)
    #dbg_value(i64 0, !24731, !DIExpression(), !24736)
  br i1 %4, label %bb.c, label %bb.b, !dbg !24856

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !24857 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !24857, !noundef !1498
  %i.d = add i64 %i.c, 1, !dbg !24857
  store i64 %i.d, ptr %i.b, align 8, !dbg !24857
  br label %bb.d, !dbg !24858

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !24859 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !24859, !range !3960, !noundef !1498
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !24859 ; 2 uses
    #dbg_value(i64 %i.f, !24732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24736)
    #dbg_value(i64 poison, !24732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24736)
  %i.h = trunc nuw i64 %i.f to i1, !dbg !24860    ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !dbg !24860 ; 2 uses
  %.sroa.01.0 = select i1 %i.h, i64 %i.i, i64 0, !dbg !24860 ; 2 uses
    #dbg_value(i64 %.sroa.01.0, !24724, !DIExpression(), !24738)
    #dbg_value(i64 %i.f, !24739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24752)
    #dbg_value(i64 poison, !24739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24752)
    #dbg_value(ptr poison, !24748, !DIExpression(), !24753)
  %..i = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.i), !dbg !24861
  %.sroa.49.0 = select i1 %i.h, i64 %..i, i64 %3, !dbg !24861 ; 2 uses
  store i64 1, ptr %i.e, align 8, !dbg !24862
  store i64 %.sroa.49.0, ptr %i.g, align 8, !dbg !24862
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !24863 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !24863, !noundef !1498
  %i.l = add i64 %i.k, 1, !dbg !24863             ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !dbg !24863
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !24864
  %i.n = load i64, ptr %i.m, align 8, !dbg !24864, !noundef !1498
  %i.o = icmp ugt i64 %i.l, %i.n, !dbg !24865
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !24866 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !dbg !24866, !range !3599, !noundef !1498
  %i.r = zext i1 %i.o to i8, !dbg !24866
  %i.s = or i8 %i.q, %i.r, !dbg !24866            ; 2 uses
  store i8 %i.s, ptr %i.p, align 8, !dbg !24866
  %.val = load i128, ptr %5, align 16, !dbg !24867 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !24867
  %.val20 = load i64, ptr %i.t, align 16, !dbg !24867 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24754), !dbg !24867
    #dbg_value(ptr %0, !24755, !DIExpression(), !24631)
    #dbg_value(i64 %3, !24760, !DIExpression(), !24631)
    #dbg_value(i64 %.sroa.01.0, !24761, !DIExpression(), !24631)
    #dbg_value(ptr poison, !24762, !DIExpression(), !24631)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !24868
  %i.v = load i64, ptr %i.u, align 8, !dbg !24868, !alias.scope !24754, !noundef !1498 ; 4 uses
  switch i64 %i.v, label %bb.e [
    i64 0, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit
    i64 1, label %bb.f
  ], !dbg !24868

bb.d:                                             ; preds = %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, %bb.v, %bb.s, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ true, %bb.s ], [ false, %bb.v ], [ false, %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit ], !dbg !24726
  ret i1 %.sroa.0.0, !dbg !24869

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24870, !noalias !24754
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !24870
  %i.x = load i64, ptr %i.w, align 8, !dbg !24870, !range !3960, !alias.scope !24754, !noundef !1498
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !24870
  %i.z = load i64, ptr %i.y, align 8, !dbg !24870, !alias.scope !24754
  call void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionyE3zipyECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.x, i64 %i.z, i64 noundef 1, i64 %.sroa.49.0), !dbg !24871, !noalias !24754
  %i.aa = load i64, ptr %i.a, align 8, !dbg !24870, !range !3960, !noalias !24754, !noundef !1498
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !24872
  br i1 %i.ab, label %bb.k, label %bb.l, !dbg !24872

bb.f:                                             ; preds = %bb.c
  %i.ac = icmp ult i64 %3, %.sroa.01.0, !dbg !24873
  br i1 %i.ac, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, label %bb.g, !dbg !24873

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr poison, !24768, !DIExpression(), !24634)
    #dbg_value(i64 %.sroa.01.0, !24773, !DIExpression(), !24634)
    #dbg_value(i64 %3, !24774, !DIExpression(), !24634)
    #dbg_value(ptr poison, !24776, !DIExpression(), !24646)
    #dbg_value(ptr poison, !24793, !DIExpression(), !24649)
    #dbg_value(ptr poison, !24793, !DIExpression(), !24651)
    #dbg_value(ptr poison, !24793, !DIExpression(), !24653)
    #dbg_value(i64 %.sroa.01.0, !24781, !DIExpression(), !24646)
    #dbg_value(i64 %3, !24782, !DIExpression(), !24646)
    #dbg_value(i64 %3, !24798, !DIExpression(), !24656)
    #dbg_value(i64 1, !24799, !DIExpression(), !24656)
    #dbg_value(i64 %.sroa.01.0, !24783, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24657)
    #dbg_value(i64 %.sroa.01.0, !24800, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24659)
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 1), !dbg !24874 ; 2 uses
    #dbg_value(i64 %i.ad, !24784, !DIExpression(), !24660)
  %i.ae = add i64 %.val20, -1, !dbg !24875        ; 2 uses
    #dbg_value(i64 %i.ae, !24798, !DIExpression(), !24659)
  %i.af = sub i64 %i.ae, %i.ad, !dbg !24876
  %i.ag = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 1), !dbg !24876 ; 3 uses
    #dbg_value(i64 %i.ag, !24785, !DIExpression(), !24661)
    #dbg_value(i64 %i.ag, !24800, !DIExpression(), !24663)
  %i.ah = icmp ugt i64 %i.ag, 127, !dbg !24877
  br i1 %i.ah, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, label %bb.h, !dbg !24877

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %.sroa.01.0, 1, !dbg !24878
    #dbg_value(i64 %i.ai, !24783, !DIExpression(), !24657)
    #dbg_value(i64 %i.ai, !24800, !DIExpression(), !24659)
  %i.aj = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 %i.ai), !dbg !24879
    #dbg_value(i64 %i.aj, !24786, !DIExpression(), !24664)
    #dbg_value(i64 %i.aj, !24798, !DIExpression(), !24663)
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %i.ag), !dbg !24880
    #dbg_value(ptr undef, !24802, !DIExpression(DW_OP_deref), !24667)
    #dbg_value(ptr undef, !24803, !DIExpression(DW_OP_deref), !24667)
  %..i17.i.i.i = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.ak, i64 128), !dbg !24881 ; 2 uses
    #dbg_value(i64 %..i17.i.i.i, !24787, !DIExpression(), !24668)
  %trunc.i.i.i = trunc nuw i64 %..i17.i.i.i to i8, !dbg !24882
  switch i8 %trunc.i.i.i, label %bb.i [
    i8 0, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit
    i8 -128, label %bb.j
  ], !dbg !24882

bb.i:                                             ; preds = %bb.h
  %i.al = zext nneg i64 %..i17.i.i.i to i128, !dbg !24883
  %notmask.i.i.i = shl nsw i128 -1, %i.al, !dbg !24884
  %i.am = xor i128 %notmask.i.i.i, -1, !dbg !24884
  %i.an = zext nneg i64 %i.ag to i128, !dbg !24884
  %i.ao = shl i128 %i.am, %i.an, !dbg !24884
    #dbg_value(i128 %i.ao, !24788, !DIExpression(), !24669)
  br label %bb.j, !dbg !24885

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i.i = phi i128 [ %i.ao, %bb.i ], [ -1, %bb.h ], !dbg !24886
    #dbg_value(i128 %.sroa.01.0.i.i.i, !24788, !DIExpression(), !24669)
  %i.ap = xor i128 %.val, -1, !dbg !24887
  %i.aq = and i128 %.sroa.01.0.i.i.i, %i.ap, !dbg !24887
    #dbg_value(i128 %i.aq, !24789, !DIExpression(), !24670)
    #dbg_value(i128 %i.aq, !24807, !DIExpression(), !24673)
  %i.ar = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.aq, i1 false), !dbg !24888
  %i.as = trunc nuw nsw i128 %i.ar to i64, !dbg !24888
    #dbg_value(!DIArgList(i64 128, i64 %i.as), !24790, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !24674)
  %.neg.i.i.i = add i64 %.val20, -129, !dbg !24889
  %i.at = add i64 %.neg.i.i.i, %i.as, !dbg !24890
    #dbg_value(!DIArgList(i64 %i.ae, i64 %i.as), !24791, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 128, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !24675)
  %.not.i.i.i = icmp ule i64 %i.at, %i.ad, !dbg !24891
  br label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, !dbg !24892

bb.k:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24893
  %i.av = load i64, ptr %i.au, align 8, !dbg !24893, !noalias !24754, !noundef !1498 ; 2 uses
    #dbg_value(i64 %i.av, !24763, !DIExpression(), !24676)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24894
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !24894, !noalias !24754, !noundef !1498 ; 2 uses
    #dbg_value(i64 %i.ax, !24764, !DIExpression(), !24676)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24895, !noalias !24754
  %i.ay = icmp ugt i64 %i.v, %i.av, !dbg !24896
  br i1 %i.ay, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, label %bb.m, !dbg !24896

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24895, !noalias !24754
  br label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, !dbg !24897

bb.m:                                             ; preds = %bb.k
    #dbg_value(!DIArgList(i64 %i.av, i64 %i.v), !24765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !24677)
    #dbg_value(ptr poison, !24776, !DIExpression(), !24679)
    #dbg_value(ptr poison, !24793, !DIExpression(), !24681)
    #dbg_value(ptr poison, !24793, !DIExpression(), !24683)
    #dbg_value(ptr poison, !24793, !DIExpression(), !24685)
    #dbg_value(!DIArgList(i64 %i.av, i64 %i.v), !24781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !24679)
    #dbg_value(i64 %i.ax, !24782, !DIExpression(), !24679)
    #dbg_value(i64 %i.ax, !24798, !DIExpression(), !24687)
    #dbg_value(i64 1, !24799, !DIExpression(), !24687)
    #dbg_value(!DIArgList(i64 %i.av, i64 %i.v), !24783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24688)
    #dbg_value(!DIArgList(i64 %i.av, i64 %i.v), !24800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24690)
  %i.az = tail call i64 @llvm.usub.sat.i64(i64 %i.ax, i64 1), !dbg !24898 ; 2 uses
    #dbg_value(i64 %i.az, !24784, !DIExpression(), !24691)
  %i.ba = add i64 %.val20, -1, !dbg !24899        ; 2 uses
    #dbg_value(i64 %i.ba, !24798, !DIExpression(), !24690)
  %i.bb = sub i64 %i.ba, %i.az, !dbg !24900
  %i.bc = tail call i64 @llvm.usub.sat.i64(i64 %i.bb, i64 1), !dbg !24900 ; 3 uses
    #dbg_value(i64 %i.bc, !24785, !DIExpression(), !24692)
    #dbg_value(i64 %i.bc, !24800, !DIExpression(), !24694)
  %i.bd = icmp ugt i64 %i.bc, 127, !dbg !24901
  br i1 %i.bd, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, label %bb.n, !dbg !24901

bb.n:                                             ; preds = %bb.m
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24690)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24688)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !24679)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !24677)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24765, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !24677)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !24679)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24688)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24690)
  %reass.sub = sub i64 %i.av, %i.v, !dbg !24902
  %i.be = add i64 %reass.sub, 2, !dbg !24902
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24783, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24688)
    #dbg_value(!DIArgList(i64 %i.av, i64 0, i64 %i.v), !24800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !24690)
  %i.bf = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.be), !dbg !24903
    #dbg_value(i64 %i.bf, !24786, !DIExpression(), !24695)
    #dbg_value(i64 %i.bf, !24798, !DIExpression(), !24694)
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.bc), !dbg !24904
    #dbg_value(ptr undef, !24802, !DIExpression(DW_OP_deref), !24697)
    #dbg_value(ptr undef, !24803, !DIExpression(DW_OP_deref), !24697)
  %..i17.i.i = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.bg, i64 128), !dbg !24905 ; 2 uses
    #dbg_value(i64 %..i17.i.i, !24787, !DIExpression(), !24698)
  %trunc.i.i = trunc nuw i64 %..i17.i.i to i8, !dbg !24906
  switch i8 %trunc.i.i, label %bb.o [
    i8 0, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit
    i8 -128, label %_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup28smallest_missing_in_interval.exit.i
  ], !dbg !24906

bb.o:                                             ; preds = %bb.n
  %i.bh = zext nneg i64 %..i17.i.i to i128, !dbg !24907
  %notmask.i.i = shl nsw i128 -1, %i.bh, !dbg !24908
  %i.bi = xor i128 %notmask.i.i, -1, !dbg !24908
  %i.bj = zext nneg i64 %i.bc to i128, !dbg !24908
  %i.bk = shl i128 %i.bi, %i.bj, !dbg !24908
    #dbg_value(i128 %i.bk, !24788, !DIExpression(), !24699)
  br label %_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup28smallest_missing_in_interval.exit.i, !dbg !24909

_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup28smallest_missing_in_interval.exit.i: ; preds = %bb.o, %bb.n
  %.sroa.01.0.i.i = phi i128 [ %i.bk, %bb.o ], [ -1, %bb.n ], !dbg !24910
    #dbg_value(i128 %.sroa.01.0.i.i, !24788, !DIExpression(), !24699)
  %i.bl = xor i128 %.val, -1, !dbg !24911
  %i.bm = and i128 %.sroa.01.0.i.i, %i.bl, !dbg !24911
    #dbg_value(i128 %i.bm, !24789, !DIExpression(), !24700)
    #dbg_value(i128 %i.bm, !24807, !DIExpression(), !24702)
  %i.bn = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bm, i1 false), !dbg !24912
  %i.bo = trunc nuw nsw i128 %i.bn to i64, !dbg !24912
    #dbg_value(!DIArgList(i64 128, i64 %i.bo), !24790, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !24703)
  %.neg.i.i = add i64 %.val20, -129, !dbg !24913
  %i.bp = add i64 %.neg.i.i, %i.bo, !dbg !24914   ; 2 uses
    #dbg_value(!DIArgList(i64 %i.ba, i64 %i.bo), !24791, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 128, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !24704)
  %.not.i.not.i = icmp ugt i64 %i.bp, %i.az, !dbg !24915
  br i1 %.not.i.not.i, label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, label %bb.p, !dbg !24916

bb.p:                                             ; preds = %_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup28smallest_missing_in_interval.exit.i
    #dbg_value(i64 %i.bp, !24766, !DIExpression(), !24705)
  %i.bq = sub nuw i64 %i.ax, %i.bp, !dbg !24917
  %i.br = icmp uge i64 %i.bq, %i.v, !dbg !24917
  br label %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit, !dbg !24918

_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit: ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup28smallest_missing_in_interval.exit.i, %bb.p
  %.sroa.0.0.shrunk.i = phi i1 [ true, %bb.f ], [ %i.br, %bb.p ], [ false, %bb.k ], [ false, %bb.l ], [ false, %_RNvMs6_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_5Dedup28smallest_missing_in_interval.exit.i ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.h ], [ %.not.i.i.i, %bb.j ], [ false, %bb.m ], [ false, %bb.n ]
  %i.bs = trunc nuw i8 %i.s to i1, !dbg !24919
  %i.bt = or i1 %.sroa.0.0.shrunk.i, %i.bs, !dbg !24919 ; 2 uses
  %i.bu = zext i1 %i.bt to i8, !dbg !24919
  store i8 %i.bu, ptr %i.p, align 8, !dbg !24919
    #dbg_value(ptr %0, !24817, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !24823)
    #dbg_value(ptr %0, !24824, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !24828)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !24920
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !24920 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !dbg !24920, !range !3806, !noundef !1498
  %.not = icmp eq i32 %i.bx, -1, !dbg !24920
  br i1 %.not, label %bb.q, label %bb.d, !dbg !24921

bb.q:                                             ; preds = %_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks15is_out_of_order.exit
  br i1 %i.bt, label %bb.r, label %bb.s, !dbg !24922

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %0, !24829, !DIExpression(), !24832)
    #dbg_value(ptr %0, !24833, !DIExpression(), !24836)
    #dbg_value(ptr %0, !24838, !DIExpression(), !24845)
  %i.by = load i64, ptr %0, align 8, !dbg !24845, !range !3960, !noundef !1498
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !24845
  br i1 %i.bz, label %bb.t, label %bb.u, !dbg !24845

bb.s:                                             ; preds = %bb.q, %bb.v
  store i64 %1, ptr %i.bv, align 8, !dbg !24923
  store i32 %2, ptr %i.bw, align 8, !dbg !24923
  br label %bb.d, !dbg !24858

bb.t:                                             ; preds = %bb.r
    #dbg_value(ptr %0, !24842, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24846)
    #dbg_value(ptr %0, !24847, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24849)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24924
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !24924, !noundef !1498 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 576460752303423488, !dbg !24925
  tail call void @llvm.assume(i1 %i.cc), !dbg !24926
  br label %bb.v, !dbg !24845

bb.u:                                             ; preds = %bb.r
    #dbg_value(ptr %0, !24840, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24850)
    #dbg_value(ptr %0, !24851, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24855)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24927
  %i.ce = load i16, ptr %i.cd, align 8, !dbg !24927, !noundef !1498
  %i.cf = zext i16 %i.ce to i64, !dbg !24927
  br label %bb.v, !dbg !24845

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.010.0 = phi i64 [ %i.cb, %bb.t ], [ %i.cf, %bb.u ], !dbg !24845
  %.not19 = icmp eq i64 %.sroa.010.0, 0, !dbg !24928
  br i1 %.not19, label %bb.s, label %bb.d, !dbg !24929
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks21max_ack_delay_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 !dbg !24930 {
bb.a:
    #dbg_declare(ptr poison, !24941, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !24955)
    #dbg_value(ptr %0, !24938, !DIExpression(), !24956)
    #dbg_value(i64 %1, !24939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24956)
    #dbg_value(i32 %2, !24939, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24956)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !24968
  %i.b = load i32, ptr %i.a, align 8, !dbg !24968, !range !3806, !noundef !1498 ; 2 uses
    #dbg_value(i64 poison, !24941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24957)
    #dbg_value(i32 %i.b, !24941, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24957)
    #dbg_value(ptr poison, !24951, !DIExpression(), !24958)
    #dbg_value(ptr poison, !24959, !DIExpression(), !24965)
  %.not = icmp eq i32 %i.b, -1, !dbg !24969
  br i1 %.not, label %bb.c, label %bb.b, !dbg !24970

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !24968
  %i.d = load i64, ptr %i.c, align 8, !dbg !24968
    #dbg_value(i64 %i.d, !24941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24957)
    #dbg_value(i64 %i.d, !24952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24966)
    #dbg_value(i64 %i.d, !24962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24967)
    #dbg_value(i32 %i.b, !24952, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24966)
    #dbg_value(i32 %i.b, !24962, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24967)
  %i.e = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %i.d, i32 noundef %i.b, i64 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !dbg !24971 ; 2 uses
  %i.f = extractvalue { i64, i32 } %i.e, 0, !dbg !24971
  %i.g = extractvalue { i64, i32 } %i.e, 1, !dbg !24971
  br label %bb.c, !dbg !24972

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ], !dbg !24957
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ], !dbg !24957
  %i.h = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0, !dbg !24973
  %i.i = insertvalue { i64, i32 } %i.h, i32 %.sroa.3.0, 1, !dbg !24973
  ret { i64, i32 } %i.i, !dbg !24973
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks9ack_delay(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24974 {
bb.a:
    #dbg_value(i64 %1, !24992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24994)
    #dbg_value(i32 %2, !24992, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24994)
    #dbg_value(ptr %0, !24991, !DIExpression(), !24994)
    #dbg_value(i64 poison, !24995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25010)
    #dbg_value(i64 poison, !25008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25011)
    #dbg_value(i64 poison, !24995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25010)
    #dbg_value(i64 poison, !25008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25011)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25019
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25019 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.copyload, !24995, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !25010)
    #dbg_value(i32 %.sroa.4.0.copyload, !25008, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !25011)
    #dbg_value(i32 poison, !24995, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !25010)
    #dbg_value(i32 poison, !25008, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !25011)
    #dbg_value(i64 0, !25006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24979)
    #dbg_value(i32 0, !25006, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24979)
    #dbg_value(ptr poison, !25007, !DIExpression(), !24979)
  %.not.i = icmp eq i32 %.sroa.4.0.copyload, -1, !dbg !25020
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTyNtNtCsG258MDvU3F_3std4time7InstantEE6map_orNtNtB5_4time8DurationNCNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB1U_11PendingAcks9ack_delay0EB1Y_.exit, label %bb.b, !dbg !25021

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !25019
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !25019
    #dbg_value(i64 %.sroa.3.0.copyload, !24995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25010)
    #dbg_value(i64 %.sroa.3.0.copyload, !25008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25011)
    #dbg_value(ptr poison, !25012, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24983)
    #dbg_declare(ptr poison, !25016, !DIExpression(), !24984)
    #dbg_value(i64 %.sroa.3.0.copyload, !25015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24985)
    #dbg_value(i32 %.sroa.4.0.copyload, !25015, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !24985)
  %i.a = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %1, i32 noundef %2, i64 noundef %.sroa.3.0.copyload, i32 noundef %.sroa.4.0.copyload), !dbg !25022, !noalias !25018 ; 2 uses
  %i.b = extractvalue { i64, i32 } %i.a, 0, !dbg !25023
  %i.c = extractvalue { i64, i32 } %i.a, 1, !dbg !25023
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTyNtNtCsG258MDvU3F_3std4time7InstantEE6map_orNtNtB5_4time8DurationNCNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB1U_11PendingAcks9ack_delay0EB1Y_.exit, !dbg !25024

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTyNtNtCsG258MDvU3F_3std4time7InstantEE6map_orNtNtB5_4time8DurationNCNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB1U_11PendingAcks9ack_delay0EB1Y_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ], !dbg !25010
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ], !dbg !25010
  %i.d = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0, !dbg !25025
  %i.e = insertvalue { i64, i32 } %i.d, i32 %.sroa.3.0.i, 1, !dbg !25025
  ret { i64, i32 } %i.e, !dbg !25026
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_18PacketNumberFilter9check_ack(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i8 noundef range(i8 0, 3) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 !dbg !25028 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !25110, !DIExpression(), !25121)
    #dbg_value(ptr %1, !25106, !DIExpression(), !25139)
end_hunk_1
