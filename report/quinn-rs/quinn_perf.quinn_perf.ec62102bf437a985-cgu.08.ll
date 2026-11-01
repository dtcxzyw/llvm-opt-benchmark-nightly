Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.08?download=true
inline.NumInlined: 615
inline.NumDeleted: 332
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_declare(ptr poison, !5215, !DIExpression(), !15313)
    #dbg_value(i64 8, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15310)
    #dbg_value(i64 8, !5223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15312)
    #dbg_value(i64 48, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15310)
    #dbg_value(i64 48, !5223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15312)
    #dbg_value(i64 0, !5222, !DIExpression(), !15312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16320, !noalias !16025
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 192153584101141163) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !16320, !noalias !16025
  %i.q = load i64, ptr %i.k, align 8, !dbg !16320, !range !5225, !noalias !16025, !noundef !1736
  %i.r = trunc nuw i64 %i.q to i1, !dbg !16321
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16322
  %i.t = load i64, ptr %i.s, align 8, !dbg !16322, !range !5226, !noalias !16025, !noundef !1736 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16322 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !16321, !prof !5187

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8, !dbg !16323, !noalias !16025
    #dbg_value(i64 %i.t, !5218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15314)
    #dbg_value(i64 %i.v, !5218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15314)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #20, !dbg !16324, !noalias !16037
  unreachable, !dbg !16324

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !dbg !16325, !noalias !16025, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(i64 %i.t, !5217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15315)
    #dbg_value(ptr %i.w, !5217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15315)
    #dbg_value(ptr poison, !5221, !DIExpression(), !15316)
  %i.x = icmp ule i64 %i.p, %i.t, !dbg !16326
    #dbg_value(i1 true, !5229, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15318)
  tail call void @llvm.assume(i1 %i.x), !dbg !16327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16328, !noalias !16025
  store i64 %i.t, ptr %i.l, align 8, !dbg !16329, !noalias !16025
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !16329
  store ptr %i.w, ptr %i.y, align 8, !dbg !16329, !noalias !16025
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !16329 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !16329, !noalias !16025
    #dbg_value(ptr %i.l, !15841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15319)
    #dbg_value(i64 0, !15841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15319)
    #dbg_value(ptr %i.w, !16029, !DIExpression(), !15324)
    #dbg_value(i64 0, !16026, !DIExpression(), !15324)
    #dbg_value(ptr %i.w, !15842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15325)
    #dbg_value(i64 %i.t, !15842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15325)
    #dbg_value(ptr %i.o, !16010, !DIExpression(), !15326)
    #dbg_value(ptr %i.o, !16029, !DIExpression(), !15305)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.p, !dbg !16330
    #dbg_value(ptr %i.o, !15843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15327)
    #dbg_value(ptr %i.aa, !15843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15327)
    #dbg_value(i64 0, !15843, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15327)
    #dbg_value(i64 %i.t, !15843, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15327)
    #dbg_value(ptr undef, !15962, !DIExpression(), !15269)
  %i.ab = icmp eq i64 %i.t, 0, !dbg !16331
  br i1 %i.ab, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit, label %.lr.ph.i, !dbg !16331

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4.0..sroa_idx42.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.09.32..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.i.i.i.i.i.i, i64 32
  %.sroa.9.96..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i.i.i.i, i64 7
  br label %bb.c, !dbg !16331

bb.c:                                             ; preds = %bb.ag, %.lr.ph.i
  %.sroa.035.0207.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.bd, %bb.ag ] ; 11 uses
  %.sroa.7.0206.i = phi i64 [ 0, %.lr.ph.i ], [ %i.be, %bb.ag ] ; 3 uses
  %.sroa.10.0205.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bb, %bb.ag ]
    #dbg_value(ptr %.sroa.035.0207.i, !15843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15327)
    #dbg_value(i64 %.sroa.7.0206.i, !15843, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15327)
    #dbg_value(i64 %.sroa.10.0205.i, !15843, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15327)
  %i.bb = add i64 %.sroa.10.0205.i, -1, !dbg !16332 ; 2 uses
    #dbg_value(i64 %i.bb, !15843, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15327)
    #dbg_value(ptr undef, !15951, !DIExpression(), !15268)
    #dbg_value(ptr undef, !15919, !DIExpression(), !15267)
    #dbg_value(i64 1, !16046, !DIExpression(), !15330)
    #dbg_value(ptr %.sroa.035.0207.i, !15930, !DIExpression(), !15331)
    #dbg_value(ptr %.sroa.035.0207.i, !16050, !DIExpression(), !15330)
    #dbg_value(ptr %i.aa, !15931, !DIExpression(), !15332)
    #dbg_value(ptr poison, !16053, !DIExpression(), !15335)
    #dbg_value(ptr poison, !16056, !DIExpression(), !15336)
  %i.bc = icmp eq ptr %.sroa.035.0207.i, %i.aa, !dbg !16333
  br i1 %i.bc, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit, label %bb.d, !dbg !16334

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 48, !dbg !16335
    #dbg_value(ptr %i.bd, !15843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15327)
    #dbg_value(ptr %.sroa.035.0207.i, !15952, !DIExpression(), !15337)
    #dbg_value(i64 %.sroa.7.0206.i, !15955, !DIExpression(), !15338)
  %i.be = add nuw nsw i64 %.sroa.7.0206.i, 1, !dbg !16336
    #dbg_value(i64 %i.be, !15843, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15327)
    #dbg_value(i64 %.sroa.7.0206.i, !15844, !DIExpression(), !15339)
    #dbg_value(ptr %.sroa.035.0207.i, !15845, !DIExpression(), !15339)
    #dbg_value(i64 %.sroa.7.0206.i, !15841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15319)
    #dbg_value(!DIArgList(ptr %i.w, i64 %.sroa.7.0206.i), !15915, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !15340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16059), !dbg !16337
    #dbg_value(ptr %.sroa.035.0207.i, !15830, !DIExpression(), !15343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16338, !noalias !16060
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.035.0207.i)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !16338, !noalias !16037

.noexc.i:                                         ; preds = %bb.d
    #dbg_value(ptr %.sroa.035.0207.i, !15823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15345)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 24, !dbg !16339
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !16339, !range !2936, !alias.scope !16062, !noundef !1736 ; 3 uses
  %.not.i.i = icmp eq i8 %i.bg, -1, !dbg !16339
  br i1 %.not.i.i, label %bb.ag, label %bb.e, !dbg !16340

bb.e:                                             ; preds = %.noexc.i
    #dbg_value(ptr %i.bf, !15824, !DIExpression(), !15346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16063), !dbg !16341
    #dbg_value(ptr %i.bf, !15806, !DIExpression(), !15349)
    #dbg_value(i64 1, !16064, !DIExpression(), !15357)
    #dbg_value(i8 0, !16067, !DIExpression(), !15357)
    #dbg_value(i64 1, !16080, !DIExpression(), !15360)
    #dbg_value(i8 0, !16082, !DIExpression(), !15360)
  switch i8 %i.bg, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.ag
    i8 5, label %bb.j
    i8 6, label %bb.k
  ], !dbg !16342

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.bf, !15808, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !15361)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 25, !dbg !16343
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !16343, !range !16084, !alias.scope !16085, !noundef !1736
  br label %bb.ag, !dbg !16344

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %i.bf, !15810, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15362)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 32, !dbg !16345
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !16345, !alias.scope !16085, !noundef !1736
  br label %bb.ag, !dbg !16344

bb.h:                                             ; preds = %bb.e
    #dbg_value(ptr %i.bf, !15812, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15363)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 32, !dbg !16346
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !16346, !alias.scope !16085, !noundef !1736
  br label %bb.ag, !dbg !16344

bb.i:                                             ; preds = %bb.e
    #dbg_value(ptr %i.bf, !15814, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15364)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 32, !dbg !16347
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !16347, !alias.scope !16085, !noundef !1736
  br label %bb.ag, !dbg !16344

bb.j:                                             ; preds = %bb.e
    #dbg_value(ptr %i.bf, !15816, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15365)
    #dbg_value(ptr %i.bf, !16078, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15366)
    #dbg_value(ptr %i.bf, !16072, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15367)
    #dbg_value(ptr %i.bf, !16086, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15370)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 32, !dbg !16348
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !16348, !alias.scope !16085, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(ptr %i.bq, !16066, !DIExpression(), !15373)
    #dbg_value(ptr %i.bq, !16081, !DIExpression(), !15360)
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !dbg !16349, !noalias !16088
    #dbg_value(i64 %i.br, !16073, !DIExpression(), !15375)
  %i.bs = icmp slt i64 %i.br, 0, !dbg !16350
  br i1 %i.bs, label %bb.ad, label %bb.ac, !dbg !16350

bb.k:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 32, !dbg !16351
    #dbg_value(ptr %i.bt, !15817, !DIExpression(), !15376)
  %.val.i.i.i = load ptr, ptr %i.bt, align 8, !dbg !16352, !alias.scope !16085 ; 33 uses
    #dbg_value(ptr poison, !15789, !DIExpression(), !15377)
  %i.bu = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCskigd7sy4fqX_10quinn_perf()
          to label %.noexc.i.i unwind label %bb.ae, !dbg !16353, !noalias !16089 ; 17 uses

.noexc.i.i:                                       ; preds = %bb.k
    #dbg_value(ptr %i.bu, !15791, !DIExpression(), !15378)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
    #dbg_value(ptr %.val.i.i.i, !15782, !DIExpression(), !15379)
    #dbg_value(ptr %i.bu, !15783, !DIExpression(), !15379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16090), !dbg !16354
    #dbg_declare(ptr poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 128, 512), !15384)
    #dbg_declare(ptr poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 840, 2360), !15384)
    #dbg_declare(ptr poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 3200, 448), !15384)
    #dbg_declare(ptr poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 3840, 2624), !15384)
    #dbg_declare(ptr poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 6464, 24), !15384)
    #dbg_value(ptr %.val.i.i.i, !15775, !DIExpression(), !15385)
    #dbg_value(ptr %i.bu, !15776, !DIExpression(), !15385)
    #dbg_value(ptr %i.bu, !16095, !DIExpression(), !15386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16101), !dbg !16355
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09.i.i.i.i.i.i), !dbg !16356
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i), !dbg !16356
    #dbg_value(ptr %.val.i.i.i, !15766, !DIExpression(), !15389)
    #dbg_value(i64 1, !16102, !DIExpression(), !15395)
    #dbg_value(i8 0, !16104, !DIExpression(), !15395)
    #dbg_value(i64 1, !16109, !DIExpression(), !15398)
    #dbg_value(i8 0, !16111, !DIExpression(), !15398)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i), !dbg !16356
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i), !dbg !16356
    #dbg_value(ptr %.val.i.i.i, !15759, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15399)
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16, !dbg !16357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16113), !dbg !16357
    #dbg_value(ptr %i.bv, !15752, !DIExpression(), !15402)
    #dbg_value(i64 1, !16114, !DIExpression(), !15413)
    #dbg_value(i8 0, !16116, !DIExpression(), !15413)
    #dbg_value(i64 1, !16137, !DIExpression(), !15416)
    #dbg_value(i8 0, !16139, !DIExpression(), !15416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16358, !noalias !16141
    #dbg_value(ptr %i.bv, !15906, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !15419)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 120, !dbg !16359
  %.val27.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !dbg !16359, !alias.scope !16143, !noalias !16088, !nonnull !1736, !noundef !1736
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 128, !dbg !16359
  %.val28.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !dbg !16359, !alias.scope !16143, !noalias !16088, !noundef !1736 ; 5 uses
    #dbg_value(ptr poison, !15738, !DIExpression(), !15420)
    #dbg_declare(ptr poison, !15739, !DIExpression(), !15421)
    #dbg_declare(ptr poison, !15730, !DIExpression(), !15422)
    #dbg_value(ptr %.val27.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15423)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15423)
    #dbg_value(ptr %.val27.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15424)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15424)
    #dbg_declare(ptr poison, !15725, !DIExpression(), !15425)
    #dbg_declare(ptr poison, !16144, !DIExpression(), !15428)
    #dbg_declare(ptr poison, !16150, !DIExpression(), !15431)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !15726, !DIExpression(), !15432)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !16148, !DIExpression(), !15433)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !16154, !DIExpression(), !15434)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !16156, !DIExpression(), !15437)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !16164, !DIExpression(), !15440)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !15716, !DIExpression(), !15441)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !5211, !DIExpression(), !15443)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !5220, !DIExpression(), !15445)
    #dbg_declare(ptr poison, !5215, !DIExpression(), !15446)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15443)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15445)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15443)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15445)
    #dbg_value(i64 0, !5222, !DIExpression(), !15445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16360, !noalias !16170
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 2305843009213693952) %.val28.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp64.i.loopexit.split-lp.loopexit.split-lp, !dbg !16360, !noalias !16088

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i
  %i.by = load i64, ptr %i.f, align 8, !dbg !16360, !range !5225, !noalias !16170, !noundef !1736
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !16361
  %i.ca = load i64, ptr %i.ac, align 8, !dbg !16362, !range !5226, !noalias !16170, !noundef !1736 ; 3 uses
  br i1 %i.bz, label %bb.l, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.i, !dbg !16361, !prof !5187

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.cb = load i64, ptr %i.ad, align 8, !dbg !16363, !noalias !16170
    #dbg_value(i64 %i.ca, !5218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15452)
    #dbg_value(i64 %i.cb, !5218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15452)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cb) #20
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp64.i.loopexit.split-lp.loopexit.split-lp, !dbg !16364, !noalias !16088

.noexc7.i.i.i.i:                                  ; preds = %bb.l
  unreachable, !dbg !16364

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.cc = load ptr, ptr %i.ad, align 8, !dbg !16365, !noalias !16170, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(i64 %i.ca, !5217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15453)
    #dbg_value(ptr %i.cc, !5217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15453)
    #dbg_value(ptr poison, !5221, !DIExpression(), !15454)
  %i.cd = icmp ule i64 %.val28.i.i.i.i.i.i.i, %i.ca, !dbg !16366
    #dbg_value(i1 true, !5229, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15456)
  tail call void @llvm.assume(i1 %i.cd), !dbg !16367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16368, !noalias !16170
    #dbg_value(i64 %i.ca, !15727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15457)
    #dbg_value(ptr %i.cc, !15727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15457)
    #dbg_value(i64 0, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15457)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val28.i.i.i.i.i.i.i, 0, !dbg !16369
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i, label %bb.m, !dbg !16369

bb.m:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.i
    #dbg_value(ptr %.val27.i.i.i.i.i.i.i, !16161, !DIExpression(), !15437)
    #dbg_value(ptr %.val27.i.i.i.i.i.i.i, !16167, !DIExpression(), !15440)
    #dbg_value(ptr %i.cc, !16162, !DIExpression(), !15437)
    #dbg_value(ptr %i.cc, !16168, !DIExpression(), !15440)
  %i.ce = shl nuw nsw i64 %.val28.i.i.i.i.i.i.i, 2, !dbg !16370
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull readonly align 4 %.val27.i.i.i.i.i.i.i, i64 %i.ce, i1 false), !dbg !16370, !noalias !16171
    #dbg_value(ptr undef, !15712, !DIExpression(), !15241)
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15457)
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i, !dbg !16371

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.i
    #dbg_value(i64 %.val28.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15457)
    #dbg_value(ptr %i.bv, !16175, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !15460)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 136, !dbg !16372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cf, i64 256, i1 false), !dbg !16372, !noalias !16180
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 392, !dbg !16359
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !16359, !alias.scope !16143, !noalias !16088, !noundef !1736
  store i64 %i.ca, ptr %i.i, align 8, !dbg !16359, !noalias !16141
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx42.i.i.i.i.i.i.i, align 8, !dbg !16359, !noalias !16141
  store i64 %.val28.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !16359, !noalias !16141
  store i64 %i.ch, ptr %i.af, align 8, !dbg !16359, !noalias !16141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16373, !noalias !16141
    #dbg_value(ptr %i.bv, !15900, !DIExpression(DW_OP_plus_uconst, 464, DW_OP_stack_value), !15461)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 504, !dbg !16374
  %.val25.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !dbg !16374, !alias.scope !16143, !noalias !16088, !nonnull !1736, !noundef !1736
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 512, !dbg !16374
  %.val26.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !dbg !16374, !alias.scope !16143, !noalias !16088, !noundef !1736 ; 5 uses
    #dbg_value(ptr poison, !15738, !DIExpression(), !15462)
    #dbg_declare(ptr poison, !15739, !DIExpression(), !15463)
    #dbg_declare(ptr poison, !15730, !DIExpression(), !15464)
    #dbg_value(ptr %.val25.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15465)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15465)
    #dbg_value(ptr %.val25.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15466)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15466)
    #dbg_declare(ptr poison, !15725, !DIExpression(), !15467)
    #dbg_declare(ptr poison, !16144, !DIExpression(), !15469)
    #dbg_declare(ptr poison, !16150, !DIExpression(), !15471)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !15726, !DIExpression(), !15472)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !16148, !DIExpression(), !15473)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !16154, !DIExpression(), !15474)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !16156, !DIExpression(), !15476)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !16164, !DIExpression(), !15478)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !15716, !DIExpression(), !15479)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !5211, !DIExpression(), !15481)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !5220, !DIExpression(), !15483)
    #dbg_declare(ptr poison, !5215, !DIExpression(), !15484)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15481)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15483)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15481)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15483)
    #dbg_value(i64 0, !5222, !DIExpression(), !15483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16375, !noalias !16182
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 2305843009213693952) %.val26.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp, !dbg !16375, !noalias !16183

.noexc.i.i.i.i.i.i.i:                             ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i
  %i.ck = load i64, ptr %i.e, align 8, !dbg !16375, !range !5225, !noalias !16182, !noundef !1736
  %i.cl = trunc nuw i64 %i.ck to i1, !dbg !16376
  %i.cm = load i64, ptr %i.ag, align 8, !dbg !16377, !range !5226, !noalias !16182, !noundef !1736 ; 3 uses
  br i1 %i.cl, label %bb.n, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i29.i.i.i.i.i.i.i, !dbg !16376, !prof !5187

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.ah, align 8, !dbg !16378, !noalias !16182
    #dbg_value(i64 %i.cm, !5218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15490)
    #dbg_value(i64 %i.cn, !5218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15490)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cm, i64 %i.cn) #20
          to label %.noexc31.i.i.i.i.i.i.i unwind label %.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp, !dbg !16379, !noalias !16183

.noexc31.i.i.i.i.i.i.i:                           ; preds = %bb.n
  unreachable, !dbg !16379

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i29.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.co = load ptr, ptr %i.ah, align 8, !dbg !16380, !noalias !16182, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(i64 %i.cm, !5217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15491)
    #dbg_value(ptr %i.co, !5217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15491)
    #dbg_value(ptr poison, !5221, !DIExpression(), !15492)
  %i.cp = icmp ule i64 %.val26.i.i.i.i.i.i.i, %i.cm, !dbg !16381
    #dbg_value(i1 true, !5229, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15494)
  tail call void @llvm.assume(i1 %i.cp), !dbg !16382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16383, !noalias !16182
    #dbg_value(i64 %i.cm, !15727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15495)
    #dbg_value(ptr %i.co, !15727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15495)
    #dbg_value(i64 0, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15495)
  %.not.i.i30.i.i.i.i.i.i.i = icmp eq i64 %.val26.i.i.i.i.i.i.i, 0, !dbg !16384
  br i1 %.not.i.i30.i.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit32.i.i.i.i.i.i.i, label %bb.o, !dbg !16384

bb.o:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i29.i.i.i.i.i.i.i
    #dbg_value(ptr %.val25.i.i.i.i.i.i.i, !16161, !DIExpression(), !15476)
    #dbg_value(ptr %.val25.i.i.i.i.i.i.i, !16167, !DIExpression(), !15478)
    #dbg_value(ptr %i.co, !16162, !DIExpression(), !15476)
    #dbg_value(ptr %i.co, !16168, !DIExpression(), !15478)
  %i.cq = shl nuw nsw i64 %.val26.i.i.i.i.i.i.i, 2, !dbg !16385
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.co, ptr nonnull readonly align 4 %.val25.i.i.i.i.i.i.i, i64 %i.cq, i1 false), !dbg !16385, !noalias !16184
    #dbg_value(ptr undef, !15712, !DIExpression(), !15234)
    #dbg_value(i64 %.val26.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15495)
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit32.i.i.i.i.i.i.i, !dbg !16386

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskZzsEQPwaY5_14regex_automata3dfa5dense10StartTableINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i.i
  %.pn.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.i, !2941, !DIExpression(), !15497)
    #dbg_value(ptr %i.i, !2948, !DIExpression(), !15499)
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf:bb.a
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 16, !dbg !16413, !alias.scope !16225, !noalias !16088, !nonnull !1736, !noundef !1736
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 440, !dbg !16413
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 8, !dbg !16413, !alias.scope !16225, !noalias !16088, !noundef !1736 ; 5 uses
    #dbg_value(ptr poison, !15738, !DIExpression(), !15562)
    #dbg_declare(ptr poison, !15739, !DIExpression(), !15563)
    #dbg_declare(ptr poison, !15730, !DIExpression(), !15564)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15565)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15565)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15566)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15566)
    #dbg_declare(ptr poison, !15725, !DIExpression(), !15567)
    #dbg_declare(ptr poison, !16144, !DIExpression(), !15569)
    #dbg_declare(ptr poison, !16150, !DIExpression(), !15571)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !15726, !DIExpression(), !15572)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !16148, !DIExpression(), !15573)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !16154, !DIExpression(), !15574)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !16156, !DIExpression(), !15576)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !16164, !DIExpression(), !15578)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !15716, !DIExpression(), !15579)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !5211, !DIExpression(), !15581)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !5220, !DIExpression(), !15583)
    #dbg_declare(ptr poison, !5215, !DIExpression(), !15584)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15581)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15583)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15581)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15583)
    #dbg_value(i64 0, !5222, !DIExpression(), !15583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16414, !noalias !16231
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %.val2.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp79.i.loopexit.split-lp.loopexit.split-lp, !dbg !16414, !noalias !16232

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i
  %i.dw = load i64, ptr %i.b, align 8, !dbg !16414, !range !5225, !noalias !16231, !noundef !1736
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !16415
  %i.dy = load i64, ptr %i.av, align 8, !dbg !16416, !range !5226, !noalias !16231, !noundef !1736 ; 3 uses
  br i1 %i.dx, label %bb.r, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i5.i.i.i.i.i.i.i.i, !dbg !16415, !prof !5187

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.dz = load i64, ptr %i.aw, align 8, !dbg !16417, !noalias !16231
    #dbg_value(i64 %i.dy, !5218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15590)
    #dbg_value(i64 %i.dz, !5218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15590)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.dz) #20
          to label %.noexc7.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp79.i.loopexit.split-lp.loopexit.split-lp, !dbg !16418, !noalias !16232

.noexc7.i.i.i.i.i.i.i.i:                          ; preds = %bb.r
  unreachable, !dbg !16418

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i5.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.ea = load ptr, ptr %i.aw, align 8, !dbg !16419, !noalias !16231, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(i64 %i.dy, !5217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15591)
    #dbg_value(ptr %i.ea, !5217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15591)
    #dbg_value(ptr poison, !5221, !DIExpression(), !15592)
  %i.eb = icmp ule i64 %.val2.i.i.i.i.i.i.i.i, %i.dy, !dbg !16420
    #dbg_value(i1 true, !5229, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15594)
  tail call void @llvm.assume(i1 %i.eb), !dbg !16421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16422, !noalias !16231
    #dbg_value(i64 %i.dy, !15727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15595)
    #dbg_value(ptr %i.ea, !15727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15595)
    #dbg_value(i64 0, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15595)
  %.not.i.i6.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0, !dbg !16423
  br i1 %.not.i.i6.i.i.i.i.i.i.i.i, label %bb.u, label %bb.s, !dbg !16423

bb.s:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i5.i.i.i.i.i.i.i.i
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !16161, !DIExpression(), !15576)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !16167, !DIExpression(), !15578)
    #dbg_value(ptr %i.ea, !16162, !DIExpression(), !15576)
    #dbg_value(ptr %i.ea, !16168, !DIExpression(), !15578)
  %i.ec = shl nuw nsw i64 %.val2.i.i.i.i.i.i.i.i, 2, !dbg !16424
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i.i, i64 %i.ec, i1 false), !dbg !16424, !noalias !16233
    #dbg_value(ptr undef, !15712, !DIExpression(), !15220)
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15595)
  br label %bb.u, !dbg !16425

.loopexit.split-lp79.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i, %bb.r
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !2948, !DIExpression(), !15597)
    #dbg_value(ptr %i.d, !2953, !DIExpression(), !15599)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.t, !dbg !16426, !noalias !16232

bb.t:                                             ; preds = %.loopexit.split-lp79.i.loopexit.split-lp.loopexit.split-lp
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16427, !noalias !16232
  unreachable, !dbg !16427

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp74.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp84.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp79.i.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp310, %.loopexit.split-lp84.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp307, %.loopexit.split-lp79.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp304, %.loopexit.split-lp74.i.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.h, !2960, !DIExpression(), !15601)
    #dbg_value(ptr %i.aj, !2948, !DIExpression(), !15603)
    #dbg_value(ptr %i.aj, !2953, !DIExpression(), !15605)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskZzsEQPwaY5_14regex_automata3dfa5dense10StartTableINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i unwind label %bb.aa, !dbg !16428, !noalias !16183

.loopexit.split-lp74.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit32.i.i.i.i.i.i.i, %bb.p
  %lpad.loopexit.split-lp304 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i5.i.i.i.i.i.i.i.i
    #dbg_value(i64 %.val2.i.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15595)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448, !dbg !16429
  %i.ef = load i64, ptr %i.ee, align 16, !dbg !16429, !alias.scope !16225, !noalias !16088, !noundef !1736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !16427, !noalias !16234
  store i64 %i.dy, ptr %i.ax, align 8, !dbg !16427, !alias.scope !16221, !noalias !16141
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !16427, !alias.scope !16221, !noalias !16141
  store i64 %.val2.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !16427, !alias.scope !16221, !noalias !16141
  store i64 %i.ef, ptr %i.ay, align 8, !dbg !16427, !alias.scope !16221, !noalias !16141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16430, !noalias !16224
    #dbg_value(ptr %i.bv, !15894, !DIExpression(DW_OP_plus_uconst, 440, DW_OP_stack_value), !15606)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 464, !dbg !16431
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 16, !dbg !16431, !alias.scope !16143, !noalias !16088, !nonnull !1736, !noundef !1736
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 472, !dbg !16431
  %.val24.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8, !dbg !16431, !alias.scope !16143, !noalias !16088, !noundef !1736 ; 5 uses
    #dbg_value(ptr poison, !15738, !DIExpression(), !15607)
    #dbg_declare(ptr poison, !15739, !DIExpression(), !15608)
    #dbg_declare(ptr poison, !15730, !DIExpression(), !15609)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15610)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !15729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15610)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15611)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !15724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15611)
    #dbg_declare(ptr poison, !15725, !DIExpression(), !15612)
    #dbg_declare(ptr poison, !16144, !DIExpression(), !15614)
    #dbg_declare(ptr poison, !16150, !DIExpression(), !15616)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !15726, !DIExpression(), !15617)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !16148, !DIExpression(), !15618)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !16154, !DIExpression(), !15619)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !16156, !DIExpression(), !15621)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !16164, !DIExpression(), !15623)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !15716, !DIExpression(), !15624)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !5211, !DIExpression(), !15626)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !5220, !DIExpression(), !15628)
    #dbg_declare(ptr poison, !5215, !DIExpression(), !15629)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15626)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15628)
    #dbg_value(i64 4, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15626)
    #dbg_value(i64 4, !5223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15628)
    #dbg_value(i64 0, !5222, !DIExpression(), !15628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16432, !noalias !16236
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %.val24.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc39.i.i.i.i.i.i.i unwind label %.loopexit.split-lp84.i.loopexit.split-lp.loopexit.split-lp, !dbg !16432, !noalias !16183

.noexc39.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.ei = load i64, ptr %i.a, align 8, !dbg !16432, !range !5225, !noalias !16236, !noundef !1736
  %i.ej = trunc nuw i64 %i.ei to i1, !dbg !16433
  %i.ek = load i64, ptr %i.az, align 8, !dbg !16434, !range !5226, !noalias !16236, !noundef !1736 ; 3 uses
  br i1 %i.ej, label %bb.v, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i37.i.i.i.i.i.i.i, !dbg !16433, !prof !5187

bb.v:                                             ; preds = %.noexc39.i.i.i.i.i.i.i
  %i.el = load i64, ptr %i.ba, align 8, !dbg !16435, !noalias !16236
    #dbg_value(i64 %i.ek, !5218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15635)
    #dbg_value(i64 %i.el, !5218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15635)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ek, i64 %i.el) #20
          to label %.noexc40.i.i.i.i.i.i.i unwind label %.loopexit.split-lp84.i.loopexit.split-lp.loopexit.split-lp, !dbg !16436, !noalias !16183

.noexc40.i.i.i.i.i.i.i:                           ; preds = %bb.v
  unreachable, !dbg !16436

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i37.i.i.i.i.i.i.i: ; preds = %.noexc39.i.i.i.i.i.i.i
  %i.em = load ptr, ptr %i.ba, align 8, !dbg !16437, !noalias !16236, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(i64 %i.ek, !5217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15636)
    #dbg_value(ptr %i.em, !5217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15636)
    #dbg_value(ptr poison, !5221, !DIExpression(), !15637)
  %i.en = icmp ule i64 %.val24.i.i.i.i.i.i.i, %i.ek, !dbg !16438
    #dbg_value(i1 true, !5229, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15639)
  tail call void @llvm.assume(i1 %i.en), !dbg !16439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16440, !noalias !16236
    #dbg_value(i64 %i.ek, !15727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(ptr %i.em, !15727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15640)
    #dbg_value(i64 0, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15640)
  %.not.i.i38.i.i.i.i.i.i.i = icmp eq i64 %.val24.i.i.i.i.i.i.i, 0, !dbg !16441
  br i1 %.not.i.i38.i.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i, label %bb.w, !dbg !16441

bb.w:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i37.i.i.i.i.i.i.i
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !16161, !DIExpression(), !15621)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !16167, !DIExpression(), !15623)
    #dbg_value(ptr %i.em, !16162, !DIExpression(), !15621)
    #dbg_value(ptr %i.em, !16168, !DIExpression(), !15623)
  %i.eo = shl nuw nsw i64 %.val24.i.i.i.i.i.i.i, 2, !dbg !16442
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i, i64 %i.eo, i1 false), !dbg !16442, !noalias !16237
    #dbg_value(ptr undef, !15712, !DIExpression(), !15227)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15640)
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i, !dbg !16443

.loopexit.split-lp84.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskZzsEQPwaY5_14regex_automata3dfa5dense11MatchStatesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #17
          to label %.body.i.i.i.i.i.i.i unwind label %bb.aa, !dbg !16444, !noalias !16183

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i: ; preds = %bb.w, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i.i37.i.i.i.i.i.i.i
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !15727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15640)
    #dbg_value(ptr %i.bv, !16134, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15641)
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 104, !dbg !16445
  %i.eq = load i8, ptr %i.ep, align 8, !dbg !16445, !range !2973, !alias.scope !16143, !noalias !16088, !noundef !1736 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eq, 2, !dbg !16445
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCskZzsEQPwaY5_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i, label %bb.x, !dbg !16446

bb.x:                                             ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80, !dbg !16445
    #dbg_value(ptr %i.bv, !16135, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15642)
    #dbg_value(ptr %i.bv, !16128, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15643)
    #dbg_value(ptr %i.bv, !16120, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15644)
    #dbg_value(ptr %i.bv, !16239, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !15647)
  %i.es = load ptr, ptr %i.er, align 16, !dbg !16447, !alias.scope !16143, !noalias !16088, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(ptr %i.es, !16115, !DIExpression(), !15650)
    #dbg_value(ptr %i.es, !16138, !DIExpression(), !15416)
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8, !dbg !16448, !noalias !16183
    #dbg_value(i64 %i.et, !16121, !DIExpression(), !15651)
  %i.eu = icmp slt i64 %i.et, 0, !dbg !16449
  br i1 %i.eu, label %bb.z, label %bb.y, !dbg !16449

bb.y:                                             ; preds = %bb.x
  %2 = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88, !dbg !16447
  %3 = load ptr, ptr %2, align 8, !dbg !16450, !alias.scope !16143, !noalias !16088, !nonnull !1736, !align !2656, !noundef !1736
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96, !dbg !16451
  %i.ew = load i64, ptr %i.ev, align 16, !dbg !16451, !alias.scope !16143, !noalias !16088, !noundef !1736
  br label %_RNvXsD_NtNtCskZzsEQPwaY5_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i, !dbg !16452

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.trap(), !dbg !16453
  unreachable, !dbg !16453

bb.aa:                                            ; preds = %.loopexit.split-lp84.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskZzsEQPwaY5_14regex_automata3dfa5dense10StartTableINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16454, !noalias !16183
  unreachable, !dbg !16454

_RNvXsD_NtNtCskZzsEQPwaY5_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i: ; preds = %bb.y, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i
  %.sroa.0.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ew, %bb.y ], [ undef, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i ], !dbg !16455
  %.sroa.0.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %3, %bb.y ], [ undef, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i ], !dbg !16455
  %.sroa.0.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.es, %bb.y ], [ undef, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit41.i.i.i.i.i.i.i ], !dbg !16455
    #dbg_value(ptr %i.bv, !16242, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15654)
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48, !dbg !16456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.09.32..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ey, i64 32, i1 false), !dbg !16456, !noalias !16247
    #dbg_value(ptr %i.bv, !16250, !DIExpression(DW_OP_plus_uconst, 792, DW_OP_stack_value), !15657)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %.sroa.9.96..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.i, i64 288, i1 false), !dbg !16454, !noalias !16255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.h, i64 328, i1 false), !dbg !16454, !noalias !16255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !16454, !noalias !16255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.09.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.bv, i64 32, i1 false), !dbg !16454, !noalias !16247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16444, !noalias !16141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16444, !noalias !16141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16444, !noalias !16141
    #dbg_value(ptr %.val.i.i.i, !16259, !DIExpression(DW_OP_plus_uconst, 816, DW_OP_stack_value), !15660)
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 816, !dbg !16457
  %i.fa = load <2 x i32>, ptr %i.ez, align 16, !dbg !16457, !alias.scope !16264, !noalias !16088
    #dbg_value(ptr %.val.i.i.i, !16106, !DIExpression(), !15661)
    #dbg_value(ptr %.val.i.i.i, !16265, !DIExpression(), !15664)
  %i.fb = load ptr, ptr %.val.i.i.i, align 16, !dbg !16458, !alias.scope !16264, !noalias !16088, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(ptr %i.fb, !16103, !DIExpression(), !15667)
    #dbg_value(ptr %i.fb, !16110, !DIExpression(), !15398)
  %i.fc = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8, !dbg !16459, !noalias !16267
    #dbg_value(i64 %i.fc, !16107, !DIExpression(), !15668)
  %i.fd = icmp slt i64 %i.fc, 0, !dbg !16460
  br i1 %i.fd, label %bb.ab, label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i, !dbg !16460

bb.ab:                                            ; preds = %_RNvXsD_NtNtCskZzsEQPwaY5_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i
  tail call void @llvm.trap(), !dbg !16461
  unreachable, !dbg !16461

.loopexit.split-lp64.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.l
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp64.i

.loopexit.split-lp64.i:                           ; preds = %.loopexit.split-lp64.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskZzsEQPwaY5_14regex_automata3dfa5dense10StartTableINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskZzsEQPwaY5_14regex_automata3dfa5dense10StartTableINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp300, %.loopexit.split-lp64.i.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr poison, !16269, !DIExpression(), !15671)
    #dbg_value(ptr poison, !16275, !DIExpression(), !15679)
    #dbg_value(ptr %i.bu, !16276, !DIExpression(), !15680)
    #dbg_value(i64 16, !16277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15681)
    #dbg_value(i64 832, !16277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15681)
    #dbg_value(ptr poison, !2715, !DIExpression(), !15683)
    #dbg_value(ptr poison, !2722, !DIExpression(), !15685)
    #dbg_value(ptr %i.bu, !2719, !DIExpression(), !15683)
    #dbg_value(ptr %i.bu, !2725, !DIExpression(), !15685)
    #dbg_value(ptr %i.bu, !2728, !DIExpression(), !15687)
    #dbg_value(ptr %i.bu, !2734, !DIExpression(), !15689)
    #dbg_value(i64 16, !2720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15683)
    #dbg_value(i64 16, !2726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15685)
    #dbg_value(i64 16, !2732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15687)
    #dbg_value(i64 16, !2735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15689)
    #dbg_value(i64 832, !2720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15683)
    #dbg_value(i64 832, !2726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15685)
    #dbg_value(i64 832, !2732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15687)
    #dbg_value(i64 832, !2735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15689)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 832, i64 noundef 16) #16, !dbg !16462, !noalias !16088
  br label %.body.i.i, !dbg !16463

_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %_RNvXsD_NtNtCskZzsEQPwaY5_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 808, !dbg !16464
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8, !dbg !16458
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !16465, !alias.scope !16264, !noalias !16088, !noundef !1736
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !16466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.09.i.i.i.i.i.i, i64 64, i1 false), !dbg !16467, !noalias !16288
    #dbg_value(ptr %.sroa.0.sroa.0.0.i.i.i.i.i.i.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !15386)
    #dbg_value(ptr %.sroa.0.sroa.4.0.i.i.i.i.i.i.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !15386)
    #dbg_value(i64 %.sroa.0.sroa.5.0.i.i.i.i.i.i.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !15386)
    #dbg_value(i8 %i.eq, !16092, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !15386)
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 105, !dbg !16466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(295) %.sroa.10.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(295) %.sroa.9.i.i.i.i.i.i, i64 295, i1 false), !dbg !16467, !noalias !16288
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 400, !dbg !16466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.11.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, i64 56, i1 false), !dbg !16467, !noalias !16288
    #dbg_value(i64 %i.ek, !16092, !DIExpression(DW_OP_LLVM_fragment, 3648, 64), !15386)
    #dbg_value(ptr %i.em, !16092, !DIExpression(DW_OP_LLVM_fragment, 3712, 64), !15386)
    #dbg_value(i64 %.val24.i.i.i.i.i.i.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 3776, 64), !15386)
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 480, !dbg !16466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.15.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, i64 328, i1 false), !dbg !16467, !noalias !16288
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 808, !dbg !16466
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.16.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.fe, i64 3, i1 false), !dbg !16467, !noalias !16088
    #dbg_value(i32 poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 6528, 32), !15386)
    #dbg_value(i32 poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 6560, 32), !15386)
    #dbg_value(ptr %i.fb, !16092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15386)
    #dbg_value(i64 %i.fg, !16092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15386)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i), !dbg !16468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i), !dbg !16468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.i.i.i.i.i), !dbg !16469
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i), !dbg !16469
  store ptr %i.fb, ptr %i.bu, align 16, !dbg !16466, !noalias !16288
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !16466
  store i64 %i.fg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !dbg !16466, !noalias !16288
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 80, !dbg !16466
  store ptr %.sroa.0.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 16, !dbg !16466, !noalias !16288
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 88, !dbg !16466
  store ptr %.sroa.0.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !dbg !16466, !noalias !16288
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 96, !dbg !16466
  store i64 %.sroa.0.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !dbg !16466, !noalias !16288
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 104, !dbg !16466
  store i8 %i.eq, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !dbg !16466, !noalias !16288
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 456, !dbg !16466
  store i64 %i.ek, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !dbg !16466, !noalias !16288
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 464, !dbg !16466
  store ptr %i.em, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 16, !dbg !16466, !noalias !16288
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 472, !dbg !16466
  store i64 %.val24.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !dbg !16466, !noalias !16288
  %.sroa.172.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 816, !dbg !16466
  store <2 x i32> %i.fa, ptr %.sroa.172.0..sroa_idx.i.i.i.i.i, align 16, !dbg !16466, !noalias !16288
    #dbg_value(ptr %i.bu, !15791, !DIExpression(), !15378)
  %i.fh = ptrtoint ptr %i.bu to i64, !dbg !16470
  br label %bb.ag, !dbg !16344

bb.ac:                                            ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.035.0207.i, i64 40, !dbg !16348
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !16471, !alias.scope !16085, !noundef !1736
  %i.fk = ptrtoint ptr %i.bq to i64, !dbg !16472
  br label %bb.ag, !dbg !16344

bb.ad:                                            ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !16473
  unreachable, !dbg !16473

bb.ae:                                            ; preds = %bb.k
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !16474

.body.i.i:                                        ; preds = %bb.ae, %.loopexit.split-lp64.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fl, %bb.ae ], [ %eh.lpad-body.i.i.i.i, %.loopexit.split-lp64.i ]
    #dbg_value(ptr %i.j, !3669, !DIExpression(), !15691)
    #dbg_value(ptr %i.j, !2581, !DIExpression(), !15693)
    #dbg_value(ptr %i.j, !2586, !DIExpression(), !15695)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ai unwind label %bb.af, !dbg !16475, !noalias !16089

bb.af:                                            ; preds = %.body.i.i
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16476, !noalias !16089
  unreachable, !dbg !16476

bb.ag:                                            ; preds = %bb.ac, %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.noexc.i
  %.sroa.5.sroa.6.0.i.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.e ], [ %i.fj, %bb.ac ], [ undef, %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i ], !dbg !16477
  %.sroa.5.sroa.5.0.i.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.f ], [ %i.bk, %bb.g ], [ %i.bm, %bb.h ], [ %i.bo, %bb.i ], [ undef, %bb.e ], [ %i.fk, %bb.ac ], [ %i.fh, %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i ], !dbg !16477
  %.sroa.5.sroa.0.0.i.i = phi i8 [ undef, %.noexc.i ], [ %i.bi, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.e ], [ undef, %bb.ac ], [ undef, %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field12MatchPatternENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf.exit.i.i.i ], !dbg !16477
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.052.i), !dbg !16478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.052.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !16476, !noalias !16025
    #dbg_value(i8 %i.bg, !15910, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !15340)
    #dbg_value(i8 %.sroa.5.sroa.0.0.i.i, !15910, !DIExpression(DW_OP_LLVM_fragment, 200, 8), !15340)
    #dbg_value(i64 %.sroa.5.sroa.5.0.i.i, !15910, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15340)
    #dbg_value(i64 %.sroa.5.sroa.6.0.i.i, !15910, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !15340)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16474, !noalias !16060
  %i.fn = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.sroa.7.0206.i, !dbg !16479 ; 5 uses
    #dbg_value(ptr %i.fn, !15915, !DIExpression(), !15340)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.052.i, i64 24, i1 false), !dbg !16480, !noalias !16037
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 24, !dbg !16480
  store i8 %i.bg, ptr %.sroa.453.0..sroa_idx.i, align 8, !dbg !16480, !noalias !16037
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 25, !dbg !16480
  store i8 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.554.0..sroa_idx.i, align 1, !dbg !16480, !noalias !16037
  %.sroa.756.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 32, !dbg !16480
  store i64 %.sroa.5.sroa.5.0.i.i, ptr %.sroa.756.0..sroa_idx.i, align 8, !dbg !16480, !noalias !16037
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 40, !dbg !16480
  store i64 %.sroa.5.sroa.6.0.i.i, ptr %.sroa.857.0..sroa_idx.i, align 8, !dbg !16480, !noalias !16037
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i), !dbg !16481
    #dbg_value(ptr %i.bd, !15843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15327)
    #dbg_value(i64 %i.be, !15843, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15327)
    #dbg_value(i64 %i.bb, !15843, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15327)
    #dbg_value(ptr undef, !15962, !DIExpression(), !15269)
  %i.fo = icmp eq i64 %i.bb, 0, !dbg !16331
  br i1 %i.fo, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !16331

bb.ah:                                            ; preds = %bb.ai
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !16482, !noalias !16037
  unreachable, !dbg !16482

bb.ai:                                            ; preds = %.body.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
    #dbg_value(ptr poison, !16303, !DIExpression(), !15698)
    #dbg_value(ptr poison, !16309, !DIExpression(), !15701)
    #dbg_value(ptr %i.l, !16312, !DIExpression(), !15704)
    #dbg_value(i64 %.sroa.7.0206.i, !16313, !DIExpression(), !15704)
  store i64 %.sroa.7.0206.i, ptr %i.z, align 8, !dbg !16483, !noalias !16025
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #17
          to label %bb.aj unwind label %bb.ah, !dbg !16484, !noalias !16037

bb.aj:                                            ; preds = %bb.ai
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !16482

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCs7n8GKOt6esj_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.ag, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i
    #dbg_value(ptr %i.l, !16035, !DIExpression(), !15705)
  store i64 %i.p, ptr %i.z, align 8, !dbg !16485, !noalias !16025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !16486, !noalias !16002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16484, !noalias !16025
  ret void, !dbg !16487
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !16489 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !16541, !DIExpression(), !16544)
    #dbg_value(ptr %1, !16545, !DIExpression(), !16551)
    #dbg_value(ptr %1, !16552, !DIExpression(), !16555)
    #dbg_value(ptr %1, !16556, !DIExpression(), !16559)
    #dbg_value(ptr %1, !16560, !DIExpression(), !16563)
    #dbg_declare(ptr poison, !16542, !DIExpression(), !16564)
    #dbg_declare(ptr poison, !16565, !DIExpression(), !16571)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16615
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16616
  %i.d = load ptr, ptr %i.c, align 8, !dbg !16616, !nonnull !1736, !noundef !1736
  %i.e = load i64, ptr %i.b, align 8, !dbg !16617, !noundef !1736 ; 5 uses
    #dbg_value(ptr %i.d, !16568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16580)
    #dbg_value(i64 %i.e, !16568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16581), !dbg !16618
    #dbg_declare(ptr %0, !16582, !DIExpression(), !16506)
    #dbg_value(ptr %i.d, !16583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16507)
    #dbg_value(i64 %i.e, !16583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16507)
    #dbg_declare(ptr poison, !16584, !DIExpression(), !16508)
    #dbg_declare(ptr poison, !16587, !DIExpression(), !16511)
    #dbg_declare(ptr poison, !16593, !DIExpression(), !16514)
    #dbg_value(i64 %i.e, !16585, !DIExpression(), !16515)
    #dbg_value(i64 %i.e, !16591, !DIExpression(), !16516)
    #dbg_value(i64 %i.e, !16597, !DIExpression(), !16517)
    #dbg_value(i64 %i.e, !16599, !DIExpression(), !16520)
    #dbg_value(i64 %i.e, !16605, !DIExpression(), !16523)
    #dbg_value(i64 %i.e, !16611, !DIExpression(), !16526)
    #dbg_value(i64 %i.e, !5211, !DIExpression(), !16528)
    #dbg_value(i64 %i.e, !5220, !DIExpression(), !16530)
    #dbg_declare(ptr poison, !5215, !DIExpression(), !16531)
    #dbg_value(i64 1, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16528)
    #dbg_value(i64 1, !5223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16530)
    #dbg_value(i64 1, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16528)
    #dbg_value(i64 1, !5223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16530)
    #dbg_value(i64 0, !5222, !DIExpression(), !16530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16619, !noalias !16614
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !16619, !noalias !16614
  %i.f = load i64, ptr %i.a, align 8, !dbg !16619, !range !5225, !noalias !16614, !noundef !1736
  %i.g = trunc nuw i64 %i.f to i1, !dbg !16620
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16621
  %i.i = load i64, ptr %i.h, align 8, !dbg !16621, !range !5226, !noalias !16614, !noundef !1736 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16621 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !16620, !prof !5187

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !16622, !noalias !16614
    #dbg_value(i64 %i.i, !5218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16533)
    #dbg_value(i64 %i.k, !5218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16533)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #20, !dbg !16623, !noalias !16614
  unreachable, !dbg !16623

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !16624, !noalias !16614, !nonnull !1736, !noundef !1736 ; 2 uses
    #dbg_value(i64 %i.i, !5217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16534)
    #dbg_value(ptr %i.l, !5217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16534)
    #dbg_value(ptr poison, !5221, !DIExpression(), !16535)
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !16625
    #dbg_value(i1 true, !5229, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16537)
  tail call void @llvm.assume(i1 %i.m), !dbg !16626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16627, !noalias !16614
  store i64 %i.i, ptr %0, align 8, !dbg !16628, !alias.scope !16581
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16628
  store ptr %i.l, ptr %i.n, align 8, !dbg !16628, !alias.scope !16581
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16628 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !16628, !alias.scope !16581
  %.not.i = icmp eq i64 %i.e, 0, !dbg !16629
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !16629

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i
    #dbg_value(ptr %i.d, !16602, !DIExpression(), !16520)
    #dbg_value(ptr %i.d, !16608, !DIExpression(), !16523)
    #dbg_value(ptr %i.l, !16603, !DIExpression(), !16520)
    #dbg_value(ptr %i.l, !16609, !DIExpression(), !16523)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !dbg !16630, !noalias !16581
    #dbg_value(ptr %0, !16612, !DIExpression(), !16538)
  store i64 %i.e, ptr %i.o, align 8, !dbg !16631, !alias.scope !16581
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit, !dbg !16632

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskigd7sy4fqX_10quinn_perf.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskigd7sy4fqX_10quinn_perf.exit.i, %bb.c
  ret void, !dbg !16633
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16637 {
bb.a:
    #dbg_value(ptr %0, !16667, !DIExpression(), !16669)
    #dbg_value(ptr %0, !16670, !DIExpression(), !16677)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16716
  %i.b = load ptr, ptr %i.a, align 8, !dbg !16716, !nonnull !1736, !noundef !1736 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16717
  %i.d = load i64, ptr %i.c, align 8, !dbg !16717, !noundef !1736 ; 4 uses
    #dbg_value(ptr %i.b, !16692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16704)
    #dbg_value(ptr %i.b, !16705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16708)
    #dbg_value(i64 %i.d, !16692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16704)
    #dbg_value(i64 %i.d, !16705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16708)
end_hunk_1
