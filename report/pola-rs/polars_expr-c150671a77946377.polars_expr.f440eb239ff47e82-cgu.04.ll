Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.04?download=true
inline.NumInlined: 7353
inline.NumDeleted: 1066
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction28update_groups_while_evictingB7_:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !108402, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !108403
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !108404, !noundef !12
  %.not17 = icmp eq ptr %i.ay, null, !dbg !108404 ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !dbg !108407, !nonnull !12, !align !6617 ; 2 uses
  %.sroa.012.0 = select i1 %.not17, ptr %i.az, ptr %i.d, !dbg !108407
  %i.ba = load ptr, ptr %.sroa.012.0, align 8, !dbg !108408, !nonnull !12, !noundef !12
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !108408
  %.sroa.012.0.sroa.sel = select i1 %.not17, ptr %.sroa.gep45, ptr %i.ab, !dbg !108408
  %i.bb = load ptr, ptr %.sroa.012.0.sroa.sel, align 8, !dbg !108408, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !108419
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !108419, !range !802, !invariant.load !12
  %i.be = add nsw i64 %i.bd, -1, !dbg !108419
  %i.bf = and i64 %i.be, -16, !dbg !108419
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf, !dbg !108419
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !108419
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 616, !dbg !108405
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !108405, !invariant.load !12, !nonnull !12
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.p, !dbg !108420

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5, !dbg !108421 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %5, !dbg !108428 ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.u, !dbg !108405

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit unwind label %bb.p, !dbg !108433

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31 unwind label %bb.p, !dbg !108436

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit: ; preds = %bb.u
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !dbg !108439 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !108439
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !108439 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !108439
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !108439 ; 2 uses
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !108439
  %.sroa.754.0.copyload = load i64, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !108439 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.553.0.copyload, %.sroa.754.0.copyload, !dbg !108440
  br i1 %i.bn, label %.lr.ph, label %.thread, !dbg !108440

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.451.0.copyload) ]
  %i.bo = getelementptr i8, ptr %i.ax, i64 40
  %i.bp = getelementptr i8, ptr %i.ax, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.w, !dbg !108440

bb.w:                                             ; preds = %.lr.ph, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit25
  %.sroa.553.065 = phi i64 [ %.sroa.553.0.copyload, %.lr.ph ], [ %i.bu, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit25 ] ; 3 uses
  %i.bu = add i64 %.sroa.553.065, 1, !dbg !108446 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0.copyload, i64 %.sroa.553.065, !dbg !108447
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.451.0.copyload, i64 %.sroa.553.065, !dbg !108450
  %i.bx = load i32, ptr %i.bv, align 4, !dbg !108453, !noundef !12
  %i.by = zext i32 %i.bx to i64, !dbg !108453     ; 2 uses
  %.val = load ptr, ptr %i.bo, align 8, !dbg !108455, !noundef !12
  %.val26 = load i64, ptr %i.bp, align 8, !dbg !108455, !noundef !12
  %i.bz = icmp ugt i64 %.val26, %i.by, !dbg !108456
  call void @llvm.assume(i1 %i.bz), !dbg !108461
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.by, !dbg !108462
  %i.cb = load i16, ptr %i.ca, align 2, !dbg !108463, !noundef !12
  %i.cc = load ptr, ptr %i.bq, align 8, !dbg !108464, !nonnull !12, !noundef !12
  %i.cd = load i32, ptr %i.bw, align 4, !dbg !108483, !noundef !12 ; 2 uses
  %i.ce = and i32 %i.cd, 2147483647, !dbg !108486
  %i.cf = zext nneg i32 %i.ce to i64, !dbg !108486
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cf, !dbg !108487 ; 6 uses
  %i.ch = icmp sgt i32 %i.cd, -1, !dbg !108493
  br i1 %i.ch, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit25, label %bb.aa, !dbg !108493

.thread:                                          ; preds = %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit25, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  store i64 18, ptr %0, align 8, !dbg !108495
  call void @llvm.experimental.noalias.scope.decl(metadata !108496), !dbg !108366
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !108499, !alias.scope !108496, !noundef !12 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null, !dbg !108499
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, label %bb.x, !dbg !108499

bb.x:                                             ; preds = %.thread
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !108501, !noalias !108507
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !108514
  br i1 %i.cl, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !108514

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !108515
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #31, !dbg !108517
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !108517

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32: ; preds = %.thread, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !108366
  ret void, !dbg !108518

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit25: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.w
  %i.cm = uitofp i16 %i.cb to double, !dbg !108519
  %i.cn = load double, ptr %i.cg, align 8, !dbg !108523, !alias.scope !108524, !noundef !12
  %i.co = fadd double %i.cn, %i.cm, !dbg !108523
  store double %i.co, ptr %i.cg, align 8, !dbg !108523, !alias.scope !108524
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !108527 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !108527, !alias.scope !108524, !noundef !12
  %i.cr = add i64 %i.cq, 1, !dbg !108527
  store i64 %i.cr, ptr %i.cp, align 8, !dbg !108527, !alias.scope !108524
  %exitcond.not = icmp eq i64 %i.bu, %.sroa.754.0.copyload, !dbg !108440
  br i1 %exitcond.not, label %.thread, label %bb.w, !dbg !108440

bb.z:                                             ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !108528

bb.aa:                                            ; preds = %bb.w
  %i.ct = load double, ptr %i.cg, align 8, !dbg !108529, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !108529
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !108529, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !dbg !108532
  %i.cw = load i64, ptr %i.bs, align 8, !dbg !108534, !alias.scope !108539, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.br, align 8, !dbg !108542, !range !791, !alias.scope !108539, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !108545
  br i1 %i.cy, label %bb.ab, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !108545

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %bb.z, !dbg !108546

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr %i.bt, align 16, !dbg !108547, !alias.scope !108539, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !108552 ; 2 uses
  store double %i.ct, ptr %i.da, align 8, !dbg !108554
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !108554
  store i64 %i.cv, ptr %i.db, align 8, !dbg !108554
  %i.dc = add i64 %i.cw, 1, !dbg !108556
  store i64 %i.dc, ptr %i.bs, align 8, !dbg !108556, !alias.scope !108539
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit25, !dbg !108557

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31: ; preds = %bb.v
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !108558 ; 2 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !108558
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !108558 ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !108558
  %.sroa.548.0.copyload = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !dbg !108558 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !108558
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !108558 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.548.0.copyload, %.sroa.7.0.copyload, !dbg !108559
  br i1 %i.dd, label %.lr.ph67, label %.thread, !dbg !108559

.lr.ph67:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.447.0.copyload) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.dg = getelementptr i8, ptr %i.ax, i64 40
  %i.dh = getelementptr i8, ptr %i.ax, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ac, !dbg !108559

bb.ac:                                            ; preds = %.lr.ph67, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit
  %.sroa.548.066 = phi i64 [ %.sroa.548.0.copyload, %.lr.ph67 ], [ %i.dm, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit ] ; 3 uses
  %i.dm = add i64 %.sroa.548.066, 1, !dbg !108564 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.447.0.copyload, i64 %.sroa.548.066, !dbg !108565
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.548.066, !dbg !108568
  %i.dp = load i32, ptr %i.do, align 4, !dbg !108571, !noundef !12
  %i.dq = zext i32 %i.dp to i64, !dbg !108571     ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !dbg !108573, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null, !dbg !108573
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !108578

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40, !dbg !108580
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !108580, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !108585
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !108585, !noundef !12
  %i.dw = load i64, ptr %i.df, align 8, !dbg !108586, !noundef !12
  %i.dx = add i64 %i.dw, %i.dq, !dbg !108586      ; 2 uses
  %i.dy = lshr i64 %i.dx, 3, !dbg !108587         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dt, !dbg !108589
  call void @llvm.assume(i1 %i.dz), !dbg !108592
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy, !dbg !108593
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !108594, !noundef !12
  %i.ec = trunc i64 %i.dx to i8, !dbg !108595
  %i.ed = and i8 %i.ec, 7, !dbg !108595
  %i.ee = xor i8 %i.eb, -1, !dbg !108596
  %i.ef = lshr i8 %i.ee, %i.ed, !dbg !108596
  %i.eg = trunc i8 %i.ef to i1, !dbg !108597
  br i1 %i.eg, label %bb.ad, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !108598

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, %bb.ac
  %.val.i39 = load ptr, ptr %i.dg, align 8, !dbg !108599, !noundef !12
  %.val1.i = load i64, ptr %i.dh, align 8, !dbg !108599, !noundef !12
  %i.eh = icmp ugt i64 %.val1.i, %i.dq, !dbg !108600
  call void @llvm.assume(i1 %i.eh), !dbg !108605
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.val.i39, i64 %i.dq, !dbg !108606
  %i.ej = load i16, ptr %i.ei, align 2, !dbg !108607, !noundef !12
  br label %bb.ad, !dbg !108608

bb.ad:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.3.0.i40 = phi i16 [ %i.ej, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ]
  %.sroa.0.0.i41 = phi i16 [ 1, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108609 ; 2 uses
  %i.ek = load ptr, ptr %i.di, align 8, !dbg !108610, !nonnull !12, !noundef !12
  %i.el = load i32, ptr %i.dn, align 4, !dbg !108618, !noundef !12 ; 2 uses
  %i.em = and i32 %i.el, 2147483647, !dbg !108620
  %i.en = zext nneg i32 %i.em to i64, !dbg !108620
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en, !dbg !108621 ; 6 uses
  %i.ep = icmp sgt i32 %i.el, -1, !dbg !108624
  br i1 %i.ep, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit, label %bb.af, !dbg !108624

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, %bb.ad
  %i.eq = trunc nuw i16 %.sroa.0.0.i41 to i1, !dbg !108626
  %spec.select.i = select i1 %i.eq, i16 %.sroa.3.0.i40, i16 0, !dbg !108626
  %9 = uitofp i16 %spec.select.i to double, !dbg !108630
  %i.er = load double, ptr %i.eo, align 8, !dbg !108632, !alias.scope !108633, !noundef !12
  %i.es = fadd double %i.er, %9, !dbg !108632
  store double %i.es, ptr %i.eo, align 8, !dbg !108632, !alias.scope !108633
  %i.et = zext nneg i16 %.sroa.0.0.i41 to i64, !dbg !108636
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !108637 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !108637, !alias.scope !108633, !noundef !12
  %i.ew = add i64 %i.ev, %i.et, !dbg !108637
  store i64 %i.ew, ptr %i.eu, align 8, !dbg !108637, !alias.scope !108633
  %exitcond69.not = icmp eq i64 %i.dm, %.sroa.7.0.copyload, !dbg !108559
  br i1 %exitcond69.not, label %.thread, label %bb.ac, !dbg !108559

bb.ae:                                            ; preds = %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !108638

bb.af:                                            ; preds = %bb.ad
  %i.ey = load double, ptr %i.eo, align 8, !dbg !108639, !noundef !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !108639
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !108639, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !dbg !108641
  %i.fb = load i64, ptr %i.dk, align 8, !dbg !108643, !alias.scope !108647, !noundef !12 ; 3 uses
  %i.fc = load i64, ptr %i.dj, align 8, !dbg !108650, !range !791, !alias.scope !108647, !noundef !12
  %i.fd = icmp eq i64 %i.fb, %i.fc, !dbg !108653
  br i1 %i.fd, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, !dbg !108653

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43 unwind label %bb.ae, !dbg !108654

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43: ; preds = %bb.ag, %bb.af
  %i.fe = load ptr, ptr %i.dl, align 16, !dbg !108655, !alias.scope !108647, !nonnull !12, !noundef !12
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fb, !dbg !108660 ; 2 uses
  store double %i.ey, ptr %i.ff, align 8, !dbg !108662
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !108662
  store i64 %i.fa, ptr %i.fg, align 8, !dbg !108662
  %i.fh = add i64 %i.fb, 1, !dbg !108664
  store i64 %i.fh, ptr %i.dk, align 8, !dbg !108664, !alias.scope !108647
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_.exit, !dbg !108665

bb.ah:                                            ; preds = %bb.o
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !108666
  unreachable, !dbg !108666

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n, %bb.m, %bb.o
  resume { ptr, i32 } %.pn, !dbg !108666
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction6as_anyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #4 !dbg !108667 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !108668
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @561, 1, !dbg !108668
  ret { ptr, ptr } %i.b, !dbg !108668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction6resizeB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 !dbg !108669 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !108670
  %i.b = zext i32 %1 to i64, !dbg !108671
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, double noundef 0.000000e+00, i64 noundef 0), !dbg !108672
  ret void, !dbg !108673
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction7reserveB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !108674 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !108675
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1), !dbg !108676
  ret void, !dbg !108677
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction8finalizeB7_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 !dbg !108678 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !108679 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !108679
  store i64 0, ptr %i.c, align 16, !dbg !108684
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !108684
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !108684
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !108684
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !108684
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !108686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !108688
  store ptr null, ptr %i.a, align 8, !dbg !108688
  call void @_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer6finishB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !108689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !108690
  ret void, !dbg !108691
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction9new_emptyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !108692 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !108693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !108694
  store i64 0, ptr %i.c, align 8, !dbg !108695
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !108695
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !108695
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !108695
  store i64 0, ptr %i.f, align 8, !dbg !108695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !108697
  store i64 0, ptr %i.b, align 8, !dbg !108698
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !108698
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !108698
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !108698
  store i64 0, ptr %i.h, align 8, !dbg !108698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !108699
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !108700

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.h unwind label %bb.g, !dbg !108701

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !108693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !108693
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !108693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !108693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !108693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !108701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !108701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !108701
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !108702, !noalias !108709
  %i.l = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 193) 96, i64 noundef range(i64 8, 17) 16) #30, !dbg !108712, !noalias !108709 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !108713
  br i1 %i.m, label %bb.d, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEEE3newBJ_.exit, !dbg !108714, !prof !769

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #35
          to label %.noexc unwind label %bb.e, !dbg !108715

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !108715

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBJ_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEEEBL_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #32
          to label %common.resume unwind label %bb.f, !dbg !108716

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !108717
  unreachable, !dbg !108717

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !108718

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEEE3newBJ_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !108719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !108720
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !108721
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @560, 1, !dbg !108721
  ret { ptr, ptr } %i.q, !dbg !108721

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !108722
  unreachable, !dbg !108722

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g, !dbg !108701
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction12update_groupB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !108723 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = icmp eq i64 %3, 1, !dbg !108724
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !108724, !prof !11156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #34, !dbg !108725
  unreachable, !dbg !108725

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !dbg !108726, !nonnull !12, !align !11159, !noundef !12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 16, !dbg !108727, !range !11168, !noundef !12
  %.not = icmp eq i8 %i.d, 31, !dbg !108727
  br i1 %.not, label %bb.d, label %bb.e, !dbg !108731

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !108732
  %i.f = load ptr, ptr %i.e, align 8, !dbg !108732, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !108732
  %i.h = load ptr, ptr %i.g, align 16, !dbg !108732, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction28update_groups_while_evictingB7_:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !109125, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109126
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !109127, !noundef !12
  %.not17 = icmp eq ptr %i.ay, null, !dbg !109127 ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !dbg !109130, !nonnull !12, !align !6617 ; 2 uses
  %.sroa.012.0 = select i1 %.not17, ptr %i.az, ptr %i.d, !dbg !109130
  %i.ba = load ptr, ptr %.sroa.012.0, align 8, !dbg !109131, !nonnull !12, !noundef !12
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !109131
  %.sroa.012.0.sroa.sel = select i1 %.not17, ptr %.sroa.gep45, ptr %i.ab, !dbg !109131
  %i.bb = load ptr, ptr %.sroa.012.0.sroa.sel, align 8, !dbg !109131, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !109142
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !109142, !range !802, !invariant.load !12
  %i.be = add nsw i64 %i.bd, -1, !dbg !109142
  %i.bf = and i64 %i.be, -16, !dbg !109142
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf, !dbg !109142
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !109142
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 616, !dbg !109128
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !109128, !invariant.load !12, !nonnull !12
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.p, !dbg !109143

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5, !dbg !109144 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %5, !dbg !109151 ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.u, !dbg !109128

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit unwind label %bb.p, !dbg !109156

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31 unwind label %bb.p, !dbg !109159

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit: ; preds = %bb.u
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !dbg !109162 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !109162
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !109162 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !109162
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !109162 ; 2 uses
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !109162
  %.sroa.754.0.copyload = load i64, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !109162 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.553.0.copyload, %.sroa.754.0.copyload, !dbg !109163
  br i1 %i.bn, label %.lr.ph, label %.thread, !dbg !109163

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.451.0.copyload) ]
  %i.bo = getelementptr i8, ptr %i.ax, i64 40
  %i.bp = getelementptr i8, ptr %i.ax, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.w, !dbg !109163

bb.w:                                             ; preds = %.lr.ph, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit25
  %.sroa.553.065 = phi i64 [ %.sroa.553.0.copyload, %.lr.ph ], [ %i.bu, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit25 ] ; 3 uses
  %i.bu = add i64 %.sroa.553.065, 1, !dbg !109169 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0.copyload, i64 %.sroa.553.065, !dbg !109170
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.451.0.copyload, i64 %.sroa.553.065, !dbg !109173
  %i.bx = load i32, ptr %i.bv, align 4, !dbg !109176, !noundef !12
  %i.by = zext i32 %i.bx to i64, !dbg !109176     ; 2 uses
  %.val = load ptr, ptr %i.bo, align 8, !dbg !109178, !noundef !12
  %.val26 = load i64, ptr %i.bp, align 8, !dbg !109178, !noundef !12
  %i.bz = icmp ugt i64 %.val26, %i.by, !dbg !109179
  call void @llvm.assume(i1 %i.bz), !dbg !109184
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.by, !dbg !109185
  %i.cb = load i32, ptr %i.ca, align 4, !dbg !109186, !noundef !12
  %i.cc = load ptr, ptr %i.bq, align 8, !dbg !109187, !nonnull !12, !noundef !12
  %i.cd = load i32, ptr %i.bw, align 4, !dbg !109206, !noundef !12 ; 2 uses
  %i.ce = and i32 %i.cd, 2147483647, !dbg !109209
  %i.cf = zext nneg i32 %i.ce to i64, !dbg !109209
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cf, !dbg !109210 ; 6 uses
  %i.ch = icmp sgt i32 %i.cd, -1, !dbg !109216
  br i1 %i.ch, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit25, label %bb.aa, !dbg !109216

.thread:                                          ; preds = %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit25, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  store i64 18, ptr %0, align 8, !dbg !109218
  call void @llvm.experimental.noalias.scope.decl(metadata !109219), !dbg !109089
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !109222, !alias.scope !109219, !noundef !12 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null, !dbg !109222
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, label %bb.x, !dbg !109222

bb.x:                                             ; preds = %.thread
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !109224, !noalias !109230
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !109237
  br i1 %i.cl, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !109237

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !109238
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #31, !dbg !109240
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !109240

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32: ; preds = %.thread, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !109089
  ret void, !dbg !109241

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit25: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.w
  %i.cm = uitofp i32 %i.cb to double, !dbg !109242
  %i.cn = load double, ptr %i.cg, align 8, !dbg !109246, !alias.scope !109247, !noundef !12
  %i.co = fadd double %i.cn, %i.cm, !dbg !109246
  store double %i.co, ptr %i.cg, align 8, !dbg !109246, !alias.scope !109247
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !109250 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !109250, !alias.scope !109247, !noundef !12
  %i.cr = add i64 %i.cq, 1, !dbg !109250
  store i64 %i.cr, ptr %i.cp, align 8, !dbg !109250, !alias.scope !109247
  %exitcond.not = icmp eq i64 %i.bu, %.sroa.754.0.copyload, !dbg !109163
  br i1 %exitcond.not, label %.thread, label %bb.w, !dbg !109163

bb.z:                                             ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !109251

bb.aa:                                            ; preds = %bb.w
  %i.ct = load double, ptr %i.cg, align 8, !dbg !109252, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !109252
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !109252, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !dbg !109255
  %i.cw = load i64, ptr %i.bs, align 8, !dbg !109257, !alias.scope !109262, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.br, align 8, !dbg !109265, !range !791, !alias.scope !109262, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !109268
  br i1 %i.cy, label %bb.ab, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !109268

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %bb.z, !dbg !109269

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr %i.bt, align 16, !dbg !109270, !alias.scope !109262, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !109275 ; 2 uses
  store double %i.ct, ptr %i.da, align 8, !dbg !109277
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !109277
  store i64 %i.cv, ptr %i.db, align 8, !dbg !109277
  %i.dc = add i64 %i.cw, 1, !dbg !109279
  store i64 %i.dc, ptr %i.bs, align 8, !dbg !109279, !alias.scope !109262
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit25, !dbg !109280

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31: ; preds = %bb.v
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !109281 ; 2 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !109281
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !109281 ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !109281
  %.sroa.548.0.copyload = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !dbg !109281 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !109281
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !109281 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.548.0.copyload, %.sroa.7.0.copyload, !dbg !109282
  br i1 %i.dd, label %.lr.ph67, label %.thread, !dbg !109282

.lr.ph67:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.447.0.copyload) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.dg = getelementptr i8, ptr %i.ax, i64 40
  %i.dh = getelementptr i8, ptr %i.ax, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ac, !dbg !109282

bb.ac:                                            ; preds = %.lr.ph67, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit
  %.sroa.548.066 = phi i64 [ %.sroa.548.0.copyload, %.lr.ph67 ], [ %i.dm, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit ] ; 3 uses
  %i.dm = add i64 %.sroa.548.066, 1, !dbg !109287 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.447.0.copyload, i64 %.sroa.548.066, !dbg !109288
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.548.066, !dbg !109291
  %i.dp = load i32, ptr %i.do, align 4, !dbg !109294, !noundef !12
  %i.dq = zext i32 %i.dp to i64, !dbg !109294     ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !dbg !109296, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null, !dbg !109296
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !109301

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40, !dbg !109303
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !109303, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !109308
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !109308, !noundef !12
  %i.dw = load i64, ptr %i.df, align 8, !dbg !109309, !noundef !12
  %i.dx = add i64 %i.dw, %i.dq, !dbg !109309      ; 2 uses
  %i.dy = lshr i64 %i.dx, 3, !dbg !109310         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dt, !dbg !109312
  call void @llvm.assume(i1 %i.dz), !dbg !109315
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy, !dbg !109316
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !109317, !noundef !12
  %i.ec = trunc i64 %i.dx to i8, !dbg !109318
  %i.ed = and i8 %i.ec, 7, !dbg !109318
  %i.ee = xor i8 %i.eb, -1, !dbg !109319
  %i.ef = lshr i8 %i.ee, %i.ed, !dbg !109319
  %i.eg = trunc i8 %i.ef to i1, !dbg !109320
  br i1 %i.eg, label %bb.ad, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !109321

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, %bb.ac
  %.val.i39 = load ptr, ptr %i.dg, align 8, !dbg !109322, !noundef !12
  %.val1.i = load i64, ptr %i.dh, align 8, !dbg !109322, !noundef !12
  %i.eh = icmp ugt i64 %.val1.i, %i.dq, !dbg !109323
  call void @llvm.assume(i1 %i.eh), !dbg !109328
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val.i39, i64 %i.dq, !dbg !109329
  %i.ej = load i32, ptr %i.ei, align 4, !dbg !109330, !noundef !12
  br label %bb.ad, !dbg !109331

bb.ad:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.3.0.i40 = phi i32 [ %i.ej, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ]
  %.sroa.0.0.i41 = phi i32 [ 1, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !109332 ; 2 uses
  %i.ek = load ptr, ptr %i.di, align 8, !dbg !109333, !nonnull !12, !noundef !12
  %i.el = load i32, ptr %i.dn, align 4, !dbg !109341, !noundef !12 ; 2 uses
  %i.em = and i32 %i.el, 2147483647, !dbg !109343
  %i.en = zext nneg i32 %i.em to i64, !dbg !109343
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en, !dbg !109344 ; 6 uses
  %i.ep = icmp sgt i32 %i.el, -1, !dbg !109347
  br i1 %i.ep, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit, label %bb.af, !dbg !109347

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, %bb.ad
  %i.eq = trunc nuw i32 %.sroa.0.0.i41 to i1, !dbg !109349
  %spec.select.i = select i1 %i.eq, i32 %.sroa.3.0.i40, i32 0, !dbg !109349
  %9 = uitofp i32 %spec.select.i to double, !dbg !109353
  %i.er = load double, ptr %i.eo, align 8, !dbg !109355, !alias.scope !109356, !noundef !12
  %i.es = fadd double %i.er, %9, !dbg !109355
  store double %i.es, ptr %i.eo, align 8, !dbg !109355, !alias.scope !109356
  %i.et = zext nneg i32 %.sroa.0.0.i41 to i64, !dbg !109359
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !109360 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !109360, !alias.scope !109356, !noundef !12
  %i.ew = add i64 %i.ev, %i.et, !dbg !109360
  store i64 %i.ew, ptr %i.eu, align 8, !dbg !109360, !alias.scope !109356
  %exitcond69.not = icmp eq i64 %i.dm, %.sroa.7.0.copyload, !dbg !109282
  br i1 %exitcond69.not, label %.thread, label %bb.ac, !dbg !109282

bb.ae:                                            ; preds = %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !109361

bb.af:                                            ; preds = %bb.ad
  %i.ey = load double, ptr %i.eo, align 8, !dbg !109362, !noundef !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !109362
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !109362, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !dbg !109364
  %i.fb = load i64, ptr %i.dk, align 8, !dbg !109366, !alias.scope !109370, !noundef !12 ; 3 uses
  %i.fc = load i64, ptr %i.dj, align 8, !dbg !109373, !range !791, !alias.scope !109370, !noundef !12
  %i.fd = icmp eq i64 %i.fb, %i.fc, !dbg !109376
  br i1 %i.fd, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, !dbg !109376

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43 unwind label %bb.ae, !dbg !109377

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43: ; preds = %bb.ag, %bb.af
  %i.fe = load ptr, ptr %i.dl, align 16, !dbg !109378, !alias.scope !109370, !nonnull !12, !noundef !12
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fb, !dbg !109383 ; 2 uses
  store double %i.ey, ptr %i.ff, align 8, !dbg !109385
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !109385
  store i64 %i.fa, ptr %i.fg, align 8, !dbg !109385
  %i.fh = add i64 %i.fb, 1, !dbg !109387
  store i64 %i.fh, ptr %i.dk, align 8, !dbg !109387, !alias.scope !109370
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_.exit, !dbg !109388

bb.ah:                                            ; preds = %bb.o
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !109389
  unreachable, !dbg !109389

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n, %bb.m, %bb.o
  resume { ptr, i32 } %.pn, !dbg !109389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction6as_anyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #4 !dbg !109390 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !109391
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @563, 1, !dbg !109391
  ret { ptr, ptr } %i.b, !dbg !109391
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction6resizeB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 !dbg !109392 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !109393
  %i.b = zext i32 %1 to i64, !dbg !109394
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, double noundef 0.000000e+00, i64 noundef 0), !dbg !109395
  ret void, !dbg !109396
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction7reserveB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !109397 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !109398
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1), !dbg !109399
  ret void, !dbg !109400
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction8finalizeB7_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 !dbg !109401 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !109402 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !109402
  store i64 0, ptr %i.c, align 16, !dbg !109407
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !109407
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !109407
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !109407
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !109407
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !109409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !109411
  store ptr null, ptr %i.a, align 8, !dbg !109411
  call void @_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer6finishB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !109412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109413
  ret void, !dbg !109414
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction9new_emptyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !109415 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !109416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !109417
  store i64 0, ptr %i.c, align 8, !dbg !109418
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !109418
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !109418
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !109418
  store i64 0, ptr %i.f, align 8, !dbg !109418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !109420
  store i64 0, ptr %i.b, align 8, !dbg !109421
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !109421
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !109421
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !109421
  store i64 0, ptr %i.h, align 8, !dbg !109421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !109422
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !109423

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.h unwind label %bb.g, !dbg !109424

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !109416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !109416
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !109416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !109416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !109416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !109424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !109424
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !109425, !noalias !109432
  %i.l = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 193) 96, i64 noundef range(i64 8, 17) 16) #30, !dbg !109435, !noalias !109432 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !109436
  br i1 %i.m, label %bb.d, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEEE3newBJ_.exit, !dbg !109437, !prof !769

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #35
          to label %.noexc unwind label %bb.e, !dbg !109438

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !109438

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBJ_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEEEBL_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #32
          to label %common.resume unwind label %bb.f, !dbg !109439

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !109440
  unreachable, !dbg !109440

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !109441

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEEE3newBJ_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !109442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !109443
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !109444
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @562, 1, !dbg !109444
  ret { ptr, ptr } %i.q, !dbg !109444

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !109445
  unreachable, !dbg !109445

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g, !dbg !109424
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction12update_groupB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !109446 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = icmp eq i64 %3, 1, !dbg !109447
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !109447, !prof !11156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #34, !dbg !109448
  unreachable, !dbg !109448

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !dbg !109449, !nonnull !12, !align !11159, !noundef !12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 16, !dbg !109450, !range !11168, !noundef !12
  %.not = icmp eq i8 %i.d, 31, !dbg !109450
  br i1 %.not, label %bb.d, label %bb.e, !dbg !109454

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !109455
  %i.f = load ptr, ptr %i.e, align 8, !dbg !109455, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !109455
  %i.h = load ptr, ptr %i.g, align 16, !dbg !109455, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction28update_groups_while_evictingB7_:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !109848, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109849
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !109850, !noundef !12
  %.not17 = icmp eq ptr %i.ay, null, !dbg !109850 ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !dbg !109853, !nonnull !12, !align !6617 ; 2 uses
  %.sroa.012.0 = select i1 %.not17, ptr %i.az, ptr %i.d, !dbg !109853
  %i.ba = load ptr, ptr %.sroa.012.0, align 8, !dbg !109854, !nonnull !12, !noundef !12
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !109854
  %.sroa.012.0.sroa.sel = select i1 %.not17, ptr %.sroa.gep45, ptr %i.ab, !dbg !109854
  %i.bb = load ptr, ptr %.sroa.012.0.sroa.sel, align 8, !dbg !109854, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !109865
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !109865, !range !802, !invariant.load !12
  %i.be = add nsw i64 %i.bd, -1, !dbg !109865
  %i.bf = and i64 %i.be, -16, !dbg !109865
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf, !dbg !109865
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !109865
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 616, !dbg !109851
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !109851, !invariant.load !12, !nonnull !12
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.p, !dbg !109866

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5, !dbg !109867 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %5, !dbg !109874 ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.u, !dbg !109851

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit unwind label %bb.p, !dbg !109879

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31 unwind label %bb.p, !dbg !109882

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit: ; preds = %bb.u
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !dbg !109885 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !109885
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !109885 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !109885
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !109885 ; 2 uses
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !109885
  %.sroa.754.0.copyload = load i64, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !109885 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.553.0.copyload, %.sroa.754.0.copyload, !dbg !109886
  br i1 %i.bn, label %.lr.ph, label %.thread, !dbg !109886

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.451.0.copyload) ]
  %i.bo = getelementptr i8, ptr %i.ax, i64 40
  %i.bp = getelementptr i8, ptr %i.ax, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.w, !dbg !109886

bb.w:                                             ; preds = %.lr.ph, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit25
  %.sroa.553.065 = phi i64 [ %.sroa.553.0.copyload, %.lr.ph ], [ %i.bu, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit25 ] ; 3 uses
  %i.bu = add i64 %.sroa.553.065, 1, !dbg !109892 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0.copyload, i64 %.sroa.553.065, !dbg !109893
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.451.0.copyload, i64 %.sroa.553.065, !dbg !109896
  %i.bx = load i32, ptr %i.bv, align 4, !dbg !109899, !noundef !12
  %i.by = zext i32 %i.bx to i64, !dbg !109899     ; 2 uses
  %.val = load ptr, ptr %i.bo, align 8, !dbg !109901, !noundef !12
  %.val26 = load i64, ptr %i.bp, align 8, !dbg !109901, !noundef !12
  %i.bz = icmp ugt i64 %.val26, %i.by, !dbg !109902
  call void @llvm.assume(i1 %i.bz), !dbg !109907
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.by, !dbg !109908
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !109909, !noundef !12
  %i.cc = load ptr, ptr %i.bq, align 8, !dbg !109910, !nonnull !12, !noundef !12
  %i.cd = load i32, ptr %i.bw, align 4, !dbg !109929, !noundef !12 ; 2 uses
  %i.ce = and i32 %i.cd, 2147483647, !dbg !109932
  %i.cf = zext nneg i32 %i.ce to i64, !dbg !109932
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cf, !dbg !109933 ; 6 uses
  %i.ch = icmp sgt i32 %i.cd, -1, !dbg !109939
  br i1 %i.ch, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit25, label %bb.aa, !dbg !109939

.thread:                                          ; preds = %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit25, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  store i64 18, ptr %0, align 8, !dbg !109941
  call void @llvm.experimental.noalias.scope.decl(metadata !109942), !dbg !109812
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !109945, !alias.scope !109942, !noundef !12 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null, !dbg !109945
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, label %bb.x, !dbg !109945

bb.x:                                             ; preds = %.thread
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !109947, !noalias !109953
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !109960
  br i1 %i.cl, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !109960

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !109961
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #31, !dbg !109963
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !109963

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32: ; preds = %.thread, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !109812
  ret void, !dbg !109964

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit25: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.w
  %i.cm = uitofp i64 %i.cb to double, !dbg !109965
  %i.cn = load double, ptr %i.cg, align 8, !dbg !109969, !alias.scope !109970, !noundef !12
  %i.co = fadd double %i.cn, %i.cm, !dbg !109969
  store double %i.co, ptr %i.cg, align 8, !dbg !109969, !alias.scope !109970
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !109973 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !109973, !alias.scope !109970, !noundef !12
  %i.cr = add i64 %i.cq, 1, !dbg !109973
  store i64 %i.cr, ptr %i.cp, align 8, !dbg !109973, !alias.scope !109970
  %exitcond.not = icmp eq i64 %i.bu, %.sroa.754.0.copyload, !dbg !109886
  br i1 %exitcond.not, label %.thread, label %bb.w, !dbg !109886

bb.z:                                             ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !109974

bb.aa:                                            ; preds = %bb.w
  %i.ct = load double, ptr %i.cg, align 8, !dbg !109975, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !109975
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !109975, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !dbg !109978
  %i.cw = load i64, ptr %i.bs, align 8, !dbg !109980, !alias.scope !109985, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.br, align 8, !dbg !109988, !range !791, !alias.scope !109985, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !109991
  br i1 %i.cy, label %bb.ab, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !109991

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %bb.z, !dbg !109992

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr %i.bt, align 16, !dbg !109993, !alias.scope !109985, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !109998 ; 2 uses
  store double %i.ct, ptr %i.da, align 8, !dbg !110000
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !110000
  store i64 %i.cv, ptr %i.db, align 8, !dbg !110000
  %i.dc = add i64 %i.cw, 1, !dbg !110002
  store i64 %i.dc, ptr %i.bs, align 8, !dbg !110002, !alias.scope !109985
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit25, !dbg !110003

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31: ; preds = %bb.v
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !110004 ; 2 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !110004
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !110004 ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !110004
  %.sroa.548.0.copyload = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !dbg !110004 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !110004
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !110004 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.548.0.copyload, %.sroa.7.0.copyload, !dbg !110005
  br i1 %i.dd, label %.lr.ph67, label %.thread, !dbg !110005

.lr.ph67:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.447.0.copyload) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.dg = getelementptr i8, ptr %i.ax, i64 40
  %i.dh = getelementptr i8, ptr %i.ax, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ac, !dbg !110005

bb.ac:                                            ; preds = %.lr.ph67, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit
  %.sroa.548.066 = phi i64 [ %.sroa.548.0.copyload, %.lr.ph67 ], [ %i.dm, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit ] ; 3 uses
  %i.dm = add i64 %.sroa.548.066, 1, !dbg !110010 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.447.0.copyload, i64 %.sroa.548.066, !dbg !110011
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.548.066, !dbg !110014
  %i.dp = load i32, ptr %i.do, align 4, !dbg !110017, !noundef !12
  %i.dq = zext i32 %i.dp to i64, !dbg !110017     ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !dbg !110019, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null, !dbg !110019
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !110024

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40, !dbg !110026
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !110026, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !110031
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !110031, !noundef !12
  %i.dw = load i64, ptr %i.df, align 8, !dbg !110032, !noundef !12
  %i.dx = add i64 %i.dw, %i.dq, !dbg !110032      ; 2 uses
  %i.dy = lshr i64 %i.dx, 3, !dbg !110033         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dt, !dbg !110035
  call void @llvm.assume(i1 %i.dz), !dbg !110038
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy, !dbg !110039
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !110040, !noundef !12
  %i.ec = trunc i64 %i.dx to i8, !dbg !110041
  %i.ed = and i8 %i.ec, 7, !dbg !110041
  %i.ee = xor i8 %i.eb, -1, !dbg !110042
  %i.ef = lshr i8 %i.ee, %i.ed, !dbg !110042
  %i.eg = trunc i8 %i.ef to i1, !dbg !110043
  br i1 %i.eg, label %bb.ad, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !110044

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, %bb.ac
  %.val.i39 = load ptr, ptr %i.dg, align 8, !dbg !110045, !noundef !12
  %.val1.i = load i64, ptr %i.dh, align 8, !dbg !110045, !noundef !12
  %i.eh = icmp ugt i64 %.val1.i, %i.dq, !dbg !110046
  call void @llvm.assume(i1 %i.eh), !dbg !110051
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val.i39, i64 %i.dq, !dbg !110052
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !110053, !noundef !12
  br label %bb.ad, !dbg !110054

bb.ad:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.3.0.i40 = phi i64 [ %i.ej, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ]
  %.sroa.0.0.i41 = phi i64 [ 1, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !110055 ; 2 uses
  %i.ek = load ptr, ptr %i.di, align 8, !dbg !110056, !nonnull !12, !noundef !12
  %i.el = load i32, ptr %i.dn, align 4, !dbg !110064, !noundef !12 ; 2 uses
  %i.em = and i32 %i.el, 2147483647, !dbg !110066
  %i.en = zext nneg i32 %i.em to i64, !dbg !110066
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en, !dbg !110067 ; 6 uses
  %i.ep = icmp sgt i32 %i.el, -1, !dbg !110070
  br i1 %i.ep, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit, label %bb.af, !dbg !110070

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, %bb.ad
  %i.eq = trunc nuw i64 %.sroa.0.0.i41 to i1, !dbg !110072
  %spec.select.i = select i1 %i.eq, i64 %.sroa.3.0.i40, i64 0, !dbg !110072
  %9 = uitofp i64 %spec.select.i to double, !dbg !110076
  %i.er = load double, ptr %i.eo, align 8, !dbg !110078, !alias.scope !110079, !noundef !12
  %i.es = fadd double %i.er, %9, !dbg !110078
  store double %i.es, ptr %i.eo, align 8, !dbg !110078, !alias.scope !110079
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !110082 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !dbg !110082, !alias.scope !110079, !noundef !12
  %i.ev = add i64 %i.eu, %.sroa.0.0.i41, !dbg !110082
  store i64 %i.ev, ptr %i.et, align 8, !dbg !110082, !alias.scope !110079
  %exitcond69.not = icmp eq i64 %i.dm, %.sroa.7.0.copyload, !dbg !110005
  br i1 %exitcond69.not, label %.thread, label %bb.ac, !dbg !110005

bb.ae:                                            ; preds = %bb.ag
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !110083

bb.af:                                            ; preds = %bb.ad
  %i.ex = load double, ptr %i.eo, align 8, !dbg !110084, !noundef !12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !110084
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !110084, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !dbg !110086
  %i.fa = load i64, ptr %i.dk, align 8, !dbg !110088, !alias.scope !110092, !noundef !12 ; 3 uses
  %i.fb = load i64, ptr %i.dj, align 8, !dbg !110095, !range !791, !alias.scope !110092, !noundef !12
  %i.fc = icmp eq i64 %i.fa, %i.fb, !dbg !110098
  br i1 %i.fc, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, !dbg !110098

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43 unwind label %bb.ae, !dbg !110099

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43: ; preds = %bb.ag, %bb.af
  %i.fd = load ptr, ptr %i.dl, align 16, !dbg !110100, !alias.scope !110092, !nonnull !12, !noundef !12
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fa, !dbg !110105 ; 2 uses
  store double %i.ex, ptr %i.fe, align 8, !dbg !110107
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !110107
  store i64 %i.ez, ptr %i.ff, align 8, !dbg !110107
  %i.fg = add i64 %i.fa, 1, !dbg !110109
  store i64 %i.fg, ptr %i.dk, align 8, !dbg !110109, !alias.scope !110092
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_.exit, !dbg !110110

bb.ah:                                            ; preds = %bb.o
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !110111
  unreachable, !dbg !110111

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n, %bb.m, %bb.o
  resume { ptr, i32 } %.pn, !dbg !110111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction6as_anyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #4 !dbg !110112 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !110113
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @565, 1, !dbg !110113
  ret { ptr, ptr } %i.b, !dbg !110113
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction6resizeB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 !dbg !110114 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !110115
  %i.b = zext i32 %1 to i64, !dbg !110116
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, double noundef 0.000000e+00, i64 noundef 0), !dbg !110117
  ret void, !dbg !110118
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction7reserveB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !110119 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !110120
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1), !dbg !110121
  ret void, !dbg !110122
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction8finalizeB7_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 !dbg !110123 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !110124 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !110124
  store i64 0, ptr %i.c, align 16, !dbg !110129
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !110129
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !110129
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !110129
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !110129
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !110131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !110133
  store ptr null, ptr %i.a, align 8, !dbg !110133
  call void @_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer6finishB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !110134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !110135
  ret void, !dbg !110136
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction9new_emptyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !110137 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !110138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !110139
  store i64 0, ptr %i.c, align 8, !dbg !110140
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !110140
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !110140
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !110140
  store i64 0, ptr %i.f, align 8, !dbg !110140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !110142
  store i64 0, ptr %i.b, align 8, !dbg !110143
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !110143
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !110143
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !110143
  store i64 0, ptr %i.h, align 8, !dbg !110143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !110144
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !110145

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.h unwind label %bb.g, !dbg !110146

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !110138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !110138
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !110138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !110138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !110138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !110146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !110146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !110146
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !110147, !noalias !110154
  %i.l = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 193) 96, i64 noundef range(i64 8, 17) 16) #30, !dbg !110157, !noalias !110154 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !110158
  br i1 %i.m, label %bb.d, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEEE3newBJ_.exit, !dbg !110159, !prof !769

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #35
          to label %.noexc unwind label %bb.e, !dbg !110160

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !110160

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBJ_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEEEBL_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #32
          to label %common.resume unwind label %bb.f, !dbg !110161

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !110162
  unreachable, !dbg !110162

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !110163

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEEE3newBJ_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !110164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !110165
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !110166
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @564, 1, !dbg !110166
  ret { ptr, ptr } %i.q, !dbg !110166

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !110167
  unreachable, !dbg !110167

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g, !dbg !110146
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEENtB5_16GroupedReduction12update_groupB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !110168 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = icmp eq i64 %3, 1, !dbg !110169
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !110169, !prof !11156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #34, !dbg !110170
  unreachable, !dbg !110170

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !dbg !110171, !nonnull !12, !align !11159, !noundef !12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 16, !dbg !110172, !range !11168, !noundef !12
  %.not = icmp eq i8 %i.d, 31, !dbg !110172
  br i1 %.not, label %bb.d, label %bb.e, !dbg !110176

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !110177
  %i.f = load ptr, ptr %i.e, align 8, !dbg !110177, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !110177
  %i.h = load ptr, ptr %i.g, align 16, !dbg !110177, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !110190
end_hunk_2
begin_hunk_3_@_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction28update_groups_while_evictingB7_:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !114287, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114288
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !114289, !noundef !12
  %.not17 = icmp eq ptr %i.ay, null, !dbg !114289 ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !dbg !114292, !nonnull !12, !align !6617 ; 2 uses
  %.sroa.012.0 = select i1 %.not17, ptr %i.az, ptr %i.d, !dbg !114292
  %i.ba = load ptr, ptr %.sroa.012.0, align 8, !dbg !114293, !nonnull !12, !noundef !12
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !114293
  %.sroa.012.0.sroa.sel = select i1 %.not17, ptr %.sroa.gep45, ptr %i.ab, !dbg !114293
  %i.bb = load ptr, ptr %.sroa.012.0.sroa.sel, align 8, !dbg !114293, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !114304
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !114304, !range !802, !invariant.load !12
  %i.be = add nsw i64 %i.bd, -1, !dbg !114304
  %i.bf = and i64 %i.be, -16, !dbg !114304
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf, !dbg !114304
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !114304
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 616, !dbg !114290
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !114290, !invariant.load !12, !nonnull !12
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.p, !dbg !114305

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5, !dbg !114306 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %5, !dbg !114313 ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.u, !dbg !114290

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit unwind label %bb.p, !dbg !114318

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31 unwind label %bb.p, !dbg !114321

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit: ; preds = %bb.u
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !dbg !114324 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !114324
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !114324 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !114324
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !114324 ; 2 uses
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !114324
  %.sroa.754.0.copyload = load i64, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !114324 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.553.0.copyload, %.sroa.754.0.copyload, !dbg !114325
  br i1 %i.bn, label %.lr.ph, label %.thread, !dbg !114325

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.451.0.copyload) ]
  %i.bo = getelementptr i8, ptr %i.ax, i64 40
  %i.bp = getelementptr i8, ptr %i.ax, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.w, !dbg !114325

bb.w:                                             ; preds = %.lr.ph, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit25
  %.sroa.553.065 = phi i64 [ %.sroa.553.0.copyload, %.lr.ph ], [ %i.bu, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit25 ] ; 3 uses
  %i.bu = add i64 %.sroa.553.065, 1, !dbg !114331 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0.copyload, i64 %.sroa.553.065, !dbg !114332
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.451.0.copyload, i64 %.sroa.553.065, !dbg !114335
  %i.bx = load i32, ptr %i.bv, align 4, !dbg !114338, !noundef !12
  %i.by = zext i32 %i.bx to i64, !dbg !114338     ; 2 uses
  %.val = load ptr, ptr %i.bo, align 8, !dbg !114340, !noundef !12
  %.val26 = load i64, ptr %i.bp, align 8, !dbg !114340, !noundef !12
  %i.bz = icmp ugt i64 %.val26, %i.by, !dbg !114341
  call void @llvm.assume(i1 %i.bz), !dbg !114346
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.by, !dbg !114347
  %i.cb = load i16, ptr %i.ca, align 2, !dbg !114348, !noundef !12
  %i.cc = load ptr, ptr %i.bq, align 8, !dbg !114349, !nonnull !12, !noundef !12
  %i.cd = load i32, ptr %i.bw, align 4, !dbg !114368, !noundef !12 ; 2 uses
  %i.ce = and i32 %i.cd, 2147483647, !dbg !114371
  %i.cf = zext nneg i32 %i.ce to i64, !dbg !114371
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cf, !dbg !114372 ; 6 uses
  %i.ch = icmp sgt i32 %i.cd, -1, !dbg !114378
  br i1 %i.ch, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit25, label %bb.aa, !dbg !114378

.thread:                                          ; preds = %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit25, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  store i64 18, ptr %0, align 8, !dbg !114380
  call void @llvm.experimental.noalias.scope.decl(metadata !114381), !dbg !114251
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !114384, !alias.scope !114381, !noundef !12 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null, !dbg !114384
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, label %bb.x, !dbg !114384

bb.x:                                             ; preds = %.thread
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !114386, !noalias !114392
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !114399
  br i1 %i.cl, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !114399

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !114400
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #31, !dbg !114402
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !114402

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32: ; preds = %.thread, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !114251
  ret void, !dbg !114403

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit25: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.w
  %i.cm = sitofp i16 %i.cb to double, !dbg !114404
  %i.cn = load double, ptr %i.cg, align 8, !dbg !114408, !alias.scope !114409, !noundef !12
  %i.co = fadd double %i.cn, %i.cm, !dbg !114408
  store double %i.co, ptr %i.cg, align 8, !dbg !114408, !alias.scope !114409
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !114412 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !114412, !alias.scope !114409, !noundef !12
  %i.cr = add i64 %i.cq, 1, !dbg !114412
  store i64 %i.cr, ptr %i.cp, align 8, !dbg !114412, !alias.scope !114409
  %exitcond.not = icmp eq i64 %i.bu, %.sroa.754.0.copyload, !dbg !114325
  br i1 %exitcond.not, label %.thread, label %bb.w, !dbg !114325

bb.z:                                             ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !114413

bb.aa:                                            ; preds = %bb.w
  %i.ct = load double, ptr %i.cg, align 8, !dbg !114414, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !114414
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !114414, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !dbg !114417
  %i.cw = load i64, ptr %i.bs, align 8, !dbg !114419, !alias.scope !114424, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.br, align 8, !dbg !114427, !range !791, !alias.scope !114424, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !114430
  br i1 %i.cy, label %bb.ab, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !114430

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %bb.z, !dbg !114431

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr %i.bt, align 16, !dbg !114432, !alias.scope !114424, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !114437 ; 2 uses
  store double %i.ct, ptr %i.da, align 8, !dbg !114439
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !114439
  store i64 %i.cv, ptr %i.db, align 8, !dbg !114439
  %i.dc = add i64 %i.cw, 1, !dbg !114441
  store i64 %i.dc, ptr %i.bs, align 8, !dbg !114441, !alias.scope !114424
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit25, !dbg !114442

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31: ; preds = %bb.v
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !114443 ; 2 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !114443
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !114443 ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !114443
  %.sroa.548.0.copyload = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !dbg !114443 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !114443
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !114443 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.548.0.copyload, %.sroa.7.0.copyload, !dbg !114444
  br i1 %i.dd, label %.lr.ph67, label %.thread, !dbg !114444

.lr.ph67:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.447.0.copyload) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.dg = getelementptr i8, ptr %i.ax, i64 40
  %i.dh = getelementptr i8, ptr %i.ax, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ac, !dbg !114444

bb.ac:                                            ; preds = %.lr.ph67, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit
  %.sroa.548.066 = phi i64 [ %.sroa.548.0.copyload, %.lr.ph67 ], [ %i.dm, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit ] ; 3 uses
  %i.dm = add i64 %.sroa.548.066, 1, !dbg !114449 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.447.0.copyload, i64 %.sroa.548.066, !dbg !114450
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.548.066, !dbg !114453
  %i.dp = load i32, ptr %i.do, align 4, !dbg !114456, !noundef !12
  %i.dq = zext i32 %i.dp to i64, !dbg !114456     ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !dbg !114458, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null, !dbg !114458
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !114463

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40, !dbg !114465
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !114465, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !114470
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !114470, !noundef !12
  %i.dw = load i64, ptr %i.df, align 8, !dbg !114471, !noundef !12
  %i.dx = add i64 %i.dw, %i.dq, !dbg !114471      ; 2 uses
  %i.dy = lshr i64 %i.dx, 3, !dbg !114472         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dt, !dbg !114474
  call void @llvm.assume(i1 %i.dz), !dbg !114477
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy, !dbg !114478
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !114479, !noundef !12
  %i.ec = trunc i64 %i.dx to i8, !dbg !114480
  %i.ed = and i8 %i.ec, 7, !dbg !114480
  %i.ee = xor i8 %i.eb, -1, !dbg !114481
  %i.ef = lshr i8 %i.ee, %i.ed, !dbg !114481
  %i.eg = trunc i8 %i.ef to i1, !dbg !114482
  br i1 %i.eg, label %bb.ad, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !114483

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, %bb.ac
  %.val.i39 = load ptr, ptr %i.dg, align 8, !dbg !114484, !noundef !12
  %.val1.i = load i64, ptr %i.dh, align 8, !dbg !114484, !noundef !12
  %i.eh = icmp ugt i64 %.val1.i, %i.dq, !dbg !114485
  call void @llvm.assume(i1 %i.eh), !dbg !114490
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.val.i39, i64 %i.dq, !dbg !114491
  %i.ej = load i16, ptr %i.ei, align 2, !dbg !114492, !noundef !12
  br label %bb.ad, !dbg !114493

bb.ad:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.3.0.i40 = phi i16 [ %i.ej, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ]
  %.sroa.0.0.i41 = phi i16 [ 1, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !114494 ; 2 uses
  %i.ek = load ptr, ptr %i.di, align 8, !dbg !114495, !nonnull !12, !noundef !12
  %i.el = load i32, ptr %i.dn, align 4, !dbg !114503, !noundef !12 ; 2 uses
  %i.em = and i32 %i.el, 2147483647, !dbg !114505
  %i.en = zext nneg i32 %i.em to i64, !dbg !114505
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en, !dbg !114506 ; 6 uses
  %i.ep = icmp sgt i32 %i.el, -1, !dbg !114509
  br i1 %i.ep, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit, label %bb.af, !dbg !114509

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, %bb.ad
  %i.eq = trunc nuw i16 %.sroa.0.0.i41 to i1, !dbg !114511
  %spec.select.i = select i1 %i.eq, i16 %.sroa.3.0.i40, i16 0, !dbg !114511
  %9 = sitofp i16 %spec.select.i to double, !dbg !114515
  %i.er = load double, ptr %i.eo, align 8, !dbg !114517, !alias.scope !114518, !noundef !12
  %i.es = fadd double %i.er, %9, !dbg !114517
  store double %i.es, ptr %i.eo, align 8, !dbg !114517, !alias.scope !114518
  %i.et = zext nneg i16 %.sroa.0.0.i41 to i64, !dbg !114521
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !114522 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !114522, !alias.scope !114518, !noundef !12
  %i.ew = add i64 %i.ev, %i.et, !dbg !114522
  store i64 %i.ew, ptr %i.eu, align 8, !dbg !114522, !alias.scope !114518
  %exitcond69.not = icmp eq i64 %i.dm, %.sroa.7.0.copyload, !dbg !114444
  br i1 %exitcond69.not, label %.thread, label %bb.ac, !dbg !114444

bb.ae:                                            ; preds = %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !114523

bb.af:                                            ; preds = %bb.ad
  %i.ey = load double, ptr %i.eo, align 8, !dbg !114524, !noundef !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !114524
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !114524, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !dbg !114526
  %i.fb = load i64, ptr %i.dk, align 8, !dbg !114528, !alias.scope !114532, !noundef !12 ; 3 uses
  %i.fc = load i64, ptr %i.dj, align 8, !dbg !114535, !range !791, !alias.scope !114532, !noundef !12
  %i.fd = icmp eq i64 %i.fb, %i.fc, !dbg !114538
  br i1 %i.fd, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, !dbg !114538

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43 unwind label %bb.ae, !dbg !114539

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43: ; preds = %bb.ag, %bb.af
  %i.fe = load ptr, ptr %i.dl, align 16, !dbg !114540, !alias.scope !114532, !nonnull !12, !noundef !12
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fb, !dbg !114545 ; 2 uses
  store double %i.ey, ptr %i.ff, align 8, !dbg !114547
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !114547
  store i64 %i.fa, ptr %i.fg, align 8, !dbg !114547
  %i.fh = add i64 %i.fb, 1, !dbg !114549
  store i64 %i.fh, ptr %i.dk, align 8, !dbg !114549, !alias.scope !114532
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_.exit, !dbg !114550

bb.ah:                                            ; preds = %bb.o
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !114551
  unreachable, !dbg !114551

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n, %bb.m, %bb.o
  resume { ptr, i32 } %.pn, !dbg !114551
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction6as_anyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #4 !dbg !114552 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !114553
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @577, 1, !dbg !114553
  ret { ptr, ptr } %i.b, !dbg !114553
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction6resizeB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 !dbg !114554 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114555
  %i.b = zext i32 %1 to i64, !dbg !114556
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, double noundef 0.000000e+00, i64 noundef 0), !dbg !114557
  ret void, !dbg !114558
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction7reserveB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !114559 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114560
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1), !dbg !114561
  ret void, !dbg !114562
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction8finalizeB7_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 !dbg !114563 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !114564 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !114564
  store i64 0, ptr %i.c, align 16, !dbg !114569
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !114569
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114569
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !114569
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !114569
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !114571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114573
  store ptr null, ptr %i.a, align 8, !dbg !114573
  call void @_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer6finishB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !114574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114575
  ret void, !dbg !114576
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction9new_emptyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !114577 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !114578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !114579
  store i64 0, ptr %i.c, align 8, !dbg !114580
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !114580
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !114580
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !114580
  store i64 0, ptr %i.f, align 8, !dbg !114580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !114582
  store i64 0, ptr %i.b, align 8, !dbg !114583
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !114583
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !114583
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !114583
  store i64 0, ptr %i.h, align 8, !dbg !114583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114584
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !114585

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.h unwind label %bb.g, !dbg !114586

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !114578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !114578
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !114578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !114578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !114578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !114586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !114586
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !114587, !noalias !114594
  %i.l = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 193) 96, i64 noundef range(i64 8, 17) 16) #30, !dbg !114597, !noalias !114594 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !114598
  br i1 %i.m, label %bb.d, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEEE3newBJ_.exit, !dbg !114599, !prof !769

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #35
          to label %.noexc unwind label %bb.e, !dbg !114600

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !114600

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBJ_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEEEBL_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #32
          to label %common.resume unwind label %bb.f, !dbg !114601

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !114602
  unreachable, !dbg !114602

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !114603

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEEE3newBJ_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !114604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !114605
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !114606
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @576, 1, !dbg !114606
  ret { ptr, ptr } %i.q, !dbg !114606

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !114607
  unreachable, !dbg !114607

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g, !dbg !114586
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction12update_groupB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !114608 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = icmp eq i64 %3, 1, !dbg !114609
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !114609, !prof !11156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #34, !dbg !114610
  unreachable, !dbg !114610

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !dbg !114611, !nonnull !12, !align !11159, !noundef !12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 16, !dbg !114612, !range !11168, !noundef !12
  %.not = icmp eq i8 %i.d, 31, !dbg !114612
  br i1 %.not, label %bb.d, label %bb.e, !dbg !114616

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !114617
  %i.f = load ptr, ptr %i.e, align 8, !dbg !114617, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !114617
  %i.h = load ptr, ptr %i.g, align 16, !dbg !114617, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction28update_groups_while_evictingB7_:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !115010, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115011
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !115012, !noundef !12
  %.not17 = icmp eq ptr %i.ay, null, !dbg !115012 ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !dbg !115015, !nonnull !12, !align !6617 ; 2 uses
  %.sroa.012.0 = select i1 %.not17, ptr %i.az, ptr %i.d, !dbg !115015
  %i.ba = load ptr, ptr %.sroa.012.0, align 8, !dbg !115016, !nonnull !12, !noundef !12
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !115016
  %.sroa.012.0.sroa.sel = select i1 %.not17, ptr %.sroa.gep45, ptr %i.ab, !dbg !115016
  %i.bb = load ptr, ptr %.sroa.012.0.sroa.sel, align 8, !dbg !115016, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !115027
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !115027, !range !802, !invariant.load !12
  %i.be = add nsw i64 %i.bd, -1, !dbg !115027
  %i.bf = and i64 %i.be, -16, !dbg !115027
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf, !dbg !115027
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !115027
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 616, !dbg !115013
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !115013, !invariant.load !12, !nonnull !12
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.p, !dbg !115028

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5, !dbg !115029 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %5, !dbg !115036 ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.u, !dbg !115013

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit unwind label %bb.p, !dbg !115041

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31 unwind label %bb.p, !dbg !115044

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit: ; preds = %bb.u
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !dbg !115047 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !115047
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !115047 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !115047
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !115047 ; 2 uses
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !115047
  %.sroa.754.0.copyload = load i64, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !115047 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.553.0.copyload, %.sroa.754.0.copyload, !dbg !115048
  br i1 %i.bn, label %.lr.ph, label %.thread, !dbg !115048

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.451.0.copyload) ]
  %i.bo = getelementptr i8, ptr %i.ax, i64 40
  %i.bp = getelementptr i8, ptr %i.ax, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.w, !dbg !115048

bb.w:                                             ; preds = %.lr.ph, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit25
  %.sroa.553.065 = phi i64 [ %.sroa.553.0.copyload, %.lr.ph ], [ %i.bu, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit25 ] ; 3 uses
  %i.bu = add i64 %.sroa.553.065, 1, !dbg !115054 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0.copyload, i64 %.sroa.553.065, !dbg !115055
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.451.0.copyload, i64 %.sroa.553.065, !dbg !115058
  %i.bx = load i32, ptr %i.bv, align 4, !dbg !115061, !noundef !12
  %i.by = zext i32 %i.bx to i64, !dbg !115061     ; 2 uses
  %.val = load ptr, ptr %i.bo, align 8, !dbg !115063, !noundef !12
  %.val26 = load i64, ptr %i.bp, align 8, !dbg !115063, !noundef !12
  %i.bz = icmp ugt i64 %.val26, %i.by, !dbg !115064
  call void @llvm.assume(i1 %i.bz), !dbg !115069
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.by, !dbg !115070
  %i.cb = load i32, ptr %i.ca, align 4, !dbg !115071, !noundef !12
  %i.cc = load ptr, ptr %i.bq, align 8, !dbg !115072, !nonnull !12, !noundef !12
  %i.cd = load i32, ptr %i.bw, align 4, !dbg !115091, !noundef !12 ; 2 uses
  %i.ce = and i32 %i.cd, 2147483647, !dbg !115094
  %i.cf = zext nneg i32 %i.ce to i64, !dbg !115094
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cf, !dbg !115095 ; 6 uses
  %i.ch = icmp sgt i32 %i.cd, -1, !dbg !115101
  br i1 %i.ch, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit25, label %bb.aa, !dbg !115101

.thread:                                          ; preds = %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit25, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  store i64 18, ptr %0, align 8, !dbg !115103
  call void @llvm.experimental.noalias.scope.decl(metadata !115104), !dbg !114974
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !115107, !alias.scope !115104, !noundef !12 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null, !dbg !115107
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, label %bb.x, !dbg !115107

bb.x:                                             ; preds = %.thread
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !115109, !noalias !115115
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !115122
  br i1 %i.cl, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !115122

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !115123
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #31, !dbg !115125
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !115125

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32: ; preds = %.thread, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !114974
  ret void, !dbg !115126

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit25: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.w
  %i.cm = sitofp i32 %i.cb to double, !dbg !115127
  %i.cn = load double, ptr %i.cg, align 8, !dbg !115131, !alias.scope !115132, !noundef !12
  %i.co = fadd double %i.cn, %i.cm, !dbg !115131
  store double %i.co, ptr %i.cg, align 8, !dbg !115131, !alias.scope !115132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !115135 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !115135, !alias.scope !115132, !noundef !12
  %i.cr = add i64 %i.cq, 1, !dbg !115135
  store i64 %i.cr, ptr %i.cp, align 8, !dbg !115135, !alias.scope !115132
  %exitcond.not = icmp eq i64 %i.bu, %.sroa.754.0.copyload, !dbg !115048
  br i1 %exitcond.not, label %.thread, label %bb.w, !dbg !115048

bb.z:                                             ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !115136

bb.aa:                                            ; preds = %bb.w
  %i.ct = load double, ptr %i.cg, align 8, !dbg !115137, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !115137
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !115137, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !dbg !115140
  %i.cw = load i64, ptr %i.bs, align 8, !dbg !115142, !alias.scope !115147, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.br, align 8, !dbg !115150, !range !791, !alias.scope !115147, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !115153
  br i1 %i.cy, label %bb.ab, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !115153

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %bb.z, !dbg !115154

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr %i.bt, align 16, !dbg !115155, !alias.scope !115147, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !115160 ; 2 uses
  store double %i.ct, ptr %i.da, align 8, !dbg !115162
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !115162
  store i64 %i.cv, ptr %i.db, align 8, !dbg !115162
  %i.dc = add i64 %i.cw, 1, !dbg !115164
  store i64 %i.dc, ptr %i.bs, align 8, !dbg !115164, !alias.scope !115147
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit25, !dbg !115165

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31: ; preds = %bb.v
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !115166 ; 2 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !115166
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !115166 ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !115166
  %.sroa.548.0.copyload = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !dbg !115166 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !115166
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !115166 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.548.0.copyload, %.sroa.7.0.copyload, !dbg !115167
  br i1 %i.dd, label %.lr.ph67, label %.thread, !dbg !115167

.lr.ph67:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.447.0.copyload) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.dg = getelementptr i8, ptr %i.ax, i64 40
  %i.dh = getelementptr i8, ptr %i.ax, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ac, !dbg !115167

bb.ac:                                            ; preds = %.lr.ph67, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit
  %.sroa.548.066 = phi i64 [ %.sroa.548.0.copyload, %.lr.ph67 ], [ %i.dm, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit ] ; 3 uses
  %i.dm = add i64 %.sroa.548.066, 1, !dbg !115172 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.447.0.copyload, i64 %.sroa.548.066, !dbg !115173
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.548.066, !dbg !115176
  %i.dp = load i32, ptr %i.do, align 4, !dbg !115179, !noundef !12
  %i.dq = zext i32 %i.dp to i64, !dbg !115179     ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !dbg !115181, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null, !dbg !115181
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !115186

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40, !dbg !115188
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !115188, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !115193
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !115193, !noundef !12
  %i.dw = load i64, ptr %i.df, align 8, !dbg !115194, !noundef !12
  %i.dx = add i64 %i.dw, %i.dq, !dbg !115194      ; 2 uses
  %i.dy = lshr i64 %i.dx, 3, !dbg !115195         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dt, !dbg !115197
  call void @llvm.assume(i1 %i.dz), !dbg !115200
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy, !dbg !115201
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !115202, !noundef !12
  %i.ec = trunc i64 %i.dx to i8, !dbg !115203
  %i.ed = and i8 %i.ec, 7, !dbg !115203
  %i.ee = xor i8 %i.eb, -1, !dbg !115204
  %i.ef = lshr i8 %i.ee, %i.ed, !dbg !115204
  %i.eg = trunc i8 %i.ef to i1, !dbg !115205
  br i1 %i.eg, label %bb.ad, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !115206

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, %bb.ac
  %.val.i39 = load ptr, ptr %i.dg, align 8, !dbg !115207, !noundef !12
  %.val1.i = load i64, ptr %i.dh, align 8, !dbg !115207, !noundef !12
  %i.eh = icmp ugt i64 %.val1.i, %i.dq, !dbg !115208
  call void @llvm.assume(i1 %i.eh), !dbg !115213
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val.i39, i64 %i.dq, !dbg !115214
  %i.ej = load i32, ptr %i.ei, align 4, !dbg !115215, !noundef !12
  br label %bb.ad, !dbg !115216

bb.ad:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.3.0.i40 = phi i32 [ %i.ej, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ]
  %.sroa.0.0.i41 = phi i32 [ 1, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !115217 ; 2 uses
  %i.ek = load ptr, ptr %i.di, align 8, !dbg !115218, !nonnull !12, !noundef !12
  %i.el = load i32, ptr %i.dn, align 4, !dbg !115226, !noundef !12 ; 2 uses
  %i.em = and i32 %i.el, 2147483647, !dbg !115228
  %i.en = zext nneg i32 %i.em to i64, !dbg !115228
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en, !dbg !115229 ; 6 uses
  %i.ep = icmp sgt i32 %i.el, -1, !dbg !115232
  br i1 %i.ep, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit, label %bb.af, !dbg !115232

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, %bb.ad
  %i.eq = trunc nuw i32 %.sroa.0.0.i41 to i1, !dbg !115234
  %spec.select.i = select i1 %i.eq, i32 %.sroa.3.0.i40, i32 0, !dbg !115234
  %9 = sitofp i32 %spec.select.i to double, !dbg !115238
  %i.er = load double, ptr %i.eo, align 8, !dbg !115240, !alias.scope !115241, !noundef !12
  %i.es = fadd double %i.er, %9, !dbg !115240
  store double %i.es, ptr %i.eo, align 8, !dbg !115240, !alias.scope !115241
  %i.et = zext nneg i32 %.sroa.0.0.i41 to i64, !dbg !115244
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !115245 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !115245, !alias.scope !115241, !noundef !12
  %i.ew = add i64 %i.ev, %i.et, !dbg !115245
  store i64 %i.ew, ptr %i.eu, align 8, !dbg !115245, !alias.scope !115241
  %exitcond69.not = icmp eq i64 %i.dm, %.sroa.7.0.copyload, !dbg !115167
  br i1 %exitcond69.not, label %.thread, label %bb.ac, !dbg !115167

bb.ae:                                            ; preds = %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !115246

bb.af:                                            ; preds = %bb.ad
  %i.ey = load double, ptr %i.eo, align 8, !dbg !115247, !noundef !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !115247
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !115247, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !dbg !115249
  %i.fb = load i64, ptr %i.dk, align 8, !dbg !115251, !alias.scope !115255, !noundef !12 ; 3 uses
  %i.fc = load i64, ptr %i.dj, align 8, !dbg !115258, !range !791, !alias.scope !115255, !noundef !12
  %i.fd = icmp eq i64 %i.fb, %i.fc, !dbg !115261
  br i1 %i.fd, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, !dbg !115261

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43 unwind label %bb.ae, !dbg !115262

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43: ; preds = %bb.ag, %bb.af
  %i.fe = load ptr, ptr %i.dl, align 16, !dbg !115263, !alias.scope !115255, !nonnull !12, !noundef !12
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fb, !dbg !115268 ; 2 uses
  store double %i.ey, ptr %i.ff, align 8, !dbg !115270
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !115270
  store i64 %i.fa, ptr %i.fg, align 8, !dbg !115270
  %i.fh = add i64 %i.fb, 1, !dbg !115272
  store i64 %i.fh, ptr %i.dk, align 8, !dbg !115272, !alias.scope !115255
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_.exit, !dbg !115273

bb.ah:                                            ; preds = %bb.o
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !115274
  unreachable, !dbg !115274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n, %bb.m, %bb.o
  resume { ptr, i32 } %.pn, !dbg !115274
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction6as_anyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #4 !dbg !115275 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !115276
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @579, 1, !dbg !115276
  ret { ptr, ptr } %i.b, !dbg !115276
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction6resizeB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 !dbg !115277 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !115278
  %i.b = zext i32 %1 to i64, !dbg !115279
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, double noundef 0.000000e+00, i64 noundef 0), !dbg !115280
  ret void, !dbg !115281
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction7reserveB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !115282 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !115283
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1), !dbg !115284
  ret void, !dbg !115285
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction8finalizeB7_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 !dbg !115286 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !115287 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !115287
  store i64 0, ptr %i.c, align 16, !dbg !115292
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !115292
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !115292
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !115292
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !115292
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !115294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !115296
  store ptr null, ptr %i.a, align 8, !dbg !115296
  call void @_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer6finishB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !115297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115298
  ret void, !dbg !115299
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction9new_emptyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !115300 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !115301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !115302
  store i64 0, ptr %i.c, align 8, !dbg !115303
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !115303
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !115303
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !115303
  store i64 0, ptr %i.f, align 8, !dbg !115303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !115305
  store i64 0, ptr %i.b, align 8, !dbg !115306
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !115306
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !115306
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !115306
  store i64 0, ptr %i.h, align 8, !dbg !115306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !115307
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !115308

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.h unwind label %bb.g, !dbg !115309

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !115301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !115301
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !115301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !115301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !115301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !115309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !115309
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !115310, !noalias !115317
  %i.l = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 193) 96, i64 noundef range(i64 8, 17) 16) #30, !dbg !115320, !noalias !115317 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !115321
  br i1 %i.m, label %bb.d, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEEE3newBJ_.exit, !dbg !115322, !prof !769

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #35
          to label %.noexc unwind label %bb.e, !dbg !115323

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !115323

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBJ_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEEEBL_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #32
          to label %common.resume unwind label %bb.f, !dbg !115324

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !115325
  unreachable, !dbg !115325

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !115326

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEEE3newBJ_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !115327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !115328
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !115329
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @578, 1, !dbg !115329
  ret { ptr, ptr } %i.q, !dbg !115329

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !115330
  unreachable, !dbg !115330

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g, !dbg !115309
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction12update_groupB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !115331 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = icmp eq i64 %3, 1, !dbg !115332
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !115332, !prof !11156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #34, !dbg !115333
  unreachable, !dbg !115333

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !dbg !115334, !nonnull !12, !align !11159, !noundef !12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 16, !dbg !115335, !range !11168, !noundef !12
  %.not = icmp eq i8 %i.d, 31, !dbg !115335
  br i1 %.not, label %bb.d, label %bb.e, !dbg !115339

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !115340
  %i.f = load ptr, ptr %i.e, align 8, !dbg !115340, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !115340
  %i.h = load ptr, ptr %i.g, align 16, !dbg !115340, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction28update_groups_while_evictingB7_:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !115733, !nonnull !12, !noundef !12 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115734
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !115735, !noundef !12
  %.not17 = icmp eq ptr %i.ay, null, !dbg !115735 ; 2 uses
  %i.az = load ptr, ptr %i.ab, align 8, !dbg !115738, !nonnull !12, !align !6617 ; 2 uses
  %.sroa.012.0 = select i1 %.not17, ptr %i.az, ptr %i.d, !dbg !115738
  %i.ba = load ptr, ptr %.sroa.012.0, align 8, !dbg !115739, !nonnull !12, !noundef !12
  %.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !115739
  %.sroa.012.0.sroa.sel = select i1 %.not17, ptr %.sroa.gep45, ptr %i.ab, !dbg !115739
  %i.bb = load ptr, ptr %.sroa.012.0.sroa.sel, align 8, !dbg !115739, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !115750
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !115750, !range !802, !invariant.load !12
  %i.be = add nsw i64 %i.bd, -1, !dbg !115750
  %i.bf = and i64 %i.be, -16, !dbg !115750
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf, !dbg !115750
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !115750
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 616, !dbg !115736
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !115736, !invariant.load !12, !nonnull !12
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.p, !dbg !115751

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5, !dbg !115752 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %5, !dbg !115759 ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.u, !dbg !115736

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit unwind label %bb.p, !dbg !115764

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEEINtB5_7ZipImplBW_B1o_E3newB1u_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.bl, ptr noundef nonnull readonly align 4 %6, ptr noundef nonnull readonly %i.bm)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31 unwind label %bb.p, !dbg !115767

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit: ; preds = %bb.u
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !dbg !115770 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !115770
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !115770 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !115770
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !115770 ; 2 uses
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !115770
  %.sroa.754.0.copyload = load i64, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !115770 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.553.0.copyload, %.sroa.754.0.copyload, !dbg !115771
  br i1 %i.bn, label %.lr.ph, label %.thread, !dbg !115771

.lr.ph:                                           ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.451.0.copyload) ]
  %i.bo = getelementptr i8, ptr %i.ax, i64 40
  %i.bp = getelementptr i8, ptr %i.ax, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.w, !dbg !115771

bb.w:                                             ; preds = %.lr.ph, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit25
  %.sroa.553.065 = phi i64 [ %.sroa.553.0.copyload, %.lr.ph ], [ %i.bu, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit25 ] ; 3 uses
  %i.bu = add i64 %.sroa.553.065, 1, !dbg !115777 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0.copyload, i64 %.sroa.553.065, !dbg !115778
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.451.0.copyload, i64 %.sroa.553.065, !dbg !115781
  %i.bx = load i32, ptr %i.bv, align 4, !dbg !115784, !noundef !12
  %i.by = zext i32 %i.bx to i64, !dbg !115784     ; 2 uses
  %.val = load ptr, ptr %i.bo, align 8, !dbg !115786, !noundef !12
  %.val26 = load i64, ptr %i.bp, align 8, !dbg !115786, !noundef !12
  %i.bz = icmp ugt i64 %.val26, %i.by, !dbg !115787
  call void @llvm.assume(i1 %i.bz), !dbg !115792
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.by, !dbg !115793
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !115794, !noundef !12
  %i.cc = load ptr, ptr %i.bq, align 8, !dbg !115795, !nonnull !12, !noundef !12
  %i.cd = load i32, ptr %i.bw, align 4, !dbg !115814, !noundef !12 ; 2 uses
  %i.ce = and i32 %i.cd, 2147483647, !dbg !115817
  %i.cf = zext nneg i32 %i.ce to i64, !dbg !115817
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cf, !dbg !115818 ; 6 uses
  %i.ch = icmp sgt i32 %i.cd, -1, !dbg !115824
  br i1 %i.ch, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit25, label %bb.aa, !dbg !115824

.thread:                                          ; preds = %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit25, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  store i64 18, ptr %0, align 8, !dbg !115826
  call void @llvm.experimental.noalias.scope.decl(metadata !115827), !dbg !115697
  %i.ci = load ptr, ptr %i.d, align 8, !dbg !115830, !alias.scope !115827, !noundef !12 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null, !dbg !115830
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, label %bb.x, !dbg !115830

bb.x:                                             ; preds = %.thread
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !115832, !noalias !115838
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !115845
  br i1 %i.cl, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !115845

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !115846
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #31, !dbg !115848
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32, !dbg !115848

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit32: ; preds = %.thread, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !115697
  ret void, !dbg !115849

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit25: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, %bb.w
  %i.cm = sitofp i64 %i.cb to double, !dbg !115850
  %i.cn = load double, ptr %i.cg, align 8, !dbg !115854, !alias.scope !115855, !noundef !12
  %i.co = fadd double %i.cn, %i.cm, !dbg !115854
  store double %i.co, ptr %i.cg, align 8, !dbg !115854, !alias.scope !115855
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !115858 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !115858, !alias.scope !115855, !noundef !12
  %i.cr = add i64 %i.cq, 1, !dbg !115858
  store i64 %i.cr, ptr %i.cp, align 8, !dbg !115858, !alias.scope !115855
  %exitcond.not = icmp eq i64 %i.bu, %.sroa.754.0.copyload, !dbg !115771
  br i1 %exitcond.not, label %.thread, label %bb.w, !dbg !115771

bb.z:                                             ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !115859

bb.aa:                                            ; preds = %bb.w
  %i.ct = load double, ptr %i.cg, align 8, !dbg !115860, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !115860
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !115860, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !dbg !115863
  %i.cw = load i64, ptr %i.bs, align 8, !dbg !115865, !alias.scope !115870, !noundef !12 ; 3 uses
  %i.cx = load i64, ptr %i.br, align 8, !dbg !115873, !range !791, !alias.scope !115870, !noundef !12
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !115876
  br i1 %i.cy, label %bb.ab, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !115876

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit unwind label %bb.z, !dbg !115877

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr %i.bt, align 16, !dbg !115878, !alias.scope !115870, !nonnull !12, !noundef !12
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cw, !dbg !115883 ; 2 uses
  store double %i.ct, ptr %i.da, align 8, !dbg !115885
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !115885
  store i64 %i.cv, ptr %i.db, align 8, !dbg !115885
  %i.dc = add i64 %i.cw, 1, !dbg !115887
  store i64 %i.dc, ptr %i.bs, align 8, !dbg !115887, !alias.scope !115870
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit25, !dbg !115888

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31: ; preds = %bb.v
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !dbg !115889 ; 2 uses
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !115889
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !dbg !115889 ; 2 uses
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !115889
  %.sroa.548.0.copyload = load i64, ptr %.sroa.548.0..sroa_idx, align 8, !dbg !115889 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !115889
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !115889 ; 2 uses
  %i.dd = icmp ult i64 %.sroa.548.0.copyload, %.sroa.7.0.copyload, !dbg !115890
  br i1 %i.dd, label %.lr.ph67, label %.thread, !dbg !115890

.lr.ph67:                                         ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtCskY9G75ZWc4U_11polars_expr8EvictIdxEB1y_.exit31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.447.0.copyload) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.dg = getelementptr i8, ptr %i.ax, i64 40
  %i.dh = getelementptr i8, ptr %i.ax, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ac, !dbg !115890

bb.ac:                                            ; preds = %.lr.ph67, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit
  %.sroa.548.066 = phi i64 [ %.sroa.548.0.copyload, %.lr.ph67 ], [ %i.dm, %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit ] ; 3 uses
  %i.dm = add i64 %.sroa.548.066, 1, !dbg !115895 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.447.0.copyload, i64 %.sroa.548.066, !dbg !115896
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.548.066, !dbg !115899
  %i.dp = load i32, ptr %i.do, align 4, !dbg !115902, !noundef !12
  %i.dq = zext i32 %i.dp to i64, !dbg !115902     ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !dbg !115904, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null, !dbg !115904
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !115909

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40, !dbg !115911
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !115911, !noundef !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !115916
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !115916, !noundef !12
  %i.dw = load i64, ptr %i.df, align 8, !dbg !115917, !noundef !12
  %i.dx = add i64 %i.dw, %i.dq, !dbg !115917      ; 2 uses
  %i.dy = lshr i64 %i.dx, 3, !dbg !115918         ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dt, !dbg !115920
  call void @llvm.assume(i1 %i.dz), !dbg !115923
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy, !dbg !115924
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !115925, !noundef !12
  %i.ec = trunc i64 %i.dx to i8, !dbg !115926
  %i.ed = and i8 %i.ec, 7, !dbg !115926
  %i.ee = xor i8 %i.eb, -1, !dbg !115927
  %i.ef = lshr i8 %i.ee, %i.ed, !dbg !115927
  %i.eg = trunc i8 %i.ef to i1, !dbg !115928
  br i1 %i.eg, label %bb.ad, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !115929

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, %bb.ac
  %.val.i39 = load ptr, ptr %i.dg, align 8, !dbg !115930, !noundef !12
  %.val1.i = load i64, ptr %i.dh, align 8, !dbg !115930, !noundef !12
  %i.eh = icmp ugt i64 %.val1.i, %i.dq, !dbg !115931
  call void @llvm.assume(i1 %i.eh), !dbg !115936
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val.i39, i64 %i.dq, !dbg !115937
  %i.ej = load i64, ptr %i.ei, align 8, !dbg !115938, !noundef !12
  br label %bb.ad, !dbg !115939

bb.ad:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.3.0.i40 = phi i64 [ %i.ej, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ]
  %.sroa.0.0.i41 = phi i64 [ 1, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !115940 ; 2 uses
  %i.ek = load ptr, ptr %i.di, align 8, !dbg !115941, !nonnull !12, !noundef !12
  %i.el = load i32, ptr %i.dn, align 4, !dbg !115949, !noundef !12 ; 2 uses
  %i.em = and i32 %i.el, 2147483647, !dbg !115951
  %i.en = zext nneg i32 %i.em to i64, !dbg !115951
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en, !dbg !115952 ; 6 uses
  %i.ep = icmp sgt i32 %i.el, -1, !dbg !115955
  br i1 %i.ep, label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit, label %bb.af, !dbg !115955

_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, %bb.ad
  %i.eq = trunc nuw i64 %.sroa.0.0.i41 to i1, !dbg !115957
  %spec.select.i = select i1 %i.eq, i64 %.sroa.3.0.i40, i64 0, !dbg !115957
  %9 = sitofp i64 %spec.select.i to double, !dbg !115961
  %i.er = load double, ptr %i.eo, align 8, !dbg !115963, !alias.scope !115964, !noundef !12
  %i.es = fadd double %i.er, %9, !dbg !115963
  store double %i.es, ptr %i.eo, align 8, !dbg !115963, !alias.scope !115964
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !115967 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !dbg !115967, !alias.scope !115964, !noundef !12
  %i.ev = add i64 %i.eu, %.sroa.0.0.i41, !dbg !115967
  store i64 %i.ev, ptr %i.et, align 8, !dbg !115967, !alias.scope !115964
  %exitcond69.not = icmp eq i64 %i.dm, %.sroa.7.0.copyload, !dbg !115890
  br i1 %exitcond69.not, label %.thread, label %bb.ac, !dbg !115890

bb.ae:                                            ; preds = %bb.ag
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !115968

bb.af:                                            ; preds = %bb.ad
  %i.ex = load double, ptr %i.eo, align 8, !dbg !115969, !noundef !12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !115969
  %i.ez = load i64, ptr %i.ey, align 8, !dbg !115969, !noundef !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !dbg !115971
  %i.fa = load i64, ptr %i.dk, align 8, !dbg !115973, !alias.scope !115977, !noundef !12 ; 3 uses
  %i.fb = load i64, ptr %i.dj, align 8, !dbg !115980, !range !791, !alias.scope !115977, !noundef !12
  %i.fc = icmp eq i64 %i.fa, %i.fb, !dbg !115983
  br i1 %i.fc, label %bb.ag, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43, !dbg !115983

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE8grow_oneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43 unwind label %bb.ae, !dbg !115984

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr.exit43: ; preds = %bb.ag, %bb.af
  %i.fd = load ptr, ptr %i.dl, align 16, !dbg !115985, !alias.scope !115977, !nonnull !12, !noundef !12
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fa, !dbg !115990 ; 2 uses
  store double %i.ex, ptr %i.fe, align 8, !dbg !115992
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !115992
  store i64 %i.ez, ptr %i.ff, align 8, !dbg !115992
  %i.fg = add i64 %i.fa, 1, !dbg !115994
  store i64 %i.fg, ptr %i.dk, align 8, !dbg !115994, !alias.scope !115977
  br label %_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_.exit, !dbg !115995

bb.ah:                                            ; preds = %bb.o
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !115996
  unreachable, !dbg !115996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n, %bb.m, %bb.o
  resume { ptr, i32 } %.pn, !dbg !115996
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction6as_anyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #4 !dbg !115997 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !115998
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @581, 1, !dbg !115998
  ret { ptr, ptr } %i.b, !dbg !115998
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction6resizeB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 !dbg !115999 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !116000
  %i.b = zext i32 %1 to i64, !dbg !116001
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE6resizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, double noundef 0.000000e+00, i64 noundef 0), !dbg !116002
  ret void, !dbg !116003
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction7reserveB7_(ptr noalias noundef align 16 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !116004 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !116005
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1), !dbg !116006
  ret void, !dbg !116007
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction8finalizeB7_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 !dbg !116008 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !116009 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !116009
  store i64 0, ptr %i.c, align 16, !dbg !116014
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !116014
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !116014
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !116014
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !116014
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !116016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !116018
  store ptr null, ptr %i.a, align 8, !dbg !116018
  call void @_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer6finishB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !116019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !116020
  ret void, !dbg !116021
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction9new_emptyB7_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !116022 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !116023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !116024
  store i64 0, ptr %i.c, align 8, !dbg !116025
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !116025
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !116025
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !116025
  store i64 0, ptr %i.f, align 8, !dbg !116025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !116027
  store i64 0, ptr %i.b, align 8, !dbg !116028
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !116028
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !116028
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !116028
  store i64 0, ptr %i.h, align 8, !dbg !116028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !116029
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !116030

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.h unwind label %bb.g, !dbg !116031

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !116023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !116023
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72, !dbg !116023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !116023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !116023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !116031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !116031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !116031
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !116032, !noalias !116039
  %i.l = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 193) 96, i64 noundef range(i64 8, 17) 16) #30, !dbg !116042, !noalias !116039 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !116043
  br i1 %i.m, label %bb.d, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEEE3newBJ_.exit, !dbg !116044, !prof !769

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #35
          to label %.noexc unwind label %bb.e, !dbg !116045

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !116045

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBJ_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEEEBL_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d) #32
          to label %common.resume unwind label %bb.f, !dbg !116046

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !116047
  unreachable, !dbg !116047

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !116048

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEEE3newBJ_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !dbg !116049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !116050
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0, !dbg !116051
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @580, 1, !dbg !116051
  ret { ptr, ptr } %i.q, !dbg !116051

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !116052
  unreachable, !dbg !116052

bb.h:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g, !dbg !116031
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEENtB5_16GroupedReduction12update_groupB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !116053 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = icmp eq i64 %3, 1, !dbg !116054
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !116054, !prof !11156

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #34, !dbg !116055
  unreachable, !dbg !116055

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !dbg !116056, !nonnull !12, !align !11159, !noundef !12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 16, !dbg !116057, !range !11168, !noundef !12
  %.not = icmp eq i8 %i.d, 31, !dbg !116057
  br i1 %.not, label %bb.d, label %bb.e, !dbg !116061

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !116062
  %i.f = load ptr, ptr %i.e, align 8, !dbg !116062, !nonnull !12, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !116062
  %i.h = load ptr, ptr %i.g, align 16, !dbg !116062, !nonnull !12, !align !6617, !noundef !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !116075
end_hunk_5
begin_hunk_6_@llvm.vector.reduce.add.v4i32
!108408 = !DILocation(line: 444, column: 20, scope: !108305, inlinedAt: !108409)
!108409 = !DILocation(line: 2110, column: 27, scope: !108410, inlinedAt: !108411)
!108410 = !DILexicalBlockFile(scope: !108307, file: !712, discriminator: 4)
!108411 = !DILocation(line: 2428, column: 15, scope: !108412, inlinedAt: !108413)
!108412 = !DILexicalBlockFile(scope: !108309, file: !712, discriminator: 4)
!108413 = !DILocation(line: 4194, column: 10, scope: !108414, inlinedAt: !108415)
!108414 = !DILexicalBlockFile(scope: !108311, file: !712, discriminator: 4)
!108415 = !DILocation(line: 1085, column: 16, scope: !108416, inlinedAt: !108417)
!108416 = !DILexicalBlockFile(scope: !108313, file: !10777, discriminator: 2)
!108417 = !DILocation(line: 301, column: 16, scope: !108418)
!108418 = !DILexicalBlockFile(scope: !108406, file: !11151, discriminator: 2)
!108419 = !DILocation(line: 2428, column: 9, scope: !108309, inlinedAt: !108413)
!108420 = !DILocation(line: 301, column: 23, scope: !108406)
!108421 = !DILocation(line: 961, column: 18, scope: !108422, inlinedAt: !108423)
!108422 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !11365, file: !11364, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108423 = !DILocation(line: 102, column: 78, scope: !108424, inlinedAt: !108425)
!108424 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !11372, file: !11369, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108425 = !DILocation(line: 1041, column: 9, scope: !108426, inlinedAt: !108427)
!108426 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108427 = !DILocation(line: 0, scope: !108406)
!108428 = !DILocation(line: 961, column: 18, scope: !11676, inlinedAt: !108429)
!108429 = !DILocation(line: 102, column: 78, scope: !11678, inlinedAt: !108430)
!108430 = !DILocation(line: 1041, column: 9, scope: !11682, inlinedAt: !108431)
!108431 = !DILocation(line: 26, column: 14, scope: !11684, inlinedAt: !108432)
!108432 = !DILocation(line: 631, column: 30, scope: !11686, inlinedAt: !108427)
!108433 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !108434)
!108434 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !108435)
!108435 = distinct !DILocation(line: 312, column: 45, scope: !108406)
!108436 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !108437)
!108437 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !108438)
!108438 = distinct !DILocation(line: 302, column: 45, scope: !108406)
!108439 = !DILocation(line: 312, column: 31, scope: !108406)
!108440 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !108441)
!108441 = distinct !DILocation(line: 85, column: 9, scope: !108442, inlinedAt: !108443)
!108442 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>, core::slice::iter::Iter<polars_expr::EvictIdx>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEENtNtNtB8_6traits8iterator8Iterator4nextB1t_", scope: !11411, file: !11400, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108443 = !DILocation(line: 312, column: 31, scope: !108444)
!108444 = !DILexicalBlockFile(scope: !108445, file: !11151, discriminator: 2)
!108445 = distinct !DILexicalBlock(scope: !108406, file: !11151, line: 312, column: 17)
!108446 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !108441)
!108447 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !108448)
!108448 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !108449)
!108449 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !108441)
!108450 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !108451)
!108451 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !108452)
!108452 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !108441)
!108453 = !DILocation(line: 313, column: 49, scope: !108454)
!108454 = distinct !DILexicalBlock(scope: !108445, file: !11151, line: 312, column: 17)
!108455 = !DILocation(line: 313, column: 33, scope: !108454)
!108456 = !DILocation(line: 252, column: 39, scope: !12494, inlinedAt: !108457)
!108457 = distinct !DILocation(line: 646, column: 26, scope: !12496, inlinedAt: !108458)
!108458 = distinct !DILocation(line: 223, column: 22, scope: !12498, inlinedAt: !108459)
!108459 = distinct !DILocation(line: 113, column: 14, scope: !12500, inlinedAt: !108460)
!108460 = distinct !DILocation(line: 313, column: 33, scope: !108454)
!108461 = !DILocation(line: 252, column: 13, scope: !12494, inlinedAt: !108457)
!108462 = !DILocation(line: 253, column: 13, scope: !12494, inlinedAt: !108457)
!108463 = !DILocation(line: 223, column: 9, scope: !12498, inlinedAt: !108459)
!108464 = !DILocation(line: 614, column: 9, scope: !108465, inlinedAt: !108466)
!108465 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108466 = !DILocation(line: 609, column: 14, scope: !108467, inlinedAt: !108469)
!108467 = !DILexicalBlockFile(scope: !108468, file: !11291, discriminator: 2)
!108468 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108469 = !DILocation(line: 296, column: 20, scope: !108470, inlinedAt: !108472)
!108470 = !DILexicalBlockFile(scope: !108471, file: !11291, discriminator: 2)
!108471 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108472 = !DILocation(line: 2026, column: 18, scope: !108473, inlinedAt: !108475)
!108473 = !DILexicalBlockFile(scope: !108474, file: !11269, discriminator: 2)
!108474 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108475 = !DILocation(line: 1877, column: 78, scope: !108476, inlinedAt: !108478)
!108476 = !DILexicalBlockFile(scope: !108477, file: !11269, discriminator: 2)
!108477 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108478 = !DILocation(line: 3764, column: 14, scope: !108479, inlinedAt: !108481)
!108479 = !DILexicalBlockFile(scope: !108480, file: !11269, discriminator: 2)
!108480 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108481 = !DILocation(line: 314, column: 31, scope: !108482)
!108482 = distinct !DILexicalBlock(scope: !108454, file: !11151, line: 313, column: 21)
!108483 = !DILocation(line: 34, column: 10, scope: !108484, inlinedAt: !108485)
!108484 = distinct !DISubprogram(name: "idx", linkageName: "_RNvMCskY9G75ZWc4U_11polars_exprNtB2_8EvictIdx3idx", scope: !11754, file: !7900, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108485 = !DILocation(line: 314, column: 63, scope: !108482)
!108486 = !DILocation(line: 34, column: 9, scope: !108484, inlinedAt: !108485)
!108487 = !DILocation(line: 266, column: 18, scope: !108488, inlinedAt: !108489)
!108488 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108489 = !DILocation(line: 691, column: 30, scope: !108490, inlinedAt: !108492)
!108490 = !DILexicalBlockFile(scope: !108491, file: !11376, discriminator: 2)
!108491 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize), usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTdjE17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108492 = !DILocation(line: 314, column: 43, scope: !108482)
!108493 = !DILocation(line: 315, column: 24, scope: !108494)
!108494 = distinct !DILexicalBlock(scope: !108482, file: !11151, line: 314, column: 21)
!108495 = !DILocation(line: 323, column: 9, scope: !108406)
!108496 = !{!108497}
!108497 = distinct !{!108497, !108498, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!108498 = distinct !{!108498, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!108499 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !108500)
!108500 = distinct !DILocation(line: 324, column: 5, scope: !108341)
!108501 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !108502)
!108502 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !108503)
!108503 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !108504)
!108504 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !108505)
!108505 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !108506)
!108506 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !108500)
!108507 = !{!108508, !108510, !108512, !108497}
!108508 = distinct !{!108508, !108509, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!108509 = distinct !{!108509, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!108510 = distinct !{!108510, !108511, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!108511 = distinct !{!108511, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!108512 = distinct !{!108512, !108513, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!108513 = distinct !{!108513, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!108514 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !108504)
!108515 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !108516)
!108516 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !108504)
!108517 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !108504)
!108518 = !DILocation(line: 324, column: 6, scope: !108295)
!108519 = !DILocation(line: 742, column: 44, scope: !45432, inlinedAt: !108520)
!108520 = distinct !DILocation(line: 114, column: 47, scope: !108521, inlinedAt: !108522)
!108521 = distinct !DISubprogram(name: "reduce_one<polars_core::datatypes::UInt16Type>", linkageName: "_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_", scope: !107517, file: !107516, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108522 = distinct !DILocation(line: 319, column: 34, scope: !108494)
!108523 = !DILocation(line: 114, column: 9, scope: !108521, inlinedAt: !108522)
!108524 = !{!108525}
!108525 = distinct !{!108525, !108526, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!108526 = distinct !{!108526, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_"}
!108527 = !DILocation(line: 115, column: 9, scope: !108521, inlinedAt: !108522)
!108528 = !DILocation(line: 320, column: 17, scope: !108454)
!108529 = !DILocation(line: 929, column: 22, scope: !108530, inlinedAt: !108531)
!108530 = distinct !DISubprogram(name: "replace<(f64, usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceTdjEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108531 = !DILocation(line: 316, column: 35, scope: !108494)
!108532 = !DILocation(line: 930, column: 49, scope: !108533, inlinedAt: !108531)
!108533 = distinct !DILexicalBlock(scope: !108530, file: !776, line: 929, column: 9)
!108534 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !108535)
!108535 = distinct !DILocation(line: 1004, column: 22, scope: !108536, inlinedAt: !108537)
!108536 = distinct !DISubprogram(name: "push<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE4pushCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108537 = !DILocation(line: 317, column: 45, scope: !108538)
!108538 = distinct !DILexicalBlock(scope: !108494, file: !11151, line: 316, column: 25)
!108539 = !{!108540}
!108540 = distinct !{!108540, !108541, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!108541 = distinct !{!108541, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!108542 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !108543)
!108543 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !108544)
!108544 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !108535)
!108545 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !108535)
!108546 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !108535)
!108547 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !108548)
!108548 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !108549)
!108549 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !108550)
!108550 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !108551)
!108551 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !108535)
!108552 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !108553)
!108553 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !108535)
!108554 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !108555)
!108555 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !108535)
!108556 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !108535)
!108557 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !108535)
!108558 = !DILocation(line: 302, column: 31, scope: !108406)
!108559 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !108560)
!108560 = distinct !DILocation(line: 85, column: 9, scope: !108442, inlinedAt: !108561)
!108561 = !DILocation(line: 302, column: 31, scope: !108562)
!108562 = !DILexicalBlockFile(scope: !108563, file: !11151, discriminator: 2)
!108563 = distinct !DILexicalBlock(scope: !108406, file: !11151, line: 302, column: 17)
!108564 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !108560)
!108565 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !108566)
!108566 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !108567)
!108567 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !108560)
!108568 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !108569)
!108569 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !108570)
!108570 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !108560)
!108571 = !DILocation(line: 303, column: 48, scope: !108572)
!108572 = distinct !DILexicalBlock(scope: !108563, file: !11151, line: 302, column: 17)
!108573 = !DILocation(line: 745, column: 15, scope: !12628, inlinedAt: !108574)
!108574 = distinct !DILocation(line: 508, column: 23, scope: !12630, inlinedAt: !108575)
!108575 = distinct !DILocation(line: 138, column: 14, scope: !12614, inlinedAt: !108576)
!108576 = distinct !DILocation(line: 49, column: 17, scope: !12616, inlinedAt: !108577)
!108577 = distinct !DILocation(line: 303, column: 34, scope: !108572)
!108578 = !DILocation(line: 745, column: 9, scope: !12612, inlinedAt: !108579)
!108579 = distinct !DILocation(line: 139, column: 14, scope: !12614, inlinedAt: !108576)
!108580 = !DILocation(line: 461, column: 23, scope: !12633, inlinedAt: !108581)
!108581 = distinct !DILocation(line: 360, column: 27, scope: !12636, inlinedAt: !108582)
!108582 = distinct !DILocation(line: 140, column: 25, scope: !12638, inlinedAt: !108583)
!108583 = distinct !DILocation(line: 1165, column: 29, scope: !12640, inlinedAt: !108584)
!108584 = distinct !DILocation(line: 140, column: 14, scope: !12614, inlinedAt: !108576)
!108585 = !DILocation(line: 462, column: 41, scope: !12644, inlinedAt: !108581)
!108586 = !DILocation(line: 360, column: 42, scope: !12636, inlinedAt: !108582)
!108587 = !DILocation(line: 43, column: 37, scope: !12647, inlinedAt: !108588)
!108588 = distinct !DILocation(line: 360, column: 9, scope: !12636, inlinedAt: !108582)
!108589 = !DILocation(line: 252, column: 39, scope: !12650, inlinedAt: !108590)
!108590 = distinct !DILocation(line: 646, column: 26, scope: !12652, inlinedAt: !108591)
!108591 = distinct !DILocation(line: 43, column: 23, scope: !12647, inlinedAt: !108588)
!108592 = !DILocation(line: 252, column: 13, scope: !12650, inlinedAt: !108590)
!108593 = !DILocation(line: 253, column: 13, scope: !12650, inlinedAt: !108590)
!108594 = !DILocation(line: 43, column: 16, scope: !12647, inlinedAt: !108588)
!108595 = !DILocation(line: 44, column: 15, scope: !12658, inlinedAt: !108588)
!108596 = !DILocation(line: 1165, column: 24, scope: !12640, inlinedAt: !108584)
!108597 = !DILocation(line: 142, column: 6, scope: !12614, inlinedAt: !108576)
!108598 = !DILocation(line: 49, column: 12, scope: !12616, inlinedAt: !108577)
!108599 = !DILocation(line: 52, column: 23, scope: !12616, inlinedAt: !108577)
!108600 = !DILocation(line: 252, column: 39, scope: !12494, inlinedAt: !108601)
!108601 = distinct !DILocation(line: 646, column: 26, scope: !12496, inlinedAt: !108602)
!108602 = distinct !DILocation(line: 223, column: 22, scope: !12498, inlinedAt: !108603)
!108603 = distinct !DILocation(line: 113, column: 14, scope: !12500, inlinedAt: !108604)
!108604 = distinct !DILocation(line: 52, column: 23, scope: !12616, inlinedAt: !108577)
!108605 = !DILocation(line: 252, column: 13, scope: !12494, inlinedAt: !108601)
!108606 = !DILocation(line: 253, column: 13, scope: !12494, inlinedAt: !108601)
!108607 = !DILocation(line: 223, column: 9, scope: !12498, inlinedAt: !108603)
!108608 = !DILocation(line: 49, column: 9, scope: !12616, inlinedAt: !108577)
!108609 = !DILocation(line: 0, scope: !12616, inlinedAt: !108577)
!108610 = !DILocation(line: 614, column: 9, scope: !108465, inlinedAt: !108611)
!108611 = !DILocation(line: 609, column: 14, scope: !108468, inlinedAt: !108612)
!108612 = !DILocation(line: 296, column: 20, scope: !108471, inlinedAt: !108613)
!108613 = !DILocation(line: 2026, column: 18, scope: !108474, inlinedAt: !108614)
!108614 = !DILocation(line: 1877, column: 78, scope: !108477, inlinedAt: !108615)
!108615 = !DILocation(line: 3764, column: 14, scope: !108480, inlinedAt: !108616)
!108616 = !DILocation(line: 304, column: 31, scope: !108617)
!108617 = distinct !DILexicalBlock(scope: !108572, file: !11151, line: 303, column: 21)
!108618 = !DILocation(line: 34, column: 10, scope: !108484, inlinedAt: !108619)
!108619 = !DILocation(line: 304, column: 63, scope: !108617)
!108620 = !DILocation(line: 34, column: 9, scope: !108484, inlinedAt: !108619)
!108621 = !DILocation(line: 266, column: 18, scope: !108488, inlinedAt: !108622)
!108622 = !DILocation(line: 691, column: 30, scope: !108491, inlinedAt: !108623)
!108623 = !DILocation(line: 304, column: 43, scope: !108617)
!108624 = !DILocation(line: 305, column: 24, scope: !108625)
!108625 = distinct !DILexicalBlock(scope: !108617, file: !11151, line: 304, column: 21)
!108626 = !DILocation(line: 1042, column: 9, scope: !108627, inlinedAt: !108628)
!108627 = distinct !DISubprogram(name: "unwrap_or<u16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptiontE9unwrap_orCskY9G75ZWc4U_11polars_expr", scope: !7839, file: !7838, line: 1038, type: !11, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108628 = distinct !DILocation(line: 114, column: 18, scope: !108521, inlinedAt: !108629)
!108629 = distinct !DILocation(line: 309, column: 34, scope: !108625)
!108630 = !DILocation(line: 742, column: 44, scope: !45432, inlinedAt: !108631)
!108631 = distinct !DILocation(line: 114, column: 47, scope: !108521, inlinedAt: !108629)
!108632 = !DILocation(line: 114, column: 9, scope: !108521, inlinedAt: !108629)
!108633 = !{!108634}
!108634 = distinct !{!108634, !108635, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!108635 = distinct !{!108635, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeENtB6_7Reducer10reduce_oneB8_"}
!108636 = !DILocation(line: 115, column: 16, scope: !108521, inlinedAt: !108629)
!108637 = !DILocation(line: 115, column: 9, scope: !108521, inlinedAt: !108629)
!108638 = !DILocation(line: 310, column: 17, scope: !108572)
!108639 = !DILocation(line: 929, column: 22, scope: !108530, inlinedAt: !108640)
!108640 = !DILocation(line: 306, column: 35, scope: !108625)
!108641 = !DILocation(line: 930, column: 49, scope: !108642, inlinedAt: !108640)
!108642 = distinct !DILexicalBlock(scope: !108530, file: !776, line: 929, column: 9)
!108643 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !108644)
!108644 = distinct !DILocation(line: 1004, column: 22, scope: !108536, inlinedAt: !108645)
!108645 = !DILocation(line: 307, column: 45, scope: !108646)
!108646 = distinct !DILexicalBlock(scope: !108625, file: !11151, line: 306, column: 25)
!108647 = !{!108648}
!108648 = distinct !{!108648, !108649, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!108649 = distinct !{!108649, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!108650 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !108651)
!108651 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !108652)
!108652 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !108644)
!108653 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !108644)
!108654 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !108644)
!108655 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !108656)
!108656 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !108657)
!108657 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !108658)
!108658 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !108659)
!108659 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !108644)
!108660 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !108661)
!108661 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !108644)
!108662 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !108663)
!108663 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !108644)
!108664 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !108644)
!108665 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !108644)
!108666 = !DILocation(line: 284, column: 5, scope: !108295)
!108667 = distinct !DISubprogram(name: "as_any<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction6as_anyB7_", scope: !11152, file: !11151, line: 360, type: !11, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108668 = !DILocation(line: 362, column: 6, scope: !108667)
!108669 = distinct !DISubprogram(name: "resize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction6resizeB7_", scope: !11152, file: !11151, line: 262, type: !11, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108670 = !DILocation(line: 263, column: 9, scope: !108669)
!108671 = !DILocation(line: 263, column: 28, scope: !108669)
!108672 = !DILocation(line: 263, column: 21, scope: !108669)
!108673 = !DILocation(line: 264, column: 6, scope: !108669)
!108674 = distinct !DISubprogram(name: "reserve<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction7reserveB7_", scope: !11152, file: !11151, line: 258, type: !11, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108675 = !DILocation(line: 259, column: 9, scope: !108674)
!108676 = !DILocation(line: 259, column: 21, scope: !108674)
!108677 = !DILocation(line: 260, column: 6, scope: !108674)
!108678 = distinct !DISubprogram(name: "finalize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction8finalizeB7_", scope: !11152, file: !11151, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108679 = !DILocation(line: 929, column: 22, scope: !108680, inlinedAt: !108681)
!108680 = distinct !DISubprogram(name: "replace<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108681 = !DILocation(line: 849, column: 5, scope: !108682, inlinedAt: !108683)
!108682 = distinct !DISubprogram(name: "take<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 848, type: !11, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108683 = !DILocation(line: 356, column: 17, scope: !108678)
!108684 = !DILocation(line: 930, column: 49, scope: !108685, inlinedAt: !108681)
!108685 = distinct !DILexicalBlock(scope: !108680, file: !776, line: 929, column: 9)
!108686 = !DILocation(line: 357, column: 9, scope: !108687)
!108687 = distinct !DILexicalBlock(scope: !108678, file: !11151, line: 356, column: 9)
!108688 = !DILocation(line: 357, column: 32, scope: !108687)
!108689 = !DILocation(line: 357, column: 22, scope: !108687)
!108690 = !DILocation(line: 357, column: 52, scope: !108687)
!108691 = !DILocation(line: 358, column: 6, scope: !108678)
!108692 = distinct !DISubprogram(name: "new_empty<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEENtB5_16GroupedReduction9new_emptyB7_", scope: !11152, file: !11151, line: 249, type: !11, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108693 = !DILocation(line: 250, column: 18, scope: !108692)
!108694 = !DILocation(line: 251, column: 21, scope: !108692)
!108695 = !DILocation(line: 464, column: 9, scope: !108696, inlinedAt: !108694)
!108696 = distinct !DISubprogram(name: "new<(f64, usize)>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecTdjEE3newCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108697 = !DILocation(line: 252, column: 29, scope: !108692)
!108698 = !DILocation(line: 464, column: 9, scope: !108696, inlinedAt: !108697)
!108699 = !DILocation(line: 253, column: 23, scope: !108692)
!108700 = !DILocation(line: 253, column: 37, scope: !108692)
!108701 = !DILocation(line: 255, column: 9, scope: !108692)
!108702 = !DILocation(line: 99, column: 9, scope: !11493, inlinedAt: !108703)
!108703 = distinct !DILocation(line: 210, column: 73, scope: !11495, inlinedAt: !108704)
!108704 = distinct !DILocation(line: 332, column: 9, scope: !11498, inlinedAt: !108705)
!108705 = distinct !DILocation(line: 449, column: 14, scope: !11500, inlinedAt: !108706)
!108706 = distinct !DILocation(line: 248, column: 18, scope: !11502, inlinedAt: !108707)
!108707 = distinct !DILocation(line: 286, column: 19, scope: !108278, inlinedAt: !108708)
!108708 = distinct !DILocation(line: 250, column: 9, scope: !108692)
!108709 = !{!108710}
!108710 = distinct !{!108710, !108711, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEEE3newBJ_: argument 0"}
!108711 = distinct !{!108711, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEEE3newBJ_"}
!108712 = !DILocation(line: 101, column: 9, scope: !11493, inlinedAt: !108703)
!108713 = !DILocation(line: 248, column: 11, scope: !11502, inlinedAt: !108707)
!108714 = !DILocation(line: 248, column: 5, scope: !11502, inlinedAt: !108707)
!108715 = !DILocation(line: 250, column: 19, scope: !11502, inlinedAt: !108707)
!108716 = !DILocation(line: 292, column: 5, scope: !108278, inlinedAt: !108708)
!108717 = !DILocation(line: 284, column: 5, scope: !108278, inlinedAt: !108708)
!108718 = !DILocation(line: 0, scope: !108692)
!108719 = !DILocation(line: 289, column: 56, scope: !108291, inlinedAt: !108708)
!108720 = !DILocation(line: 255, column: 10, scope: !108692)
!108721 = !DILocation(line: 256, column: 6, scope: !108692)
!108722 = !DILocation(line: 249, column: 5, scope: !108692)
!108723 = distinct !DISubprogram(name: "update_group<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction12update_groupB7_", scope: !11152, file: !11151, line: 266, type: !11, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108724 = !DILocation(line: 272, column: 17, scope: !108723)
!108725 = !DILocation(line: 272, column: 9, scope: !108723)
!108726 = !DILocation(line: 273, column: 22, scope: !108723)
!108727 = !DILocation(line: 193, column: 15, scope: !108728, inlinedAt: !108729)
!108728 = distinct !DISubprogram(name: "dtype", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column5dtype", scope: !11163, file: !11162, line: 192, type: !11, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108729 = !DILocation(line: 274, column: 24, scope: !108730)
!108730 = distinct !DILexicalBlock(scope: !108723, file: !11151, line: 273, column: 9)
!108731 = !DILocation(line: 193, column: 9, scope: !108728, inlinedAt: !108729)
!108732 = !DILocation(line: 444, column: 20, scope: !108733, inlinedAt: !108734)
!108733 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCskY9G75ZWc4U_11polars_expr", scope: !708, file: !707, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108734 = !DILocation(line: 2110, column: 27, scope: !108735, inlinedAt: !108736)
!108735 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCskY9G75ZWc4U_11polars_expr", scope: !713, file: !712, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108736 = !DILocation(line: 2428, column: 15, scope: !108737, inlinedAt: !108738)
!108737 = distinct !DISubprogram(name: "deref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11176, file: !712, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108738 = !DILocation(line: 4194, column: 10, scope: !108739, inlinedAt: !108740)
!108739 = distinct !DISubprogram(name: "as_ref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EINtNtCscgRAwXFJnXP_4core7convert5AsRefBH_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11179, file: !712, line: 4193, type: !11, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108740 = !DILocation(line: 1085, column: 16, scope: !108741, inlinedAt: !108742)
!108741 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11182, file: !10777, line: 1084, type: !11, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108742 = !DILocation(line: 194, column: 34, scope: !108743, inlinedAt: !108729)
!108743 = !DILexicalBlockFile(scope: !108744, file: !11162, discriminator: 2)
!108744 = distinct !DILexicalBlock(scope: !108728, file: !11162, line: 194, column: 13)
!108745 = !DILocation(line: 2428, column: 9, scope: !108737, inlinedAt: !108738)
!108746 = !DILocation(line: 194, column: 34, scope: !108744, inlinedAt: !108729)
!108747 = !DILocation(line: 194, column: 36, scope: !108744, inlinedAt: !108729)
!108748 = !DILocation(line: 0, scope: !108728, inlinedAt: !108729)
!108749 = !DILocation(line: 2124, column: 13, scope: !108750, inlinedAt: !108751)
!108750 = distinct !DISubprogram(name: "eq<polars_core::datatypes::dtype::DataType, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !11192, file: !7905, line: 2123, type: !11, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108751 = !DILocation(line: 274, column: 17, scope: !108730)
!108752 = !DILocation(line: 274, column: 9, scope: !108730)
!108753 = !DILocation(line: 275, column: 22, scope: !108730)
!108754 = !DILocation(line: 105, column: 15, scope: !108755, inlinedAt: !108756)
!108755 = distinct !DISubprogram(name: "as_materialized_series", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column22as_materialized_series", scope: !11163, file: !11162, line: 104, type: !11, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108756 = !DILocation(line: 276, column: 29, scope: !108757)
!108757 = distinct !DILexicalBlock(scope: !108730, file: !11151, line: 275, column: 9)
!108758 = !DILocation(line: 105, column: 9, scope: !108755, inlinedAt: !108756)
!108759 = !DILocation(line: 107, column: 36, scope: !108760, inlinedAt: !108756)
!108760 = distinct !DILexicalBlock(scope: !108755, file: !11162, line: 107, column: 13)
!108761 = !DILocation(line: 66, column: 9, scope: !108762, inlinedAt: !108763)
!108762 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11207, file: !11206, line: 65, type: !11, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108763 = !DILocation(line: 106, column: 34, scope: !108764, inlinedAt: !108756)
!108764 = distinct !DILexicalBlock(scope: !108755, file: !11162, line: 106, column: 13)
!108765 = !DILocation(line: 106, column: 34, scope: !108755, inlinedAt: !108756)
!108766 = !DILocation(line: 0, scope: !108755, inlinedAt: !108756)
!108767 = !DILocation(line: 277, column: 13, scope: !108768)
!108768 = distinct !DILexicalBlock(scope: !108757, file: !11151, line: 276, column: 9)
!108769 = !DILocation(line: 277, column: 22, scope: !108768)
!108770 = !DILocation(line: 277, column: 35, scope: !108768)
!108771 = !DILocation(line: 350, column: 15, scope: !108772, inlinedAt: !108773)
!108772 = distinct !DISubprogram(name: "deref<polars_core::series::Series>", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11220, file: !11219, line: 349, type: !11, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108773 = !DILocation(line: 464, column: 9, scope: !108774, inlinedAt: !108775)
!108774 = distinct !DISubprogram(name: "as_ref<polars_core::series::Series>", linkageName: "_RNvXse_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtCscgRAwXFJnXP_4core7convert5AsRefBI_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11224, file: !11219, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108775 = !DILocation(line: 278, column: 50, scope: !108776)
!108776 = distinct !DILexicalBlock(scope: !108768, file: !11151, line: 277, column: 9)
!108777 = !DILocation(line: 350, column: 9, scope: !108772, inlinedAt: !108773)
!108778 = !DILocation(line: 444, column: 20, scope: !108733, inlinedAt: !108779)
!108779 = !DILocation(line: 2110, column: 27, scope: !108780, inlinedAt: !108781)
!108780 = !DILexicalBlockFile(scope: !108735, file: !712, discriminator: 2)
!108781 = !DILocation(line: 2428, column: 15, scope: !108782, inlinedAt: !108783)
!108782 = !DILexicalBlockFile(scope: !108737, file: !712, discriminator: 2)
!108783 = !DILocation(line: 4194, column: 10, scope: !108784, inlinedAt: !108785)
!108784 = !DILexicalBlockFile(scope: !108739, file: !712, discriminator: 2)
!108785 = !DILocation(line: 1091, column: 16, scope: !108786, inlinedAt: !108787)
!108786 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesINtNtCscgRAwXFJnXP_4core7convert5AsRefDNtNtB5_12series_trait11SeriesTraitEL_E6as_ref", scope: !11237, file: !10777, line: 1090, type: !11, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108787 = !DILocation(line: 278, column: 59, scope: !108776)
!108788 = !DILocation(line: 2428, column: 9, scope: !108737, inlinedAt: !108783)
!108789 = !DILocation(line: 278, column: 68, scope: !108776)
!108790 = !{!108791}
!108791 = distinct !{!108791, !108792, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!108792 = distinct !{!108792, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!108793 = !DILocation(line: 282, column: 5, scope: !108768)
!108794 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !108795)
!108795 = distinct !DILocation(line: 282, column: 5, scope: !108768)
!108796 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !108797)
!108797 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !108798)
!108798 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !108799)
!108799 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !108800)
!108800 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !108801)
!108801 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !108795)
!108802 = !{!108803, !108805, !108807, !108791}
!108803 = distinct !{!108803, !108804, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!108804 = distinct !{!108804, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!108805 = distinct !{!108805, !108806, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!108806 = distinct !{!108806, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!108807 = distinct !{!108807, !108808, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!108808 = distinct !{!108808, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!108809 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !108799)
!108810 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !108811)
!108811 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !108799)
!108812 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !108799)
!108813 = !DILocation(line: 280, column: 41, scope: !108814)
!108814 = distinct !DILexicalBlock(scope: !108776, file: !11151, line: 278, column: 9)
!108815 = !DILocation(line: 1877, column: 92, scope: !108816, inlinedAt: !108817)
!108816 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108817 = !DILocation(line: 3764, column: 14, scope: !108818, inlinedAt: !108819)
!108818 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108819 = !DILocation(line: 3839, column: 34, scope: !108820, inlinedAt: !108821)
!108820 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11277, file: !11269, line: 3838, type: !11, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108821 = !DILocation(line: 280, column: 40, scope: !108814)
!108822 = !DILocation(line: 278, column: 14, scope: !108823, inlinedAt: !108824)
!108823 = distinct !DISubprogram(name: "index_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 276, type: !11, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108824 = !DILocation(line: 31, column: 15, scope: !108825, inlinedAt: !108826)
!108825 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTdjEINtNtNtB8_3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11287, file: !11281, line: 30, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108826 = !DILocation(line: 3839, column: 9, scope: !108820, inlinedAt: !108821)
!108827 = !DILocation(line: 614, column: 9, scope: !108828, inlinedAt: !108829)
!108828 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108829 = !DILocation(line: 609, column: 14, scope: !108830, inlinedAt: !108831)
!108830 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108831 = !DILocation(line: 296, column: 20, scope: !108832, inlinedAt: !108833)
!108832 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108833 = !DILocation(line: 2026, column: 18, scope: !108834, inlinedAt: !108835)
!108834 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!108835 = !DILocation(line: 1877, column: 78, scope: !108816, inlinedAt: !108817)
!108836 = !DILocation(line: 278, column: 9, scope: !108823, inlinedAt: !108824)
!108837 = !DILocation(line: 280, column: 14, scope: !108814)
!108838 = !DILocation(line: 281, column: 9, scope: !108814)
!108839 = !{!108840}
!108840 = distinct !{!108840, !108841, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!108841 = distinct !{!108841, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!108842 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !108843)
!108843 = distinct !DILocation(line: 282, column: 5, scope: !108768)
!108844 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !108845)
!108845 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !108846)
!108846 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !108847)
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.add.v4i32
!109131 = !DILocation(line: 444, column: 20, scope: !109028, inlinedAt: !109132)
!109132 = !DILocation(line: 2110, column: 27, scope: !109133, inlinedAt: !109134)
!109133 = !DILexicalBlockFile(scope: !109030, file: !712, discriminator: 4)
!109134 = !DILocation(line: 2428, column: 15, scope: !109135, inlinedAt: !109136)
!109135 = !DILexicalBlockFile(scope: !109032, file: !712, discriminator: 4)
!109136 = !DILocation(line: 4194, column: 10, scope: !109137, inlinedAt: !109138)
!109137 = !DILexicalBlockFile(scope: !109034, file: !712, discriminator: 4)
!109138 = !DILocation(line: 1085, column: 16, scope: !109139, inlinedAt: !109140)
!109139 = !DILexicalBlockFile(scope: !109036, file: !10777, discriminator: 2)
!109140 = !DILocation(line: 301, column: 16, scope: !109141)
!109141 = !DILexicalBlockFile(scope: !109129, file: !11151, discriminator: 2)
!109142 = !DILocation(line: 2428, column: 9, scope: !109032, inlinedAt: !109136)
!109143 = !DILocation(line: 301, column: 23, scope: !109129)
!109144 = !DILocation(line: 961, column: 18, scope: !109145, inlinedAt: !109146)
!109145 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !11365, file: !11364, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109146 = !DILocation(line: 102, column: 78, scope: !109147, inlinedAt: !109148)
!109147 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !11372, file: !11369, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109148 = !DILocation(line: 1041, column: 9, scope: !109149, inlinedAt: !109150)
!109149 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109150 = !DILocation(line: 0, scope: !109129)
!109151 = !DILocation(line: 961, column: 18, scope: !11676, inlinedAt: !109152)
!109152 = !DILocation(line: 102, column: 78, scope: !11678, inlinedAt: !109153)
!109153 = !DILocation(line: 1041, column: 9, scope: !11682, inlinedAt: !109154)
!109154 = !DILocation(line: 26, column: 14, scope: !11684, inlinedAt: !109155)
!109155 = !DILocation(line: 631, column: 30, scope: !11686, inlinedAt: !109150)
!109156 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !109157)
!109157 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !109158)
!109158 = distinct !DILocation(line: 312, column: 45, scope: !109129)
!109159 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !109160)
!109160 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !109161)
!109161 = distinct !DILocation(line: 302, column: 45, scope: !109129)
!109162 = !DILocation(line: 312, column: 31, scope: !109129)
!109163 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !109164)
!109164 = distinct !DILocation(line: 85, column: 9, scope: !109165, inlinedAt: !109166)
!109165 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>, core::slice::iter::Iter<polars_expr::EvictIdx>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEENtNtNtB8_6traits8iterator8Iterator4nextB1t_", scope: !11411, file: !11400, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109166 = !DILocation(line: 312, column: 31, scope: !109167)
!109167 = !DILexicalBlockFile(scope: !109168, file: !11151, discriminator: 2)
!109168 = distinct !DILexicalBlock(scope: !109129, file: !11151, line: 312, column: 17)
!109169 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !109164)
!109170 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !109171)
!109171 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !109172)
!109172 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !109164)
!109173 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !109174)
!109174 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !109175)
!109175 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !109164)
!109176 = !DILocation(line: 313, column: 49, scope: !109177)
!109177 = distinct !DILexicalBlock(scope: !109168, file: !11151, line: 312, column: 17)
!109178 = !DILocation(line: 313, column: 33, scope: !109177)
!109179 = !DILocation(line: 252, column: 39, scope: !13253, inlinedAt: !109180)
!109180 = distinct !DILocation(line: 646, column: 26, scope: !13255, inlinedAt: !109181)
!109181 = distinct !DILocation(line: 223, column: 22, scope: !13257, inlinedAt: !109182)
!109182 = distinct !DILocation(line: 113, column: 14, scope: !13259, inlinedAt: !109183)
!109183 = distinct !DILocation(line: 313, column: 33, scope: !109177)
!109184 = !DILocation(line: 252, column: 13, scope: !13253, inlinedAt: !109180)
!109185 = !DILocation(line: 253, column: 13, scope: !13253, inlinedAt: !109180)
!109186 = !DILocation(line: 223, column: 9, scope: !13257, inlinedAt: !109182)
!109187 = !DILocation(line: 614, column: 9, scope: !109188, inlinedAt: !109189)
!109188 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109189 = !DILocation(line: 609, column: 14, scope: !109190, inlinedAt: !109192)
!109190 = !DILexicalBlockFile(scope: !109191, file: !11291, discriminator: 2)
!109191 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109192 = !DILocation(line: 296, column: 20, scope: !109193, inlinedAt: !109195)
!109193 = !DILexicalBlockFile(scope: !109194, file: !11291, discriminator: 2)
!109194 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109195 = !DILocation(line: 2026, column: 18, scope: !109196, inlinedAt: !109198)
!109196 = !DILexicalBlockFile(scope: !109197, file: !11269, discriminator: 2)
!109197 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109198 = !DILocation(line: 1877, column: 78, scope: !109199, inlinedAt: !109201)
!109199 = !DILexicalBlockFile(scope: !109200, file: !11269, discriminator: 2)
!109200 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109201 = !DILocation(line: 3764, column: 14, scope: !109202, inlinedAt: !109204)
!109202 = !DILexicalBlockFile(scope: !109203, file: !11269, discriminator: 2)
!109203 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109204 = !DILocation(line: 314, column: 31, scope: !109205)
!109205 = distinct !DILexicalBlock(scope: !109177, file: !11151, line: 313, column: 21)
!109206 = !DILocation(line: 34, column: 10, scope: !109207, inlinedAt: !109208)
!109207 = distinct !DISubprogram(name: "idx", linkageName: "_RNvMCskY9G75ZWc4U_11polars_exprNtB2_8EvictIdx3idx", scope: !11754, file: !7900, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109208 = !DILocation(line: 314, column: 63, scope: !109205)
!109209 = !DILocation(line: 34, column: 9, scope: !109207, inlinedAt: !109208)
!109210 = !DILocation(line: 266, column: 18, scope: !109211, inlinedAt: !109212)
!109211 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109212 = !DILocation(line: 691, column: 30, scope: !109213, inlinedAt: !109215)
!109213 = !DILexicalBlockFile(scope: !109214, file: !11376, discriminator: 2)
!109214 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize), usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTdjE17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109215 = !DILocation(line: 314, column: 43, scope: !109205)
!109216 = !DILocation(line: 315, column: 24, scope: !109217)
!109217 = distinct !DILexicalBlock(scope: !109205, file: !11151, line: 314, column: 21)
!109218 = !DILocation(line: 323, column: 9, scope: !109129)
!109219 = !{!109220}
!109220 = distinct !{!109220, !109221, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!109221 = distinct !{!109221, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!109222 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109223)
!109223 = distinct !DILocation(line: 324, column: 5, scope: !109064)
!109224 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !109225)
!109225 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !109226)
!109226 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !109227)
!109227 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !109228)
!109228 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !109229)
!109229 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109223)
!109230 = !{!109231, !109233, !109235, !109220}
!109231 = distinct !{!109231, !109232, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!109232 = distinct !{!109232, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!109233 = distinct !{!109233, !109234, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!109234 = distinct !{!109234, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!109235 = distinct !{!109235, !109236, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!109236 = distinct !{!109236, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!109237 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !109227)
!109238 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !109239)
!109239 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !109227)
!109240 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !109227)
!109241 = !DILocation(line: 324, column: 6, scope: !109018)
!109242 = !DILocation(line: 742, column: 44, scope: !46198, inlinedAt: !109243)
!109243 = distinct !DILocation(line: 114, column: 47, scope: !109244, inlinedAt: !109245)
!109244 = distinct !DISubprogram(name: "reduce_one<polars_core::datatypes::UInt32Type>", linkageName: "_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_", scope: !107517, file: !107516, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109245 = distinct !DILocation(line: 319, column: 34, scope: !109217)
!109246 = !DILocation(line: 114, column: 9, scope: !109244, inlinedAt: !109245)
!109247 = !{!109248}
!109248 = distinct !{!109248, !109249, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!109249 = distinct !{!109249, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_"}
!109250 = !DILocation(line: 115, column: 9, scope: !109244, inlinedAt: !109245)
!109251 = !DILocation(line: 320, column: 17, scope: !109177)
!109252 = !DILocation(line: 929, column: 22, scope: !109253, inlinedAt: !109254)
!109253 = distinct !DISubprogram(name: "replace<(f64, usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceTdjEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109254 = !DILocation(line: 316, column: 35, scope: !109217)
!109255 = !DILocation(line: 930, column: 49, scope: !109256, inlinedAt: !109254)
!109256 = distinct !DILexicalBlock(scope: !109253, file: !776, line: 929, column: 9)
!109257 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !109258)
!109258 = distinct !DILocation(line: 1004, column: 22, scope: !109259, inlinedAt: !109260)
!109259 = distinct !DISubprogram(name: "push<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE4pushCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109260 = !DILocation(line: 317, column: 45, scope: !109261)
!109261 = distinct !DILexicalBlock(scope: !109217, file: !11151, line: 316, column: 25)
!109262 = !{!109263}
!109263 = distinct !{!109263, !109264, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!109264 = distinct !{!109264, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!109265 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !109266)
!109266 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !109267)
!109267 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !109258)
!109268 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !109258)
!109269 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !109258)
!109270 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !109271)
!109271 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !109272)
!109272 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !109273)
!109273 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !109274)
!109274 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !109258)
!109275 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !109276)
!109276 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !109258)
!109277 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !109278)
!109278 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !109258)
!109279 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !109258)
!109280 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !109258)
!109281 = !DILocation(line: 302, column: 31, scope: !109129)
!109282 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !109283)
!109283 = distinct !DILocation(line: 85, column: 9, scope: !109165, inlinedAt: !109284)
!109284 = !DILocation(line: 302, column: 31, scope: !109285)
!109285 = !DILexicalBlockFile(scope: !109286, file: !11151, discriminator: 2)
!109286 = distinct !DILexicalBlock(scope: !109129, file: !11151, line: 302, column: 17)
!109287 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !109283)
!109288 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !109289)
!109289 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !109290)
!109290 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !109283)
!109291 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !109292)
!109292 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !109293)
!109293 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !109283)
!109294 = !DILocation(line: 303, column: 48, scope: !109295)
!109295 = distinct !DILexicalBlock(scope: !109286, file: !11151, line: 302, column: 17)
!109296 = !DILocation(line: 745, column: 15, scope: !13387, inlinedAt: !109297)
!109297 = distinct !DILocation(line: 508, column: 23, scope: !13389, inlinedAt: !109298)
!109298 = distinct !DILocation(line: 138, column: 14, scope: !13373, inlinedAt: !109299)
!109299 = distinct !DILocation(line: 49, column: 17, scope: !13375, inlinedAt: !109300)
!109300 = distinct !DILocation(line: 303, column: 34, scope: !109295)
!109301 = !DILocation(line: 745, column: 9, scope: !13371, inlinedAt: !109302)
!109302 = distinct !DILocation(line: 139, column: 14, scope: !13373, inlinedAt: !109299)
!109303 = !DILocation(line: 461, column: 23, scope: !13392, inlinedAt: !109304)
!109304 = distinct !DILocation(line: 360, column: 27, scope: !13395, inlinedAt: !109305)
!109305 = distinct !DILocation(line: 140, column: 25, scope: !13397, inlinedAt: !109306)
!109306 = distinct !DILocation(line: 1165, column: 29, scope: !13399, inlinedAt: !109307)
!109307 = distinct !DILocation(line: 140, column: 14, scope: !13373, inlinedAt: !109299)
!109308 = !DILocation(line: 462, column: 41, scope: !13403, inlinedAt: !109304)
!109309 = !DILocation(line: 360, column: 42, scope: !13395, inlinedAt: !109305)
!109310 = !DILocation(line: 43, column: 37, scope: !13406, inlinedAt: !109311)
!109311 = distinct !DILocation(line: 360, column: 9, scope: !13395, inlinedAt: !109305)
!109312 = !DILocation(line: 252, column: 39, scope: !13409, inlinedAt: !109313)
!109313 = distinct !DILocation(line: 646, column: 26, scope: !13411, inlinedAt: !109314)
!109314 = distinct !DILocation(line: 43, column: 23, scope: !13406, inlinedAt: !109311)
!109315 = !DILocation(line: 252, column: 13, scope: !13409, inlinedAt: !109313)
!109316 = !DILocation(line: 253, column: 13, scope: !13409, inlinedAt: !109313)
!109317 = !DILocation(line: 43, column: 16, scope: !13406, inlinedAt: !109311)
!109318 = !DILocation(line: 44, column: 15, scope: !13417, inlinedAt: !109311)
!109319 = !DILocation(line: 1165, column: 24, scope: !13399, inlinedAt: !109307)
!109320 = !DILocation(line: 142, column: 6, scope: !13373, inlinedAt: !109299)
!109321 = !DILocation(line: 49, column: 12, scope: !13375, inlinedAt: !109300)
!109322 = !DILocation(line: 52, column: 23, scope: !13375, inlinedAt: !109300)
!109323 = !DILocation(line: 252, column: 39, scope: !13253, inlinedAt: !109324)
!109324 = distinct !DILocation(line: 646, column: 26, scope: !13255, inlinedAt: !109325)
!109325 = distinct !DILocation(line: 223, column: 22, scope: !13257, inlinedAt: !109326)
!109326 = distinct !DILocation(line: 113, column: 14, scope: !13259, inlinedAt: !109327)
!109327 = distinct !DILocation(line: 52, column: 23, scope: !13375, inlinedAt: !109300)
!109328 = !DILocation(line: 252, column: 13, scope: !13253, inlinedAt: !109324)
!109329 = !DILocation(line: 253, column: 13, scope: !13253, inlinedAt: !109324)
!109330 = !DILocation(line: 223, column: 9, scope: !13257, inlinedAt: !109326)
!109331 = !DILocation(line: 49, column: 9, scope: !13375, inlinedAt: !109300)
!109332 = !DILocation(line: 0, scope: !13375, inlinedAt: !109300)
!109333 = !DILocation(line: 614, column: 9, scope: !109188, inlinedAt: !109334)
!109334 = !DILocation(line: 609, column: 14, scope: !109191, inlinedAt: !109335)
!109335 = !DILocation(line: 296, column: 20, scope: !109194, inlinedAt: !109336)
!109336 = !DILocation(line: 2026, column: 18, scope: !109197, inlinedAt: !109337)
!109337 = !DILocation(line: 1877, column: 78, scope: !109200, inlinedAt: !109338)
!109338 = !DILocation(line: 3764, column: 14, scope: !109203, inlinedAt: !109339)
!109339 = !DILocation(line: 304, column: 31, scope: !109340)
!109340 = distinct !DILexicalBlock(scope: !109295, file: !11151, line: 303, column: 21)
!109341 = !DILocation(line: 34, column: 10, scope: !109207, inlinedAt: !109342)
!109342 = !DILocation(line: 304, column: 63, scope: !109340)
!109343 = !DILocation(line: 34, column: 9, scope: !109207, inlinedAt: !109342)
!109344 = !DILocation(line: 266, column: 18, scope: !109211, inlinedAt: !109345)
!109345 = !DILocation(line: 691, column: 30, scope: !109214, inlinedAt: !109346)
!109346 = !DILocation(line: 304, column: 43, scope: !109340)
!109347 = !DILocation(line: 305, column: 24, scope: !109348)
!109348 = distinct !DILexicalBlock(scope: !109340, file: !11151, line: 304, column: 21)
!109349 = !DILocation(line: 1042, column: 9, scope: !109350, inlinedAt: !109351)
!109350 = distinct !DISubprogram(name: "unwrap_or<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionmE9unwrap_orCskY9G75ZWc4U_11polars_expr", scope: !7839, file: !7838, line: 1038, type: !11, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109351 = distinct !DILocation(line: 114, column: 18, scope: !109244, inlinedAt: !109352)
!109352 = distinct !DILocation(line: 309, column: 34, scope: !109348)
!109353 = !DILocation(line: 742, column: 44, scope: !46198, inlinedAt: !109354)
!109354 = distinct !DILocation(line: 114, column: 47, scope: !109244, inlinedAt: !109352)
!109355 = !DILocation(line: 114, column: 9, scope: !109244, inlinedAt: !109352)
!109356 = !{!109357}
!109357 = distinct !{!109357, !109358, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!109358 = distinct !{!109358, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeENtB6_7Reducer10reduce_oneB8_"}
!109359 = !DILocation(line: 115, column: 16, scope: !109244, inlinedAt: !109352)
!109360 = !DILocation(line: 115, column: 9, scope: !109244, inlinedAt: !109352)
!109361 = !DILocation(line: 310, column: 17, scope: !109295)
!109362 = !DILocation(line: 929, column: 22, scope: !109253, inlinedAt: !109363)
!109363 = !DILocation(line: 306, column: 35, scope: !109348)
!109364 = !DILocation(line: 930, column: 49, scope: !109365, inlinedAt: !109363)
!109365 = distinct !DILexicalBlock(scope: !109253, file: !776, line: 929, column: 9)
!109366 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !109367)
!109367 = distinct !DILocation(line: 1004, column: 22, scope: !109259, inlinedAt: !109368)
!109368 = !DILocation(line: 307, column: 45, scope: !109369)
!109369 = distinct !DILexicalBlock(scope: !109348, file: !11151, line: 306, column: 25)
!109370 = !{!109371}
!109371 = distinct !{!109371, !109372, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!109372 = distinct !{!109372, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!109373 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !109374)
!109374 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !109375)
!109375 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !109367)
!109376 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !109367)
!109377 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !109367)
!109378 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !109379)
!109379 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !109380)
!109380 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !109381)
!109381 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !109382)
!109382 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !109367)
!109383 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !109384)
!109384 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !109367)
!109385 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !109386)
!109386 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !109367)
!109387 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !109367)
!109388 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !109367)
!109389 = !DILocation(line: 284, column: 5, scope: !109018)
!109390 = distinct !DISubprogram(name: "as_any<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction6as_anyB7_", scope: !11152, file: !11151, line: 360, type: !11, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109391 = !DILocation(line: 362, column: 6, scope: !109390)
!109392 = distinct !DISubprogram(name: "resize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction6resizeB7_", scope: !11152, file: !11151, line: 262, type: !11, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109393 = !DILocation(line: 263, column: 9, scope: !109392)
!109394 = !DILocation(line: 263, column: 28, scope: !109392)
!109395 = !DILocation(line: 263, column: 21, scope: !109392)
!109396 = !DILocation(line: 264, column: 6, scope: !109392)
!109397 = distinct !DISubprogram(name: "reserve<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction7reserveB7_", scope: !11152, file: !11151, line: 258, type: !11, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109398 = !DILocation(line: 259, column: 9, scope: !109397)
!109399 = !DILocation(line: 259, column: 21, scope: !109397)
!109400 = !DILocation(line: 260, column: 6, scope: !109397)
!109401 = distinct !DISubprogram(name: "finalize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction8finalizeB7_", scope: !11152, file: !11151, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109402 = !DILocation(line: 929, column: 22, scope: !109403, inlinedAt: !109404)
!109403 = distinct !DISubprogram(name: "replace<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109404 = !DILocation(line: 849, column: 5, scope: !109405, inlinedAt: !109406)
!109405 = distinct !DISubprogram(name: "take<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 848, type: !11, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109406 = !DILocation(line: 356, column: 17, scope: !109401)
!109407 = !DILocation(line: 930, column: 49, scope: !109408, inlinedAt: !109404)
!109408 = distinct !DILexicalBlock(scope: !109403, file: !776, line: 929, column: 9)
!109409 = !DILocation(line: 357, column: 9, scope: !109410)
!109410 = distinct !DILexicalBlock(scope: !109401, file: !11151, line: 356, column: 9)
!109411 = !DILocation(line: 357, column: 32, scope: !109410)
!109412 = !DILocation(line: 357, column: 22, scope: !109410)
!109413 = !DILocation(line: 357, column: 52, scope: !109410)
!109414 = !DILocation(line: 358, column: 6, scope: !109401)
!109415 = distinct !DISubprogram(name: "new_empty<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEENtB5_16GroupedReduction9new_emptyB7_", scope: !11152, file: !11151, line: 249, type: !11, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109416 = !DILocation(line: 250, column: 18, scope: !109415)
!109417 = !DILocation(line: 251, column: 21, scope: !109415)
!109418 = !DILocation(line: 464, column: 9, scope: !109419, inlinedAt: !109417)
!109419 = distinct !DISubprogram(name: "new<(f64, usize)>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecTdjEE3newCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109420 = !DILocation(line: 252, column: 29, scope: !109415)
!109421 = !DILocation(line: 464, column: 9, scope: !109419, inlinedAt: !109420)
!109422 = !DILocation(line: 253, column: 23, scope: !109415)
!109423 = !DILocation(line: 253, column: 37, scope: !109415)
!109424 = !DILocation(line: 255, column: 9, scope: !109415)
!109425 = !DILocation(line: 99, column: 9, scope: !11493, inlinedAt: !109426)
!109426 = distinct !DILocation(line: 210, column: 73, scope: !11495, inlinedAt: !109427)
!109427 = distinct !DILocation(line: 332, column: 9, scope: !11498, inlinedAt: !109428)
!109428 = distinct !DILocation(line: 449, column: 14, scope: !11500, inlinedAt: !109429)
!109429 = distinct !DILocation(line: 248, column: 18, scope: !11502, inlinedAt: !109430)
!109430 = distinct !DILocation(line: 286, column: 19, scope: !109001, inlinedAt: !109431)
!109431 = distinct !DILocation(line: 250, column: 9, scope: !109415)
!109432 = !{!109433}
!109433 = distinct !{!109433, !109434, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEEE3newBJ_: argument 0"}
!109434 = distinct !{!109434, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEEE3newBJ_"}
!109435 = !DILocation(line: 101, column: 9, scope: !11493, inlinedAt: !109426)
!109436 = !DILocation(line: 248, column: 11, scope: !11502, inlinedAt: !109430)
!109437 = !DILocation(line: 248, column: 5, scope: !11502, inlinedAt: !109430)
!109438 = !DILocation(line: 250, column: 19, scope: !11502, inlinedAt: !109430)
!109439 = !DILocation(line: 292, column: 5, scope: !109001, inlinedAt: !109431)
!109440 = !DILocation(line: 284, column: 5, scope: !109001, inlinedAt: !109431)
!109441 = !DILocation(line: 0, scope: !109415)
!109442 = !DILocation(line: 289, column: 56, scope: !109014, inlinedAt: !109431)
!109443 = !DILocation(line: 255, column: 10, scope: !109415)
!109444 = !DILocation(line: 256, column: 6, scope: !109415)
!109445 = !DILocation(line: 249, column: 5, scope: !109415)
!109446 = distinct !DISubprogram(name: "update_group<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction12update_groupB7_", scope: !11152, file: !11151, line: 266, type: !11, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109447 = !DILocation(line: 272, column: 17, scope: !109446)
!109448 = !DILocation(line: 272, column: 9, scope: !109446)
!109449 = !DILocation(line: 273, column: 22, scope: !109446)
!109450 = !DILocation(line: 193, column: 15, scope: !109451, inlinedAt: !109452)
!109451 = distinct !DISubprogram(name: "dtype", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column5dtype", scope: !11163, file: !11162, line: 192, type: !11, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109452 = !DILocation(line: 274, column: 24, scope: !109453)
!109453 = distinct !DILexicalBlock(scope: !109446, file: !11151, line: 273, column: 9)
!109454 = !DILocation(line: 193, column: 9, scope: !109451, inlinedAt: !109452)
!109455 = !DILocation(line: 444, column: 20, scope: !109456, inlinedAt: !109457)
!109456 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCskY9G75ZWc4U_11polars_expr", scope: !708, file: !707, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109457 = !DILocation(line: 2110, column: 27, scope: !109458, inlinedAt: !109459)
!109458 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCskY9G75ZWc4U_11polars_expr", scope: !713, file: !712, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109459 = !DILocation(line: 2428, column: 15, scope: !109460, inlinedAt: !109461)
!109460 = distinct !DISubprogram(name: "deref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11176, file: !712, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109461 = !DILocation(line: 4194, column: 10, scope: !109462, inlinedAt: !109463)
!109462 = distinct !DISubprogram(name: "as_ref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EINtNtCscgRAwXFJnXP_4core7convert5AsRefBH_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11179, file: !712, line: 4193, type: !11, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109463 = !DILocation(line: 1085, column: 16, scope: !109464, inlinedAt: !109465)
!109464 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11182, file: !10777, line: 1084, type: !11, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109465 = !DILocation(line: 194, column: 34, scope: !109466, inlinedAt: !109452)
!109466 = !DILexicalBlockFile(scope: !109467, file: !11162, discriminator: 2)
!109467 = distinct !DILexicalBlock(scope: !109451, file: !11162, line: 194, column: 13)
!109468 = !DILocation(line: 2428, column: 9, scope: !109460, inlinedAt: !109461)
!109469 = !DILocation(line: 194, column: 34, scope: !109467, inlinedAt: !109452)
!109470 = !DILocation(line: 194, column: 36, scope: !109467, inlinedAt: !109452)
!109471 = !DILocation(line: 0, scope: !109451, inlinedAt: !109452)
!109472 = !DILocation(line: 2124, column: 13, scope: !109473, inlinedAt: !109474)
!109473 = distinct !DISubprogram(name: "eq<polars_core::datatypes::dtype::DataType, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !11192, file: !7905, line: 2123, type: !11, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109474 = !DILocation(line: 274, column: 17, scope: !109453)
!109475 = !DILocation(line: 274, column: 9, scope: !109453)
!109476 = !DILocation(line: 275, column: 22, scope: !109453)
!109477 = !DILocation(line: 105, column: 15, scope: !109478, inlinedAt: !109479)
!109478 = distinct !DISubprogram(name: "as_materialized_series", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column22as_materialized_series", scope: !11163, file: !11162, line: 104, type: !11, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109479 = !DILocation(line: 276, column: 29, scope: !109480)
!109480 = distinct !DILexicalBlock(scope: !109453, file: !11151, line: 275, column: 9)
!109481 = !DILocation(line: 105, column: 9, scope: !109478, inlinedAt: !109479)
!109482 = !DILocation(line: 107, column: 36, scope: !109483, inlinedAt: !109479)
!109483 = distinct !DILexicalBlock(scope: !109478, file: !11162, line: 107, column: 13)
!109484 = !DILocation(line: 66, column: 9, scope: !109485, inlinedAt: !109486)
!109485 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11207, file: !11206, line: 65, type: !11, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109486 = !DILocation(line: 106, column: 34, scope: !109487, inlinedAt: !109479)
!109487 = distinct !DILexicalBlock(scope: !109478, file: !11162, line: 106, column: 13)
!109488 = !DILocation(line: 106, column: 34, scope: !109478, inlinedAt: !109479)
!109489 = !DILocation(line: 0, scope: !109478, inlinedAt: !109479)
!109490 = !DILocation(line: 277, column: 13, scope: !109491)
!109491 = distinct !DILexicalBlock(scope: !109480, file: !11151, line: 276, column: 9)
!109492 = !DILocation(line: 277, column: 22, scope: !109491)
!109493 = !DILocation(line: 277, column: 35, scope: !109491)
!109494 = !DILocation(line: 350, column: 15, scope: !109495, inlinedAt: !109496)
!109495 = distinct !DISubprogram(name: "deref<polars_core::series::Series>", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11220, file: !11219, line: 349, type: !11, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109496 = !DILocation(line: 464, column: 9, scope: !109497, inlinedAt: !109498)
!109497 = distinct !DISubprogram(name: "as_ref<polars_core::series::Series>", linkageName: "_RNvXse_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtCscgRAwXFJnXP_4core7convert5AsRefBI_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11224, file: !11219, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109498 = !DILocation(line: 278, column: 50, scope: !109499)
!109499 = distinct !DILexicalBlock(scope: !109491, file: !11151, line: 277, column: 9)
!109500 = !DILocation(line: 350, column: 9, scope: !109495, inlinedAt: !109496)
!109501 = !DILocation(line: 444, column: 20, scope: !109456, inlinedAt: !109502)
!109502 = !DILocation(line: 2110, column: 27, scope: !109503, inlinedAt: !109504)
!109503 = !DILexicalBlockFile(scope: !109458, file: !712, discriminator: 2)
!109504 = !DILocation(line: 2428, column: 15, scope: !109505, inlinedAt: !109506)
!109505 = !DILexicalBlockFile(scope: !109460, file: !712, discriminator: 2)
!109506 = !DILocation(line: 4194, column: 10, scope: !109507, inlinedAt: !109508)
!109507 = !DILexicalBlockFile(scope: !109462, file: !712, discriminator: 2)
!109508 = !DILocation(line: 1091, column: 16, scope: !109509, inlinedAt: !109510)
!109509 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesINtNtCscgRAwXFJnXP_4core7convert5AsRefDNtNtB5_12series_trait11SeriesTraitEL_E6as_ref", scope: !11237, file: !10777, line: 1090, type: !11, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109510 = !DILocation(line: 278, column: 59, scope: !109499)
!109511 = !DILocation(line: 2428, column: 9, scope: !109460, inlinedAt: !109506)
!109512 = !DILocation(line: 278, column: 68, scope: !109499)
!109513 = !{!109514}
!109514 = distinct !{!109514, !109515, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!109515 = distinct !{!109515, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!109516 = !DILocation(line: 282, column: 5, scope: !109491)
!109517 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109518)
!109518 = distinct !DILocation(line: 282, column: 5, scope: !109491)
!109519 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !109520)
!109520 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !109521)
!109521 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !109522)
!109522 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !109523)
!109523 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !109524)
!109524 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109518)
!109525 = !{!109526, !109528, !109530, !109514}
!109526 = distinct !{!109526, !109527, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!109527 = distinct !{!109527, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!109528 = distinct !{!109528, !109529, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!109529 = distinct !{!109529, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!109530 = distinct !{!109530, !109531, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!109531 = distinct !{!109531, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!109532 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !109522)
!109533 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !109534)
!109534 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !109522)
!109535 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !109522)
!109536 = !DILocation(line: 280, column: 41, scope: !109537)
!109537 = distinct !DILexicalBlock(scope: !109499, file: !11151, line: 278, column: 9)
!109538 = !DILocation(line: 1877, column: 92, scope: !109539, inlinedAt: !109540)
!109539 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109540 = !DILocation(line: 3764, column: 14, scope: !109541, inlinedAt: !109542)
!109541 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109542 = !DILocation(line: 3839, column: 34, scope: !109543, inlinedAt: !109544)
!109543 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11277, file: !11269, line: 3838, type: !11, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109544 = !DILocation(line: 280, column: 40, scope: !109537)
!109545 = !DILocation(line: 278, column: 14, scope: !109546, inlinedAt: !109547)
!109546 = distinct !DISubprogram(name: "index_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 276, type: !11, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109547 = !DILocation(line: 31, column: 15, scope: !109548, inlinedAt: !109549)
!109548 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTdjEINtNtNtB8_3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11287, file: !11281, line: 30, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109549 = !DILocation(line: 3839, column: 9, scope: !109543, inlinedAt: !109544)
!109550 = !DILocation(line: 614, column: 9, scope: !109551, inlinedAt: !109552)
!109551 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109552 = !DILocation(line: 609, column: 14, scope: !109553, inlinedAt: !109554)
!109553 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109554 = !DILocation(line: 296, column: 20, scope: !109555, inlinedAt: !109556)
!109555 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109556 = !DILocation(line: 2026, column: 18, scope: !109557, inlinedAt: !109558)
!109557 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109558 = !DILocation(line: 1877, column: 78, scope: !109539, inlinedAt: !109540)
!109559 = !DILocation(line: 278, column: 9, scope: !109546, inlinedAt: !109547)
!109560 = !DILocation(line: 280, column: 14, scope: !109537)
!109561 = !DILocation(line: 281, column: 9, scope: !109537)
!109562 = !{!109563}
!109563 = distinct !{!109563, !109564, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!109564 = distinct !{!109564, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!109565 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109566)
!109566 = distinct !DILocation(line: 282, column: 5, scope: !109491)
!109567 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !109568)
!109568 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !109569)
!109569 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !109570)
end_hunk_7
begin_hunk_8_@llvm.vector.reduce.add.v4i32
!109854 = !DILocation(line: 444, column: 20, scope: !109751, inlinedAt: !109855)
!109855 = !DILocation(line: 2110, column: 27, scope: !109856, inlinedAt: !109857)
!109856 = !DILexicalBlockFile(scope: !109753, file: !712, discriminator: 4)
!109857 = !DILocation(line: 2428, column: 15, scope: !109858, inlinedAt: !109859)
!109858 = !DILexicalBlockFile(scope: !109755, file: !712, discriminator: 4)
!109859 = !DILocation(line: 4194, column: 10, scope: !109860, inlinedAt: !109861)
!109860 = !DILexicalBlockFile(scope: !109757, file: !712, discriminator: 4)
!109861 = !DILocation(line: 1085, column: 16, scope: !109862, inlinedAt: !109863)
!109862 = !DILexicalBlockFile(scope: !109759, file: !10777, discriminator: 2)
!109863 = !DILocation(line: 301, column: 16, scope: !109864)
!109864 = !DILexicalBlockFile(scope: !109852, file: !11151, discriminator: 2)
!109865 = !DILocation(line: 2428, column: 9, scope: !109755, inlinedAt: !109859)
!109866 = !DILocation(line: 301, column: 23, scope: !109852)
!109867 = !DILocation(line: 961, column: 18, scope: !109868, inlinedAt: !109869)
!109868 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !11365, file: !11364, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109869 = !DILocation(line: 102, column: 78, scope: !109870, inlinedAt: !109871)
!109870 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !11372, file: !11369, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109871 = !DILocation(line: 1041, column: 9, scope: !109872, inlinedAt: !109873)
!109872 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109873 = !DILocation(line: 0, scope: !109852)
!109874 = !DILocation(line: 961, column: 18, scope: !11676, inlinedAt: !109875)
!109875 = !DILocation(line: 102, column: 78, scope: !11678, inlinedAt: !109876)
!109876 = !DILocation(line: 1041, column: 9, scope: !11682, inlinedAt: !109877)
!109877 = !DILocation(line: 26, column: 14, scope: !11684, inlinedAt: !109878)
!109878 = !DILocation(line: 631, column: 30, scope: !11686, inlinedAt: !109873)
!109879 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !109880)
!109880 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !109881)
!109881 = distinct !DILocation(line: 312, column: 45, scope: !109852)
!109882 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !109883)
!109883 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !109884)
!109884 = distinct !DILocation(line: 302, column: 45, scope: !109852)
!109885 = !DILocation(line: 312, column: 31, scope: !109852)
!109886 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !109887)
!109887 = distinct !DILocation(line: 85, column: 9, scope: !109888, inlinedAt: !109889)
!109888 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>, core::slice::iter::Iter<polars_expr::EvictIdx>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEENtNtNtB8_6traits8iterator8Iterator4nextB1t_", scope: !11411, file: !11400, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109889 = !DILocation(line: 312, column: 31, scope: !109890)
!109890 = !DILexicalBlockFile(scope: !109891, file: !11151, discriminator: 2)
!109891 = distinct !DILexicalBlock(scope: !109852, file: !11151, line: 312, column: 17)
!109892 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !109887)
!109893 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !109894)
!109894 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !109895)
!109895 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !109887)
!109896 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !109897)
!109897 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !109898)
!109898 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !109887)
!109899 = !DILocation(line: 313, column: 49, scope: !109900)
!109900 = distinct !DILexicalBlock(scope: !109891, file: !11151, line: 312, column: 17)
!109901 = !DILocation(line: 313, column: 33, scope: !109900)
!109902 = !DILocation(line: 252, column: 39, scope: !14012, inlinedAt: !109903)
!109903 = distinct !DILocation(line: 646, column: 26, scope: !14014, inlinedAt: !109904)
!109904 = distinct !DILocation(line: 223, column: 22, scope: !14016, inlinedAt: !109905)
!109905 = distinct !DILocation(line: 113, column: 14, scope: !14018, inlinedAt: !109906)
!109906 = distinct !DILocation(line: 313, column: 33, scope: !109900)
!109907 = !DILocation(line: 252, column: 13, scope: !14012, inlinedAt: !109903)
!109908 = !DILocation(line: 253, column: 13, scope: !14012, inlinedAt: !109903)
!109909 = !DILocation(line: 223, column: 9, scope: !14016, inlinedAt: !109905)
!109910 = !DILocation(line: 614, column: 9, scope: !109911, inlinedAt: !109912)
!109911 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109912 = !DILocation(line: 609, column: 14, scope: !109913, inlinedAt: !109915)
!109913 = !DILexicalBlockFile(scope: !109914, file: !11291, discriminator: 2)
!109914 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109915 = !DILocation(line: 296, column: 20, scope: !109916, inlinedAt: !109918)
!109916 = !DILexicalBlockFile(scope: !109917, file: !11291, discriminator: 2)
!109917 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109918 = !DILocation(line: 2026, column: 18, scope: !109919, inlinedAt: !109921)
!109919 = !DILexicalBlockFile(scope: !109920, file: !11269, discriminator: 2)
!109920 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109921 = !DILocation(line: 1877, column: 78, scope: !109922, inlinedAt: !109924)
!109922 = !DILexicalBlockFile(scope: !109923, file: !11269, discriminator: 2)
!109923 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109924 = !DILocation(line: 3764, column: 14, scope: !109925, inlinedAt: !109927)
!109925 = !DILexicalBlockFile(scope: !109926, file: !11269, discriminator: 2)
!109926 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109927 = !DILocation(line: 314, column: 31, scope: !109928)
!109928 = distinct !DILexicalBlock(scope: !109900, file: !11151, line: 313, column: 21)
!109929 = !DILocation(line: 34, column: 10, scope: !109930, inlinedAt: !109931)
!109930 = distinct !DISubprogram(name: "idx", linkageName: "_RNvMCskY9G75ZWc4U_11polars_exprNtB2_8EvictIdx3idx", scope: !11754, file: !7900, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109931 = !DILocation(line: 314, column: 63, scope: !109928)
!109932 = !DILocation(line: 34, column: 9, scope: !109930, inlinedAt: !109931)
!109933 = !DILocation(line: 266, column: 18, scope: !109934, inlinedAt: !109935)
!109934 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109935 = !DILocation(line: 691, column: 30, scope: !109936, inlinedAt: !109938)
!109936 = !DILexicalBlockFile(scope: !109937, file: !11376, discriminator: 2)
!109937 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize), usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTdjE17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109938 = !DILocation(line: 314, column: 43, scope: !109928)
!109939 = !DILocation(line: 315, column: 24, scope: !109940)
!109940 = distinct !DILexicalBlock(scope: !109928, file: !11151, line: 314, column: 21)
!109941 = !DILocation(line: 323, column: 9, scope: !109852)
!109942 = !{!109943}
!109943 = distinct !{!109943, !109944, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!109944 = distinct !{!109944, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!109945 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109946)
!109946 = distinct !DILocation(line: 324, column: 5, scope: !109787)
!109947 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !109948)
!109948 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !109949)
!109949 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !109950)
!109950 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !109951)
!109951 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !109952)
!109952 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !109946)
!109953 = !{!109954, !109956, !109958, !109943}
!109954 = distinct !{!109954, !109955, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!109955 = distinct !{!109955, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!109956 = distinct !{!109956, !109957, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!109957 = distinct !{!109957, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!109958 = distinct !{!109958, !109959, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!109959 = distinct !{!109959, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!109960 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !109950)
!109961 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !109962)
!109962 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !109950)
!109963 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !109950)
!109964 = !DILocation(line: 324, column: 6, scope: !109741)
!109965 = !DILocation(line: 742, column: 44, scope: !46964, inlinedAt: !109966)
!109966 = distinct !DILocation(line: 114, column: 47, scope: !109967, inlinedAt: !109968)
!109967 = distinct !DISubprogram(name: "reduce_one<polars_core::datatypes::UInt64Type>", linkageName: "_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_", scope: !107517, file: !107516, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109968 = distinct !DILocation(line: 319, column: 34, scope: !109940)
!109969 = !DILocation(line: 114, column: 9, scope: !109967, inlinedAt: !109968)
!109970 = !{!109971}
!109971 = distinct !{!109971, !109972, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!109972 = distinct !{!109972, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_"}
!109973 = !DILocation(line: 115, column: 9, scope: !109967, inlinedAt: !109968)
!109974 = !DILocation(line: 320, column: 17, scope: !109900)
!109975 = !DILocation(line: 929, column: 22, scope: !109976, inlinedAt: !109977)
!109976 = distinct !DISubprogram(name: "replace<(f64, usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceTdjEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109977 = !DILocation(line: 316, column: 35, scope: !109940)
!109978 = !DILocation(line: 930, column: 49, scope: !109979, inlinedAt: !109977)
!109979 = distinct !DILexicalBlock(scope: !109976, file: !776, line: 929, column: 9)
!109980 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !109981)
!109981 = distinct !DILocation(line: 1004, column: 22, scope: !109982, inlinedAt: !109983)
!109982 = distinct !DISubprogram(name: "push<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE4pushCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!109983 = !DILocation(line: 317, column: 45, scope: !109984)
!109984 = distinct !DILexicalBlock(scope: !109940, file: !11151, line: 316, column: 25)
!109985 = !{!109986}
!109986 = distinct !{!109986, !109987, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!109987 = distinct !{!109987, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!109988 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !109989)
!109989 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !109990)
!109990 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !109981)
!109991 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !109981)
!109992 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !109981)
!109993 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !109994)
!109994 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !109995)
!109995 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !109996)
!109996 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !109997)
!109997 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !109981)
!109998 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !109999)
!109999 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !109981)
!110000 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !110001)
!110001 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !109981)
!110002 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !109981)
!110003 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !109981)
!110004 = !DILocation(line: 302, column: 31, scope: !109852)
!110005 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !110006)
!110006 = distinct !DILocation(line: 85, column: 9, scope: !109888, inlinedAt: !110007)
!110007 = !DILocation(line: 302, column: 31, scope: !110008)
!110008 = !DILexicalBlockFile(scope: !110009, file: !11151, discriminator: 2)
!110009 = distinct !DILexicalBlock(scope: !109852, file: !11151, line: 302, column: 17)
!110010 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !110006)
!110011 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !110012)
!110012 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !110013)
!110013 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !110006)
!110014 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !110015)
!110015 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !110016)
!110016 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !110006)
!110017 = !DILocation(line: 303, column: 48, scope: !110018)
!110018 = distinct !DILexicalBlock(scope: !110009, file: !11151, line: 302, column: 17)
!110019 = !DILocation(line: 745, column: 15, scope: !14146, inlinedAt: !110020)
!110020 = distinct !DILocation(line: 508, column: 23, scope: !14148, inlinedAt: !110021)
!110021 = distinct !DILocation(line: 138, column: 14, scope: !14132, inlinedAt: !110022)
!110022 = distinct !DILocation(line: 49, column: 17, scope: !14134, inlinedAt: !110023)
!110023 = distinct !DILocation(line: 303, column: 34, scope: !110018)
!110024 = !DILocation(line: 745, column: 9, scope: !14130, inlinedAt: !110025)
!110025 = distinct !DILocation(line: 139, column: 14, scope: !14132, inlinedAt: !110022)
!110026 = !DILocation(line: 461, column: 23, scope: !14151, inlinedAt: !110027)
!110027 = distinct !DILocation(line: 360, column: 27, scope: !14154, inlinedAt: !110028)
!110028 = distinct !DILocation(line: 140, column: 25, scope: !14156, inlinedAt: !110029)
!110029 = distinct !DILocation(line: 1165, column: 29, scope: !14158, inlinedAt: !110030)
!110030 = distinct !DILocation(line: 140, column: 14, scope: !14132, inlinedAt: !110022)
!110031 = !DILocation(line: 462, column: 41, scope: !14162, inlinedAt: !110027)
!110032 = !DILocation(line: 360, column: 42, scope: !14154, inlinedAt: !110028)
!110033 = !DILocation(line: 43, column: 37, scope: !14165, inlinedAt: !110034)
!110034 = distinct !DILocation(line: 360, column: 9, scope: !14154, inlinedAt: !110028)
!110035 = !DILocation(line: 252, column: 39, scope: !14168, inlinedAt: !110036)
!110036 = distinct !DILocation(line: 646, column: 26, scope: !14170, inlinedAt: !110037)
!110037 = distinct !DILocation(line: 43, column: 23, scope: !14165, inlinedAt: !110034)
!110038 = !DILocation(line: 252, column: 13, scope: !14168, inlinedAt: !110036)
!110039 = !DILocation(line: 253, column: 13, scope: !14168, inlinedAt: !110036)
!110040 = !DILocation(line: 43, column: 16, scope: !14165, inlinedAt: !110034)
!110041 = !DILocation(line: 44, column: 15, scope: !14176, inlinedAt: !110034)
!110042 = !DILocation(line: 1165, column: 24, scope: !14158, inlinedAt: !110030)
!110043 = !DILocation(line: 142, column: 6, scope: !14132, inlinedAt: !110022)
!110044 = !DILocation(line: 49, column: 12, scope: !14134, inlinedAt: !110023)
!110045 = !DILocation(line: 52, column: 23, scope: !14134, inlinedAt: !110023)
!110046 = !DILocation(line: 252, column: 39, scope: !14012, inlinedAt: !110047)
!110047 = distinct !DILocation(line: 646, column: 26, scope: !14014, inlinedAt: !110048)
!110048 = distinct !DILocation(line: 223, column: 22, scope: !14016, inlinedAt: !110049)
!110049 = distinct !DILocation(line: 113, column: 14, scope: !14018, inlinedAt: !110050)
!110050 = distinct !DILocation(line: 52, column: 23, scope: !14134, inlinedAt: !110023)
!110051 = !DILocation(line: 252, column: 13, scope: !14012, inlinedAt: !110047)
!110052 = !DILocation(line: 253, column: 13, scope: !14012, inlinedAt: !110047)
!110053 = !DILocation(line: 223, column: 9, scope: !14016, inlinedAt: !110049)
!110054 = !DILocation(line: 49, column: 9, scope: !14134, inlinedAt: !110023)
!110055 = !DILocation(line: 0, scope: !14134, inlinedAt: !110023)
!110056 = !DILocation(line: 614, column: 9, scope: !109911, inlinedAt: !110057)
!110057 = !DILocation(line: 609, column: 14, scope: !109914, inlinedAt: !110058)
!110058 = !DILocation(line: 296, column: 20, scope: !109917, inlinedAt: !110059)
!110059 = !DILocation(line: 2026, column: 18, scope: !109920, inlinedAt: !110060)
!110060 = !DILocation(line: 1877, column: 78, scope: !109923, inlinedAt: !110061)
!110061 = !DILocation(line: 3764, column: 14, scope: !109926, inlinedAt: !110062)
!110062 = !DILocation(line: 304, column: 31, scope: !110063)
!110063 = distinct !DILexicalBlock(scope: !110018, file: !11151, line: 303, column: 21)
!110064 = !DILocation(line: 34, column: 10, scope: !109930, inlinedAt: !110065)
!110065 = !DILocation(line: 304, column: 63, scope: !110063)
!110066 = !DILocation(line: 34, column: 9, scope: !109930, inlinedAt: !110065)
!110067 = !DILocation(line: 266, column: 18, scope: !109934, inlinedAt: !110068)
!110068 = !DILocation(line: 691, column: 30, scope: !109937, inlinedAt: !110069)
!110069 = !DILocation(line: 304, column: 43, scope: !110063)
!110070 = !DILocation(line: 305, column: 24, scope: !110071)
!110071 = distinct !DILexicalBlock(scope: !110063, file: !11151, line: 304, column: 21)
!110072 = !DILocation(line: 1042, column: 9, scope: !110073, inlinedAt: !110074)
!110073 = distinct !DISubprogram(name: "unwrap_or<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionyE9unwrap_orCskY9G75ZWc4U_11polars_expr", scope: !7839, file: !7838, line: 1038, type: !11, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110074 = distinct !DILocation(line: 114, column: 18, scope: !109967, inlinedAt: !110075)
!110075 = distinct !DILocation(line: 309, column: 34, scope: !110071)
!110076 = !DILocation(line: 742, column: 44, scope: !46964, inlinedAt: !110077)
!110077 = distinct !DILocation(line: 114, column: 47, scope: !109967, inlinedAt: !110075)
!110078 = !DILocation(line: 114, column: 9, scope: !109967, inlinedAt: !110075)
!110079 = !{!110080}
!110080 = distinct !{!110080, !110081, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!110081 = distinct !{!110081, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeENtB6_7Reducer10reduce_oneB8_"}
!110082 = !DILocation(line: 115, column: 9, scope: !109967, inlinedAt: !110075)
!110083 = !DILocation(line: 310, column: 17, scope: !110018)
!110084 = !DILocation(line: 929, column: 22, scope: !109976, inlinedAt: !110085)
!110085 = !DILocation(line: 306, column: 35, scope: !110071)
!110086 = !DILocation(line: 930, column: 49, scope: !110087, inlinedAt: !110085)
!110087 = distinct !DILexicalBlock(scope: !109976, file: !776, line: 929, column: 9)
!110088 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !110089)
!110089 = distinct !DILocation(line: 1004, column: 22, scope: !109982, inlinedAt: !110090)
!110090 = !DILocation(line: 307, column: 45, scope: !110091)
!110091 = distinct !DILexicalBlock(scope: !110071, file: !11151, line: 306, column: 25)
!110092 = !{!110093}
!110093 = distinct !{!110093, !110094, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!110094 = distinct !{!110094, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!110095 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !110096)
!110096 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !110097)
!110097 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !110089)
!110098 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !110089)
!110099 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !110089)
!110100 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !110101)
!110101 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !110102)
!110102 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !110103)
!110103 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !110104)
!110104 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !110089)
!110105 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !110106)
!110106 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !110089)
!110107 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !110108)
!110108 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !110089)
!110109 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !110089)
!110110 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !110089)
!110111 = !DILocation(line: 284, column: 5, scope: !109741)
!110112 = distinct !DISubprogram(name: "as_any<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction6as_anyB7_", scope: !11152, file: !11151, line: 360, type: !11, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110113 = !DILocation(line: 362, column: 6, scope: !110112)
!110114 = distinct !DISubprogram(name: "resize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction6resizeB7_", scope: !11152, file: !11151, line: 262, type: !11, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110115 = !DILocation(line: 263, column: 9, scope: !110114)
!110116 = !DILocation(line: 263, column: 28, scope: !110114)
!110117 = !DILocation(line: 263, column: 21, scope: !110114)
!110118 = !DILocation(line: 264, column: 6, scope: !110114)
!110119 = distinct !DISubprogram(name: "reserve<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction7reserveB7_", scope: !11152, file: !11151, line: 258, type: !11, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110120 = !DILocation(line: 259, column: 9, scope: !110119)
!110121 = !DILocation(line: 259, column: 21, scope: !110119)
!110122 = !DILocation(line: 260, column: 6, scope: !110119)
!110123 = distinct !DISubprogram(name: "finalize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction8finalizeB7_", scope: !11152, file: !11151, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110124 = !DILocation(line: 929, column: 22, scope: !110125, inlinedAt: !110126)
!110125 = distinct !DISubprogram(name: "replace<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110126 = !DILocation(line: 849, column: 5, scope: !110127, inlinedAt: !110128)
!110127 = distinct !DISubprogram(name: "take<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 848, type: !11, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110128 = !DILocation(line: 356, column: 17, scope: !110123)
!110129 = !DILocation(line: 930, column: 49, scope: !110130, inlinedAt: !110126)
!110130 = distinct !DILexicalBlock(scope: !110125, file: !776, line: 929, column: 9)
!110131 = !DILocation(line: 357, column: 9, scope: !110132)
!110132 = distinct !DILexicalBlock(scope: !110123, file: !11151, line: 356, column: 9)
!110133 = !DILocation(line: 357, column: 32, scope: !110132)
!110134 = !DILocation(line: 357, column: 22, scope: !110132)
!110135 = !DILocation(line: 357, column: 52, scope: !110132)
!110136 = !DILocation(line: 358, column: 6, scope: !110123)
!110137 = distinct !DISubprogram(name: "new_empty<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEENtB5_16GroupedReduction9new_emptyB7_", scope: !11152, file: !11151, line: 249, type: !11, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110138 = !DILocation(line: 250, column: 18, scope: !110137)
!110139 = !DILocation(line: 251, column: 21, scope: !110137)
!110140 = !DILocation(line: 464, column: 9, scope: !110141, inlinedAt: !110139)
!110141 = distinct !DISubprogram(name: "new<(f64, usize)>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecTdjEE3newCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110142 = !DILocation(line: 252, column: 29, scope: !110137)
!110143 = !DILocation(line: 464, column: 9, scope: !110141, inlinedAt: !110142)
!110144 = !DILocation(line: 253, column: 23, scope: !110137)
!110145 = !DILocation(line: 253, column: 37, scope: !110137)
!110146 = !DILocation(line: 255, column: 9, scope: !110137)
!110147 = !DILocation(line: 99, column: 9, scope: !11493, inlinedAt: !110148)
!110148 = distinct !DILocation(line: 210, column: 73, scope: !11495, inlinedAt: !110149)
!110149 = distinct !DILocation(line: 332, column: 9, scope: !11498, inlinedAt: !110150)
!110150 = distinct !DILocation(line: 449, column: 14, scope: !11500, inlinedAt: !110151)
!110151 = distinct !DILocation(line: 248, column: 18, scope: !11502, inlinedAt: !110152)
!110152 = distinct !DILocation(line: 286, column: 19, scope: !109724, inlinedAt: !110153)
!110153 = distinct !DILocation(line: 250, column: 9, scope: !110137)
!110154 = !{!110155}
!110155 = distinct !{!110155, !110156, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEEE3newBJ_: argument 0"}
!110156 = distinct !{!110156, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt64TypeEEE3newBJ_"}
!110157 = !DILocation(line: 101, column: 9, scope: !11493, inlinedAt: !110148)
!110158 = !DILocation(line: 248, column: 11, scope: !11502, inlinedAt: !110152)
!110159 = !DILocation(line: 248, column: 5, scope: !11502, inlinedAt: !110152)
!110160 = !DILocation(line: 250, column: 19, scope: !11502, inlinedAt: !110152)
!110161 = !DILocation(line: 292, column: 5, scope: !109724, inlinedAt: !110153)
!110162 = !DILocation(line: 284, column: 5, scope: !109724, inlinedAt: !110153)
!110163 = !DILocation(line: 0, scope: !110137)
!110164 = !DILocation(line: 289, column: 56, scope: !109737, inlinedAt: !110153)
!110165 = !DILocation(line: 255, column: 10, scope: !110137)
!110166 = !DILocation(line: 256, column: 6, scope: !110137)
!110167 = !DILocation(line: 249, column: 5, scope: !110137)
!110168 = distinct !DISubprogram(name: "update_group<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Float16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeEENtB5_16GroupedReduction12update_groupB7_", scope: !11152, file: !11151, line: 266, type: !11, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110169 = !DILocation(line: 272, column: 17, scope: !110168)
!110170 = !DILocation(line: 272, column: 9, scope: !110168)
!110171 = !DILocation(line: 273, column: 22, scope: !110168)
!110172 = !DILocation(line: 193, column: 15, scope: !110173, inlinedAt: !110174)
!110173 = distinct !DISubprogram(name: "dtype", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column5dtype", scope: !11163, file: !11162, line: 192, type: !11, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110174 = !DILocation(line: 274, column: 24, scope: !110175)
!110175 = distinct !DILexicalBlock(scope: !110168, file: !11151, line: 273, column: 9)
!110176 = !DILocation(line: 193, column: 9, scope: !110173, inlinedAt: !110174)
!110177 = !DILocation(line: 444, column: 20, scope: !110178, inlinedAt: !110179)
!110178 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCskY9G75ZWc4U_11polars_expr", scope: !708, file: !707, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110179 = !DILocation(line: 2110, column: 27, scope: !110180, inlinedAt: !110181)
!110180 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCskY9G75ZWc4U_11polars_expr", scope: !713, file: !712, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110181 = !DILocation(line: 2428, column: 15, scope: !110182, inlinedAt: !110183)
!110182 = distinct !DISubprogram(name: "deref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11176, file: !712, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110183 = !DILocation(line: 4194, column: 10, scope: !110184, inlinedAt: !110185)
!110184 = distinct !DISubprogram(name: "as_ref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EINtNtCscgRAwXFJnXP_4core7convert5AsRefBH_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11179, file: !712, line: 4193, type: !11, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110185 = !DILocation(line: 1085, column: 16, scope: !110186, inlinedAt: !110187)
!110186 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11182, file: !10777, line: 1084, type: !11, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110187 = !DILocation(line: 194, column: 34, scope: !110188, inlinedAt: !110174)
!110188 = !DILexicalBlockFile(scope: !110189, file: !11162, discriminator: 2)
!110189 = distinct !DILexicalBlock(scope: !110173, file: !11162, line: 194, column: 13)
!110190 = !DILocation(line: 2428, column: 9, scope: !110182, inlinedAt: !110183)
!110191 = !DILocation(line: 194, column: 34, scope: !110189, inlinedAt: !110174)
!110192 = !DILocation(line: 194, column: 36, scope: !110189, inlinedAt: !110174)
!110193 = !DILocation(line: 0, scope: !110173, inlinedAt: !110174)
!110194 = !DILocation(line: 2124, column: 13, scope: !110195, inlinedAt: !110196)
!110195 = distinct !DISubprogram(name: "eq<polars_core::datatypes::dtype::DataType, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !11192, file: !7905, line: 2123, type: !11, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110196 = !DILocation(line: 274, column: 17, scope: !110175)
!110197 = !DILocation(line: 274, column: 9, scope: !110175)
!110198 = !DILocation(line: 275, column: 22, scope: !110175)
!110199 = !DILocation(line: 105, column: 15, scope: !110200, inlinedAt: !110201)
!110200 = distinct !DISubprogram(name: "as_materialized_series", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column22as_materialized_series", scope: !11163, file: !11162, line: 104, type: !11, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110201 = !DILocation(line: 276, column: 29, scope: !110202)
!110202 = distinct !DILexicalBlock(scope: !110175, file: !11151, line: 275, column: 9)
!110203 = !DILocation(line: 105, column: 9, scope: !110200, inlinedAt: !110201)
!110204 = !DILocation(line: 107, column: 36, scope: !110205, inlinedAt: !110201)
!110205 = distinct !DILexicalBlock(scope: !110200, file: !11162, line: 107, column: 13)
!110206 = !DILocation(line: 66, column: 9, scope: !110207, inlinedAt: !110208)
!110207 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11207, file: !11206, line: 65, type: !11, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110208 = !DILocation(line: 106, column: 34, scope: !110209, inlinedAt: !110201)
!110209 = distinct !DILexicalBlock(scope: !110200, file: !11162, line: 106, column: 13)
!110210 = !DILocation(line: 106, column: 34, scope: !110200, inlinedAt: !110201)
!110211 = !DILocation(line: 0, scope: !110200, inlinedAt: !110201)
!110212 = !DILocation(line: 277, column: 13, scope: !110213)
!110213 = distinct !DILexicalBlock(scope: !110202, file: !11151, line: 276, column: 9)
!110214 = !DILocation(line: 277, column: 22, scope: !110213)
!110215 = !DILocation(line: 277, column: 35, scope: !110213)
!110216 = !DILocation(line: 350, column: 15, scope: !110217, inlinedAt: !110218)
!110217 = distinct !DISubprogram(name: "deref<polars_core::series::Series>", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11220, file: !11219, line: 349, type: !11, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110218 = !DILocation(line: 464, column: 9, scope: !110219, inlinedAt: !110220)
!110219 = distinct !DISubprogram(name: "as_ref<polars_core::series::Series>", linkageName: "_RNvXse_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtCscgRAwXFJnXP_4core7convert5AsRefBI_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11224, file: !11219, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110220 = !DILocation(line: 278, column: 50, scope: !110221)
!110221 = distinct !DILexicalBlock(scope: !110213, file: !11151, line: 277, column: 9)
!110222 = !DILocation(line: 350, column: 9, scope: !110217, inlinedAt: !110218)
!110223 = !DILocation(line: 444, column: 20, scope: !110178, inlinedAt: !110224)
!110224 = !DILocation(line: 2110, column: 27, scope: !110225, inlinedAt: !110226)
!110225 = !DILexicalBlockFile(scope: !110180, file: !712, discriminator: 2)
!110226 = !DILocation(line: 2428, column: 15, scope: !110227, inlinedAt: !110228)
!110227 = !DILexicalBlockFile(scope: !110182, file: !712, discriminator: 2)
!110228 = !DILocation(line: 4194, column: 10, scope: !110229, inlinedAt: !110230)
!110229 = !DILexicalBlockFile(scope: !110184, file: !712, discriminator: 2)
!110230 = !DILocation(line: 1091, column: 16, scope: !110231, inlinedAt: !110232)
!110231 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesINtNtCscgRAwXFJnXP_4core7convert5AsRefDNtNtB5_12series_trait11SeriesTraitEL_E6as_ref", scope: !11237, file: !10777, line: 1090, type: !11, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110232 = !DILocation(line: 278, column: 59, scope: !110221)
!110233 = !DILocation(line: 2428, column: 9, scope: !110182, inlinedAt: !110228)
!110234 = !DILocation(line: 278, column: 68, scope: !110221)
!110235 = !{!110236}
!110236 = distinct !{!110236, !110237, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!110237 = distinct !{!110237, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!110238 = !DILocation(line: 282, column: 5, scope: !110213)
!110239 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !110240)
!110240 = distinct !DILocation(line: 282, column: 5, scope: !110213)
!110241 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !110242)
!110242 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !110243)
!110243 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !110244)
!110244 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !110245)
!110245 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !110246)
!110246 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !110240)
!110247 = !{!110248, !110250, !110252, !110236}
!110248 = distinct !{!110248, !110249, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!110249 = distinct !{!110249, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!110250 = distinct !{!110250, !110251, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!110251 = distinct !{!110251, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!110252 = distinct !{!110252, !110253, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!110253 = distinct !{!110253, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!110254 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !110244)
!110255 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !110256)
!110256 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !110244)
!110257 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !110244)
!110258 = !DILocation(line: 280, column: 41, scope: !110259)
!110259 = distinct !DILexicalBlock(scope: !110221, file: !11151, line: 278, column: 9)
!110260 = !DILocation(line: 1877, column: 92, scope: !110261, inlinedAt: !110262)
!110261 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110262 = !DILocation(line: 3764, column: 14, scope: !110263, inlinedAt: !110264)
!110263 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110264 = !DILocation(line: 3839, column: 34, scope: !110265, inlinedAt: !110266)
!110265 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11277, file: !11269, line: 3838, type: !11, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110266 = !DILocation(line: 280, column: 40, scope: !110259)
!110267 = !DILocation(line: 278, column: 14, scope: !110268, inlinedAt: !110269)
!110268 = distinct !DISubprogram(name: "index_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 276, type: !11, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110269 = !DILocation(line: 31, column: 15, scope: !110270, inlinedAt: !110271)
!110270 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTdjEINtNtNtB8_3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11287, file: !11281, line: 30, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110271 = !DILocation(line: 3839, column: 9, scope: !110265, inlinedAt: !110266)
!110272 = !DILocation(line: 614, column: 9, scope: !110273, inlinedAt: !110274)
!110273 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110274 = !DILocation(line: 609, column: 14, scope: !110275, inlinedAt: !110276)
!110275 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110276 = !DILocation(line: 296, column: 20, scope: !110277, inlinedAt: !110278)
!110277 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110278 = !DILocation(line: 2026, column: 18, scope: !110279, inlinedAt: !110280)
!110279 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110280 = !DILocation(line: 1877, column: 78, scope: !110261, inlinedAt: !110262)
!110281 = !DILocation(line: 278, column: 9, scope: !110268, inlinedAt: !110269)
!110282 = !DILocation(line: 280, column: 14, scope: !110259)
!110283 = !DILocation(line: 281, column: 9, scope: !110259)
!110284 = !{!110285}
!110285 = distinct !{!110285, !110286, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!110286 = distinct !{!110286, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!110287 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !110288)
!110288 = distinct !DILocation(line: 282, column: 5, scope: !110213)
!110289 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !110290)
!110290 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !110291)
!110291 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !110292)
end_hunk_8
begin_hunk_9_@llvm.vector.reduce.add.v4i32
!114293 = !DILocation(line: 444, column: 20, scope: !114190, inlinedAt: !114294)
!114294 = !DILocation(line: 2110, column: 27, scope: !114295, inlinedAt: !114296)
!114295 = !DILexicalBlockFile(scope: !114192, file: !712, discriminator: 4)
!114296 = !DILocation(line: 2428, column: 15, scope: !114297, inlinedAt: !114298)
!114297 = !DILexicalBlockFile(scope: !114194, file: !712, discriminator: 4)
!114298 = !DILocation(line: 4194, column: 10, scope: !114299, inlinedAt: !114300)
!114299 = !DILexicalBlockFile(scope: !114196, file: !712, discriminator: 4)
!114300 = !DILocation(line: 1085, column: 16, scope: !114301, inlinedAt: !114302)
!114301 = !DILexicalBlockFile(scope: !114198, file: !10777, discriminator: 2)
!114302 = !DILocation(line: 301, column: 16, scope: !114303)
!114303 = !DILexicalBlockFile(scope: !114291, file: !11151, discriminator: 2)
!114304 = !DILocation(line: 2428, column: 9, scope: !114194, inlinedAt: !114298)
!114305 = !DILocation(line: 301, column: 23, scope: !114291)
!114306 = !DILocation(line: 961, column: 18, scope: !114307, inlinedAt: !114308)
!114307 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !11365, file: !11364, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114308 = !DILocation(line: 102, column: 78, scope: !114309, inlinedAt: !114310)
!114309 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !11372, file: !11369, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114310 = !DILocation(line: 1041, column: 9, scope: !114311, inlinedAt: !114312)
!114311 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114312 = !DILocation(line: 0, scope: !114291)
!114313 = !DILocation(line: 961, column: 18, scope: !11676, inlinedAt: !114314)
!114314 = !DILocation(line: 102, column: 78, scope: !11678, inlinedAt: !114315)
!114315 = !DILocation(line: 1041, column: 9, scope: !11682, inlinedAt: !114316)
!114316 = !DILocation(line: 26, column: 14, scope: !11684, inlinedAt: !114317)
!114317 = !DILocation(line: 631, column: 30, scope: !11686, inlinedAt: !114312)
!114318 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !114319)
!114319 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !114320)
!114320 = distinct !DILocation(line: 312, column: 45, scope: !114291)
!114321 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !114322)
!114322 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !114323)
!114323 = distinct !DILocation(line: 302, column: 45, scope: !114291)
!114324 = !DILocation(line: 312, column: 31, scope: !114291)
!114325 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !114326)
!114326 = distinct !DILocation(line: 85, column: 9, scope: !114327, inlinedAt: !114328)
!114327 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>, core::slice::iter::Iter<polars_expr::EvictIdx>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEENtNtNtB8_6traits8iterator8Iterator4nextB1t_", scope: !11411, file: !11400, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114328 = !DILocation(line: 312, column: 31, scope: !114329)
!114329 = !DILexicalBlockFile(scope: !114330, file: !11151, discriminator: 2)
!114330 = distinct !DILexicalBlock(scope: !114291, file: !11151, line: 312, column: 17)
!114331 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !114326)
!114332 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !114333)
!114333 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !114334)
!114334 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !114326)
!114335 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !114336)
!114336 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !114337)
!114337 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !114326)
!114338 = !DILocation(line: 313, column: 49, scope: !114339)
!114339 = distinct !DILexicalBlock(scope: !114330, file: !11151, line: 312, column: 17)
!114340 = !DILocation(line: 313, column: 33, scope: !114339)
!114341 = !DILocation(line: 252, column: 39, scope: !18569, inlinedAt: !114342)
!114342 = distinct !DILocation(line: 646, column: 26, scope: !18571, inlinedAt: !114343)
!114343 = distinct !DILocation(line: 223, column: 22, scope: !18573, inlinedAt: !114344)
!114344 = distinct !DILocation(line: 113, column: 14, scope: !18575, inlinedAt: !114345)
!114345 = distinct !DILocation(line: 313, column: 33, scope: !114339)
!114346 = !DILocation(line: 252, column: 13, scope: !18569, inlinedAt: !114342)
!114347 = !DILocation(line: 253, column: 13, scope: !18569, inlinedAt: !114342)
!114348 = !DILocation(line: 223, column: 9, scope: !18573, inlinedAt: !114344)
!114349 = !DILocation(line: 614, column: 9, scope: !114350, inlinedAt: !114351)
!114350 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114351 = !DILocation(line: 609, column: 14, scope: !114352, inlinedAt: !114354)
!114352 = !DILexicalBlockFile(scope: !114353, file: !11291, discriminator: 2)
!114353 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114354 = !DILocation(line: 296, column: 20, scope: !114355, inlinedAt: !114357)
!114355 = !DILexicalBlockFile(scope: !114356, file: !11291, discriminator: 2)
!114356 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114357 = !DILocation(line: 2026, column: 18, scope: !114358, inlinedAt: !114360)
!114358 = !DILexicalBlockFile(scope: !114359, file: !11269, discriminator: 2)
!114359 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114360 = !DILocation(line: 1877, column: 78, scope: !114361, inlinedAt: !114363)
!114361 = !DILexicalBlockFile(scope: !114362, file: !11269, discriminator: 2)
!114362 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114363 = !DILocation(line: 3764, column: 14, scope: !114364, inlinedAt: !114366)
!114364 = !DILexicalBlockFile(scope: !114365, file: !11269, discriminator: 2)
!114365 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114366 = !DILocation(line: 314, column: 31, scope: !114367)
!114367 = distinct !DILexicalBlock(scope: !114339, file: !11151, line: 313, column: 21)
!114368 = !DILocation(line: 34, column: 10, scope: !114369, inlinedAt: !114370)
!114369 = distinct !DISubprogram(name: "idx", linkageName: "_RNvMCskY9G75ZWc4U_11polars_exprNtB2_8EvictIdx3idx", scope: !11754, file: !7900, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114370 = !DILocation(line: 314, column: 63, scope: !114367)
!114371 = !DILocation(line: 34, column: 9, scope: !114369, inlinedAt: !114370)
!114372 = !DILocation(line: 266, column: 18, scope: !114373, inlinedAt: !114374)
!114373 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114374 = !DILocation(line: 691, column: 30, scope: !114375, inlinedAt: !114377)
!114375 = !DILexicalBlockFile(scope: !114376, file: !11376, discriminator: 2)
!114376 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize), usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTdjE17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114377 = !DILocation(line: 314, column: 43, scope: !114367)
!114378 = !DILocation(line: 315, column: 24, scope: !114379)
!114379 = distinct !DILexicalBlock(scope: !114367, file: !11151, line: 314, column: 21)
!114380 = !DILocation(line: 323, column: 9, scope: !114291)
!114381 = !{!114382}
!114382 = distinct !{!114382, !114383, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!114383 = distinct !{!114383, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!114384 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !114385)
!114385 = distinct !DILocation(line: 324, column: 5, scope: !114226)
!114386 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !114387)
!114387 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !114388)
!114388 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !114389)
!114389 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !114390)
!114390 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !114391)
!114391 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !114385)
!114392 = !{!114393, !114395, !114397, !114382}
!114393 = distinct !{!114393, !114394, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!114394 = distinct !{!114394, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!114395 = distinct !{!114395, !114396, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!114396 = distinct !{!114396, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!114397 = distinct !{!114397, !114398, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!114398 = distinct !{!114398, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!114399 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !114389)
!114400 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !114401)
!114401 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !114389)
!114402 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !114389)
!114403 = !DILocation(line: 324, column: 6, scope: !114180)
!114404 = !DILocation(line: 742, column: 44, scope: !51690, inlinedAt: !114405)
!114405 = distinct !DILocation(line: 114, column: 47, scope: !114406, inlinedAt: !114407)
!114406 = distinct !DISubprogram(name: "reduce_one<polars_core::datatypes::Int16Type>", linkageName: "_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_", scope: !107517, file: !107516, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114407 = distinct !DILocation(line: 319, column: 34, scope: !114379)
!114408 = !DILocation(line: 114, column: 9, scope: !114406, inlinedAt: !114407)
!114409 = !{!114410}
!114410 = distinct !{!114410, !114411, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!114411 = distinct !{!114411, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_"}
!114412 = !DILocation(line: 115, column: 9, scope: !114406, inlinedAt: !114407)
!114413 = !DILocation(line: 320, column: 17, scope: !114339)
!114414 = !DILocation(line: 929, column: 22, scope: !114415, inlinedAt: !114416)
!114415 = distinct !DISubprogram(name: "replace<(f64, usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceTdjEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114416 = !DILocation(line: 316, column: 35, scope: !114379)
!114417 = !DILocation(line: 930, column: 49, scope: !114418, inlinedAt: !114416)
!114418 = distinct !DILexicalBlock(scope: !114415, file: !776, line: 929, column: 9)
!114419 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !114420)
!114420 = distinct !DILocation(line: 1004, column: 22, scope: !114421, inlinedAt: !114422)
!114421 = distinct !DISubprogram(name: "push<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE4pushCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114422 = !DILocation(line: 317, column: 45, scope: !114423)
!114423 = distinct !DILexicalBlock(scope: !114379, file: !11151, line: 316, column: 25)
!114424 = !{!114425}
!114425 = distinct !{!114425, !114426, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!114426 = distinct !{!114426, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!114427 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !114428)
!114428 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !114429)
!114429 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !114420)
!114430 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !114420)
!114431 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !114420)
!114432 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !114433)
!114433 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !114434)
!114434 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !114435)
!114435 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !114436)
!114436 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !114420)
!114437 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !114438)
!114438 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !114420)
!114439 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !114440)
!114440 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !114420)
!114441 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !114420)
!114442 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !114420)
!114443 = !DILocation(line: 302, column: 31, scope: !114291)
!114444 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !114445)
!114445 = distinct !DILocation(line: 85, column: 9, scope: !114327, inlinedAt: !114446)
!114446 = !DILocation(line: 302, column: 31, scope: !114447)
!114447 = !DILexicalBlockFile(scope: !114448, file: !11151, discriminator: 2)
!114448 = distinct !DILexicalBlock(scope: !114291, file: !11151, line: 302, column: 17)
!114449 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !114445)
!114450 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !114451)
!114451 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !114452)
!114452 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !114445)
!114453 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !114454)
!114454 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !114455)
!114455 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !114445)
!114456 = !DILocation(line: 303, column: 48, scope: !114457)
!114457 = distinct !DILexicalBlock(scope: !114448, file: !11151, line: 302, column: 17)
!114458 = !DILocation(line: 745, column: 15, scope: !18703, inlinedAt: !114459)
!114459 = distinct !DILocation(line: 508, column: 23, scope: !18705, inlinedAt: !114460)
!114460 = distinct !DILocation(line: 138, column: 14, scope: !18689, inlinedAt: !114461)
!114461 = distinct !DILocation(line: 49, column: 17, scope: !18691, inlinedAt: !114462)
!114462 = distinct !DILocation(line: 303, column: 34, scope: !114457)
!114463 = !DILocation(line: 745, column: 9, scope: !18687, inlinedAt: !114464)
!114464 = distinct !DILocation(line: 139, column: 14, scope: !18689, inlinedAt: !114461)
!114465 = !DILocation(line: 461, column: 23, scope: !18708, inlinedAt: !114466)
!114466 = distinct !DILocation(line: 360, column: 27, scope: !18711, inlinedAt: !114467)
!114467 = distinct !DILocation(line: 140, column: 25, scope: !18713, inlinedAt: !114468)
!114468 = distinct !DILocation(line: 1165, column: 29, scope: !18715, inlinedAt: !114469)
!114469 = distinct !DILocation(line: 140, column: 14, scope: !18689, inlinedAt: !114461)
!114470 = !DILocation(line: 462, column: 41, scope: !18719, inlinedAt: !114466)
!114471 = !DILocation(line: 360, column: 42, scope: !18711, inlinedAt: !114467)
!114472 = !DILocation(line: 43, column: 37, scope: !18722, inlinedAt: !114473)
!114473 = distinct !DILocation(line: 360, column: 9, scope: !18711, inlinedAt: !114467)
!114474 = !DILocation(line: 252, column: 39, scope: !18725, inlinedAt: !114475)
!114475 = distinct !DILocation(line: 646, column: 26, scope: !18727, inlinedAt: !114476)
!114476 = distinct !DILocation(line: 43, column: 23, scope: !18722, inlinedAt: !114473)
!114477 = !DILocation(line: 252, column: 13, scope: !18725, inlinedAt: !114475)
!114478 = !DILocation(line: 253, column: 13, scope: !18725, inlinedAt: !114475)
!114479 = !DILocation(line: 43, column: 16, scope: !18722, inlinedAt: !114473)
!114480 = !DILocation(line: 44, column: 15, scope: !18733, inlinedAt: !114473)
!114481 = !DILocation(line: 1165, column: 24, scope: !18715, inlinedAt: !114469)
!114482 = !DILocation(line: 142, column: 6, scope: !18689, inlinedAt: !114461)
!114483 = !DILocation(line: 49, column: 12, scope: !18691, inlinedAt: !114462)
!114484 = !DILocation(line: 52, column: 23, scope: !18691, inlinedAt: !114462)
!114485 = !DILocation(line: 252, column: 39, scope: !18569, inlinedAt: !114486)
!114486 = distinct !DILocation(line: 646, column: 26, scope: !18571, inlinedAt: !114487)
!114487 = distinct !DILocation(line: 223, column: 22, scope: !18573, inlinedAt: !114488)
!114488 = distinct !DILocation(line: 113, column: 14, scope: !18575, inlinedAt: !114489)
!114489 = distinct !DILocation(line: 52, column: 23, scope: !18691, inlinedAt: !114462)
!114490 = !DILocation(line: 252, column: 13, scope: !18569, inlinedAt: !114486)
!114491 = !DILocation(line: 253, column: 13, scope: !18569, inlinedAt: !114486)
!114492 = !DILocation(line: 223, column: 9, scope: !18573, inlinedAt: !114488)
!114493 = !DILocation(line: 49, column: 9, scope: !18691, inlinedAt: !114462)
!114494 = !DILocation(line: 0, scope: !18691, inlinedAt: !114462)
!114495 = !DILocation(line: 614, column: 9, scope: !114350, inlinedAt: !114496)
!114496 = !DILocation(line: 609, column: 14, scope: !114353, inlinedAt: !114497)
!114497 = !DILocation(line: 296, column: 20, scope: !114356, inlinedAt: !114498)
!114498 = !DILocation(line: 2026, column: 18, scope: !114359, inlinedAt: !114499)
!114499 = !DILocation(line: 1877, column: 78, scope: !114362, inlinedAt: !114500)
!114500 = !DILocation(line: 3764, column: 14, scope: !114365, inlinedAt: !114501)
!114501 = !DILocation(line: 304, column: 31, scope: !114502)
!114502 = distinct !DILexicalBlock(scope: !114457, file: !11151, line: 303, column: 21)
!114503 = !DILocation(line: 34, column: 10, scope: !114369, inlinedAt: !114504)
!114504 = !DILocation(line: 304, column: 63, scope: !114502)
!114505 = !DILocation(line: 34, column: 9, scope: !114369, inlinedAt: !114504)
!114506 = !DILocation(line: 266, column: 18, scope: !114373, inlinedAt: !114507)
!114507 = !DILocation(line: 691, column: 30, scope: !114376, inlinedAt: !114508)
!114508 = !DILocation(line: 304, column: 43, scope: !114502)
!114509 = !DILocation(line: 305, column: 24, scope: !114510)
!114510 = distinct !DILexicalBlock(scope: !114502, file: !11151, line: 304, column: 21)
!114511 = !DILocation(line: 1042, column: 9, scope: !114512, inlinedAt: !114513)
!114512 = distinct !DISubprogram(name: "unwrap_or<i16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionsE9unwrap_orCskY9G75ZWc4U_11polars_expr", scope: !7839, file: !7838, line: 1038, type: !11, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114513 = distinct !DILocation(line: 114, column: 18, scope: !114406, inlinedAt: !114514)
!114514 = distinct !DILocation(line: 309, column: 34, scope: !114510)
!114515 = !DILocation(line: 742, column: 44, scope: !51690, inlinedAt: !114516)
!114516 = distinct !DILocation(line: 114, column: 47, scope: !114406, inlinedAt: !114514)
!114517 = !DILocation(line: 114, column: 9, scope: !114406, inlinedAt: !114514)
!114518 = !{!114519}
!114519 = distinct !{!114519, !114520, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!114520 = distinct !{!114520, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeENtB6_7Reducer10reduce_oneB8_"}
!114521 = !DILocation(line: 115, column: 16, scope: !114406, inlinedAt: !114514)
!114522 = !DILocation(line: 115, column: 9, scope: !114406, inlinedAt: !114514)
!114523 = !DILocation(line: 310, column: 17, scope: !114457)
!114524 = !DILocation(line: 929, column: 22, scope: !114415, inlinedAt: !114525)
!114525 = !DILocation(line: 306, column: 35, scope: !114510)
!114526 = !DILocation(line: 930, column: 49, scope: !114527, inlinedAt: !114525)
!114527 = distinct !DILexicalBlock(scope: !114415, file: !776, line: 929, column: 9)
!114528 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !114529)
!114529 = distinct !DILocation(line: 1004, column: 22, scope: !114421, inlinedAt: !114530)
!114530 = !DILocation(line: 307, column: 45, scope: !114531)
!114531 = distinct !DILexicalBlock(scope: !114510, file: !11151, line: 306, column: 25)
!114532 = !{!114533}
!114533 = distinct !{!114533, !114534, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!114534 = distinct !{!114534, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!114535 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !114536)
!114536 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !114537)
!114537 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !114529)
!114538 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !114529)
!114539 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !114529)
!114540 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !114541)
!114541 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !114542)
!114542 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !114543)
!114543 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !114544)
!114544 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !114529)
!114545 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !114546)
!114546 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !114529)
!114547 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !114548)
!114548 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !114529)
!114549 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !114529)
!114550 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !114529)
!114551 = !DILocation(line: 284, column: 5, scope: !114180)
!114552 = distinct !DISubprogram(name: "as_any<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction6as_anyB7_", scope: !11152, file: !11151, line: 360, type: !11, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114553 = !DILocation(line: 362, column: 6, scope: !114552)
!114554 = distinct !DISubprogram(name: "resize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction6resizeB7_", scope: !11152, file: !11151, line: 262, type: !11, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114555 = !DILocation(line: 263, column: 9, scope: !114554)
!114556 = !DILocation(line: 263, column: 28, scope: !114554)
!114557 = !DILocation(line: 263, column: 21, scope: !114554)
!114558 = !DILocation(line: 264, column: 6, scope: !114554)
!114559 = distinct !DISubprogram(name: "reserve<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction7reserveB7_", scope: !11152, file: !11151, line: 258, type: !11, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114560 = !DILocation(line: 259, column: 9, scope: !114559)
!114561 = !DILocation(line: 259, column: 21, scope: !114559)
!114562 = !DILocation(line: 260, column: 6, scope: !114559)
!114563 = distinct !DISubprogram(name: "finalize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction8finalizeB7_", scope: !11152, file: !11151, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114564 = !DILocation(line: 929, column: 22, scope: !114565, inlinedAt: !114566)
!114565 = distinct !DISubprogram(name: "replace<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114566 = !DILocation(line: 849, column: 5, scope: !114567, inlinedAt: !114568)
!114567 = distinct !DISubprogram(name: "take<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 848, type: !11, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114568 = !DILocation(line: 356, column: 17, scope: !114563)
!114569 = !DILocation(line: 930, column: 49, scope: !114570, inlinedAt: !114566)
!114570 = distinct !DILexicalBlock(scope: !114565, file: !776, line: 929, column: 9)
!114571 = !DILocation(line: 357, column: 9, scope: !114572)
!114572 = distinct !DILexicalBlock(scope: !114563, file: !11151, line: 356, column: 9)
!114573 = !DILocation(line: 357, column: 32, scope: !114572)
!114574 = !DILocation(line: 357, column: 22, scope: !114572)
!114575 = !DILocation(line: 357, column: 52, scope: !114572)
!114576 = !DILocation(line: 358, column: 6, scope: !114563)
!114577 = distinct !DISubprogram(name: "new_empty<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int16Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEENtB5_16GroupedReduction9new_emptyB7_", scope: !11152, file: !11151, line: 249, type: !11, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114578 = !DILocation(line: 250, column: 18, scope: !114577)
!114579 = !DILocation(line: 251, column: 21, scope: !114577)
!114580 = !DILocation(line: 464, column: 9, scope: !114581, inlinedAt: !114579)
!114581 = distinct !DISubprogram(name: "new<(f64, usize)>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecTdjEE3newCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114582 = !DILocation(line: 252, column: 29, scope: !114577)
!114583 = !DILocation(line: 464, column: 9, scope: !114581, inlinedAt: !114582)
!114584 = !DILocation(line: 253, column: 23, scope: !114577)
!114585 = !DILocation(line: 253, column: 37, scope: !114577)
!114586 = !DILocation(line: 255, column: 9, scope: !114577)
!114587 = !DILocation(line: 99, column: 9, scope: !11493, inlinedAt: !114588)
!114588 = distinct !DILocation(line: 210, column: 73, scope: !11495, inlinedAt: !114589)
!114589 = distinct !DILocation(line: 332, column: 9, scope: !11498, inlinedAt: !114590)
!114590 = distinct !DILocation(line: 449, column: 14, scope: !11500, inlinedAt: !114591)
!114591 = distinct !DILocation(line: 248, column: 18, scope: !11502, inlinedAt: !114592)
!114592 = distinct !DILocation(line: 286, column: 19, scope: !114163, inlinedAt: !114593)
!114593 = distinct !DILocation(line: 250, column: 9, scope: !114577)
!114594 = !{!114595}
!114595 = distinct !{!114595, !114596, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEEE3newBJ_: argument 0"}
!114596 = distinct !{!114596, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEEE3newBJ_"}
!114597 = !DILocation(line: 101, column: 9, scope: !11493, inlinedAt: !114588)
!114598 = !DILocation(line: 248, column: 11, scope: !11502, inlinedAt: !114592)
!114599 = !DILocation(line: 248, column: 5, scope: !11502, inlinedAt: !114592)
!114600 = !DILocation(line: 250, column: 19, scope: !11502, inlinedAt: !114592)
!114601 = !DILocation(line: 292, column: 5, scope: !114163, inlinedAt: !114593)
!114602 = !DILocation(line: 284, column: 5, scope: !114163, inlinedAt: !114593)
!114603 = !DILocation(line: 0, scope: !114577)
!114604 = !DILocation(line: 289, column: 56, scope: !114176, inlinedAt: !114593)
!114605 = !DILocation(line: 255, column: 10, scope: !114577)
!114606 = !DILocation(line: 256, column: 6, scope: !114577)
!114607 = !DILocation(line: 249, column: 5, scope: !114577)
!114608 = distinct !DISubprogram(name: "update_group<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction12update_groupB7_", scope: !11152, file: !11151, line: 266, type: !11, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114609 = !DILocation(line: 272, column: 17, scope: !114608)
!114610 = !DILocation(line: 272, column: 9, scope: !114608)
!114611 = !DILocation(line: 273, column: 22, scope: !114608)
!114612 = !DILocation(line: 193, column: 15, scope: !114613, inlinedAt: !114614)
!114613 = distinct !DISubprogram(name: "dtype", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column5dtype", scope: !11163, file: !11162, line: 192, type: !11, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114614 = !DILocation(line: 274, column: 24, scope: !114615)
!114615 = distinct !DILexicalBlock(scope: !114608, file: !11151, line: 273, column: 9)
!114616 = !DILocation(line: 193, column: 9, scope: !114613, inlinedAt: !114614)
!114617 = !DILocation(line: 444, column: 20, scope: !114618, inlinedAt: !114619)
!114618 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCskY9G75ZWc4U_11polars_expr", scope: !708, file: !707, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114619 = !DILocation(line: 2110, column: 27, scope: !114620, inlinedAt: !114621)
!114620 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCskY9G75ZWc4U_11polars_expr", scope: !713, file: !712, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114621 = !DILocation(line: 2428, column: 15, scope: !114622, inlinedAt: !114623)
!114622 = distinct !DISubprogram(name: "deref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11176, file: !712, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114623 = !DILocation(line: 4194, column: 10, scope: !114624, inlinedAt: !114625)
!114624 = distinct !DISubprogram(name: "as_ref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EINtNtCscgRAwXFJnXP_4core7convert5AsRefBH_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11179, file: !712, line: 4193, type: !11, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114625 = !DILocation(line: 1085, column: 16, scope: !114626, inlinedAt: !114627)
!114626 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11182, file: !10777, line: 1084, type: !11, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114627 = !DILocation(line: 194, column: 34, scope: !114628, inlinedAt: !114614)
!114628 = !DILexicalBlockFile(scope: !114629, file: !11162, discriminator: 2)
!114629 = distinct !DILexicalBlock(scope: !114613, file: !11162, line: 194, column: 13)
!114630 = !DILocation(line: 2428, column: 9, scope: !114622, inlinedAt: !114623)
!114631 = !DILocation(line: 194, column: 34, scope: !114629, inlinedAt: !114614)
!114632 = !DILocation(line: 194, column: 36, scope: !114629, inlinedAt: !114614)
!114633 = !DILocation(line: 0, scope: !114613, inlinedAt: !114614)
!114634 = !DILocation(line: 2124, column: 13, scope: !114635, inlinedAt: !114636)
!114635 = distinct !DISubprogram(name: "eq<polars_core::datatypes::dtype::DataType, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !11192, file: !7905, line: 2123, type: !11, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114636 = !DILocation(line: 274, column: 17, scope: !114615)
!114637 = !DILocation(line: 274, column: 9, scope: !114615)
!114638 = !DILocation(line: 275, column: 22, scope: !114615)
!114639 = !DILocation(line: 105, column: 15, scope: !114640, inlinedAt: !114641)
!114640 = distinct !DISubprogram(name: "as_materialized_series", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column22as_materialized_series", scope: !11163, file: !11162, line: 104, type: !11, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114641 = !DILocation(line: 276, column: 29, scope: !114642)
!114642 = distinct !DILexicalBlock(scope: !114615, file: !11151, line: 275, column: 9)
!114643 = !DILocation(line: 105, column: 9, scope: !114640, inlinedAt: !114641)
!114644 = !DILocation(line: 107, column: 36, scope: !114645, inlinedAt: !114641)
!114645 = distinct !DILexicalBlock(scope: !114640, file: !11162, line: 107, column: 13)
!114646 = !DILocation(line: 66, column: 9, scope: !114647, inlinedAt: !114648)
!114647 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11207, file: !11206, line: 65, type: !11, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114648 = !DILocation(line: 106, column: 34, scope: !114649, inlinedAt: !114641)
!114649 = distinct !DILexicalBlock(scope: !114640, file: !11162, line: 106, column: 13)
!114650 = !DILocation(line: 106, column: 34, scope: !114640, inlinedAt: !114641)
!114651 = !DILocation(line: 0, scope: !114640, inlinedAt: !114641)
!114652 = !DILocation(line: 277, column: 13, scope: !114653)
!114653 = distinct !DILexicalBlock(scope: !114642, file: !11151, line: 276, column: 9)
!114654 = !DILocation(line: 277, column: 22, scope: !114653)
!114655 = !DILocation(line: 277, column: 35, scope: !114653)
!114656 = !DILocation(line: 350, column: 15, scope: !114657, inlinedAt: !114658)
!114657 = distinct !DISubprogram(name: "deref<polars_core::series::Series>", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11220, file: !11219, line: 349, type: !11, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114658 = !DILocation(line: 464, column: 9, scope: !114659, inlinedAt: !114660)
!114659 = distinct !DISubprogram(name: "as_ref<polars_core::series::Series>", linkageName: "_RNvXse_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtCscgRAwXFJnXP_4core7convert5AsRefBI_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11224, file: !11219, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114660 = !DILocation(line: 278, column: 50, scope: !114661)
!114661 = distinct !DILexicalBlock(scope: !114653, file: !11151, line: 277, column: 9)
!114662 = !DILocation(line: 350, column: 9, scope: !114657, inlinedAt: !114658)
!114663 = !DILocation(line: 444, column: 20, scope: !114618, inlinedAt: !114664)
!114664 = !DILocation(line: 2110, column: 27, scope: !114665, inlinedAt: !114666)
!114665 = !DILexicalBlockFile(scope: !114620, file: !712, discriminator: 2)
!114666 = !DILocation(line: 2428, column: 15, scope: !114667, inlinedAt: !114668)
!114667 = !DILexicalBlockFile(scope: !114622, file: !712, discriminator: 2)
!114668 = !DILocation(line: 4194, column: 10, scope: !114669, inlinedAt: !114670)
!114669 = !DILexicalBlockFile(scope: !114624, file: !712, discriminator: 2)
!114670 = !DILocation(line: 1091, column: 16, scope: !114671, inlinedAt: !114672)
!114671 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesINtNtCscgRAwXFJnXP_4core7convert5AsRefDNtNtB5_12series_trait11SeriesTraitEL_E6as_ref", scope: !11237, file: !10777, line: 1090, type: !11, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114672 = !DILocation(line: 278, column: 59, scope: !114661)
!114673 = !DILocation(line: 2428, column: 9, scope: !114622, inlinedAt: !114668)
!114674 = !DILocation(line: 278, column: 68, scope: !114661)
!114675 = !{!114676}
!114676 = distinct !{!114676, !114677, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!114677 = distinct !{!114677, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!114678 = !DILocation(line: 282, column: 5, scope: !114653)
!114679 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !114680)
!114680 = distinct !DILocation(line: 282, column: 5, scope: !114653)
!114681 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !114682)
!114682 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !114683)
!114683 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !114684)
!114684 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !114685)
!114685 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !114686)
!114686 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !114680)
!114687 = !{!114688, !114690, !114692, !114676}
!114688 = distinct !{!114688, !114689, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!114689 = distinct !{!114689, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!114690 = distinct !{!114690, !114691, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!114691 = distinct !{!114691, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!114692 = distinct !{!114692, !114693, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!114693 = distinct !{!114693, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!114694 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !114684)
!114695 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !114696)
!114696 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !114684)
!114697 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !114684)
!114698 = !DILocation(line: 280, column: 41, scope: !114699)
!114699 = distinct !DILexicalBlock(scope: !114661, file: !11151, line: 278, column: 9)
!114700 = !DILocation(line: 1877, column: 92, scope: !114701, inlinedAt: !114702)
!114701 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114702 = !DILocation(line: 3764, column: 14, scope: !114703, inlinedAt: !114704)
!114703 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114704 = !DILocation(line: 3839, column: 34, scope: !114705, inlinedAt: !114706)
!114705 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11277, file: !11269, line: 3838, type: !11, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114706 = !DILocation(line: 280, column: 40, scope: !114699)
!114707 = !DILocation(line: 278, column: 14, scope: !114708, inlinedAt: !114709)
!114708 = distinct !DISubprogram(name: "index_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 276, type: !11, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114709 = !DILocation(line: 31, column: 15, scope: !114710, inlinedAt: !114711)
!114710 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTdjEINtNtNtB8_3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11287, file: !11281, line: 30, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114711 = !DILocation(line: 3839, column: 9, scope: !114705, inlinedAt: !114706)
!114712 = !DILocation(line: 614, column: 9, scope: !114713, inlinedAt: !114714)
!114713 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114714 = !DILocation(line: 609, column: 14, scope: !114715, inlinedAt: !114716)
!114715 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114716 = !DILocation(line: 296, column: 20, scope: !114717, inlinedAt: !114718)
!114717 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114718 = !DILocation(line: 2026, column: 18, scope: !114719, inlinedAt: !114720)
!114719 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!114720 = !DILocation(line: 1877, column: 78, scope: !114701, inlinedAt: !114702)
!114721 = !DILocation(line: 278, column: 9, scope: !114708, inlinedAt: !114709)
!114722 = !DILocation(line: 280, column: 14, scope: !114699)
!114723 = !DILocation(line: 281, column: 9, scope: !114699)
!114724 = !{!114725}
!114725 = distinct !{!114725, !114726, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!114726 = distinct !{!114726, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!114727 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !114728)
!114728 = distinct !DILocation(line: 282, column: 5, scope: !114653)
!114729 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !114730)
!114730 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !114731)
!114731 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !114732)
end_hunk_9
begin_hunk_10_@llvm.vector.reduce.add.v4i32
!115016 = !DILocation(line: 444, column: 20, scope: !114913, inlinedAt: !115017)
!115017 = !DILocation(line: 2110, column: 27, scope: !115018, inlinedAt: !115019)
!115018 = !DILexicalBlockFile(scope: !114915, file: !712, discriminator: 4)
!115019 = !DILocation(line: 2428, column: 15, scope: !115020, inlinedAt: !115021)
!115020 = !DILexicalBlockFile(scope: !114917, file: !712, discriminator: 4)
!115021 = !DILocation(line: 4194, column: 10, scope: !115022, inlinedAt: !115023)
!115022 = !DILexicalBlockFile(scope: !114919, file: !712, discriminator: 4)
!115023 = !DILocation(line: 1085, column: 16, scope: !115024, inlinedAt: !115025)
!115024 = !DILexicalBlockFile(scope: !114921, file: !10777, discriminator: 2)
!115025 = !DILocation(line: 301, column: 16, scope: !115026)
!115026 = !DILexicalBlockFile(scope: !115014, file: !11151, discriminator: 2)
!115027 = !DILocation(line: 2428, column: 9, scope: !114917, inlinedAt: !115021)
!115028 = !DILocation(line: 301, column: 23, scope: !115014)
!115029 = !DILocation(line: 961, column: 18, scope: !115030, inlinedAt: !115031)
!115030 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !11365, file: !11364, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115031 = !DILocation(line: 102, column: 78, scope: !115032, inlinedAt: !115033)
!115032 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !11372, file: !11369, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115033 = !DILocation(line: 1041, column: 9, scope: !115034, inlinedAt: !115035)
!115034 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115035 = !DILocation(line: 0, scope: !115014)
!115036 = !DILocation(line: 961, column: 18, scope: !11676, inlinedAt: !115037)
!115037 = !DILocation(line: 102, column: 78, scope: !11678, inlinedAt: !115038)
!115038 = !DILocation(line: 1041, column: 9, scope: !11682, inlinedAt: !115039)
!115039 = !DILocation(line: 26, column: 14, scope: !11684, inlinedAt: !115040)
!115040 = !DILocation(line: 631, column: 30, scope: !11686, inlinedAt: !115035)
!115041 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !115042)
!115042 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !115043)
!115043 = distinct !DILocation(line: 312, column: 45, scope: !115014)
!115044 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !115045)
!115045 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !115046)
!115046 = distinct !DILocation(line: 302, column: 45, scope: !115014)
!115047 = !DILocation(line: 312, column: 31, scope: !115014)
!115048 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !115049)
!115049 = distinct !DILocation(line: 85, column: 9, scope: !115050, inlinedAt: !115051)
!115050 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>, core::slice::iter::Iter<polars_expr::EvictIdx>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEENtNtNtB8_6traits8iterator8Iterator4nextB1t_", scope: !11411, file: !11400, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115051 = !DILocation(line: 312, column: 31, scope: !115052)
!115052 = !DILexicalBlockFile(scope: !115053, file: !11151, discriminator: 2)
!115053 = distinct !DILexicalBlock(scope: !115014, file: !11151, line: 312, column: 17)
!115054 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !115049)
!115055 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !115056)
!115056 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !115057)
!115057 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !115049)
!115058 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !115059)
!115059 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !115060)
!115060 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !115049)
!115061 = !DILocation(line: 313, column: 49, scope: !115062)
!115062 = distinct !DILexicalBlock(scope: !115053, file: !11151, line: 312, column: 17)
!115063 = !DILocation(line: 313, column: 33, scope: !115062)
!115064 = !DILocation(line: 252, column: 39, scope: !19328, inlinedAt: !115065)
!115065 = distinct !DILocation(line: 646, column: 26, scope: !19330, inlinedAt: !115066)
!115066 = distinct !DILocation(line: 223, column: 22, scope: !19332, inlinedAt: !115067)
!115067 = distinct !DILocation(line: 113, column: 14, scope: !19334, inlinedAt: !115068)
!115068 = distinct !DILocation(line: 313, column: 33, scope: !115062)
!115069 = !DILocation(line: 252, column: 13, scope: !19328, inlinedAt: !115065)
!115070 = !DILocation(line: 253, column: 13, scope: !19328, inlinedAt: !115065)
!115071 = !DILocation(line: 223, column: 9, scope: !19332, inlinedAt: !115067)
!115072 = !DILocation(line: 614, column: 9, scope: !115073, inlinedAt: !115074)
!115073 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115074 = !DILocation(line: 609, column: 14, scope: !115075, inlinedAt: !115077)
!115075 = !DILexicalBlockFile(scope: !115076, file: !11291, discriminator: 2)
!115076 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115077 = !DILocation(line: 296, column: 20, scope: !115078, inlinedAt: !115080)
!115078 = !DILexicalBlockFile(scope: !115079, file: !11291, discriminator: 2)
!115079 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115080 = !DILocation(line: 2026, column: 18, scope: !115081, inlinedAt: !115083)
!115081 = !DILexicalBlockFile(scope: !115082, file: !11269, discriminator: 2)
!115082 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115083 = !DILocation(line: 1877, column: 78, scope: !115084, inlinedAt: !115086)
!115084 = !DILexicalBlockFile(scope: !115085, file: !11269, discriminator: 2)
!115085 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115086 = !DILocation(line: 3764, column: 14, scope: !115087, inlinedAt: !115089)
!115087 = !DILexicalBlockFile(scope: !115088, file: !11269, discriminator: 2)
!115088 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115089 = !DILocation(line: 314, column: 31, scope: !115090)
!115090 = distinct !DILexicalBlock(scope: !115062, file: !11151, line: 313, column: 21)
!115091 = !DILocation(line: 34, column: 10, scope: !115092, inlinedAt: !115093)
!115092 = distinct !DISubprogram(name: "idx", linkageName: "_RNvMCskY9G75ZWc4U_11polars_exprNtB2_8EvictIdx3idx", scope: !11754, file: !7900, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115093 = !DILocation(line: 314, column: 63, scope: !115090)
!115094 = !DILocation(line: 34, column: 9, scope: !115092, inlinedAt: !115093)
!115095 = !DILocation(line: 266, column: 18, scope: !115096, inlinedAt: !115097)
!115096 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115097 = !DILocation(line: 691, column: 30, scope: !115098, inlinedAt: !115100)
!115098 = !DILexicalBlockFile(scope: !115099, file: !11376, discriminator: 2)
!115099 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize), usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTdjE17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115100 = !DILocation(line: 314, column: 43, scope: !115090)
!115101 = !DILocation(line: 315, column: 24, scope: !115102)
!115102 = distinct !DILexicalBlock(scope: !115090, file: !11151, line: 314, column: 21)
!115103 = !DILocation(line: 323, column: 9, scope: !115014)
!115104 = !{!115105}
!115105 = distinct !{!115105, !115106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!115106 = distinct !{!115106, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!115107 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115108)
!115108 = distinct !DILocation(line: 324, column: 5, scope: !114949)
!115109 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !115110)
!115110 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !115111)
!115111 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !115112)
!115112 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !115113)
!115113 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !115114)
!115114 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115108)
!115115 = !{!115116, !115118, !115120, !115105}
!115116 = distinct !{!115116, !115117, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!115117 = distinct !{!115117, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!115118 = distinct !{!115118, !115119, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!115119 = distinct !{!115119, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!115120 = distinct !{!115120, !115121, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!115121 = distinct !{!115121, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!115122 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !115112)
!115123 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !115124)
!115124 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !115112)
!115125 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !115112)
!115126 = !DILocation(line: 324, column: 6, scope: !114903)
!115127 = !DILocation(line: 742, column: 44, scope: !52456, inlinedAt: !115128)
!115128 = distinct !DILocation(line: 114, column: 47, scope: !115129, inlinedAt: !115130)
!115129 = distinct !DISubprogram(name: "reduce_one<polars_core::datatypes::Int32Type>", linkageName: "_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_", scope: !107517, file: !107516, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115130 = distinct !DILocation(line: 319, column: 34, scope: !115102)
!115131 = !DILocation(line: 114, column: 9, scope: !115129, inlinedAt: !115130)
!115132 = !{!115133}
!115133 = distinct !{!115133, !115134, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!115134 = distinct !{!115134, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_"}
!115135 = !DILocation(line: 115, column: 9, scope: !115129, inlinedAt: !115130)
!115136 = !DILocation(line: 320, column: 17, scope: !115062)
!115137 = !DILocation(line: 929, column: 22, scope: !115138, inlinedAt: !115139)
!115138 = distinct !DISubprogram(name: "replace<(f64, usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceTdjEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115139 = !DILocation(line: 316, column: 35, scope: !115102)
!115140 = !DILocation(line: 930, column: 49, scope: !115141, inlinedAt: !115139)
!115141 = distinct !DILexicalBlock(scope: !115138, file: !776, line: 929, column: 9)
!115142 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !115143)
!115143 = distinct !DILocation(line: 1004, column: 22, scope: !115144, inlinedAt: !115145)
!115144 = distinct !DISubprogram(name: "push<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE4pushCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115145 = !DILocation(line: 317, column: 45, scope: !115146)
!115146 = distinct !DILexicalBlock(scope: !115102, file: !11151, line: 316, column: 25)
!115147 = !{!115148}
!115148 = distinct !{!115148, !115149, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!115149 = distinct !{!115149, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!115150 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !115151)
!115151 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !115152)
!115152 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !115143)
!115153 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !115143)
!115154 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !115143)
!115155 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !115156)
!115156 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !115157)
!115157 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !115158)
!115158 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !115159)
!115159 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !115143)
!115160 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !115161)
!115161 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !115143)
!115162 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !115163)
!115163 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !115143)
!115164 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !115143)
!115165 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !115143)
!115166 = !DILocation(line: 302, column: 31, scope: !115014)
!115167 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !115168)
!115168 = distinct !DILocation(line: 85, column: 9, scope: !115050, inlinedAt: !115169)
!115169 = !DILocation(line: 302, column: 31, scope: !115170)
!115170 = !DILexicalBlockFile(scope: !115171, file: !11151, discriminator: 2)
!115171 = distinct !DILexicalBlock(scope: !115014, file: !11151, line: 302, column: 17)
!115172 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !115168)
!115173 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !115174)
!115174 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !115175)
!115175 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !115168)
!115176 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !115177)
!115177 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !115178)
!115178 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !115168)
!115179 = !DILocation(line: 303, column: 48, scope: !115180)
!115180 = distinct !DILexicalBlock(scope: !115171, file: !11151, line: 302, column: 17)
!115181 = !DILocation(line: 745, column: 15, scope: !19462, inlinedAt: !115182)
!115182 = distinct !DILocation(line: 508, column: 23, scope: !19464, inlinedAt: !115183)
!115183 = distinct !DILocation(line: 138, column: 14, scope: !19448, inlinedAt: !115184)
!115184 = distinct !DILocation(line: 49, column: 17, scope: !19450, inlinedAt: !115185)
!115185 = distinct !DILocation(line: 303, column: 34, scope: !115180)
!115186 = !DILocation(line: 745, column: 9, scope: !19446, inlinedAt: !115187)
!115187 = distinct !DILocation(line: 139, column: 14, scope: !19448, inlinedAt: !115184)
!115188 = !DILocation(line: 461, column: 23, scope: !19467, inlinedAt: !115189)
!115189 = distinct !DILocation(line: 360, column: 27, scope: !19470, inlinedAt: !115190)
!115190 = distinct !DILocation(line: 140, column: 25, scope: !19472, inlinedAt: !115191)
!115191 = distinct !DILocation(line: 1165, column: 29, scope: !19474, inlinedAt: !115192)
!115192 = distinct !DILocation(line: 140, column: 14, scope: !19448, inlinedAt: !115184)
!115193 = !DILocation(line: 462, column: 41, scope: !19478, inlinedAt: !115189)
!115194 = !DILocation(line: 360, column: 42, scope: !19470, inlinedAt: !115190)
!115195 = !DILocation(line: 43, column: 37, scope: !19481, inlinedAt: !115196)
!115196 = distinct !DILocation(line: 360, column: 9, scope: !19470, inlinedAt: !115190)
!115197 = !DILocation(line: 252, column: 39, scope: !19484, inlinedAt: !115198)
!115198 = distinct !DILocation(line: 646, column: 26, scope: !19486, inlinedAt: !115199)
!115199 = distinct !DILocation(line: 43, column: 23, scope: !19481, inlinedAt: !115196)
!115200 = !DILocation(line: 252, column: 13, scope: !19484, inlinedAt: !115198)
!115201 = !DILocation(line: 253, column: 13, scope: !19484, inlinedAt: !115198)
!115202 = !DILocation(line: 43, column: 16, scope: !19481, inlinedAt: !115196)
!115203 = !DILocation(line: 44, column: 15, scope: !19492, inlinedAt: !115196)
!115204 = !DILocation(line: 1165, column: 24, scope: !19474, inlinedAt: !115192)
!115205 = !DILocation(line: 142, column: 6, scope: !19448, inlinedAt: !115184)
!115206 = !DILocation(line: 49, column: 12, scope: !19450, inlinedAt: !115185)
!115207 = !DILocation(line: 52, column: 23, scope: !19450, inlinedAt: !115185)
!115208 = !DILocation(line: 252, column: 39, scope: !19328, inlinedAt: !115209)
!115209 = distinct !DILocation(line: 646, column: 26, scope: !19330, inlinedAt: !115210)
!115210 = distinct !DILocation(line: 223, column: 22, scope: !19332, inlinedAt: !115211)
!115211 = distinct !DILocation(line: 113, column: 14, scope: !19334, inlinedAt: !115212)
!115212 = distinct !DILocation(line: 52, column: 23, scope: !19450, inlinedAt: !115185)
!115213 = !DILocation(line: 252, column: 13, scope: !19328, inlinedAt: !115209)
!115214 = !DILocation(line: 253, column: 13, scope: !19328, inlinedAt: !115209)
!115215 = !DILocation(line: 223, column: 9, scope: !19332, inlinedAt: !115211)
!115216 = !DILocation(line: 49, column: 9, scope: !19450, inlinedAt: !115185)
!115217 = !DILocation(line: 0, scope: !19450, inlinedAt: !115185)
!115218 = !DILocation(line: 614, column: 9, scope: !115073, inlinedAt: !115219)
!115219 = !DILocation(line: 609, column: 14, scope: !115076, inlinedAt: !115220)
!115220 = !DILocation(line: 296, column: 20, scope: !115079, inlinedAt: !115221)
!115221 = !DILocation(line: 2026, column: 18, scope: !115082, inlinedAt: !115222)
!115222 = !DILocation(line: 1877, column: 78, scope: !115085, inlinedAt: !115223)
!115223 = !DILocation(line: 3764, column: 14, scope: !115088, inlinedAt: !115224)
!115224 = !DILocation(line: 304, column: 31, scope: !115225)
!115225 = distinct !DILexicalBlock(scope: !115180, file: !11151, line: 303, column: 21)
!115226 = !DILocation(line: 34, column: 10, scope: !115092, inlinedAt: !115227)
!115227 = !DILocation(line: 304, column: 63, scope: !115225)
!115228 = !DILocation(line: 34, column: 9, scope: !115092, inlinedAt: !115227)
!115229 = !DILocation(line: 266, column: 18, scope: !115096, inlinedAt: !115230)
!115230 = !DILocation(line: 691, column: 30, scope: !115099, inlinedAt: !115231)
!115231 = !DILocation(line: 304, column: 43, scope: !115225)
!115232 = !DILocation(line: 305, column: 24, scope: !115233)
!115233 = distinct !DILexicalBlock(scope: !115225, file: !11151, line: 304, column: 21)
!115234 = !DILocation(line: 1042, column: 9, scope: !115235, inlinedAt: !115236)
!115235 = distinct !DISubprogram(name: "unwrap_or<i32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionlE9unwrap_orCskY9G75ZWc4U_11polars_expr", scope: !7839, file: !7838, line: 1038, type: !11, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115236 = distinct !DILocation(line: 114, column: 18, scope: !115129, inlinedAt: !115237)
!115237 = distinct !DILocation(line: 309, column: 34, scope: !115233)
!115238 = !DILocation(line: 742, column: 44, scope: !52456, inlinedAt: !115239)
!115239 = distinct !DILocation(line: 114, column: 47, scope: !115129, inlinedAt: !115237)
!115240 = !DILocation(line: 114, column: 9, scope: !115129, inlinedAt: !115237)
!115241 = !{!115242}
!115242 = distinct !{!115242, !115243, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!115243 = distinct !{!115243, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeENtB6_7Reducer10reduce_oneB8_"}
!115244 = !DILocation(line: 115, column: 16, scope: !115129, inlinedAt: !115237)
!115245 = !DILocation(line: 115, column: 9, scope: !115129, inlinedAt: !115237)
!115246 = !DILocation(line: 310, column: 17, scope: !115180)
!115247 = !DILocation(line: 929, column: 22, scope: !115138, inlinedAt: !115248)
!115248 = !DILocation(line: 306, column: 35, scope: !115233)
!115249 = !DILocation(line: 930, column: 49, scope: !115250, inlinedAt: !115248)
!115250 = distinct !DILexicalBlock(scope: !115138, file: !776, line: 929, column: 9)
!115251 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !115252)
!115252 = distinct !DILocation(line: 1004, column: 22, scope: !115144, inlinedAt: !115253)
!115253 = !DILocation(line: 307, column: 45, scope: !115254)
!115254 = distinct !DILexicalBlock(scope: !115233, file: !11151, line: 306, column: 25)
!115255 = !{!115256}
!115256 = distinct !{!115256, !115257, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!115257 = distinct !{!115257, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!115258 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !115259)
!115259 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !115260)
!115260 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !115252)
!115261 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !115252)
!115262 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !115252)
!115263 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !115264)
!115264 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !115265)
!115265 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !115266)
!115266 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !115267)
!115267 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !115252)
!115268 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !115269)
!115269 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !115252)
!115270 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !115271)
!115271 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !115252)
!115272 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !115252)
!115273 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !115252)
!115274 = !DILocation(line: 284, column: 5, scope: !114903)
!115275 = distinct !DISubprogram(name: "as_any<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction6as_anyB7_", scope: !11152, file: !11151, line: 360, type: !11, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115276 = !DILocation(line: 362, column: 6, scope: !115275)
!115277 = distinct !DISubprogram(name: "resize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction6resizeB7_", scope: !11152, file: !11151, line: 262, type: !11, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115278 = !DILocation(line: 263, column: 9, scope: !115277)
!115279 = !DILocation(line: 263, column: 28, scope: !115277)
!115280 = !DILocation(line: 263, column: 21, scope: !115277)
!115281 = !DILocation(line: 264, column: 6, scope: !115277)
!115282 = distinct !DISubprogram(name: "reserve<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction7reserveB7_", scope: !11152, file: !11151, line: 258, type: !11, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115283 = !DILocation(line: 259, column: 9, scope: !115282)
!115284 = !DILocation(line: 259, column: 21, scope: !115282)
!115285 = !DILocation(line: 260, column: 6, scope: !115282)
!115286 = distinct !DISubprogram(name: "finalize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction8finalizeB7_", scope: !11152, file: !11151, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115287 = !DILocation(line: 929, column: 22, scope: !115288, inlinedAt: !115289)
!115288 = distinct !DISubprogram(name: "replace<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115289 = !DILocation(line: 849, column: 5, scope: !115290, inlinedAt: !115291)
!115290 = distinct !DISubprogram(name: "take<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 848, type: !11, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115291 = !DILocation(line: 356, column: 17, scope: !115286)
!115292 = !DILocation(line: 930, column: 49, scope: !115293, inlinedAt: !115289)
!115293 = distinct !DILexicalBlock(scope: !115288, file: !776, line: 929, column: 9)
!115294 = !DILocation(line: 357, column: 9, scope: !115295)
!115295 = distinct !DILexicalBlock(scope: !115286, file: !11151, line: 356, column: 9)
!115296 = !DILocation(line: 357, column: 32, scope: !115295)
!115297 = !DILocation(line: 357, column: 22, scope: !115295)
!115298 = !DILocation(line: 357, column: 52, scope: !115295)
!115299 = !DILocation(line: 358, column: 6, scope: !115286)
!115300 = distinct !DISubprogram(name: "new_empty<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int32Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEENtB5_16GroupedReduction9new_emptyB7_", scope: !11152, file: !11151, line: 249, type: !11, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115301 = !DILocation(line: 250, column: 18, scope: !115300)
!115302 = !DILocation(line: 251, column: 21, scope: !115300)
!115303 = !DILocation(line: 464, column: 9, scope: !115304, inlinedAt: !115302)
!115304 = distinct !DISubprogram(name: "new<(f64, usize)>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecTdjEE3newCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115305 = !DILocation(line: 252, column: 29, scope: !115300)
!115306 = !DILocation(line: 464, column: 9, scope: !115304, inlinedAt: !115305)
!115307 = !DILocation(line: 253, column: 23, scope: !115300)
!115308 = !DILocation(line: 253, column: 37, scope: !115300)
!115309 = !DILocation(line: 255, column: 9, scope: !115300)
!115310 = !DILocation(line: 99, column: 9, scope: !11493, inlinedAt: !115311)
!115311 = distinct !DILocation(line: 210, column: 73, scope: !11495, inlinedAt: !115312)
!115312 = distinct !DILocation(line: 332, column: 9, scope: !11498, inlinedAt: !115313)
!115313 = distinct !DILocation(line: 449, column: 14, scope: !11500, inlinedAt: !115314)
!115314 = distinct !DILocation(line: 248, column: 18, scope: !11502, inlinedAt: !115315)
!115315 = distinct !DILocation(line: 286, column: 19, scope: !114886, inlinedAt: !115316)
!115316 = distinct !DILocation(line: 250, column: 9, scope: !115300)
!115317 = !{!115318}
!115318 = distinct !{!115318, !115319, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEEE3newBJ_: argument 0"}
!115319 = distinct !{!115319, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEEE3newBJ_"}
!115320 = !DILocation(line: 101, column: 9, scope: !11493, inlinedAt: !115311)
!115321 = !DILocation(line: 248, column: 11, scope: !11502, inlinedAt: !115315)
!115322 = !DILocation(line: 248, column: 5, scope: !11502, inlinedAt: !115315)
!115323 = !DILocation(line: 250, column: 19, scope: !11502, inlinedAt: !115315)
!115324 = !DILocation(line: 292, column: 5, scope: !114886, inlinedAt: !115316)
!115325 = !DILocation(line: 284, column: 5, scope: !114886, inlinedAt: !115316)
!115326 = !DILocation(line: 0, scope: !115300)
!115327 = !DILocation(line: 289, column: 56, scope: !114899, inlinedAt: !115316)
!115328 = !DILocation(line: 255, column: 10, scope: !115300)
!115329 = !DILocation(line: 256, column: 6, scope: !115300)
!115330 = !DILocation(line: 249, column: 5, scope: !115300)
!115331 = distinct !DISubprogram(name: "update_group<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction12update_groupB7_", scope: !11152, file: !11151, line: 266, type: !11, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115332 = !DILocation(line: 272, column: 17, scope: !115331)
!115333 = !DILocation(line: 272, column: 9, scope: !115331)
!115334 = !DILocation(line: 273, column: 22, scope: !115331)
!115335 = !DILocation(line: 193, column: 15, scope: !115336, inlinedAt: !115337)
!115336 = distinct !DISubprogram(name: "dtype", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column5dtype", scope: !11163, file: !11162, line: 192, type: !11, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115337 = !DILocation(line: 274, column: 24, scope: !115338)
!115338 = distinct !DILexicalBlock(scope: !115331, file: !11151, line: 273, column: 9)
!115339 = !DILocation(line: 193, column: 9, scope: !115336, inlinedAt: !115337)
!115340 = !DILocation(line: 444, column: 20, scope: !115341, inlinedAt: !115342)
!115341 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCskY9G75ZWc4U_11polars_expr", scope: !708, file: !707, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115342 = !DILocation(line: 2110, column: 27, scope: !115343, inlinedAt: !115344)
!115343 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCskY9G75ZWc4U_11polars_expr", scope: !713, file: !712, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115344 = !DILocation(line: 2428, column: 15, scope: !115345, inlinedAt: !115346)
!115345 = distinct !DISubprogram(name: "deref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11176, file: !712, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115346 = !DILocation(line: 4194, column: 10, scope: !115347, inlinedAt: !115348)
!115347 = distinct !DISubprogram(name: "as_ref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EINtNtCscgRAwXFJnXP_4core7convert5AsRefBH_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11179, file: !712, line: 4193, type: !11, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115348 = !DILocation(line: 1085, column: 16, scope: !115349, inlinedAt: !115350)
!115349 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11182, file: !10777, line: 1084, type: !11, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115350 = !DILocation(line: 194, column: 34, scope: !115351, inlinedAt: !115337)
!115351 = !DILexicalBlockFile(scope: !115352, file: !11162, discriminator: 2)
!115352 = distinct !DILexicalBlock(scope: !115336, file: !11162, line: 194, column: 13)
!115353 = !DILocation(line: 2428, column: 9, scope: !115345, inlinedAt: !115346)
!115354 = !DILocation(line: 194, column: 34, scope: !115352, inlinedAt: !115337)
!115355 = !DILocation(line: 194, column: 36, scope: !115352, inlinedAt: !115337)
!115356 = !DILocation(line: 0, scope: !115336, inlinedAt: !115337)
!115357 = !DILocation(line: 2124, column: 13, scope: !115358, inlinedAt: !115359)
!115358 = distinct !DISubprogram(name: "eq<polars_core::datatypes::dtype::DataType, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !11192, file: !7905, line: 2123, type: !11, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115359 = !DILocation(line: 274, column: 17, scope: !115338)
!115360 = !DILocation(line: 274, column: 9, scope: !115338)
!115361 = !DILocation(line: 275, column: 22, scope: !115338)
!115362 = !DILocation(line: 105, column: 15, scope: !115363, inlinedAt: !115364)
!115363 = distinct !DISubprogram(name: "as_materialized_series", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column22as_materialized_series", scope: !11163, file: !11162, line: 104, type: !11, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115364 = !DILocation(line: 276, column: 29, scope: !115365)
!115365 = distinct !DILexicalBlock(scope: !115338, file: !11151, line: 275, column: 9)
!115366 = !DILocation(line: 105, column: 9, scope: !115363, inlinedAt: !115364)
!115367 = !DILocation(line: 107, column: 36, scope: !115368, inlinedAt: !115364)
!115368 = distinct !DILexicalBlock(scope: !115363, file: !11162, line: 107, column: 13)
!115369 = !DILocation(line: 66, column: 9, scope: !115370, inlinedAt: !115371)
!115370 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11207, file: !11206, line: 65, type: !11, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115371 = !DILocation(line: 106, column: 34, scope: !115372, inlinedAt: !115364)
!115372 = distinct !DILexicalBlock(scope: !115363, file: !11162, line: 106, column: 13)
!115373 = !DILocation(line: 106, column: 34, scope: !115363, inlinedAt: !115364)
!115374 = !DILocation(line: 0, scope: !115363, inlinedAt: !115364)
!115375 = !DILocation(line: 277, column: 13, scope: !115376)
!115376 = distinct !DILexicalBlock(scope: !115365, file: !11151, line: 276, column: 9)
!115377 = !DILocation(line: 277, column: 22, scope: !115376)
!115378 = !DILocation(line: 277, column: 35, scope: !115376)
!115379 = !DILocation(line: 350, column: 15, scope: !115380, inlinedAt: !115381)
!115380 = distinct !DISubprogram(name: "deref<polars_core::series::Series>", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11220, file: !11219, line: 349, type: !11, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115381 = !DILocation(line: 464, column: 9, scope: !115382, inlinedAt: !115383)
!115382 = distinct !DISubprogram(name: "as_ref<polars_core::series::Series>", linkageName: "_RNvXse_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtCscgRAwXFJnXP_4core7convert5AsRefBI_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11224, file: !11219, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115383 = !DILocation(line: 278, column: 50, scope: !115384)
!115384 = distinct !DILexicalBlock(scope: !115376, file: !11151, line: 277, column: 9)
!115385 = !DILocation(line: 350, column: 9, scope: !115380, inlinedAt: !115381)
!115386 = !DILocation(line: 444, column: 20, scope: !115341, inlinedAt: !115387)
!115387 = !DILocation(line: 2110, column: 27, scope: !115388, inlinedAt: !115389)
!115388 = !DILexicalBlockFile(scope: !115343, file: !712, discriminator: 2)
!115389 = !DILocation(line: 2428, column: 15, scope: !115390, inlinedAt: !115391)
!115390 = !DILexicalBlockFile(scope: !115345, file: !712, discriminator: 2)
!115391 = !DILocation(line: 4194, column: 10, scope: !115392, inlinedAt: !115393)
!115392 = !DILexicalBlockFile(scope: !115347, file: !712, discriminator: 2)
!115393 = !DILocation(line: 1091, column: 16, scope: !115394, inlinedAt: !115395)
!115394 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesINtNtCscgRAwXFJnXP_4core7convert5AsRefDNtNtB5_12series_trait11SeriesTraitEL_E6as_ref", scope: !11237, file: !10777, line: 1090, type: !11, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115395 = !DILocation(line: 278, column: 59, scope: !115384)
!115396 = !DILocation(line: 2428, column: 9, scope: !115345, inlinedAt: !115391)
!115397 = !DILocation(line: 278, column: 68, scope: !115384)
!115398 = !{!115399}
!115399 = distinct !{!115399, !115400, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!115400 = distinct !{!115400, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!115401 = !DILocation(line: 282, column: 5, scope: !115376)
!115402 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115403)
!115403 = distinct !DILocation(line: 282, column: 5, scope: !115376)
!115404 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !115405)
!115405 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !115406)
!115406 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !115407)
!115407 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !115408)
!115408 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !115409)
!115409 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115403)
!115410 = !{!115411, !115413, !115415, !115399}
!115411 = distinct !{!115411, !115412, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!115412 = distinct !{!115412, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!115413 = distinct !{!115413, !115414, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!115414 = distinct !{!115414, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!115415 = distinct !{!115415, !115416, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!115416 = distinct !{!115416, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!115417 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !115407)
!115418 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !115419)
!115419 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !115407)
!115420 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !115407)
!115421 = !DILocation(line: 280, column: 41, scope: !115422)
!115422 = distinct !DILexicalBlock(scope: !115384, file: !11151, line: 278, column: 9)
!115423 = !DILocation(line: 1877, column: 92, scope: !115424, inlinedAt: !115425)
!115424 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115425 = !DILocation(line: 3764, column: 14, scope: !115426, inlinedAt: !115427)
!115426 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115427 = !DILocation(line: 3839, column: 34, scope: !115428, inlinedAt: !115429)
!115428 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11277, file: !11269, line: 3838, type: !11, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115429 = !DILocation(line: 280, column: 40, scope: !115422)
!115430 = !DILocation(line: 278, column: 14, scope: !115431, inlinedAt: !115432)
!115431 = distinct !DISubprogram(name: "index_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 276, type: !11, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115432 = !DILocation(line: 31, column: 15, scope: !115433, inlinedAt: !115434)
!115433 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTdjEINtNtNtB8_3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11287, file: !11281, line: 30, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115434 = !DILocation(line: 3839, column: 9, scope: !115428, inlinedAt: !115429)
!115435 = !DILocation(line: 614, column: 9, scope: !115436, inlinedAt: !115437)
!115436 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115437 = !DILocation(line: 609, column: 14, scope: !115438, inlinedAt: !115439)
!115438 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115439 = !DILocation(line: 296, column: 20, scope: !115440, inlinedAt: !115441)
!115440 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115441 = !DILocation(line: 2026, column: 18, scope: !115442, inlinedAt: !115443)
!115442 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115443 = !DILocation(line: 1877, column: 78, scope: !115424, inlinedAt: !115425)
!115444 = !DILocation(line: 278, column: 9, scope: !115431, inlinedAt: !115432)
!115445 = !DILocation(line: 280, column: 14, scope: !115422)
!115446 = !DILocation(line: 281, column: 9, scope: !115422)
!115447 = !{!115448}
!115448 = distinct !{!115448, !115449, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!115449 = distinct !{!115449, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!115450 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115451)
!115451 = distinct !DILocation(line: 282, column: 5, scope: !115376)
!115452 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !115453)
!115453 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !115454)
!115454 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !115455)
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v4i32
!115739 = !DILocation(line: 444, column: 20, scope: !115636, inlinedAt: !115740)
!115740 = !DILocation(line: 2110, column: 27, scope: !115741, inlinedAt: !115742)
!115741 = !DILexicalBlockFile(scope: !115638, file: !712, discriminator: 4)
!115742 = !DILocation(line: 2428, column: 15, scope: !115743, inlinedAt: !115744)
!115743 = !DILexicalBlockFile(scope: !115640, file: !712, discriminator: 4)
!115744 = !DILocation(line: 4194, column: 10, scope: !115745, inlinedAt: !115746)
!115745 = !DILexicalBlockFile(scope: !115642, file: !712, discriminator: 4)
!115746 = !DILocation(line: 1085, column: 16, scope: !115747, inlinedAt: !115748)
!115747 = !DILexicalBlockFile(scope: !115644, file: !10777, discriminator: 2)
!115748 = !DILocation(line: 301, column: 16, scope: !115749)
!115749 = !DILexicalBlockFile(scope: !115737, file: !11151, discriminator: 2)
!115750 = !DILocation(line: 2428, column: 9, scope: !115640, inlinedAt: !115744)
!115751 = !DILocation(line: 301, column: 23, scope: !115737)
!115752 = !DILocation(line: 961, column: 18, scope: !115753, inlinedAt: !115754)
!115753 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !11365, file: !11364, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115754 = !DILocation(line: 102, column: 78, scope: !115755, inlinedAt: !115756)
!115755 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !11372, file: !11369, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115756 = !DILocation(line: 1041, column: 9, scope: !115757, inlinedAt: !115758)
!115757 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115758 = !DILocation(line: 0, scope: !115737)
!115759 = !DILocation(line: 961, column: 18, scope: !11676, inlinedAt: !115760)
!115760 = !DILocation(line: 102, column: 78, scope: !11678, inlinedAt: !115761)
!115761 = !DILocation(line: 1041, column: 9, scope: !11682, inlinedAt: !115762)
!115762 = !DILocation(line: 26, column: 14, scope: !11684, inlinedAt: !115763)
!115763 = !DILocation(line: 631, column: 30, scope: !11686, inlinedAt: !115758)
!115764 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !115765)
!115765 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !115766)
!115766 = distinct !DILocation(line: 312, column: 45, scope: !115737)
!115767 = !DILocation(line: 24, column: 9, scope: !11688, inlinedAt: !115768)
!115768 = distinct !DILocation(line: 631, column: 9, scope: !11686, inlinedAt: !115769)
!115769 = distinct !DILocation(line: 302, column: 45, scope: !115737)
!115770 = !DILocation(line: 312, column: 31, scope: !115737)
!115771 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !115772)
!115772 = distinct !DILocation(line: 85, column: 9, scope: !115773, inlinedAt: !115774)
!115773 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>, core::slice::iter::Iter<polars_expr::EvictIdx>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_NtCskY9G75ZWc4U_11polars_expr8EvictIdxEENtNtNtB8_6traits8iterator8Iterator4nextB1t_", scope: !11411, file: !11400, line: 84, type: !11, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115774 = !DILocation(line: 312, column: 31, scope: !115775)
!115775 = !DILexicalBlockFile(scope: !115776, file: !11151, discriminator: 2)
!115776 = distinct !DILexicalBlock(scope: !115737, file: !11151, line: 312, column: 17)
!115777 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !115772)
!115778 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !115779)
!115779 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !115780)
!115780 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !115772)
!115781 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !115782)
!115782 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !115783)
!115783 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !115772)
!115784 = !DILocation(line: 313, column: 49, scope: !115785)
!115785 = distinct !DILexicalBlock(scope: !115776, file: !11151, line: 312, column: 17)
!115786 = !DILocation(line: 313, column: 33, scope: !115785)
!115787 = !DILocation(line: 252, column: 39, scope: !20087, inlinedAt: !115788)
!115788 = distinct !DILocation(line: 646, column: 26, scope: !20089, inlinedAt: !115789)
!115789 = distinct !DILocation(line: 223, column: 22, scope: !20091, inlinedAt: !115790)
!115790 = distinct !DILocation(line: 113, column: 14, scope: !20093, inlinedAt: !115791)
!115791 = distinct !DILocation(line: 313, column: 33, scope: !115785)
!115792 = !DILocation(line: 252, column: 13, scope: !20087, inlinedAt: !115788)
!115793 = !DILocation(line: 253, column: 13, scope: !20087, inlinedAt: !115788)
!115794 = !DILocation(line: 223, column: 9, scope: !20091, inlinedAt: !115790)
!115795 = !DILocation(line: 614, column: 9, scope: !115796, inlinedAt: !115797)
!115796 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115797 = !DILocation(line: 609, column: 14, scope: !115798, inlinedAt: !115800)
!115798 = !DILexicalBlockFile(scope: !115799, file: !11291, discriminator: 2)
!115799 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115800 = !DILocation(line: 296, column: 20, scope: !115801, inlinedAt: !115803)
!115801 = !DILexicalBlockFile(scope: !115802, file: !11291, discriminator: 2)
!115802 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115803 = !DILocation(line: 2026, column: 18, scope: !115804, inlinedAt: !115806)
!115804 = !DILexicalBlockFile(scope: !115805, file: !11269, discriminator: 2)
!115805 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115806 = !DILocation(line: 1877, column: 78, scope: !115807, inlinedAt: !115809)
!115807 = !DILexicalBlockFile(scope: !115808, file: !11269, discriminator: 2)
!115808 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115809 = !DILocation(line: 3764, column: 14, scope: !115810, inlinedAt: !115812)
!115810 = !DILexicalBlockFile(scope: !115811, file: !11269, discriminator: 2)
!115811 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115812 = !DILocation(line: 314, column: 31, scope: !115813)
!115813 = distinct !DILexicalBlock(scope: !115785, file: !11151, line: 313, column: 21)
!115814 = !DILocation(line: 34, column: 10, scope: !115815, inlinedAt: !115816)
!115815 = distinct !DISubprogram(name: "idx", linkageName: "_RNvMCskY9G75ZWc4U_11polars_exprNtB2_8EvictIdx3idx", scope: !11754, file: !7900, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115816 = !DILocation(line: 314, column: 63, scope: !115813)
!115817 = !DILocation(line: 34, column: 9, scope: !115815, inlinedAt: !115816)
!115818 = !DILocation(line: 266, column: 18, scope: !115819, inlinedAt: !115820)
!115819 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115820 = !DILocation(line: 691, column: 30, scope: !115821, inlinedAt: !115823)
!115821 = !DILexicalBlockFile(scope: !115822, file: !11376, discriminator: 2)
!115822 = distinct !DISubprogram(name: "get_unchecked_mut<(f64, usize), usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSTdjE17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !11377, file: !11376, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115823 = !DILocation(line: 314, column: 43, scope: !115813)
!115824 = !DILocation(line: 315, column: 24, scope: !115825)
!115825 = distinct !DILexicalBlock(scope: !115813, file: !11151, line: 314, column: 21)
!115826 = !DILocation(line: 323, column: 9, scope: !115737)
!115827 = !{!115828}
!115828 = distinct !{!115828, !115829, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!115829 = distinct !{!115829, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!115830 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115831)
!115831 = distinct !DILocation(line: 324, column: 5, scope: !115672)
!115832 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !115833)
!115833 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !115834)
!115834 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !115835)
!115835 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !115836)
!115836 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !115837)
!115837 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !115831)
!115838 = !{!115839, !115841, !115843, !115828}
!115839 = distinct !{!115839, !115840, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!115840 = distinct !{!115840, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!115841 = distinct !{!115841, !115842, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!115842 = distinct !{!115842, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!115843 = distinct !{!115843, !115844, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!115844 = distinct !{!115844, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!115845 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !115835)
!115846 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !115847)
!115847 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !115835)
!115848 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !115835)
!115849 = !DILocation(line: 324, column: 6, scope: !115626)
!115850 = !DILocation(line: 742, column: 44, scope: !53222, inlinedAt: !115851)
!115851 = distinct !DILocation(line: 114, column: 47, scope: !115852, inlinedAt: !115853)
!115852 = distinct !DISubprogram(name: "reduce_one<polars_core::datatypes::Int64Type>", linkageName: "_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_", scope: !107517, file: !107516, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115853 = distinct !DILocation(line: 319, column: 34, scope: !115825)
!115854 = !DILocation(line: 114, column: 9, scope: !115852, inlinedAt: !115853)
!115855 = !{!115856}
!115856 = distinct !{!115856, !115857, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!115857 = distinct !{!115857, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_"}
!115858 = !DILocation(line: 115, column: 9, scope: !115852, inlinedAt: !115853)
!115859 = !DILocation(line: 320, column: 17, scope: !115785)
!115860 = !DILocation(line: 929, column: 22, scope: !115861, inlinedAt: !115862)
!115861 = distinct !DISubprogram(name: "replace<(f64, usize)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceTdjEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115862 = !DILocation(line: 316, column: 35, scope: !115825)
!115863 = !DILocation(line: 930, column: 49, scope: !115864, inlinedAt: !115862)
!115864 = distinct !DILexicalBlock(scope: !115861, file: !776, line: 929, column: 9)
!115865 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !115866)
!115866 = distinct !DILocation(line: 1004, column: 22, scope: !115867, inlinedAt: !115868)
!115867 = distinct !DISubprogram(name: "push<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE4pushCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1003, type: !11, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115868 = !DILocation(line: 317, column: 45, scope: !115869)
!115869 = distinct !DILexicalBlock(scope: !115825, file: !11151, line: 316, column: 25)
!115870 = !{!115871}
!115871 = distinct !{!115871, !115872, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!115872 = distinct !{!115872, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!115873 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !115874)
!115874 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !115875)
!115875 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !115866)
!115876 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !115866)
!115877 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !115866)
!115878 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !115879)
!115879 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !115880)
!115880 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !115881)
!115881 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !115882)
!115882 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !115866)
!115883 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !115884)
!115884 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !115866)
!115885 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !115886)
!115886 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !115866)
!115887 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !115866)
!115888 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !115866)
!115889 = !DILocation(line: 302, column: 31, scope: !115737)
!115890 = !DILocation(line: 306, column: 12, scope: !11698, inlinedAt: !115891)
!115891 = distinct !DILocation(line: 85, column: 9, scope: !115773, inlinedAt: !115892)
!115892 = !DILocation(line: 302, column: 31, scope: !115893)
!115893 = !DILexicalBlockFile(scope: !115894, file: !11151, discriminator: 2)
!115894 = distinct !DILexicalBlock(scope: !115737, file: !11151, line: 302, column: 17)
!115895 = !DILocation(line: 310, column: 13, scope: !11708, inlinedAt: !115891)
!115896 = !DILocation(line: 961, column: 18, scope: !11713, inlinedAt: !115897)
!115897 = distinct !DILocation(line: 429, column: 60, scope: !11715, inlinedAt: !115898)
!115898 = distinct !DILocation(line: 313, column: 66, scope: !11708, inlinedAt: !115891)
!115899 = !DILocation(line: 961, column: 18, scope: !11416, inlinedAt: !115900)
!115900 = distinct !DILocation(line: 429, column: 60, scope: !11418, inlinedAt: !115901)
!115901 = distinct !DILocation(line: 313, column: 30, scope: !11708, inlinedAt: !115891)
!115902 = !DILocation(line: 303, column: 48, scope: !115903)
!115903 = distinct !DILexicalBlock(scope: !115894, file: !11151, line: 302, column: 17)
!115904 = !DILocation(line: 745, column: 15, scope: !20221, inlinedAt: !115905)
!115905 = distinct !DILocation(line: 508, column: 23, scope: !20223, inlinedAt: !115906)
!115906 = distinct !DILocation(line: 138, column: 14, scope: !20207, inlinedAt: !115907)
!115907 = distinct !DILocation(line: 49, column: 17, scope: !20209, inlinedAt: !115908)
!115908 = distinct !DILocation(line: 303, column: 34, scope: !115903)
!115909 = !DILocation(line: 745, column: 9, scope: !20205, inlinedAt: !115910)
!115910 = distinct !DILocation(line: 139, column: 14, scope: !20207, inlinedAt: !115907)
!115911 = !DILocation(line: 461, column: 23, scope: !20226, inlinedAt: !115912)
!115912 = distinct !DILocation(line: 360, column: 27, scope: !20229, inlinedAt: !115913)
!115913 = distinct !DILocation(line: 140, column: 25, scope: !20231, inlinedAt: !115914)
!115914 = distinct !DILocation(line: 1165, column: 29, scope: !20233, inlinedAt: !115915)
!115915 = distinct !DILocation(line: 140, column: 14, scope: !20207, inlinedAt: !115907)
!115916 = !DILocation(line: 462, column: 41, scope: !20237, inlinedAt: !115912)
!115917 = !DILocation(line: 360, column: 42, scope: !20229, inlinedAt: !115913)
!115918 = !DILocation(line: 43, column: 37, scope: !20240, inlinedAt: !115919)
!115919 = distinct !DILocation(line: 360, column: 9, scope: !20229, inlinedAt: !115913)
!115920 = !DILocation(line: 252, column: 39, scope: !20243, inlinedAt: !115921)
!115921 = distinct !DILocation(line: 646, column: 26, scope: !20245, inlinedAt: !115922)
!115922 = distinct !DILocation(line: 43, column: 23, scope: !20240, inlinedAt: !115919)
!115923 = !DILocation(line: 252, column: 13, scope: !20243, inlinedAt: !115921)
!115924 = !DILocation(line: 253, column: 13, scope: !20243, inlinedAt: !115921)
!115925 = !DILocation(line: 43, column: 16, scope: !20240, inlinedAt: !115919)
!115926 = !DILocation(line: 44, column: 15, scope: !20251, inlinedAt: !115919)
!115927 = !DILocation(line: 1165, column: 24, scope: !20233, inlinedAt: !115915)
!115928 = !DILocation(line: 142, column: 6, scope: !20207, inlinedAt: !115907)
!115929 = !DILocation(line: 49, column: 12, scope: !20209, inlinedAt: !115908)
!115930 = !DILocation(line: 52, column: 23, scope: !20209, inlinedAt: !115908)
!115931 = !DILocation(line: 252, column: 39, scope: !20087, inlinedAt: !115932)
!115932 = distinct !DILocation(line: 646, column: 26, scope: !20089, inlinedAt: !115933)
!115933 = distinct !DILocation(line: 223, column: 22, scope: !20091, inlinedAt: !115934)
!115934 = distinct !DILocation(line: 113, column: 14, scope: !20093, inlinedAt: !115935)
!115935 = distinct !DILocation(line: 52, column: 23, scope: !20209, inlinedAt: !115908)
!115936 = !DILocation(line: 252, column: 13, scope: !20087, inlinedAt: !115932)
!115937 = !DILocation(line: 253, column: 13, scope: !20087, inlinedAt: !115932)
!115938 = !DILocation(line: 223, column: 9, scope: !20091, inlinedAt: !115934)
!115939 = !DILocation(line: 49, column: 9, scope: !20209, inlinedAt: !115908)
!115940 = !DILocation(line: 0, scope: !20209, inlinedAt: !115908)
!115941 = !DILocation(line: 614, column: 9, scope: !115796, inlinedAt: !115942)
!115942 = !DILocation(line: 609, column: 14, scope: !115799, inlinedAt: !115943)
!115943 = !DILocation(line: 296, column: 20, scope: !115802, inlinedAt: !115944)
!115944 = !DILocation(line: 2026, column: 18, scope: !115805, inlinedAt: !115945)
!115945 = !DILocation(line: 1877, column: 78, scope: !115808, inlinedAt: !115946)
!115946 = !DILocation(line: 3764, column: 14, scope: !115811, inlinedAt: !115947)
!115947 = !DILocation(line: 304, column: 31, scope: !115948)
!115948 = distinct !DILexicalBlock(scope: !115903, file: !11151, line: 303, column: 21)
!115949 = !DILocation(line: 34, column: 10, scope: !115815, inlinedAt: !115950)
!115950 = !DILocation(line: 304, column: 63, scope: !115948)
!115951 = !DILocation(line: 34, column: 9, scope: !115815, inlinedAt: !115950)
!115952 = !DILocation(line: 266, column: 18, scope: !115819, inlinedAt: !115953)
!115953 = !DILocation(line: 691, column: 30, scope: !115822, inlinedAt: !115954)
!115954 = !DILocation(line: 304, column: 43, scope: !115948)
!115955 = !DILocation(line: 305, column: 24, scope: !115956)
!115956 = distinct !DILexicalBlock(scope: !115948, file: !11151, line: 304, column: 21)
!115957 = !DILocation(line: 1042, column: 9, scope: !115958, inlinedAt: !115959)
!115958 = distinct !DISubprogram(name: "unwrap_or<i64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionxE9unwrap_orCskY9G75ZWc4U_11polars_expr", scope: !7839, file: !7838, line: 1038, type: !11, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115959 = distinct !DILocation(line: 114, column: 18, scope: !115852, inlinedAt: !115960)
!115960 = distinct !DILocation(line: 309, column: 34, scope: !115956)
!115961 = !DILocation(line: 742, column: 44, scope: !53222, inlinedAt: !115962)
!115962 = distinct !DILocation(line: 114, column: 47, scope: !115852, inlinedAt: !115960)
!115963 = !DILocation(line: 114, column: 9, scope: !115852, inlinedAt: !115960)
!115964 = !{!115965}
!115965 = distinct !{!115965, !115966, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_: argument 0"}
!115966 = distinct !{!115966, !"_RNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanINtB4_14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeENtB6_7Reducer10reduce_oneB8_"}
!115967 = !DILocation(line: 115, column: 9, scope: !115852, inlinedAt: !115960)
!115968 = !DILocation(line: 310, column: 17, scope: !115903)
!115969 = !DILocation(line: 929, column: 22, scope: !115861, inlinedAt: !115970)
!115970 = !DILocation(line: 306, column: 35, scope: !115956)
!115971 = !DILocation(line: 930, column: 49, scope: !115972, inlinedAt: !115970)
!115972 = distinct !DILexicalBlock(scope: !115861, file: !776, line: 929, column: 9)
!115973 = !DILocation(line: 1037, column: 19, scope: !107803, inlinedAt: !115974)
!115974 = distinct !DILocation(line: 1004, column: 22, scope: !115867, inlinedAt: !115975)
!115975 = !DILocation(line: 307, column: 45, scope: !115976)
!115976 = distinct !DILexicalBlock(scope: !115956, file: !11151, line: 306, column: 25)
!115977 = !{!115978}
!115978 = distinct !{!115978, !115979, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!115979 = distinct !{!115979, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEE8push_mutCskY9G75ZWc4U_11polars_expr"}
!115980 = !DILocation(line: 619, column: 49, scope: !107812, inlinedAt: !115981)
!115981 = distinct !DILocation(line: 309, column: 20, scope: !107814, inlinedAt: !115982)
!115982 = distinct !DILocation(line: 1040, column: 28, scope: !107816, inlinedAt: !115974)
!115983 = !DILocation(line: 1040, column: 12, scope: !107816, inlinedAt: !115974)
!115984 = !DILocation(line: 1041, column: 22, scope: !107816, inlinedAt: !115974)
!115985 = !DILocation(line: 614, column: 9, scope: !107820, inlinedAt: !115986)
!115986 = distinct !DILocation(line: 609, column: 14, scope: !107822, inlinedAt: !115987)
!115987 = distinct !DILocation(line: 296, column: 20, scope: !107824, inlinedAt: !115988)
!115988 = distinct !DILocation(line: 2026, column: 18, scope: !107826, inlinedAt: !115989)
!115989 = distinct !DILocation(line: 1044, column: 28, scope: !107816, inlinedAt: !115974)
!115990 = !DILocation(line: 961, column: 18, scope: !107829, inlinedAt: !115991)
!115991 = distinct !DILocation(line: 1044, column: 41, scope: !107816, inlinedAt: !115974)
!115992 = !DILocation(line: 1921, column: 41, scope: !107832, inlinedAt: !115993)
!115993 = distinct !DILocation(line: 1045, column: 13, scope: !107834, inlinedAt: !115974)
!115994 = !DILocation(line: 1046, column: 13, scope: !107834, inlinedAt: !115974)
!115995 = !DILocation(line: 1050, column: 6, scope: !107803, inlinedAt: !115974)
!115996 = !DILocation(line: 284, column: 5, scope: !115626)
!115997 = distinct !DISubprogram(name: "as_any<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction6as_anyB7_", scope: !11152, file: !11151, line: 360, type: !11, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!115998 = !DILocation(line: 362, column: 6, scope: !115997)
!115999 = distinct !DISubprogram(name: "resize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction6resizeB7_", scope: !11152, file: !11151, line: 262, type: !11, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116000 = !DILocation(line: 263, column: 9, scope: !115999)
!116001 = !DILocation(line: 263, column: 28, scope: !115999)
!116002 = !DILocation(line: 263, column: 21, scope: !115999)
!116003 = !DILocation(line: 264, column: 6, scope: !115999)
!116004 = distinct !DISubprogram(name: "reserve<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction7reserveB7_", scope: !11152, file: !11151, line: 258, type: !11, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116005 = !DILocation(line: 259, column: 9, scope: !116004)
!116006 = !DILocation(line: 259, column: 21, scope: !116004)
!116007 = !DILocation(line: 260, column: 6, scope: !116004)
!116008 = distinct !DISubprogram(name: "finalize<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction8finalizeB7_", scope: !11152, file: !11151, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116009 = !DILocation(line: 929, column: 22, scope: !116010, inlinedAt: !116011)
!116010 = distinct !DISubprogram(name: "replace<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 915, type: !11, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116011 = !DILocation(line: 849, column: 5, scope: !116012, inlinedAt: !116013)
!116012 = distinct !DISubprogram(name: "take<alloc::vec::Vec<(f64, usize), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTdjEEECskY9G75ZWc4U_11polars_expr", scope: !777, file: !776, line: 848, type: !11, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116013 = !DILocation(line: 356, column: 17, scope: !116008)
!116014 = !DILocation(line: 930, column: 49, scope: !116015, inlinedAt: !116011)
!116015 = distinct !DILexicalBlock(scope: !116010, file: !776, line: 929, column: 9)
!116016 = !DILocation(line: 357, column: 9, scope: !116017)
!116017 = distinct !DILexicalBlock(scope: !116008, file: !11151, line: 356, column: 9)
!116018 = !DILocation(line: 357, column: 32, scope: !116017)
!116019 = !DILocation(line: 357, column: 22, scope: !116017)
!116020 = !DILocation(line: 357, column: 52, scope: !116017)
!116021 = !DILocation(line: 358, column: 6, scope: !116008)
!116022 = distinct !DISubprogram(name: "new_empty<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::Int64Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEENtB5_16GroupedReduction9new_emptyB7_", scope: !11152, file: !11151, line: 249, type: !11, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116023 = !DILocation(line: 250, column: 18, scope: !116022)
!116024 = !DILocation(line: 251, column: 21, scope: !116022)
!116025 = !DILocation(line: 464, column: 9, scope: !116026, inlinedAt: !116024)
!116026 = distinct !DISubprogram(name: "new<(f64, usize)>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VecTdjEE3newCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116027 = !DILocation(line: 252, column: 29, scope: !116022)
!116028 = !DILocation(line: 464, column: 9, scope: !116026, inlinedAt: !116027)
!116029 = !DILocation(line: 253, column: 23, scope: !116022)
!116030 = !DILocation(line: 253, column: 37, scope: !116022)
!116031 = !DILocation(line: 255, column: 9, scope: !116022)
!116032 = !DILocation(line: 99, column: 9, scope: !11493, inlinedAt: !116033)
!116033 = distinct !DILocation(line: 210, column: 73, scope: !11495, inlinedAt: !116034)
!116034 = distinct !DILocation(line: 332, column: 9, scope: !11498, inlinedAt: !116035)
!116035 = distinct !DILocation(line: 449, column: 14, scope: !11500, inlinedAt: !116036)
!116036 = distinct !DILocation(line: 248, column: 18, scope: !11502, inlinedAt: !116037)
!116037 = distinct !DILocation(line: 286, column: 19, scope: !115609, inlinedAt: !116038)
!116038 = distinct !DILocation(line: 250, column: 9, scope: !116022)
!116039 = !{!116040}
!116040 = distinct !{!116040, !116041, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEEE3newBJ_: argument 0"}
!116041 = distinct !{!116041, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCskY9G75ZWc4U_11polars_expr6reduce19VecGroupedReductionINtNtBH_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeEEE3newBJ_"}
!116042 = !DILocation(line: 101, column: 9, scope: !11493, inlinedAt: !116033)
!116043 = !DILocation(line: 248, column: 11, scope: !11502, inlinedAt: !116037)
!116044 = !DILocation(line: 248, column: 5, scope: !11502, inlinedAt: !116037)
!116045 = !DILocation(line: 250, column: 19, scope: !11502, inlinedAt: !116037)
!116046 = !DILocation(line: 292, column: 5, scope: !115609, inlinedAt: !116038)
!116047 = !DILocation(line: 284, column: 5, scope: !115609, inlinedAt: !116038)
!116048 = !DILocation(line: 0, scope: !116022)
!116049 = !DILocation(line: 289, column: 56, scope: !115622, inlinedAt: !116038)
!116050 = !DILocation(line: 255, column: 10, scope: !116022)
!116051 = !DILocation(line: 256, column: 6, scope: !116022)
!116052 = !DILocation(line: 249, column: 5, scope: !116022)
!116053 = distinct !DISubprogram(name: "update_group<polars_expr::reduce::mean::NumMeanReducer<polars_core::datatypes::UInt8Type>>", linkageName: "_RNvXs2_NtCskY9G75ZWc4U_11polars_expr6reduceINtB5_19VecGroupedReductionINtNtB5_4mean14NumMeanReducerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEENtB5_16GroupedReduction12update_groupB7_", scope: !11152, file: !11151, line: 266, type: !11, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116054 = !DILocation(line: 272, column: 17, scope: !116053)
!116055 = !DILocation(line: 272, column: 9, scope: !116053)
!116056 = !DILocation(line: 273, column: 22, scope: !116053)
!116057 = !DILocation(line: 193, column: 15, scope: !116058, inlinedAt: !116059)
!116058 = distinct !DISubprogram(name: "dtype", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column5dtype", scope: !11163, file: !11162, line: 192, type: !11, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116059 = !DILocation(line: 274, column: 24, scope: !116060)
!116060 = distinct !DILexicalBlock(scope: !116053, file: !11151, line: 273, column: 9)
!116061 = !DILocation(line: 193, column: 9, scope: !116058, inlinedAt: !116059)
!116062 = !DILocation(line: 444, column: 20, scope: !116063, inlinedAt: !116064)
!116063 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCskY9G75ZWc4U_11polars_expr", scope: !708, file: !707, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116064 = !DILocation(line: 2110, column: 27, scope: !116065, inlinedAt: !116066)
!116065 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCskY9G75ZWc4U_11polars_expr", scope: !713, file: !712, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116066 = !DILocation(line: 2428, column: 15, scope: !116067, inlinedAt: !116068)
!116067 = distinct !DISubprogram(name: "deref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11176, file: !712, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116068 = !DILocation(line: 4194, column: 10, scope: !116069, inlinedAt: !116070)
!116069 = distinct !DISubprogram(name: "as_ref<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EINtNtCscgRAwXFJnXP_4core7convert5AsRefBH_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11179, file: !712, line: 4193, type: !11, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116070 = !DILocation(line: 1085, column: 16, scope: !116071, inlinedAt: !116072)
!116071 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11182, file: !10777, line: 1084, type: !11, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116072 = !DILocation(line: 194, column: 34, scope: !116073, inlinedAt: !116059)
!116073 = !DILexicalBlockFile(scope: !116074, file: !11162, discriminator: 2)
!116074 = distinct !DILexicalBlock(scope: !116058, file: !11162, line: 194, column: 13)
!116075 = !DILocation(line: 2428, column: 9, scope: !116067, inlinedAt: !116068)
!116076 = !DILocation(line: 194, column: 34, scope: !116074, inlinedAt: !116059)
!116077 = !DILocation(line: 194, column: 36, scope: !116074, inlinedAt: !116059)
!116078 = !DILocation(line: 0, scope: !116058, inlinedAt: !116059)
!116079 = !DILocation(line: 2124, column: 13, scope: !116080, inlinedAt: !116081)
!116080 = distinct !DISubprogram(name: "eq<polars_core::datatypes::dtype::DataType, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB7_9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !11192, file: !7905, line: 2123, type: !11, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116081 = !DILocation(line: 274, column: 17, scope: !116060)
!116082 = !DILocation(line: 274, column: 9, scope: !116060)
!116083 = !DILocation(line: 275, column: 22, scope: !116060)
!116084 = !DILocation(line: 105, column: 15, scope: !116085, inlinedAt: !116086)
!116085 = distinct !DISubprogram(name: "as_materialized_series", linkageName: "_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column22as_materialized_series", scope: !11163, file: !11162, line: 104, type: !11, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116086 = !DILocation(line: 276, column: 29, scope: !116087)
!116087 = distinct !DILexicalBlock(scope: !116060, file: !11151, line: 275, column: 9)
!116088 = !DILocation(line: 105, column: 9, scope: !116085, inlinedAt: !116086)
!116089 = !DILocation(line: 107, column: 36, scope: !116090, inlinedAt: !116086)
!116090 = distinct !DILexicalBlock(scope: !116085, file: !11162, line: 107, column: 13)
!116091 = !DILocation(line: 66, column: 9, scope: !116092, inlinedAt: !116093)
!116092 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs0_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !11207, file: !11206, line: 65, type: !11, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116093 = !DILocation(line: 106, column: 34, scope: !116094, inlinedAt: !116086)
!116094 = distinct !DILexicalBlock(scope: !116085, file: !11162, line: 106, column: 13)
!116095 = !DILocation(line: 106, column: 34, scope: !116085, inlinedAt: !116086)
!116096 = !DILocation(line: 0, scope: !116085, inlinedAt: !116086)
!116097 = !DILocation(line: 277, column: 13, scope: !116098)
!116098 = distinct !DILexicalBlock(scope: !116087, file: !11151, line: 276, column: 9)
!116099 = !DILocation(line: 277, column: 22, scope: !116098)
!116100 = !DILocation(line: 277, column: 35, scope: !116098)
!116101 = !DILocation(line: 350, column: 15, scope: !116102, inlinedAt: !116103)
!116102 = distinct !DISubprogram(name: "deref<polars_core::series::Series>", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !11220, file: !11219, line: 349, type: !11, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116103 = !DILocation(line: 464, column: 9, scope: !116104, inlinedAt: !116105)
!116104 = distinct !DISubprogram(name: "as_ref<polars_core::series::Series>", linkageName: "_RNvXse_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEINtNtCscgRAwXFJnXP_4core7convert5AsRefBI_E6as_refCskY9G75ZWc4U_11polars_expr", scope: !11224, file: !11219, line: 463, type: !11, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116105 = !DILocation(line: 278, column: 50, scope: !116106)
!116106 = distinct !DILexicalBlock(scope: !116098, file: !11151, line: 277, column: 9)
!116107 = !DILocation(line: 350, column: 9, scope: !116102, inlinedAt: !116103)
!116108 = !DILocation(line: 444, column: 20, scope: !116063, inlinedAt: !116109)
!116109 = !DILocation(line: 2110, column: 27, scope: !116110, inlinedAt: !116111)
!116110 = !DILexicalBlockFile(scope: !116065, file: !712, discriminator: 2)
!116111 = !DILocation(line: 2428, column: 15, scope: !116112, inlinedAt: !116113)
!116112 = !DILexicalBlockFile(scope: !116067, file: !712, discriminator: 2)
!116113 = !DILocation(line: 4194, column: 10, scope: !116114, inlinedAt: !116115)
!116114 = !DILexicalBlockFile(scope: !116069, file: !712, discriminator: 2)
!116115 = !DILocation(line: 1091, column: 16, scope: !116116, inlinedAt: !116117)
!116116 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesINtNtCscgRAwXFJnXP_4core7convert5AsRefDNtNtB5_12series_trait11SeriesTraitEL_E6as_ref", scope: !11237, file: !10777, line: 1090, type: !11, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116117 = !DILocation(line: 278, column: 59, scope: !116106)
!116118 = !DILocation(line: 2428, column: 9, scope: !116067, inlinedAt: !116113)
!116119 = !DILocation(line: 278, column: 68, scope: !116106)
!116120 = !{!116121}
!116121 = distinct !{!116121, !116122, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!116122 = distinct !{!116122, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!116123 = !DILocation(line: 282, column: 5, scope: !116098)
!116124 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !116125)
!116125 = distinct !DILocation(line: 282, column: 5, scope: !116098)
!116126 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !116127)
!116127 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !116128)
!116128 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !116129)
!116129 = distinct !DILocation(line: 810, column: 1, scope: !7578, inlinedAt: !116130)
!116130 = distinct !DILocation(line: 810, column: 1, scope: !7572, inlinedAt: !116131)
!116131 = distinct !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !116125)
!116132 = !{!116133, !116135, !116137, !116121}
!116133 = distinct !{!116133, !116134, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr: argument 0"}
!116134 = distinct !{!116134, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr"}
!116135 = distinct !{!116135, !116136, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr: argument 0"}
!116136 = distinct !{!116136, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECskY9G75ZWc4U_11polars_expr"}
!116137 = distinct !{!116137, !116138, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr: argument 0"}
!116138 = distinct !{!116138, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECskY9G75ZWc4U_11polars_expr"}
!116139 = !DILocation(line: 2814, column: 12, scope: !7585, inlinedAt: !116129)
!116140 = !DILocation(line: 4387, column: 24, scope: !731, inlinedAt: !116141)
!116141 = distinct !DILocation(line: 64, column: 9, scope: !7585, inlinedAt: !116129)
!116142 = !DILocation(line: 2857, column: 18, scope: !7585, inlinedAt: !116129)
!116143 = !DILocation(line: 280, column: 41, scope: !116144)
!116144 = distinct !DILexicalBlock(scope: !116106, file: !11151, line: 278, column: 9)
!116145 = !DILocation(line: 1877, column: 92, scope: !116146, inlinedAt: !116147)
!116146 = distinct !DISubprogram(name: "as_mut_slice<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 1860, type: !11, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116147 = !DILocation(line: 3764, column: 14, scope: !116148, inlinedAt: !116149)
!116148 = distinct !DISubprogram(name: "deref_mut<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !11274, file: !11269, line: 3763, type: !11, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116149 = !DILocation(line: 3839, column: 34, scope: !116150, inlinedAt: !116151)
!116150 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTdjEEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11277, file: !11269, line: 3838, type: !11, scopeLine: 3838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116151 = !DILocation(line: 280, column: 40, scope: !116144)
!116152 = !DILocation(line: 278, column: 14, scope: !116153, inlinedAt: !116154)
!116153 = distinct !DISubprogram(name: "index_mut<(f64, usize)>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSTdjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11282, file: !11281, line: 276, type: !11, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116154 = !DILocation(line: 31, column: 15, scope: !116155, inlinedAt: !116156)
!116155 = distinct !DISubprogram(name: "index_mut<(f64, usize), usize>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSTdjEINtNtNtB8_3ops5index8IndexMutjE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !11287, file: !11281, line: 30, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116156 = !DILocation(line: 3839, column: 9, scope: !116150, inlinedAt: !116151)
!116157 = !DILocation(line: 614, column: 9, scope: !116158, inlinedAt: !116159)
!116158 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116159 = !DILocation(line: 609, column: 14, scope: !116160, inlinedAt: !116161)
!116160 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, (f64, usize)>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrTdjEECskY9G75ZWc4U_11polars_expr", scope: !11292, file: !11291, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116161 = !DILocation(line: 296, column: 20, scope: !116162, inlinedAt: !116163)
!116162 = distinct !DISubprogram(name: "ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTdjEE3ptrCskY9G75ZWc4U_11polars_expr", scope: !11298, file: !11291, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116163 = !DILocation(line: 2026, column: 18, scope: !116164, inlinedAt: !116165)
!116164 = distinct !DISubprogram(name: "as_mut_ptr<(f64, usize), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTdjEE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !11270, file: !11269, line: 2023, type: !11, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!116165 = !DILocation(line: 1877, column: 78, scope: !116146, inlinedAt: !116147)
!116166 = !DILocation(line: 278, column: 9, scope: !116153, inlinedAt: !116154)
!116167 = !DILocation(line: 280, column: 14, scope: !116144)
!116168 = !DILocation(line: 281, column: 9, scope: !116144)
!116169 = !{!116170}
!116170 = distinct !{!116170, !116171, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr: argument 0"}
!116171 = distinct !{!116171, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr"}
!116172 = !DILocation(line: 810, column: 1, scope: !11246, inlinedAt: !116173)
!116173 = distinct !DILocation(line: 282, column: 5, scope: !116098)
!116174 = !DILocation(line: 3956, column: 24, scope: !7589, inlinedAt: !116175)
!116175 = distinct !DILocation(line: 3193, column: 26, scope: !7591, inlinedAt: !116176)
!116176 = distinct !DILocation(line: 2814, column: 32, scope: !7585, inlinedAt: !116177)
end_hunk_11
