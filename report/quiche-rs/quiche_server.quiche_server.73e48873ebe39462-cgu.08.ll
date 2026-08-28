Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_server.quiche_server.73e48873ebe39462-cgu.08?download=true
begin_hunk_0_@_RINvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCsiGRwBGCeC5s_11quiche_apps6common6ClientNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6retainNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0EB2w_:bb.a
  %i.cq = shufflevector <2 x i64> %i.cp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !4261
  %i.cr = load <2 x i64>, ptr %i.ca, align 8, !dbg !4242, !alias.scope !4215, !noalias !4216
  %i.cs = load <2 x i64>, ptr %i.cb, align 8, !dbg !4243, !alias.scope !4215, !noalias !4216
  %i.ct = load <2 x i64>, ptr %i.cc, align 8, !dbg !4244, !alias.scope !4215, !noalias !4216
  %i.cu = load <2 x i64>, ptr %i.cd, align 8, !dbg !4245, !alias.scope !4215, !noalias !4216
  %i.cv = load <2 x i64>, ptr %i.ce, align 8, !dbg !4246, !alias.scope !4215, !noalias !4216
  %i.cw = call { i64, i32 } @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection24bytes_in_flight_durationCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(15712) %i.bb), !dbg !4262, !noalias !4216 ; 2 uses
  %i.cx = load i64, ptr %i.ck, align 8, !dbg !4260, !alias.scope !4215, !noalias !4216, !noundef !268
  %i.cy = call noundef i64 @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap18tx_buffered_actualCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cj), !dbg !4263, !noalias !4216
  %i.cz = icmp ne i64 %i.cx, %i.cy, !dbg !4260
  %..i.i = zext i1 %i.cz to i8, !dbg !4264
  %i.da = extractvalue { i64, i32 } %i.cw, 1, !dbg !4262
  %i.db = extractvalue { i64, i32 } %i.cw, 0, !dbg !4262
  store <2 x i64> %i.cl, ptr %i.y, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cm, ptr %i.z, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i64 %i.bs, ptr %i.aa, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cn, ptr %i.ab, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.co, ptr %i.ac, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i64 %i.bw, ptr %i.ad, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cq, ptr %i.ae, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i64 %i.bz, ptr %i.af, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cr, ptr %i.ag, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cs, ptr %i.ah, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.ct, ptr %i.ai, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cu, ptr %i.aj, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store <2 x i64> %i.cv, ptr %i.ak, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i64 %i.cg, ptr %i.al, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i64 %i.ci, ptr %i.am, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i64 %i.db, ptr %i.i, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i32 %i.da, ptr %i.an, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
  store i8 %..i.i, ptr %i.ao, align 8, !dbg !4261, !alias.scope !4198, !noalias !4265
    #dbg_value(ptr %i.i, !3641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4266, !noalias !4085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4266, !noalias !4085
    #dbg_value(ptr %i.bb, !4078, !DIExpression(), !4267)
    #dbg_value(ptr %i.bb, !4268, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !4274)
    #dbg_value(ptr %i.bb, !4276, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !4282)
    #dbg_value(ptr %i.bb, !4284, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !4296)
    #dbg_value(ptr %i.bb, !4298, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !4302)
    #dbg_value(ptr %i.bb, !4304, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !4310)
  %i.dc = getelementptr inbounds i8, ptr %i.ay, i64 -2296, !dbg !4313
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !4313, !alias.scope !3844, !noalias !4108, !nonnull !268, !noundef !268 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.ay, i64 -2288, !dbg !4335
  %i.df = load i64, ptr %i.de, align 16, !dbg !4335, !alias.scope !3844, !noalias !4108, !noundef !268
    #dbg_value(i64 %i.df, !4336, !DIExpression(), !4353)
    #dbg_value(i64 %i.df, !4361, !DIExpression(), !4389)
    #dbg_value(ptr %i.dd, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4391)
    #dbg_value(ptr %i.dd, !4344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4392)
    #dbg_value(i64 %i.df, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4391)
    #dbg_value(i64 %i.df, !4344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4392)
    #dbg_value(ptr %i.dd, !4349, !DIExpression(), !4393)
    #dbg_value(ptr %i.dd, !4388, !DIExpression(), !4389)
  %i.dg = getelementptr inbounds nuw [2792 x i8], ptr %i.dd, i64 %i.df, !dbg !4394
    #dbg_value(ptr %i.dd, !4065, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4395)
    #dbg_value(ptr %i.dg, !4065, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4395)
    #dbg_value(i64 0, !4065, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4395)
    #dbg_value(i64 %i.bz, !4065, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4395)
  store ptr %i.dd, ptr %i.g, align 8, !dbg !4396, !noalias !4085
  store ptr %i.dg, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !dbg !4396, !noalias !4085
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !dbg !4396, !noalias !4085
  store i64 %i.bz, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !4396, !noalias !4085
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtCs9Srk37lQfcB_4slab4IterNtB13_4PathENCNvMs1_B15_NtB15_10Connection10path_stats0EE9from_iterCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !dbg !4400, !noalias !4108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4401, !noalias !4085
    #dbg_value(ptr %i.h, !3641, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4402, !noalias !4085
  store ptr %i.j, ptr %i.f, align 8, !dbg !4402, !noalias !4085
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9WTr9tUZcLm_13quiche_server, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !4402, !noalias !4085
  store ptr %i.i, ptr %i.ap, align 8, !dbg !4402, !noalias !4085
  store ptr @_RNvXs4_Cs3f36owOmepS_6quicheNtB5_5StatsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !dbg !4402, !noalias !4085
  store ptr %i.h, ptr %i.aq, align 8, !dbg !4402, !noalias !4085
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !4402, !noalias !4085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4129, !noalias !4085
  store ptr @4, ptr %i.e, align 8, !dbg !4129, !noalias !4085
  store i64 13, ptr %i.ar, align 8, !dbg !4129, !noalias !4085
  store ptr @4, ptr %i.as, align 8, !dbg !4129, !noalias !4085
  store i64 13, ptr %i.at, align 8, !dbg !4129, !noalias !4085
  store ptr @5, ptr %i.au, align 8, !dbg !4129, !noalias !4085
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECs9WTr9tUZcLm_13quiche_server(ptr noundef nonnull @0, ptr noundef nonnull %i.f, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.j unwind label %bb.i, !dbg !4129, !noalias !4108

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECs9WTr9tUZcLm_13quiche_server.exit.i, %bb.f
    #dbg_value(ptr %i.bb, !4403, !DIExpression(), !4409)
  %i.dh = getelementptr inbounds i8, ptr %i.ay, i64 -1288, !dbg !4411
  call void @_RNvMs0_NtCs3f36owOmepS_6quiche3cidNtB5_21ConnectionIdentifiers10scids_iter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.dh), !dbg !4412, !noalias !4108
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !dbg !4413, !noalias !4085
    #dbg_value(ptr %.sroa.0.sroa.0.0.copyload.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4414)
  %.sroa.0.sroa.7.0.copyload.i = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !4413, !noalias !4085
    #dbg_value(ptr %.sroa.0.sroa.7.0.copyload.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4414)
  %.sroa.9.sroa.0.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !4413, !noalias !4085
    #dbg_value(ptr %.sroa.9.sroa.0.0.copyload.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4414)
  %.sroa.9.sroa.5.0.copyload.i = load ptr, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i, align 8, !dbg !4413, !noalias !4085
    #dbg_value(ptr %.sroa.9.sroa.5.0.copyload.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4414)
  br label %bb.m, !dbg !4415

bb.i:                                             ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #11
          to label %common.resume.i unwind label %bb.aa, !dbg !4129, !noalias !4108

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4129, !noalias !4085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4129, !noalias !4085
    #dbg_value(ptr %i.h, !4416, !DIExpression(), !4425)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECs9WTr9tUZcLm_13quiche_server.exit.i unwind label %bb.k, !dbg !4427, !noalias !4108

bb.k:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !4428, !DIExpression(), !4436)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.l, !dbg !4438, !noalias !4108

bb.l:                                             ; preds = %bb.k
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4427, !noalias !4108
  unreachable, !dbg !4427

common.resume.i:                                  ; preds = %bb.y, %.body, %bb.k, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %i.dj, %bb.k ], [ %eh.lpad-body, %.body ], [ %i.di, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !3873

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.j
    #dbg_value(ptr %i.h, !4428, !DIExpression(), !4439)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !4441, !noalias !4108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4129, !noalias !4085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4129, !noalias !4085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !4129, !noalias !4085
  br label %bb.h, !dbg !4129

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i, %bb.h
  %.sroa.0.sroa.7.0.i = phi ptr [ %.sroa.0.sroa.7.0.copyload.i, %bb.h ], [ %.sroa.0.sroa.7.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i ], !dbg !4413 ; 3 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %.sroa.0.sroa.0.0.copyload.i, %bb.h ], [ %i.dn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i ], !dbg !4413 ; 3 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %.sroa.9.sroa.5.0.copyload.i, %bb.h ], [ %.sroa.9.sroa.5.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i ], !dbg !4413 ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %.sroa.9.sroa.0.0.copyload.i, %bb.h ], [ %.sroa.9.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i ], !dbg !4413 ; 3 uses
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4414)
    #dbg_value(ptr %.sroa.9.sroa.5.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4414)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4414)
    #dbg_value(ptr %.sroa.0.sroa.7.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4414)
    #dbg_value(ptr undef, !3618, !DIExpression(), !3765)
    #dbg_value(ptr undef, !3581, !DIExpression(), !3764)
    #dbg_value(i64 1, !4442, !DIExpression(), !4450)
    #dbg_value(i64 1, !4442, !DIExpression(), !4452)
    #dbg_value(ptr undef, !3521, !DIExpression(), !3762)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3555, !DIExpression(), !4455)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !4449, !DIExpression(), !4450)
    #dbg_value(ptr %.sroa.0.sroa.7.0.i, !3557, !DIExpression(), !4456)
    #dbg_value(ptr poison, !4457, !DIExpression(), !4465)
    #dbg_value(ptr poison, !4464, !DIExpression(), !4467)
  %i.dl = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i, !dbg !4468
  br i1 %i.dl, label %bb.n, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !4469

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4414)
    #dbg_value(ptr %.sroa.9.sroa.5.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4414)
    #dbg_value(ptr %.sroa.0.sroa.0.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4414)
    #dbg_value(ptr %.sroa.0.sroa.7.0.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4414)
    #dbg_value(ptr undef, !3521, !DIExpression(), !3567)
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !3561, !DIExpression(), !4470)
    #dbg_value(ptr %.sroa.9.sroa.0.0.i, !4449, !DIExpression(), !4452)
    #dbg_value(ptr %.sroa.9.sroa.5.0.i, !3563, !DIExpression(), !4471)
    #dbg_value(ptr poison, !4457, !DIExpression(), !4472)
    #dbg_value(ptr poison, !4464, !DIExpression(), !4474)
  %i.dm = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i, !dbg !4475
  br i1 %i.dm, label %_RNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0B3_.exit, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !4476

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.sroa.7.1.i = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.n ], [ %.sroa.0.sroa.7.0.i, %bb.m ], !dbg !4413
  %.sroa.9.sroa.5.1.i = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.n ], [ %.sroa.9.sroa.5.0.i, %bb.m ], !dbg !4413
  %.sroa.9.sroa.0.1.i = phi ptr [ %.sroa.0.sroa.0.0.i, %bb.n ], [ %.sroa.9.sroa.0.0.i, %bb.m ], !dbg !4413
  %.sink16.i.i = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.n ], [ %.sroa.0.sroa.0.0.i, %bb.m ] ; 4 uses
    #dbg_value(ptr %.sroa.9.sroa.0.1.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4414)
    #dbg_value(ptr %.sroa.9.sroa.5.1.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4414)
    #dbg_value(ptr %.sroa.0.sroa.7.1.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4414)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 80, !dbg !4477
    #dbg_value(ptr %.sroa.9.sroa.0.1.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4414)
    #dbg_value(ptr %.sroa.9.sroa.5.1.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4414)
    #dbg_value(ptr %i.dn, !3754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4414)
    #dbg_value(ptr %.sroa.0.sroa.7.1.i, !3754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4414)
    #dbg_value(ptr %.sink16.i.i, !4480, !DIExpression(), !4493)
    #dbg_value(ptr undef, !4490, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4495)
  %.not.i = icmp eq ptr %.sink16.i.i, null, !dbg !4496
  br i1 %.not.i, label %_RNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0B3_.exit, label %bb.o, !dbg !4497

bb.o:                                             ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.i
    #dbg_value(ptr %.sink16.i.i, !3755, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !4498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4499, !noalias !4085
  %i.do = getelementptr i8, ptr %.sink16.i.i, i64 56, !dbg !4500
  %.val.i = load ptr, ptr %i.do, align 8, !dbg !4500, !noalias !4108, !nonnull !268, !noundef !268
  %i.dp = getelementptr i8, ptr %.sink16.i.i, i64 64, !dbg !4500
  %.val63.i = load i64, ptr %i.dp, align 8, !dbg !4500, !noalias !4108, !noundef !268 ; 5 uses
    #dbg_value(ptr poison, !4501, !DIExpression(), !4508)
    #dbg_declare(ptr poison, !4510, !DIExpression(), !4519)
    #dbg_declare(ptr poison, !4527, !DIExpression(), !4537)
    #dbg_declare(ptr poison, !4539, !DIExpression(), !4546)
    #dbg_declare(ptr poison, !4548, !DIExpression(), !4555)
    #dbg_declare(ptr poison, !4557, !DIExpression(), !4593)
    #dbg_value(i64 0, !4595, !DIExpression(), !4604)
    #dbg_value(i64 %.val63.i, !4532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4606)
    #dbg_value(i64 %.val63.i, !4518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4607)
    #dbg_value(i64 %.val63.i, !4525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4608)
    #dbg_value(ptr %.val.i, !4532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4606)
    #dbg_value(ptr %.val.i, !4518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4607)
    #dbg_value(ptr %.val.i, !4525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4608)
    #dbg_value(i64 %.val63.i, !4533, !DIExpression(), !4609)
    #dbg_value(i64 %.val63.i, !4545, !DIExpression(), !4610)
    #dbg_value(i64 %.val63.i, !4554, !DIExpression(), !4611)
    #dbg_value(i64 %.val63.i, !4612, !DIExpression(), !4622)
    #dbg_value(i64 %.val63.i, !4624, !DIExpression(), !4631)
    #dbg_value(i64 %.val63.i, !4572, !DIExpression(), !4633)
    #dbg_value(i64 %.val63.i, !4602, !DIExpression(), !4604)
    #dbg_value(i64 1, !4573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4633)
    #dbg_value(i64 1, !4603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4604)
    #dbg_value(i64 1, !4573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4633)
    #dbg_value(i64 1, !4603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4634, !noalias !4635
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val63.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !4634, !noalias !4638
  %i.dq = load i64, ptr %i.b, align 8, !dbg !4634, !range !4639, !noalias !4635, !noundef !268
  %i.dr = trunc nuw i64 %i.dq to i1, !dbg !4640
  %i.ds = load i64, ptr %i.av, align 8, !dbg !4633, !range !4641, !noalias !4635, !noundef !268 ; 3 uses
  br i1 %i.dr, label %bb.p, label %bb.q, !dbg !4640, !prof !4642

bb.p:                                             ; preds = %bb.o
  %i.dt = load i64, ptr %i.aw, align 8, !dbg !4643, !noalias !4635
    #dbg_value(i64 %i.ds, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4644)
    #dbg_value(i64 %i.dt, !4576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4644)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ds, i64 %i.dt) #13, !dbg !4645, !noalias !4638
  unreachable, !dbg !4645

bb.q:                                             ; preds = %bb.o
  %i.du = load ptr, ptr %i.aw, align 8, !dbg !4646, !noalias !4635, !nonnull !268, !noundef !268 ; 2 uses
    #dbg_value(i64 %i.ds, !4574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4647)
    #dbg_value(ptr %i.du, !4574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4647)
    #dbg_value(ptr poison, !4601, !DIExpression(), !4648)
  %i.dv = icmp ule i64 %.val63.i, %i.ds, !dbg !4649
    #dbg_value(i1 true, !4650, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4657)
  call void @llvm.assume(i1 %i.dv), !dbg !4659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4660, !noalias !4635
    #dbg_value(i64 %i.ds, !4535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4661)
    #dbg_value(ptr %i.du, !4535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4661)
    #dbg_value(i64 0, !4535, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4661)
  %.not.i.i = icmp eq i64 %.val63.i, 0, !dbg !4662
  br i1 %.not.i.i, label %_RNvXs7_NtCs3f36owOmepS_6quiche6packetINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_12ConnectionIdE4from.exit.i, label %bb.r, !dbg !4662

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %.val.i, !4620, !DIExpression(), !4622)
    #dbg_value(ptr %.val.i, !4629, !DIExpression(), !4631)
    #dbg_value(ptr %i.du, !4621, !DIExpression(), !4622)
    #dbg_value(ptr %i.du, !4630, !DIExpression(), !4631)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull readonly align 1 %.val.i, i64 %.val63.i, i1 false), !dbg !4663, !noalias !4638
    #dbg_value(i64 %.val63.i, !4535, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4661)
  br label %_RNvXs7_NtCs3f36owOmepS_6quiche6packetINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_12ConnectionIdE4from.exit.i, !dbg !4664

_RNvXs7_NtCs3f36owOmepS_6quiche6packetINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_12ConnectionIdE4from.exit.i: ; preds = %bb.r, %bb.q
    #dbg_value(i64 %.val63.i, !4535, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4661)
    #dbg_value(i64 %i.ds, !4665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4671)
    #dbg_value(ptr %i.du, !4665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4671)
    #dbg_value(i64 %.val63.i, !4665, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4671)
    #dbg_value(i64 %.val63.i, !4673, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4679)
    #dbg_value(ptr %i.du, !4673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4679)
    #dbg_value(i64 %i.ds, !4673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4679)
  store i64 %i.ds, ptr %i.c, align 8, !dbg !4681, !noalias !4085
  store ptr %i.du, ptr %.sroa.4.0..sroa_idx10.i, align 8, !dbg !4681, !noalias !4085
  store i64 %.val63.i, ptr %.sroa.511.0..sroa_idx.i, align 8, !dbg !4681, !noalias !4085
    #dbg_value(ptr %1, !4682, !DIExpression(), !4692)
    #dbg_value(ptr %i.c, !4691, !DIExpression(), !4692)
    #dbg_value(ptr %1, !4694, !DIExpression(), !4704)
    #dbg_value(ptr %i.c, !4701, !DIExpression(), !4704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4706, !noalias !4707
    #dbg_value(ptr %1, !4711, !DIExpression(), !4731)
    #dbg_value(ptr %i.c, !4728, !DIExpression(), !4731)
    #dbg_value(ptr %i.c, !4733, !DIExpression(), !4741)
    #dbg_value(ptr %i.ax, !4739, !DIExpression(), !4741)
  %i.dw = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc unwind label %bb.v, !dbg !4743

.noexc:                                           ; preds = %_RNvXs7_NtCs3f36owOmepS_6quiche6packetINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_12ConnectionIdE4from.exit.i
    #dbg_value(i64 %i.dw, !4729, !DIExpression(), !4744)
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdyEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_yE0ECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc23 unwind label %bb.v, !dbg !4745

.noexc23:                                         ; preds = %.noexc
  %i.dx = load i64, ptr %i.a, align 8, !dbg !4706, !range !4746, !noalias !4707, !noundef !268
  %switch = icmp ugt i64 %i.dx, -3, !dbg !4747
  br i1 %switch, label %bb.w, label %bb.s, !dbg !4747

bb.s:                                             ; preds = %.noexc23
    #dbg_value(ptr %i.a, !4748, !DIExpression(), !4754)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i22 unwind label %bb.t, !dbg !4772, !noalias !4108

bb.t:                                             ; preds = %bb.s
  %i.dy = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !4773, !DIExpression(), !4781)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.u, !dbg !4783, !noalias !4108

bb.u:                                             ; preds = %bb.t
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4772, !noalias !4108
  unreachable, !dbg !4772

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i22: ; preds = %bb.s
    #dbg_value(ptr %i.a, !4773, !DIExpression(), !4784)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.w unwind label %bb.v, !dbg !4786

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i22, %.noexc, %_RNvXs7_NtCs3f36owOmepS_6quiche6packetINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_12ConnectionIdE4from.exit.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !4787

.body:                                            ; preds = %bb.t, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ea, %bb.v ], [ %i.dy, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #11
          to label %common.resume.i unwind label %bb.aa, !dbg !4787, !noalias !4108

bb.w:                                             ; preds = %.noexc23, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4747, !noalias !4707
    #dbg_value(ptr %i.c, !4770, !DIExpression(), !4788)
    #dbg_value(ptr %i.c, !4761, !DIExpression(), !4790)
  %i.eb = load i64, ptr %i.c, align 8, !dbg !4792, !range !4793, !alias.scope !4794, !noalias !4085, !noundef !268
  %.not.i.i.i = icmp eq i64 %i.eb, -1, !dbg !4792
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i, label %bb.x, !dbg !4792

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.c, !4748, !DIExpression(), !4799)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i unwind label %bb.y, !dbg !4801, !noalias !4108

bb.y:                                             ; preds = %bb.x
  %i.ec = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !4773, !DIExpression(), !4802)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.z, !dbg !4804, !noalias !4108

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4801, !noalias !4108
  unreachable, !dbg !4801

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i: ; preds = %bb.x
    #dbg_value(ptr %i.c, !4773, !DIExpression(), !4805)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !4807, !noalias !4108
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !4792

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9WTr9tUZcLm_13quiche_server.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4787, !noalias !4085
  br label %bb.m, !dbg !4415

bb.aa:                                            ; preds = %.body, %bb.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4808, !noalias !4108
  unreachable, !dbg !4808

_RNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0B3_.exit: ; preds = %bb.n, %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.i
  %.pre.i = load i8, ptr %i.bf, align 4, !dbg !4809, !range !4107, !alias.scope !3844, !noalias !4108
  %i.ef = trunc nuw i8 %.pre.i to i1, !dbg !4809
    #dbg_value(ptr %i.bb, !4098, !DIExpression(), !4110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4112
  br i1 %i.ef, label %bb.ab, label %bb.ac, !dbg !3847

bb.ab:                                            ; preds = %_RNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0B3_.exit
  call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCsiGRwBGCeC5s_11quiche_apps6common6ClientEE5eraseCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay), !dbg !4810
  br label %bb.ac, !dbg !4811

bb.ac:                                            ; preds = %_RNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0B3_.exit.thread, %_RNCNvCs9WTr9tUZcLm_13quiche_server4mains0_0B3_.exit, %bb.ab
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !3835
    #dbg_value(ptr %i.l, !3810, !DIExpression(), !3832)
  %i.eg = icmp eq i64 %.pr, 0, !dbg !3835
  br i1 %i.eg, label %._crit_edge, label %bb.b, !dbg !3835
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4812 {
bb.a:
    #dbg_value(ptr %0, !4818, !DIExpression(), !4822)
    #dbg_value(ptr %1, !4819, !DIExpression(), !4822)
    #dbg_value(ptr %1, !4823, !DIExpression(), !4827)
    #dbg_value(ptr %0, !4829, !DIExpression(), !4835)
    #dbg_value(ptr %0, !4837, !DIExpression(), !4843)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4845
  %i.b = load i64, ptr %i.a, align 8, !dbg !4845, !noundef !268
  %i.c = icmp eq i64 %i.b, 0, !dbg !4846
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdyEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_yE0ECs9WTr9tUZcLm_13quiche_server.exit, label %bb.b, !dbg !4847

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4848
    #dbg_value(ptr %i.d, !4826, !DIExpression(), !4827)
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !4849 ; 2 uses
    #dbg_value(i64 %i.e, !4820, !DIExpression(), !4850)
    #dbg_value(i64 %i.e, !4851, !DIExpression(), !4884)
    #dbg_value(ptr %0, !4873, !DIExpression(), !4884)
    #dbg_value(ptr %1, !4874, !DIExpression(), !4884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4886), !dbg !4889
    #dbg_value(ptr poison, !4890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(ptr %1, !4961, !DIExpression(), !4967)
    #dbg_value(ptr %0, !4959, !DIExpression(), !4967)
    #dbg_value(i64 %i.e, !4960, !DIExpression(), !4967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4968), !dbg !4971
    #dbg_value(ptr poison, !4972, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4999)
    #dbg_value(ptr poison, !5002, !DIExpression(), !5010)
    #dbg_value(ptr %0, !4906, !DIExpression(), !4939)
    #dbg_value(ptr %0, !5012, !DIExpression(), !5019)
    #dbg_value(ptr %0, !5021, !DIExpression(), !5029)
    #dbg_value(i64 %i.e, !4907, !DIExpression(), !4939)
    #dbg_value(i64 %i.e, !5031, !DIExpression(), !5038)
    #dbg_value(i64 %i.e, !5018, !DIExpression(), !5019)
    #dbg_value(ptr undef, !4890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4939)
    #dbg_value(ptr poison, !4890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4939)
    #dbg_value(i8 -1, !5040, !DIExpression(), !5052)
  %i.f = lshr i64 %i.e, 57, !dbg !5061
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !5062
    #dbg_value(i8 %i.g, !4908, !DIExpression(), !5063)
    #dbg_value(i8 %i.g, !5040, !DIExpression(), !5064)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5066
  %i.i = load i64, ptr %i.h, align 8, !dbg !5066, !alias.scope !5067, !noalias !5068, !noundef !268 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.i), !4914, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5071)
    #dbg_value(i64 0, !4914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5071)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !5067, !noalias !5068, !nonnull !268, !noundef !268 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !5072

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], !dbg !5063
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i, !dbg !5063 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !4914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5071)
    #dbg_value(i64 %.sroa.9.0.i.i, !4914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5071)
    #dbg_value(i64 %.sroa.01.0.i.i, !5028, !DIExpression(), !5029)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i, !dbg !5073
    #dbg_value(ptr %i.m, !5078, !DIExpression(), !5085)
    #dbg_value(ptr %i.m, !5087, !DIExpression(), !5097)
    #dbg_value(<2 x i64> zeroinitializer, !5095, !DIExpression(), !5099)
    #dbg_value(ptr %i.m, !5100, !DIExpression(), !5105)
    #dbg_value(ptr undef, !5103, !DIExpression(), !5105)
    #dbg_value(i64 16, !5104, !DIExpression(), !5105)
  %.sroa.0.0.copyload.i29.i = load <16 x i8>, ptr %i.m, align 1, !dbg !5107, !noalias !5108 ; 2 uses
    #dbg_value(<2 x i64> poison, !5095, !DIExpression(), !5099)
    #dbg_value(<2 x i64> poison, !4920, !DIExpression(), !5111)
    #dbg_value(<2 x i64> poison, !5047, !DIExpression(), !5064)
    #dbg_value(<2 x i64> poison, !5059, !DIExpression(), !5112)
    #dbg_value(<2 x i64> poison, !5047, !DIExpression(), !5052)
    #dbg_declare(ptr poison, !5113, !DIExpression(), !5119)
    #dbg_declare(ptr poison, !5118, !DIExpression(), !5121)
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i, %i.l, !dbg !5122
    #dbg_value(<16 x i8> poison, !5048, !DIExpression(), !5123)
    #dbg_declare(ptr poison, !5124, !DIExpression(), !5140)
    #dbg_value(<16 x i8> poison, !5129, !DIExpression(), !5142)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !5138, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !5143)
  %i.o = bitcast <16 x i1> %i.n to i16, !dbg !5144 ; 2 uses
    #dbg_value(i16 %i.o, !4933, !DIExpression(), !5145)
    #dbg_value(ptr undef, !4972, !DIExpression(), !4999)
    #dbg_value(i16 %i.o, !5146, !DIExpression(), !5161)
  %.not.i.not35.i = icmp eq i16 %i.o, 0, !dbg !5163
end_hunk_0
