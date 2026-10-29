Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.09?download=true
inline.NumInlined: 468
inline.NumDeleted: 249
begin_hunk_0_@_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_6Hybrid3new:bb.a
    #dbg_value(ptr %i.bu, !4687, !DIExpression(), !15345)
  %i.bv = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8, !dbg !16061, !noalias !15901
    #dbg_value(i64 %i.bv, !4684, !DIExpression(), !15353)
  %i.bw = icmp slt i64 %i.bv, 0, !dbg !16062
  br i1 %i.bw, label %bb.u, label %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, !dbg !16062

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap(), !dbg !16063
  unreachable, !dbg !16063

_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 104, !dbg !16060
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !16064, !alias.scope !15900, !noalias !15876, !nonnull !1213, !align !4692, !noundef !1213
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 112, !dbg !16065
  %i.ca = load i64, ptr %i.bz, align 16, !dbg !16065, !alias.scope !15900, !noalias !15876, !noundef !1213
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i, !dbg !16066

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i: ; preds = %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.s, %bb.r
  %.sroa.534.0.i.i = phi i64 [ %i.ca, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ undef, %bb.r ], !dbg !16067
  %.sroa.4.037.i.i = phi ptr [ %i.by, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ undef, %bb.r ], !dbg !16067
  %.sroa.0.036.i.i = phi ptr [ %i.bu, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.s ], [ undef, %bb.r ], !dbg !16067
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 129, DW_OP_stack_value), !15355)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 129, !dbg !16068
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !16068, !range !3680, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 2 uses
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value), !15357)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 130, !dbg !16069
  %i.ce = load i8, ptr %i.cd, align 2, !dbg !16069, !range !3680, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 2 uses
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 131, DW_OP_stack_value), !15359)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 131, !dbg !16070
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !16070, !range !3680, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i), !dbg !16071
    #dbg_value(ptr %i.q, !4707, !DIExpression(), !15361)
  %i.ch = load i128, ptr %i.q, align 16, !dbg !16072, !range !4712, !alias.scope !15897, !noalias !15876, !noundef !1213
  %i.ci = trunc nuw i128 %i.ch to i1, !dbg !16073 ; 2 uses
  br i1 %i.ci, label %bb.v, label %bb.x, !dbg !16073

bb.v:                                             ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i
    #dbg_value(ptr %i.q, !4710, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15362)
    #dbg_value(ptr %i.q, !4714, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15364)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !16074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.cj, i64 32, i1 false), !dbg !16074, !noalias !15876
  br label %bb.x, !dbg !16075

bb.w:                                             ; preds = %bb.z, %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_(ptr noalias nofree noundef align 16 dereferenceable(592) %i.l) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i unwind label %bb.br, !dbg !16076, !noalias !15876

bb.x:                                             ; preds = %bb.v, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i
  %.sroa.04.0.i.i = phi i128 [ 1, %bb.v ], [ 0, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i.i ], !dbg !16077
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !15366)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 132, !dbg !16078
  %i.cm = load i8, ptr %i.cl, align 4, !dbg !16078, !range !3680, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 2 uses
    #dbg_value(ptr %i.q, !4721, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15368)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 48, !dbg !16079
  %i.co = load i64, ptr %i.cn, align 16, !dbg !16079, !range !4394, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 56, !dbg !16080
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !16080, !alias.scope !15897, !noalias !15876
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 133, DW_OP_stack_value), !15370)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 133, !dbg !16081
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !16081, !range !3680, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 2 uses
    #dbg_value(ptr %i.q, !4726, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15372)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 64, !dbg !16082
  %i.cu = load i64, ptr %i.ct, align 16, !dbg !16082, !range !4496, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 72, !dbg !16083
  %.val30.i.i = load i64, ptr %i.cv, align 8, !dbg !16083, !alias.scope !15897, !noalias !15876
  %i.cw = and i64 %i.cu, 1, !dbg !16083
  %i.cx = icmp eq i64 %i.cw, 0, !dbg !16083
  %.sroa.510.0.i.i = select i1 %i.cx, i64 undef, i64 %.val30.i.i, !dbg !16083 ; 2 uses
    #dbg_value(ptr %i.q, !4726, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !15374)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 80, !dbg !16084
  %i.cz = load i64, ptr %i.cy, align 16, !dbg !16084, !range !4496, !alias.scope !15897, !noalias !15876, !noundef !1213 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 88, !dbg !16085
  %.val28.i.i = load i64, ptr %i.da, align 8, !dbg !16085, !alias.scope !15897, !noalias !15876
  %i.db = and i64 %i.cz, 1, !dbg !16085
  %i.dc = icmp eq i64 %i.db, 0, !dbg !16085
  %.sroa.512.0.i.i = select i1 %i.dc, i64 undef, i64 %.val28.i.i, !dbg !16085 ; 2 uses
  %i.dd = trunc nuw i64 %i.co to i1, !dbg !16080
  %.sroa.57.0.i.i = select i1 %i.dd, i64 %i.cq, i64 undef, !dbg !16080 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 128, !dbg !16086
  store i8 %i.bq, ptr %i.de, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 96, !dbg !16086
  store ptr %.sroa.0.036.i.i, ptr %i.df, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %.sroa.4.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104, !dbg !16086
  store ptr %.sroa.4.037.i.i, ptr %.sroa.4.0..sroa_idx33.i.i, align 8, !dbg !16086, !alias.scope !15896, !noalias !15876
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112, !dbg !16086
  store i64 %.sroa.534.0.i.i, ptr %.sroa.534.0..sroa_idx.i.i, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %.sroa.6.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120, !dbg !16086
  store i8 %i.bs, ptr %.sroa.6.0..sroa_idx35.i.i, align 8, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 129, !dbg !16086
  store i8 %i.cc, ptr %i.dg, align 1, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 130, !dbg !16086
  store i8 %i.ce, ptr %i.dh, align 2, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 131, !dbg !16086
  store i8 %i.cg, ptr %i.di, align 1, !dbg !16086, !alias.scope !15896, !noalias !15876
  store i128 %.sroa.04.0.i.i, ptr %i.k, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !dbg !16086, !noalias !15902
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 132, !dbg !16086
  store i8 %i.cm, ptr %i.dj, align 4, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !16086
  store i64 %i.co, ptr %i.dk, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 56, !dbg !16086
  store i64 %.sroa.57.0.i.i, ptr %i.dl, align 8, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 133, !dbg !16086
  store i8 %i.cs, ptr %i.dm, align 1, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 64, !dbg !16086
  store i64 %i.cu, ptr %i.dn, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 72, !dbg !16086
  store i64 %.sroa.510.0.i.i, ptr %i.do, align 8, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 80, !dbg !16086
  store i64 %i.cz, ptr %i.dp, align 16, !dbg !16086, !alias.scope !15896, !noalias !15876
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 88, !dbg !16086
  store i64 %.sroa.512.0.i.i, ptr %i.dq, align 8, !dbg !16086, !alias.scope !15896, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !16087
  %i.dr = invoke noundef nonnull align 16 ptr @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder9configure(ptr noalias nofree noundef nonnull align 16 dereferenceable(592) %i.l, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(144) %i.k)
          to label %bb.y unwind label %bb.w, !dbg !16088, !noalias !15876

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16089, !noalias !15876
    #dbg_value(ptr poison, !15868, !DIExpression(), !15375)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
    #dbg_value(ptr %.val3, !15844, !DIExpression(), !15376)
    #dbg_value(ptr %.val3, !15856, !DIExpression(), !15240)
  %i.ds = atomicrmw add ptr %.val3, i64 1 monotonic, align 8, !dbg !16090, !noalias !15876
    #dbg_value(i64 %i.ds, !15869, !DIExpression(), !15377)
  %i.dt = icmp slt i64 %i.ds, 0, !dbg !16091
  br i1 %i.dt, label %bb.aa, label %bb.z, !dbg !16091

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder14build_from_nfa(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %i.m, ptr noundef nonnull align 16 %i.dr, ptr noundef nonnull %.val3)
          to label %bb.ab unwind label %bb.w, !dbg !16092, !noalias !15876

bb.aa:                                            ; preds = %bb.y
  call void @llvm.trap(), !dbg !16093
  unreachable, !dbg !16093

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !15903), !dbg !16076
    #dbg_value(ptr %i.l, !3184, !DIExpression(), !15381)
  call void @llvm.experimental.noalias.scope.decl(metadata !15904), !dbg !16094
    #dbg_value(ptr %i.l, !3044, !DIExpression(), !15385)
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 96, !dbg !16095 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15905), !dbg !16095
    #dbg_value(ptr %i.du, !2507, !DIExpression(), !15389)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 120, !dbg !16096
  %i.dw = load i8, ptr %i.dv, align 8, !dbg !16096, !range !2511, !alias.scope !15906, !noalias !15876, !noundef !1213 ; 2 uses
  %i.dx = icmp eq i8 %i.dw, -1, !dbg !16096
  br i1 %i.dx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i, label %bb.ac, !dbg !16096

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !15907), !dbg !16096
    #dbg_value(ptr %i.du, !2513, !DIExpression(), !15393)
  %i.dy = icmp eq i8 %i.dw, 2, !dbg !16097
  br i1 %i.dy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i, label %bb.ad, !dbg !16097

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !15908), !dbg !16097
    #dbg_value(ptr %i.du, !2518, !DIExpression(), !15397)
  call void @llvm.experimental.noalias.scope.decl(metadata !15909), !dbg !16098
    #dbg_value(ptr %i.du, !2523, !DIExpression(), !15401)
  call void @llvm.experimental.noalias.scope.decl(metadata !15910), !dbg !16099
    #dbg_value(ptr %i.du, !2529, !DIExpression(), !15405)
    #dbg_value(ptr %i.du, !2532, !DIExpression(), !15407)
    #dbg_value(i64 1, !2542, !DIExpression(), !15409)
    #dbg_value(i8 1, !2548, !DIExpression(), !15409)
    #dbg_value(i64 1, !2550, !DIExpression(), !15411)
    #dbg_value(i8 1, !2555, !DIExpression(), !15411)
  %i.dz = load ptr, ptr %i.du, align 16, !dbg !16100, !alias.scope !15911, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.dz, !2547, !DIExpression(), !15413)
    #dbg_value(ptr %i.dz, !2554, !DIExpression(), !15411)
  %i.ea = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !dbg !16101, !noalias !15912
  %i.eb = icmp eq i64 %i.ea, 1, !dbg !16102
  br i1 %i.eb, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i, !dbg !16102

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i8 2, !2564, !DIExpression(), !15415)
  fence acquire, !dbg !16103
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.du) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i unwind label %bb.af, !dbg !16104, !noalias !15876

bb.af:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 144, !dbg !16094
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.ed) #25
          to label %.body.thread.i unwind label %bb.ag, !dbg !16094, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 144, !dbg !16094
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.ee)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i unwind label %bb.ah, !dbg !16094, !noalias !15876

bb.ag:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !16094, !noalias !15876
  unreachable, !dbg !16094

.body.i:                                          ; preds = %.thread.i, %bb.bx, %bb.bw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a, %bb.ah
  %.pn71.i = phi { ptr, i32 } [ %.pn67.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a ], [ %.pn67.pn7.i, %.thread.i ], [ %i.hs, %bb.bw ], [ %i.ei, %bb.ah ], [ %i.hs, %bb.bx ] ; 4 uses
  %.sroa.09.0.i = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a ], [ true, %.thread.i ], [ true, %bb.bw ], [ %.sroa.09.1.i, %bb.ah ], [ true, %bb.bx ], !dbg !16105
  %.sroa.08.0.i = phi i1 [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a ], [ false, %.thread.i ], [ false, %bb.bw ], [ %.sroa.08.1.i, %bb.ah ], [ false, %bb.bx ], !dbg !16105
  %i.eg = load i128, ptr %i.m, align 16, !dbg !16106, !range !4661, !noalias !15876, !noundef !1213
  %.not73.i = icmp eq i128 %i.eg, 2, !dbg !16106
  br i1 %.not73.i, label %bb.cj, label %bb.ci, !dbg !16106

.body.thread.i:                                   ; preds = %bb.af
  %i.eh = load i128, ptr %i.m, align 16, !dbg !16106, !range !4661, !noalias !15876, !noundef !1213
  %.not7316.i = icmp eq i128 %i.eh, 2, !dbg !16106
  br i1 %.not7316.i, label %.thread25.i, label %.thread21.i, !dbg !16106

bb.ah:                                            ; preds = %bb.by, %bb.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i
  %.sroa.09.1.i = phi i1 [ false, %bb.aj ], [ true, %bb.by ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i ], !dbg !16105
  %.sroa.08.1.i = phi i1 [ true, %bb.aj ], [ false, %bb.by ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i ], !dbg !16105
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16076, !noalias !15876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16107, !noalias !15876
  %i.ej = load i128, ptr %i.m, align 16, !dbg !16108, !range !4661, !noalias !15876, !noundef !1213
  %i.ek = icmp eq i128 %i.ej, 2, !dbg !16108
  br i1 %i.ek, label %bb.ai, label %bb.ak, !dbg !16109

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16110, !noalias !15876
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !16110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 16 dereferenceable(128) %i.el, i64 128, i1 false), !dbg !16110, !noalias !15876
    #dbg_value(ptr %i.i, !4790, !DIExpression(), !15417)
    #dbg_value(ptr %i.i, !4797, !DIExpression(), !15419)
  %i.em = load i64, ptr %i.i, align 8, !dbg !16111, !range !4803, !alias.scope !15913, !noalias !15876, !noundef !1213
  %i.en = add i64 %i.em, 9223372036854775798, !dbg !16111
  %i.eo = icmp ult i64 %i.en, -3, !dbg !16111
  br i1 %i.eo, label %bb.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit.i, !dbg !16111

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit.i unwind label %bb.ah, !dbg !16111, !noalias !15876

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.j, ptr noundef nonnull align 16 dereferenceable(720) %i.m, i64 720, i1 false), !dbg !16112, !noalias !15876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16113, !noalias !15876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16114, !noalias !15876
  invoke void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder3new(ptr noalias nofree noundef nonnull sret([592 x i8]) align 16 captures(none) dereferenceable(592) %i.g)
          to label %bb.am unwind label %bb.al, !dbg !16114, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a: ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  br i1 %.sroa.07.1.i, label %.thread.i, label %.body.i, !dbg !16115

bb.al:                                            ; preds = %bb.ak
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !15914), !dbg !16116
  call void @llvm.experimental.noalias.scope.decl(metadata !15915), !dbg !16116
    #dbg_value(ptr %i.q, !4663, !DIExpression(), !15428)
    #dbg_value(ptr %i.q, !4668, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !15430)
    #dbg_value(ptr %i.q, !4671, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !15432)
  br i1 %.not18.i.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i, label %bb.an, !dbg !16117

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.q, !4672, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !15433)
  call void @llvm.experimental.noalias.scope.decl(metadata !15916), !dbg !16118
    #dbg_value(ptr %i.q, !4674, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !15437)
  %.not.i.i83.i = icmp eq i8 %i.bs, 2, !dbg !16119
  br i1 %.not.i.i83.i, label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i, label %bb.ao, !dbg !16120

bb.ao:                                            ; preds = %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %i.q, i64 96, !dbg !16121
    #dbg_value(ptr %i.eq, !4672, !DIExpression(), !15433)
    #dbg_value(ptr %i.eq, !4674, !DIExpression(), !15437)
    #dbg_value(ptr %i.eq, !4675, !DIExpression(), !15438)
  call void @llvm.experimental.noalias.scope.decl(metadata !15917), !dbg !16122
    #dbg_value(ptr %i.eq, !4677, !DIExpression(), !15442)
    #dbg_value(i64 1, !4679, !DIExpression(), !15445)
    #dbg_value(i8 0, !4681, !DIExpression(), !15445)
    #dbg_value(i64 1, !4686, !DIExpression(), !15447)
    #dbg_value(i8 0, !4688, !DIExpression(), !15447)
    #dbg_value(ptr %i.eq, !4683, !DIExpression(), !15448)
    #dbg_value(ptr %i.eq, !4690, !DIExpression(), !15450)
  %i.er = load ptr, ptr %i.eq, align 16, !dbg !16123, !alias.scope !15918, !noalias !15876, !nonnull !1213, !noundef !1213 ; 2 uses
    #dbg_value(ptr %i.er, !4680, !DIExpression(), !15452)
    #dbg_value(ptr %i.er, !4687, !DIExpression(), !15447)
  %i.es = atomicrmw add ptr %i.er, i64 1 monotonic, align 8, !dbg !16124, !noalias !15919
    #dbg_value(i64 %i.es, !4684, !DIExpression(), !15455)
  %i.et = icmp slt i64 %i.es, 0, !dbg !16125
  br i1 %i.et, label %bb.ap, label %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i84.i, !dbg !16125

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.trap(), !dbg !16126
  unreachable, !dbg !16126

_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i84.i: ; preds = %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 104, !dbg !16123
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !16127, !alias.scope !15918, !noalias !15876, !nonnull !1213, !align !4692, !noundef !1213
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 112, !dbg !16128
  %i.ex = load i64, ptr %i.ew, align 16, !dbg !16128, !alias.scope !15918, !noalias !15876, !noundef !1213
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i, !dbg !16129

_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i: ; preds = %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i84.i, %bb.an, %bb.am
  %.sroa.534.0.i87.i = phi i64 [ %i.ex, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i84.i ], [ undef, %bb.an ], [ undef, %bb.am ], !dbg !16130
  %.sroa.4.037.i88.i = phi ptr [ %i.ev, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i84.i ], [ undef, %bb.an ], [ undef, %bb.am ], !dbg !16130
  %.sroa.0.036.i89.i = phi ptr [ %i.er, %_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i84.i ], [ undef, %bb.an ], [ undef, %bb.am ], !dbg !16130
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 129, DW_OP_stack_value), !15457)
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value), !15459)
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 131, DW_OP_stack_value), !15461)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i81.i), !dbg !16131
    #dbg_value(ptr %i.q, !4707, !DIExpression(), !15463)
  br i1 %i.ci, label %bb.aq, label %bb.as, !dbg !16132

bb.aq:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i
    #dbg_value(ptr %i.q, !4710, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15464)
    #dbg_value(ptr %i.q, !4714, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15466)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !16133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i81.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ey, i64 32, i1 false), !dbg !16133, !noalias !15920
  br label %bb.as, !dbg !16134

bb.ar:                                            ; preds = %bb.av, %bb.at, %bb.as
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_(ptr noalias nofree noundef align 16 dereferenceable(592) %i.g) #25
          to label %.thread.i unwind label %bb.br, !dbg !16135, !noalias !15876

bb.as:                                            ; preds = %bb.aq, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i
  %.sroa.04.0.i90.i = phi i128 [ 1, %bb.aq ], [ 0, %_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterENtNtB7_5clone5Clone5cloneBQ_.exit.i85.i ], !dbg !16136
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 132, DW_OP_stack_value), !15468)
    #dbg_value(ptr %i.q, !4721, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15470)
    #dbg_value(ptr %i.q, !4695, !DIExpression(DW_OP_plus_uconst, 133, DW_OP_stack_value), !15472)
    #dbg_value(ptr %i.q, !4726, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15474)
    #dbg_value(ptr %i.q, !4726, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !15476)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 128, !dbg !16137
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 96, !dbg !16137
  store ptr %.sroa.0.036.i89.i, ptr %i.fb, align 16, !dbg !16137, !alias.scope !15914, !noalias !15876
  %.sroa.4.0..sroa_idx33.i96.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104, !dbg !16137
  store ptr %.sroa.4.037.i88.i, ptr %.sroa.4.0..sroa_idx33.i96.i, align 8, !dbg !16137, !alias.scope !15914, !noalias !15876
  %.sroa.534.0..sroa_idx.i97.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !16137
  store i64 %.sroa.534.0.i87.i, ptr %.sroa.534.0..sroa_idx.i97.i, align 16, !dbg !16137, !alias.scope !15914, !noalias !15876
  %.sroa.6.0..sroa_idx35.i98.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120, !dbg !16137
  store i8 %i.bs, ptr %.sroa.6.0..sroa_idx35.i98.i, align 8, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 129, !dbg !16137
  store i8 %i.cc, ptr %i.fc, align 1, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 130, !dbg !16137
  store i8 %i.ce, ptr %i.fd, align 2, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 131, !dbg !16137
  store i8 %i.cg, ptr %i.fe, align 1, !dbg !16137, !alias.scope !15914, !noalias !15876
  store i128 %.sroa.04.0.i90.i, ptr %i.e, align 16, !dbg !16137, !alias.scope !15914, !noalias !15876
  %.sroa.5.0..sroa_idx.i99.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !16137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i99.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i81.i, i64 32, i1 false), !dbg !16137, !noalias !15921
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 132, !dbg !16137
  store i8 %i.cm, ptr %i.ff, align 4, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !16137
  store i64 %i.co, ptr %i.fg, align 16, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !16137
  store i64 %.sroa.57.0.i.i, ptr %i.fh, align 8, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 133, !dbg !16137
  store i8 %i.cs, ptr %i.fi, align 1, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !16137
  store i64 %i.cu, ptr %i.fj, align 16, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !16137
  store i64 %.sroa.510.0.i.i, ptr %i.fk, align 8, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 80, !dbg !16137
  store i64 %i.cz, ptr %i.fl, align 16, !dbg !16137, !alias.scope !15914, !noalias !15876
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 88, !dbg !16137
  store i64 %.sroa.512.0.i.i, ptr %i.fm, align 8, !dbg !16137, !alias.scope !15914, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i81.i), !dbg !16138
  store i8 0, ptr %i.fa, align 16, !dbg !16139, !noalias !15876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16140, !noalias !15876
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !16140
  store i8 2, ptr %i.fn, align 8, !dbg !16140, !noalias !15876
  invoke void @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_6Config9prefilter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(144) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.at unwind label %bb.ar, !dbg !16141, !noalias !15876

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16142, !noalias !15876
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 132, !dbg !16143
  store i8 0, ptr %i.fo, align 4, !dbg !16143, !noalias !15876
  %i.fp = invoke noundef nonnull align 16 ptr @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder9configure(ptr noalias nofree noundef nonnull align 16 dereferenceable(592) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(144) %i.f)
          to label %bb.au unwind label %bb.ar, !dbg !16144, !noalias !15876

bb.au:                                            ; preds = %bb.at
    #dbg_value(ptr poison, !15868, !DIExpression(), !15477)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
    #dbg_value(ptr %.val4, !15844, !DIExpression(), !15478)
    #dbg_value(ptr %.val4, !15856, !DIExpression(), !15247)
  %i.fq = atomicrmw add ptr %.val4, i64 1 monotonic, align 8, !dbg !16145, !noalias !15876
    #dbg_value(i64 %i.fq, !15870, !DIExpression(), !15479)
  %i.fr = icmp slt i64 %i.fq, 0, !dbg !16146
  br i1 %i.fr, label %bb.aw, label %bb.av, !dbg !16146

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_7Builder14build_from_nfa(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %i.h, ptr noundef nonnull align 16 %i.fp, ptr noundef nonnull %.val4)
          to label %bb.ax unwind label %bb.ar, !dbg !16147, !noalias !15876

bb.aw:                                            ; preds = %bb.au
  call void @llvm.trap(), !dbg !16148
  unreachable, !dbg !16148

bb.ax:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !15922), !dbg !16135
    #dbg_value(ptr %i.g, !3184, !DIExpression(), !15483)
  call void @llvm.experimental.noalias.scope.decl(metadata !15923), !dbg !16149
    #dbg_value(ptr %i.g, !3044, !DIExpression(), !15487)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !16150 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15924), !dbg !16150
    #dbg_value(ptr %i.fs, !2507, !DIExpression(), !15491)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !16151
  %i.fu = load i8, ptr %i.ft, align 8, !dbg !16151, !range !2511, !alias.scope !15925, !noalias !15876, !noundef !1213 ; 2 uses
  %i.fv = icmp eq i8 %i.fu, -1, !dbg !16151
  br i1 %i.fv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i, label %bb.ay, !dbg !16151

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !15926), !dbg !16151
    #dbg_value(ptr %i.fs, !2513, !DIExpression(), !15495)
  %i.fw = icmp eq i8 %i.fu, 2, !dbg !16152
  br i1 %i.fw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i, label %bb.az, !dbg !16152

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !15927), !dbg !16152
    #dbg_value(ptr %i.fs, !2518, !DIExpression(), !15499)
  call void @llvm.experimental.noalias.scope.decl(metadata !15928), !dbg !16153
    #dbg_value(ptr %i.fs, !2523, !DIExpression(), !15503)
  call void @llvm.experimental.noalias.scope.decl(metadata !15929), !dbg !16154
    #dbg_value(ptr %i.fs, !2529, !DIExpression(), !15507)
    #dbg_value(ptr %i.fs, !2532, !DIExpression(), !15509)
    #dbg_value(i64 1, !2542, !DIExpression(), !15511)
    #dbg_value(i8 1, !2548, !DIExpression(), !15511)
    #dbg_value(i64 1, !2550, !DIExpression(), !15513)
    #dbg_value(i8 1, !2555, !DIExpression(), !15513)
  %i.fx = load ptr, ptr %i.fs, align 16, !dbg !16155, !alias.scope !15930, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.fx, !2547, !DIExpression(), !15515)
    #dbg_value(ptr %i.fx, !2554, !DIExpression(), !15513)
  %i.fy = atomicrmw add ptr %i.fx, i64 -1 release, align 8, !dbg !16156, !noalias !15931
  %i.fz = icmp eq i64 %i.fy, 1, !dbg !16157
  br i1 %i.fz, label %bb.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i, !dbg !16157

bb.ba:                                            ; preds = %bb.az
    #dbg_value(i8 2, !2564, !DIExpression(), !15517)
  fence acquire, !dbg !16158
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.fs) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i unwind label %bb.bb, !dbg !16159, !noalias !15876

bb.bb:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !16149
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.gb) #25
          to label %.body103.i unwind label %bb.bc, !dbg !16149, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !16149
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.gc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit105.i unwind label %bb.bd, !dbg !16149, !noalias !15876

bb.bc:                                            ; preds = %bb.bb
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !16149, !noalias !15876
  unreachable, !dbg !16149

.body103.i:                                       ; preds = %bb.bs, %.body109.i, %bb.bd, %bb.bb
  %.pn67.i = phi { ptr, i32 } [ %i.ga, %bb.bb ], [ %i.hj, %bb.bs ], [ %i.gf, %bb.bd ], [ %eh.lpad-body110.i, %.body109.i ] ; 2 uses
  %.sroa.07.1.i = phi i1 [ true, %bb.bb ], [ true, %bb.bs ], [ true, %bb.bd ], [ false, %.body109.i ], !dbg !16160
  %.sroa.06.0.i = phi i1 [ true, %bb.bb ], [ true, %bb.bs ], [ %.sroa.06.1.i, %bb.bd ], [ true, %.body109.i ], !dbg !16161
  %.sroa.05.0.i = phi i1 [ true, %bb.bb ], [ false, %bb.bs ], [ true, %bb.bd ], [ false, %.body109.i ], !dbg !16161
  %i.ge = load i128, ptr %i.h, align 16, !dbg !16162, !range !4661, !noalias !15876, !noundef !1213
  %.not69.i = icmp eq i128 %i.ge, 2, !dbg !16162
  br i1 %.not69.i, label %bb.ce, label %bb.cd, !dbg !16162

bb.bd:                                            ; preds = %bb.bf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i
  %.sroa.06.1.i = phi i1 [ false, %bb.bf ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i ], !dbg !16161
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body103.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit105.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16135, !noalias !15876
  %i.gg = load i128, ptr %i.h, align 16, !dbg !16163, !range !4661, !noalias !15876, !noundef !1213
  %i.gh = icmp eq i128 %i.gg, 2, !dbg !16163
  br i1 %i.gh, label %bb.be, label %bb.bg, !dbg !16164

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16165, !noalias !15876
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.gi, i64 128, i1 false), !dbg !16165, !noalias !15876
    #dbg_value(ptr %i.c, !4790, !DIExpression(), !15519)
    #dbg_value(ptr %i.c, !4797, !DIExpression(), !15521)
  %i.gj = load i64, ptr %i.c, align 8, !dbg !16166, !range !4803, !alias.scope !15932, !noalias !15876, !noundef !1213
  %i.gk = add i64 %i.gj, 9223372036854775798, !dbg !16166
  %i.gl = icmp ult i64 %i.gk, -3, !dbg !16166
  br i1 %i.gl, label %bb.bf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit107.i, !dbg !16166

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit107.i unwind label %bb.bd, !dbg !16166, !noalias !15876

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16167, !noalias !15876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16168, !noalias !15876
  invoke void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB2_3DFA7builder(ptr noalias nofree noundef nonnull sret([592 x i8]) align 16 captures(address) dereferenceable(592) %i.a)
          to label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB5_7Builder3new.exit.i unwind label %bb.bs, !dbg !16169, !noalias !15876

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB5_7Builder3new.exit.i: ; preds = %bb.bg
    #dbg_value(ptr %i.a, !15827, !DIExpression(), !15527)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.b, ptr noundef nonnull align 16 dereferenceable(720) %i.j, i64 720, i1 false), !dbg !16170, !noalias !15876
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 720, !dbg !16171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %i.gm, ptr noundef nonnull align 16 dereferenceable(720) %i.h, i64 720, i1 false), !dbg !16172, !noalias !15876
  call void @llvm.experimental.noalias.scope.decl(metadata !15933), !dbg !16173
    #dbg_value(ptr %i.a, !3196, !DIExpression(), !15531)
  call void @llvm.experimental.noalias.scope.decl(metadata !15934), !dbg !16174
    #dbg_value(ptr %i.a, !3184, !DIExpression(), !15535)
  call void @llvm.experimental.noalias.scope.decl(metadata !15935), !dbg !16175
    #dbg_value(ptr %i.a, !3044, !DIExpression(), !15539)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !16176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15936), !dbg !16176
    #dbg_value(ptr %i.gn, !2507, !DIExpression(), !15543)
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !16177
  %i.gp = load i8, ptr %i.go, align 8, !dbg !16177, !range !2511, !alias.scope !15937, !noalias !15876, !noundef !1213 ; 2 uses
  %i.gq = icmp eq i8 %i.gp, -1, !dbg !16177
  br i1 %i.gq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i, label %bb.bh, !dbg !16177

bb.bh:                                            ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB5_7Builder3new.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15938), !dbg !16177
    #dbg_value(ptr %i.gn, !2513, !DIExpression(), !15547)
  %i.gr = icmp eq i8 %i.gp, 2, !dbg !16178
  br i1 %i.gr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i, label %bb.bi, !dbg !16178

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !15939), !dbg !16178
    #dbg_value(ptr %i.gn, !2518, !DIExpression(), !15551)
  call void @llvm.experimental.noalias.scope.decl(metadata !15940), !dbg !16179
    #dbg_value(ptr %i.gn, !2523, !DIExpression(), !15555)
  call void @llvm.experimental.noalias.scope.decl(metadata !15941), !dbg !16180
    #dbg_value(ptr %i.gn, !2529, !DIExpression(), !15559)
    #dbg_value(ptr %i.gn, !2532, !DIExpression(), !15561)
    #dbg_value(i64 1, !2542, !DIExpression(), !15563)
    #dbg_value(i8 1, !2548, !DIExpression(), !15563)
    #dbg_value(i64 1, !2550, !DIExpression(), !15565)
    #dbg_value(i8 1, !2555, !DIExpression(), !15565)
  %i.gs = load ptr, ptr %i.gn, align 16, !dbg !16181, !alias.scope !15942, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.gs, !2547, !DIExpression(), !15567)
    #dbg_value(ptr %i.gs, !2554, !DIExpression(), !15565)
  %i.gt = atomicrmw add ptr %i.gs, i64 -1 release, align 8, !dbg !16182, !noalias !15943
  %i.gu = icmp eq i64 %i.gt, 1, !dbg !16183
  br i1 %i.gu, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i, !dbg !16183

bb.bj:                                            ; preds = %bb.bi
    #dbg_value(i8 2, !2564, !DIExpression(), !15569)
  fence acquire, !dbg !16184
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.gn) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i unwind label %bb.bk, !dbg !16185, !noalias !15876

bb.bk:                                            ; preds = %bb.bj
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !16175
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.gw) #25
          to label %.body109.i unwind label %bb.bl, !dbg !16175, !noalias !15876

bb.bl:                                            ; preds = %bb.bk
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !16175, !noalias !15876
  unreachable, !dbg !16175

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regexNtB5_7Builder3new.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !16175
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.gy)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regex7BuilderEBH_.exit.i unwind label %bb.bm, !dbg !16175, !noalias !15876

bb.bm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body109.i, !dbg !16186

.body109.i:                                       ; preds = %bb.bm, %bb.bk
  %eh.lpad-body110.i = phi { ptr, i32 } [ %i.gz, %bb.bm ], [ %i.gv, %bb.bk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regex5RegexEBH_(ptr noalias nofree noundef align 16 dereferenceable(1440) %i.b) #25
          to label %.body103.i unwind label %bb.br, !dbg !16186, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regex7BuilderEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa7BuilderEBH_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16173, !noalias !15876
  %.sroa.0.0.copyload5 = load i128, ptr %i.b, align 16, !dbg !16187, !noalias !15775 ; 3 uses
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1424) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(1424) %.sroa.7.0..sroa_idx6, i64 1424, i1 false), !dbg !16187, !noalias !15775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16186, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16162, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16115, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16106, !noalias !15876
  call void @llvm.experimental.noalias.scope.decl(metadata !15944), !dbg !16050
    #dbg_value(ptr %i.q, !3044, !DIExpression(), !15573)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 96, !dbg !16188 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15945), !dbg !16188
    #dbg_value(ptr %i.ha, !2507, !DIExpression(), !15577)
  br i1 %.not18.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i, label %bb.bn, !dbg !16189

bb.bn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regex7BuilderEBH_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15946), !dbg !16189
    #dbg_value(ptr %i.ha, !2513, !DIExpression(), !15581)
  %i.hb = icmp eq i8 %i.bs, 2, !dbg !16190
  br i1 %i.hb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i, label %bb.bo, !dbg !16190

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !15947), !dbg !16190
    #dbg_value(ptr %i.ha, !2518, !DIExpression(), !15585)
  call void @llvm.experimental.noalias.scope.decl(metadata !15948), !dbg !16191
    #dbg_value(ptr %i.ha, !2523, !DIExpression(), !15589)
  call void @llvm.experimental.noalias.scope.decl(metadata !15949), !dbg !16192
    #dbg_value(ptr %i.ha, !2529, !DIExpression(), !15593)
    #dbg_value(ptr %i.ha, !2532, !DIExpression(), !15595)
    #dbg_value(i64 1, !2542, !DIExpression(), !15597)
    #dbg_value(i8 1, !2548, !DIExpression(), !15597)
    #dbg_value(i64 1, !2550, !DIExpression(), !15599)
    #dbg_value(i8 1, !2555, !DIExpression(), !15599)
  %i.hc = load ptr, ptr %i.ha, align 16, !dbg !16193, !alias.scope !15950, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.hc, !2547, !DIExpression(), !15601)
    #dbg_value(ptr %i.hc, !2554, !DIExpression(), !15599)
  %i.hd = atomicrmw add ptr %i.hc, i64 -1 release, align 8, !dbg !16194, !noalias !15951
  %i.he = icmp eq i64 %i.hd, 1, !dbg !16195
  br i1 %i.he, label %bb.bp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i, !dbg !16195

bb.bp:                                            ; preds = %bb.bo
    #dbg_value(i8 2, !2564, !DIExpression(), !15603)
  fence acquire, !dbg !16196
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ha) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i unwind label %bb.m, !dbg !16197, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regex7BuilderEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16050, !noalias !15876
  call void @llvm.experimental.noalias.scope.decl(metadata !15952), !dbg !16005
    #dbg_value(ptr %2, !2513, !DIExpression(), !15607)
  br i1 %.not64.i, label %bb.bq, label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine3new.exit, !dbg !16198

bb.bq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15953), !dbg !16198
    #dbg_value(ptr %2, !2518, !DIExpression(), !15611)
  call void @llvm.experimental.noalias.scope.decl(metadata !15954), !dbg !16199
    #dbg_value(ptr %2, !2523, !DIExpression(), !15615)
  call void @llvm.experimental.noalias.scope.decl(metadata !15955), !dbg !16200
    #dbg_value(ptr %2, !2529, !DIExpression(), !15619)
    #dbg_value(ptr %2, !2532, !DIExpression(), !15621)
    #dbg_value(i64 1, !2542, !DIExpression(), !15623)
    #dbg_value(i8 1, !2548, !DIExpression(), !15623)
    #dbg_value(i64 1, !2550, !DIExpression(), !15625)
    #dbg_value(i8 1, !2555, !DIExpression(), !15625)
  %i.hf = load ptr, ptr %2, align 8, !dbg !16201, !alias.scope !15956, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.hf, !2547, !DIExpression(), !15627)
    #dbg_value(ptr %i.hf, !2554, !DIExpression(), !15625)
  %i.hg = atomicrmw add ptr %i.hf, i64 -1 release, align 8, !dbg !16202, !noalias !15957
  %i.hh = icmp eq i64 %i.hg, 1, !dbg !16203
  br i1 %i.hh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.sink.split.i, label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine3new.exit, !dbg !16203

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.sink.split.i: ; preds = %bb.bq, %bb.e
  %.sroa.0.0 = phi i128 [ 2, %bb.e ], [ %.sroa.0.0.copyload5, %bb.bq ], !dbg !16204
  fence acquire, !dbg !16205
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %2) #26, !dbg !16206, !noalias !15894
  br label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine3new.exit, !dbg !16207

bb.br:                                            ; preds = %bb.ck, %.thread21.i, %.thread.i, %bb.ch, %bb.cf, %bb.bs, %.body109.i, %bb.ar, %bb.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i, %bb.l
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !16208, !noalias !15876
  unreachable, !dbg !16208

bb.bs:                                            ; preds = %bb.bg
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(720) %i.h) #25
          to label %.body103.i unwind label %bb.br, !dbg !16209, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit107.i: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16210, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16162, !noalias !15876
  call void @llvm.experimental.noalias.scope.decl(metadata !15958), !dbg !16115
    #dbg_value(ptr %i.j, !3039, !DIExpression(), !15636)
  call void @llvm.experimental.noalias.scope.decl(metadata !15959), !dbg !16211
    #dbg_value(ptr %i.j, !3044, !DIExpression(), !15640)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !16212 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15960), !dbg !16212
    #dbg_value(ptr %i.hk, !2507, !DIExpression(), !15644)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.j, i64 120, !dbg !16213
  %i.hm = load i8, ptr %i.hl, align 8, !dbg !16213, !range !2511, !alias.scope !15961, !noalias !15876, !noundef !1213 ; 2 uses
  %i.hn = icmp eq i8 %i.hm, -1, !dbg !16213
  br i1 %i.hn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i, label %bb.bt, !dbg !16213

bb.bt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit107.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15962), !dbg !16213
    #dbg_value(ptr %i.hk, !2513, !DIExpression(), !15648)
  %i.ho = icmp eq i8 %i.hm, 2, !dbg !16214
  br i1 %i.ho, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i, label %bb.bu, !dbg !16214

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !15963), !dbg !16214
    #dbg_value(ptr %i.hk, !2518, !DIExpression(), !15652)
  call void @llvm.experimental.noalias.scope.decl(metadata !15964), !dbg !16215
    #dbg_value(ptr %i.hk, !2523, !DIExpression(), !15656)
  call void @llvm.experimental.noalias.scope.decl(metadata !15965), !dbg !16216
    #dbg_value(ptr %i.hk, !2529, !DIExpression(), !15660)
    #dbg_value(ptr %i.hk, !2532, !DIExpression(), !15662)
    #dbg_value(i64 1, !2542, !DIExpression(), !15664)
    #dbg_value(i8 1, !2548, !DIExpression(), !15664)
    #dbg_value(i64 1, !2550, !DIExpression(), !15666)
    #dbg_value(i8 1, !2555, !DIExpression(), !15666)
  %i.hp = load ptr, ptr %i.hk, align 16, !dbg !16217, !alias.scope !15966, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.hp, !2547, !DIExpression(), !15668)
    #dbg_value(ptr %i.hp, !2554, !DIExpression(), !15666)
  %i.hq = atomicrmw add ptr %i.hp, i64 -1 release, align 8, !dbg !16218, !noalias !15967
  %i.hr = icmp eq i64 %i.hq, 1, !dbg !16219
  br i1 %i.hr, label %bb.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i, !dbg !16219

bb.bv:                                            ; preds = %bb.bu
    #dbg_value(i8 2, !2564, !DIExpression(), !15670)
  fence acquire, !dbg !16220
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.hk) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i unwind label %bb.bw, !dbg !16221, !noalias !15876

bb.bw:                                            ; preds = %bb.bv
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 688, !dbg !16211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15968), !dbg !16211
    #dbg_value(ptr %i.ht, !2980, !DIExpression(), !15674)
  call void @llvm.experimental.noalias.scope.decl(metadata !15969), !dbg !16222
    #dbg_value(ptr %i.ht, !2987, !DIExpression(), !15678)
  call void @llvm.experimental.noalias.scope.decl(metadata !15970), !dbg !16223
    #dbg_value(ptr %i.ht, !2993, !DIExpression(), !15682)
    #dbg_value(ptr %i.ht, !2995, !DIExpression(), !15684)
    #dbg_value(i64 1, !3002, !DIExpression(), !15686)
    #dbg_value(i8 1, !3004, !DIExpression(), !15686)
    #dbg_value(i64 1, !3006, !DIExpression(), !15688)
    #dbg_value(i8 1, !3008, !DIExpression(), !15688)
  %i.hu = load ptr, ptr %i.ht, align 16, !dbg !16224, !alias.scope !15971, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.hu, !3003, !DIExpression(), !15690)
    #dbg_value(ptr %i.hu, !3007, !DIExpression(), !15688)
  %i.hv = atomicrmw add ptr %i.hu, i64 -1 release, align 8, !dbg !16225, !noalias !15972
  %i.hw = icmp eq i64 %i.hv, 1, !dbg !16226
  br i1 %i.hw, label %bb.bx, label %.body.i, !dbg !16226

bb.bx:                                            ; preds = %bb.bw
    #dbg_value(i8 2, !2564, !DIExpression(), !15692)
  fence acquire, !dbg !16227
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ht) #26
          to label %.body.i unwind label %bb.bz, !dbg !16228, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i: ; preds = %bb.bv, %bb.bu, %bb.bt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit107.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 688, !dbg !16211 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15973), !dbg !16211
    #dbg_value(ptr %i.hx, !2980, !DIExpression(), !15696)
  call void @llvm.experimental.noalias.scope.decl(metadata !15974), !dbg !16229
    #dbg_value(ptr %i.hx, !2987, !DIExpression(), !15700)
  call void @llvm.experimental.noalias.scope.decl(metadata !15975), !dbg !16230
    #dbg_value(ptr %i.hx, !2993, !DIExpression(), !15704)
    #dbg_value(ptr %i.hx, !2995, !DIExpression(), !15706)
    #dbg_value(i64 1, !3002, !DIExpression(), !15708)
    #dbg_value(i8 1, !3004, !DIExpression(), !15708)
    #dbg_value(i64 1, !3006, !DIExpression(), !15710)
    #dbg_value(i8 1, !3008, !DIExpression(), !15710)
  %i.hy = load ptr, ptr %i.hx, align 16, !dbg !16231, !alias.scope !15976, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.hy, !3003, !DIExpression(), !15712)
    #dbg_value(ptr %i.hy, !3007, !DIExpression(), !15710)
  %i.hz = atomicrmw add ptr %i.hy, i64 -1 release, align 8, !dbg !16232, !noalias !15977
  %i.ia = icmp eq i64 %i.hz, 1, !dbg !16233
  br i1 %i.ia, label %bb.by, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_.exit.i, !dbg !16233

bb.by:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i
    #dbg_value(i8 2, !2564, !DIExpression(), !15714)
  fence acquire, !dbg !16234
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.hx) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_.exit.i unwind label %bb.ah, !dbg !16235, !noalias !15876

bb.bz:                                            ; preds = %bb.bx
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !dbg !16211, !noalias !15978
  unreachable, !dbg !16211

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit.i, %bb.by, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16115, !noalias !15876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16106, !noalias !15876
  call void @llvm.experimental.noalias.scope.decl(metadata !15979), !dbg !16050
    #dbg_value(ptr %i.q, !3044, !DIExpression(), !15718)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.q, i64 96, !dbg !16236 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15980), !dbg !16236
    #dbg_value(ptr %i.ic, !2507, !DIExpression(), !15722)
  br i1 %.not18.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit121.i, label %bb.ca, !dbg !16237

bb.ca:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15981), !dbg !16237
    #dbg_value(ptr %i.ic, !2513, !DIExpression(), !15726)
  %i.id = icmp eq i8 %i.bs, 2, !dbg !16238
  br i1 %i.id, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit121.i, label %bb.cb, !dbg !16238

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !15982), !dbg !16238
    #dbg_value(ptr %i.ic, !2518, !DIExpression(), !15730)
  call void @llvm.experimental.noalias.scope.decl(metadata !15983), !dbg !16239
    #dbg_value(ptr %i.ic, !2523, !DIExpression(), !15734)
  call void @llvm.experimental.noalias.scope.decl(metadata !15984), !dbg !16240
    #dbg_value(ptr %i.ic, !2529, !DIExpression(), !15738)
    #dbg_value(ptr %i.ic, !2532, !DIExpression(), !15740)
    #dbg_value(i64 1, !2542, !DIExpression(), !15742)
    #dbg_value(i8 1, !2548, !DIExpression(), !15742)
    #dbg_value(i64 1, !2550, !DIExpression(), !15744)
    #dbg_value(i8 1, !2555, !DIExpression(), !15744)
  %i.ie = load ptr, ptr %i.ic, align 16, !dbg !16241, !alias.scope !15985, !noalias !15876, !nonnull !1213, !noundef !1213
    #dbg_value(ptr %i.ie, !2547, !DIExpression(), !15746)
    #dbg_value(ptr %i.ie, !2554, !DIExpression(), !15744)
  %i.if = atomicrmw add ptr %i.ie, i64 -1 release, align 8, !dbg !16242, !noalias !15986
  %i.ig = icmp eq i64 %i.if, 1, !dbg !16243
  br i1 %i.ig, label %bb.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit121.i, !dbg !16243

bb.cc:                                            ; preds = %bb.cb
    #dbg_value(i8 2, !2564, !DIExpression(), !15748)
  fence acquire, !dbg !16244
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ic) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit121.i unwind label %bb.m, !dbg !16245, !noalias !15876

bb.cd:                                            ; preds = %.body103.i
  br i1 %.sroa.05.0.i, label %bb.cf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a, !dbg !16162

bb.ce:                                            ; preds = %.body103.i
  br i1 %.sroa.06.0.i, label %bb.cg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a, !dbg !16162

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(720) %i.h) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a unwind label %bb.br, !dbg !16162, !noalias !15876

bb.cg:                                            ; preds = %bb.ce
  %i.ih = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16162 ; 2 uses
    #dbg_value(ptr %i.ih, !4790, !DIExpression(), !15750)
    #dbg_value(ptr %i.ih, !4797, !DIExpression(), !15752)
  %i.ii = load i64, ptr %i.ih, align 16, !dbg !16246, !range !4803, !alias.scope !15987, !noalias !15876, !noundef !1213
  %i.ij = add i64 %i.ii, 9223372036854775798, !dbg !16246
  %i.ik = icmp ult i64 %i.ij, -3, !dbg !16246
  br i1 %i.ik, label %bb.ch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a, !dbg !16246

bb.ch:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ih)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a unwind label %bb.br, !dbg !16246, !noalias !15876

.thread.i:                                        ; preds = %bb.ar, %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a
  %.pn67.pn7.i = phi { ptr, i32 } [ %.pn67.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit123.i.a ], [ %i.ep, %bb.al ], [ %i.ez, %bb.ar ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(720) %i.j) #25
          to label %.body.i unwind label %bb.br, !dbg !16115, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16247, !noalias !15876
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_.exit.i, !dbg !16248

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit121.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !16050, !noalias !15876
  br label %bb.d, !dbg !16004

bb.ci:                                            ; preds = %.body.i
  br i1 %.sroa.08.0.i, label %.thread21.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i, !dbg !16106

bb.cj:                                            ; preds = %.body.i
  br i1 %.sroa.09.0.i, label %.thread25.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i, !dbg !16106

.thread21.i:                                      ; preds = %bb.ci, %.body.thread.i
  %.pn711724.i = phi { ptr, i32 } [ %.pn71.i, %bb.ci ], [ %i.ec, %.body.thread.i ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa3DFAEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(720) %i.m) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i unwind label %bb.br, !dbg !16106, !noalias !15876

.thread25.i:                                      ; preds = %bb.cj, %.body.thread.i
  %.pn711828.i = phi { ptr, i32 } [ %.pn71.i, %bb.cj ], [ %i.ec, %.body.thread.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !16106 ; 2 uses
    #dbg_value(ptr %i.il, !4790, !DIExpression(), !15758)
    #dbg_value(ptr %i.il, !4797, !DIExpression(), !15760)
  %i.im = load i64, ptr %i.il, align 16, !dbg !16249, !range !4803, !alias.scope !15989, !noalias !15876, !noundef !1213
  %i.in = add i64 %i.im, 9223372036854775798, !dbg !16249
  %i.io = icmp ult i64 %i.in, -3, !dbg !16249
  br i1 %i.io, label %bb.ck, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i, !dbg !16249

bb.ck:                                            ; preds = %.thread25.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.il)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5error10BuildErrorEBH_.exit125.i unwind label %bb.br, !dbg !16249, !noalias !15876

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit78.i: ; preds = %bb.l, %bb.k, %bb.j
  resume { ptr, i32 } %.pn75.i, !dbg !16208

_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine3new.exit: ; preds = %bb.d, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i, %bb.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.sink.split.i
  %.sroa.0.3 = phi i128 [ 2, %bb.d ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.sink.split.i ], [ 2, %bb.e ], [ %.sroa.0.0.copyload5, %bb.bq ], [ %.sroa.0.0.copyload5, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa6ConfigEBH_.exit.i ], !dbg !16204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16207
  store i128 %.sroa.0.3, ptr %0, align 16, !dbg !16250
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1424) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(1424) %.sroa.7, i64 1424, i1 false), !dbg !16250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !16251
  ret void, !dbg !16252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RNvMs9_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_11HybridCache12memory_usage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(704) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !16253 {
bb.a:
    #dbg_value(ptr %0, !16365, !DIExpression(), !16367)
    #dbg_value(ptr %0, !16369, !DIExpression(), !16385)
  %i.a = load i64, ptr %0, align 8, !dbg !16404, !range !4496, !noundef !1213
  %.not = icmp eq i64 %i.a, 2, !dbg !16404
    #dbg_value(ptr poison, !16386, !DIExpression(), !16264)
    #dbg_value(i64 0, !16393, !DIExpression(), !16264)
    #dbg_declare(ptr poison, !16394, !DIExpression(), !16265)
  br i1 %.not, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5regex5CacheE6map_orjNCNvMs9_NtNtBP_4meta8wrappersNtB1T_11HybridCache12memory_usage0EBP_.exit, label %bb.b, !dbg !16405

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !16395, !DIExpression(), !16266)
    #dbg_declare(ptr poison, !16397, !DIExpression(), !16269)
    #dbg_value(ptr poison, !16400, !DIExpression(), !16270)
    #dbg_value(ptr poison, !4501, !DIExpression(), !16272)
    #dbg_value(ptr poison, !4504, !DIExpression(), !16274)
    #dbg_value(i64 4, !4509, !DIExpression(), !16278)
    #dbg_value(i64 1, !4509, !DIExpression(), !16283)
    #dbg_value(ptr poison, !4538, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16285)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16406
  %i.c = load i64, ptr %i.b, align 8, !dbg !16406, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952, !dbg !16407
  tail call void @llvm.assume(i1 %i.d), !dbg !16408
    #dbg_value(ptr poison, !4538, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16295)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !16409
  %i.f = load i64, ptr %i.e, align 8, !dbg !16409, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.g = icmp ult i64 %i.f, 2305843009213693952, !dbg !16410
  tail call void @llvm.assume(i1 %i.g), !dbg !16411
    #dbg_value(ptr poison, !4545, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16297)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !16412
  %i.i = load i64, ptr %i.h, align 8, !dbg !16412, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.j = icmp ult i64 %i.i, 576460752303423488, !dbg !16413
  tail call void @llvm.assume(i1 %i.j), !dbg !16414
    #dbg_value(ptr poison, !4553, !DIExpression(DW_OP_plus_uconst, 280, DW_OP_stack_value), !16299)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304, !dbg !16415
  %i.l = load i64, ptr %i.k, align 8, !dbg !16415, !alias.scope !16402, !noundef !1213
    #dbg_value(ptr poison, !4569, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !16303)
    #dbg_value(ptr poison, !4574, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !16305)
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !16307)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16416
  %i.n = load i64, ptr %i.m, align 8, !dbg !16416, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.o = icmp ult i64 %i.n, 2305843009213693952, !dbg !16417
  tail call void @llvm.assume(i1 %i.o), !dbg !16418
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !16309)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !16419
  %i.q = load i64, ptr %i.p, align 8, !dbg !16419, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.r = icmp ult i64 %i.q, 2305843009213693952, !dbg !16420
  tail call void @llvm.assume(i1 %i.r), !dbg !16421
    #dbg_value(ptr poison, !4574, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !16311)
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !16313)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !16422
  %i.t = load i64, ptr %i.s, align 8, !dbg !16422, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952, !dbg !16423
  tail call void @llvm.assume(i1 %i.u), !dbg !16424
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !16315)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !16425
  %i.w = load i64, ptr %i.v, align 8, !dbg !16425, !alias.scope !16402, !noundef !1213 ; 2 uses
  %i.x = icmp ult i64 %i.w, 2305843009213693952, !dbg !16426
  tail call void @llvm.assume(i1 %i.x), !dbg !16427
    #dbg_value(ptr poison, !4515, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !16316)
    #dbg_value(ptr poison, !4512, !DIExpression(DW_OP_plus_uconst, 208, DW_OP_stack_value), !16317)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !16428
  %i.z = load i64, ptr %i.y, align 8, !dbg !16428, !range !2896, !alias.scope !16402, !noundef !1213
    #dbg_value(ptr poison, !4535, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !16318)
    #dbg_value(ptr poison, !4529, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !16319)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !16429
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !16429, !range !2896, !alias.scope !16402, !noundef !1213
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !16430
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !16430, !alias.scope !16402, !noundef !1213
    #dbg_value(ptr poison, !4504, !DIExpression(DW_OP_plus_uconst, 352, DW_OP_stack_value), !16321)
    #dbg_value(i64 4, !4509, !DIExpression(), !16325)
    #dbg_value(i64 1, !4509, !DIExpression(), !16330)
    #dbg_value(ptr poison, !4538, !DIExpression(DW_OP_plus_uconst, 376, DW_OP_stack_value), !16332)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !16431
  %i.af = load i64, ptr %i.ae, align 8, !dbg !16431, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 2305843009213693952, !dbg !16432
  tail call void @llvm.assume(i1 %i.ag), !dbg !16433
    #dbg_value(ptr poison, !4538, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !16336)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !16434
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !16434, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952, !dbg !16435
  tail call void @llvm.assume(i1 %i.aj), !dbg !16436
    #dbg_value(ptr poison, !4545, !DIExpression(DW_OP_plus_uconst, 424, DW_OP_stack_value), !16338)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !16437
  %i.al = load i64, ptr %i.ak, align 8, !dbg !16437, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.am = icmp ult i64 %i.al, 576460752303423488, !dbg !16438
  tail call void @llvm.assume(i1 %i.am), !dbg !16439
    #dbg_value(ptr poison, !4553, !DIExpression(DW_OP_plus_uconst, 632, DW_OP_stack_value), !16340)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !16440
  %i.ao = load i64, ptr %i.an, align 8, !dbg !16440, !alias.scope !16403, !noundef !1213
    #dbg_value(ptr poison, !4569, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !16344)
    #dbg_value(ptr poison, !4574, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !16346)
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 448, DW_OP_stack_value), !16348)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464, !dbg !16441
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !16441, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 2305843009213693952, !dbg !16442
  tail call void @llvm.assume(i1 %i.ar), !dbg !16443
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 472, DW_OP_stack_value), !16350)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 488, !dbg !16444
  %i.at = load i64, ptr %i.as, align 8, !dbg !16444, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.au = icmp ult i64 %i.at, 2305843009213693952, !dbg !16445
  tail call void @llvm.assume(i1 %i.au), !dbg !16446
    #dbg_value(ptr poison, !4574, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !16352)
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 504, DW_OP_stack_value), !16354)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !16447
  %i.aw = load i64, ptr %i.av, align 8, !dbg !16447, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 2305843009213693952, !dbg !16448
  tail call void @llvm.assume(i1 %i.ax), !dbg !16449
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_plus_uconst, 528, DW_OP_stack_value), !16356)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 544, !dbg !16450
  %i.az = load i64, ptr %i.ay, align 8, !dbg !16450, !alias.scope !16403, !noundef !1213 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 2305843009213693952, !dbg !16451
  tail call void @llvm.assume(i1 %i.ba), !dbg !16452
    #dbg_value(ptr poison, !4515, !DIExpression(DW_OP_plus_uconst, 560, DW_OP_stack_value), !16357)
    #dbg_value(ptr poison, !4512, !DIExpression(DW_OP_plus_uconst, 560, DW_OP_stack_value), !16358)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560, !dbg !16453
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !16453, !range !2896, !alias.scope !16403, !noundef !1213
    #dbg_value(ptr poison, !4535, !DIExpression(DW_OP_plus_uconst, 584, DW_OP_stack_value), !16359)
    #dbg_value(ptr poison, !4529, !DIExpression(DW_OP_plus_uconst, 584, DW_OP_stack_value), !16360)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !16454
  %i.be = load i64, ptr %i.bd, align 8, !dbg !16454, !range !2896, !alias.scope !16403, !noundef !1213
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 680, !dbg !16455
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !16455, !alias.scope !16403, !noundef !1213
  %i.bh = add nuw nsw i64 %i.f, %i.c, !dbg !16456
  %i.bi = add nuw nsw i64 %i.bh, %i.n, !dbg !16457
  %i.bj = add nuw nsw i64 %i.bi, %i.q, !dbg !16458
  %i.bk = add nuw i64 %i.bj, %i.t, !dbg !16459
  %i.bl = add nuw i64 %i.bk, %i.w, !dbg !16459
  %reass.add.i1.i.i.i = add i64 %i.bl, %i.z, !dbg !16459
  %i.bm = add i64 %reass.add.i1.i.i.i, %i.af, !dbg !16460
  %i.bn = add i64 %i.bm, %i.ai, !dbg !16461
  %i.bo = add i64 %i.bn, %i.aq, !dbg !16462
  %i.bp = add i64 %i.bo, %i.at, !dbg !16463
  %i.bq = add i64 %i.bp, %i.aw, !dbg !16463
  %reass.add.i.i.i.i = add i64 %i.bq, %i.az, !dbg !16463
  %reass.add.i.i.i = add i64 %reass.add.i.i.i.i, %i.bc, !dbg !16464
  %reass.mul.i.i.i = shl i64 %reass.add.i.i.i, 2, !dbg !16464
  %reass.add3.i.i.i = add i64 %i.ao, %i.l, !dbg !16464
  %reass.mul4.i.i.i = mul i64 %reass.add3.i.i.i, 20, !dbg !16464
  %reass.add5.i.i.i = add nuw nsw i64 %i.al, %i.i, !dbg !16464
  %reass.mul6.i.i.i = shl nuw i64 %reass.add5.i.i.i, 4, !dbg !16464
  %i.br = add i64 %i.ad, %i.ab, !dbg !16459
  %i.bs = add i64 %i.br, %reass.mul6.i.i.i, !dbg !16463
  %i.bt = add i64 %i.bs, %reass.mul4.i.i.i, !dbg !16463
  %i.bu = add i64 %i.bt, %i.be, !dbg !16463
  %i.bv = add i64 %i.bu, %i.bg, !dbg !16463
end_hunk_0
